from __future__ import print_function

from server.srv import AgentTrajectories, AgentTrajectoriesResponse
import rospy
import math
 
def handle_agent_trajectories(req):
    radii = []
    coefficient = 0.5
    for trajectory in req.trajectories:
        end = trajectory[-1]
        start = trajectory[0]
        speed = math.sqrt((end.x - start.x) ** 2 + (end.y - start.y) ** 2) / (len(trajectory))
        radii.append(speed * coefficient)
    return AgentTrajectoriesResponse(radii)

def agent_trajectories_server():
    rospy.init_node('agent_trajectories_server')
    s = rospy.Service('calculate_radii', AgentTrajectories, handle_agent_trajectories)
    print("Ready to calculate radii.")
    rospy.spin()

if __name__ == "__main__":
    agent_trajectories_server()