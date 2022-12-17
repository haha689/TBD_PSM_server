from __future__ import print_function

from psm_srvs.srv import AgentTrajectories, AgentTrajectoriesResponse
from psm_msgs.msg import Radius, Radii
import rospy
import math
import numpy as np
import os
import torch
from attrdict import AttrDict
from models import TrajectoryGenerator

def getModel():
    model_path = rospy.get_param("~model_path")
    checkpoint = torch.load(model_path)
    args = AttrDict(checkpoint['args'])
    generator = TrajectoryGenerator(
            obs_len=args.obs_len,
            pred_len=args.pred_len,
            embedding_dim=args.embedding_dim,
            encoder_h_dim=args.encoder_h_dim_g,
            decoder_h_dim=args.decoder_h_dim_g,
            mlp_dim=args.mlp_dim,
            num_layers=args.num_layers,
            noise_dim=args.noise_dim,
            noise_type=args.noise_type,
            noise_mix_type=args.noise_mix_type,
            pooling_type=args.pooling_type,
            pool_every_timestep=args.pool_every_timestep,
            dropout=args.dropout,
            bottleneck_dim=args.bottleneck_dim,
            neighborhood_size=args.neighborhood_size,
            grid_size=args.grid_size,
            batch_norm=args.batch_norm)
    generator.load_state_dict(checkpoint['g_state'])
    generator.to(torch.device('cuda'))
    generator.eval()
    args.batch_size = 1
    return generator

def handle_agent_trajectories(req, generator):
    if (len(req.trajectories) == 0):
        response = Radii()
        response.radii = []
        return AgentTrajectoriesResponse(response)
    num_peds = len(req.trajectories)
    traj_len = len(req.trajectories[0].trajectory)
    with torch.no_grad():
        radii = []
        obs_traj = torch.zeors([num_peds, traj_len, 2])
        obs_traj_rel = torch.zeors([num_peds, traj_len, 2])
        seq_start_end = [[0, num_peds]]
        robot_id = 0
        ids = []
        for i, traj_info in enumerate(req.trajectories):
            if (traj_info.is_robot):
                robot_id = traj_info.id
            for j in range(traj_len):
                obs_traj[i][j][0], obs_traj[i][j][1] = traj_info.trajectory.x, traj_info.trajectory.y
            ids.append(traj_info.id)
        obs_traj_rel[:, 1:] = obs_traj[:, 1:] = obs_traj[:, :-1]
        obs_traj.permute(1, 0, 2).cuda()
        obs_traj_rel.permute(1, 0, 2).cuda()
        output, _ = generator(obs_traj, obs_traj_rel, seq_start_end)
        response = Radii()
        response.radii = []
        for i in range(num_peds):
            msg = Radius()
            msg.r = math.sqrt(output[robot_id][i][0] ** 2 + ouput[robot_id][i][1] ** 2))
            msg.id = ids[i]
            msg.type = int(msg.id == robot_id)
            response.radii.append(msg)
    return AgentTrajectoriesResponse(response)

def agent_trajectories_server():
    rospy.init_node('radii_server')
    generator = getModel()
    s = rospy.Service('calculate_radii', AgentTrajectories, lambda req: handle_agent_trajectories(req, generator))
    print("Ready to calculate radii.")
    rospy.spin()

if __name__ == "__main__":
    agent_trajectories_server()