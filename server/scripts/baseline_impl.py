from __future__ import print_function

from psm_srvs.srv import AgentTrajectories, AgentTrajectoriesResponse
import rospy
import math
 
def handle_agent_trajectories(req):
    response = Radii()
    response.radii = []
    coefficient = 0.5
    for traj_info in req.trajectories:
        msg = Radius()
        msg.r = math.sqrt(traj_info.velocity.x ** 2 + traj_info.velocity.y ** 2) * coefficient
        msg.id = traj_info.id
        msg.type = int(traj_info.is_robot)
        response.radii.append(msg)
    return AgentTrajectoriesResponse(response)

def agent_trajectories_server():
    rospy.init_node('baseline_radii_server')
    s = rospy.Service('calculate_radii_baseline', AgentTrajectories, handle_agent_trajectories)
    print("Ready to calculate radii.")
    rospy.spin()

if __name__ == "__main__":
    agent_trajectories_server()