# QA Final Project
**Spring Pet Clinic** _By Team 3_

# Resources

Website: <space><space>\
Presentation: https://docs.google.com/presentation/d/18tSl0cTL2yxslPznOd3z3h_VHpsLJjPHtHvdqo6eRyo/edit?usp=sharing <space><space>\
Project Board: https://trello.com/b/V0fSC2cp/final-group-project <space><space>\
Risk Assessment: https://docs.google.com/spreadsheets/d/128TcehtL_puDUwLKvUdLhTt__cj8NS8wpZU_gw_jgBE/edit?usp=sharing  
  
## Contents

* Brief
    * [Project Brief](#project-brief)
* Designs
    * [Basic Designs](#basic-designs)
* [Risk Assessment](#risk-assessment)
* [Back End](#back-end)
* [Front End](#front-end)
* [Deployment Log](#deployment-log)
* [Known Issues](#known-issues)
* [Future Improvements](#future-improvements)
* [Expenses](#expenses)
* [Version Control](#version-control)

## Brief
### Project Brief

This project is a group challenge to work to a deliverable with time constraints, providing a robust deployment with consistent method and CI pipeline.
A monthly estimate of cost should be made for the projects, risks should be assessed and issues and improvements discussed. We should implement a Webhook with GitSCM to enable rolling updates when code is pushed to the repository. We should justify our usage of chosen technologies; and provide multiple environment support for both testing and live.

## Designs
### Basic Designs
Here is our CI pipeline:
![pipeline][pipeline]
_Our CI Pipeline_

Here is a more in-depth view of our Kubernetes Cluster configuration, from an end user perspective:
![cluster][cluster]  \
_Configuration of a K8s cluster_  
It shows a clear illustration of how all traffic is directed towards our NGINX load balancer and reverse proxy in order to delegate accordingly to our front-end and back-end pods which are able to store data within the mysql database. 

### Risk Assessment

We have performed a full risk assessment before attempting deployment. Those risks which are not currently mitigated and require revisiting will be revisited after deployment.
A link to our risk assessment (pre-revisit) is available in the Resources section.
Please find a screenshot below:

![risk][risk]


## Authors
Joshua Cashen  \
Isaac Lister  \
Hannah Lister-Sims  \
Alexander Smith  

## Version
v1.0

## Acknowledgements

Thanks to Ben Hesketh and QA Community for assistance meeting the project brief.

[pipeline]: https://imgur.com/cO2YN1k.png
[cluster]: https://i.imgur.com/wUBId9p.png
[risk]: https://imgur.com/ogn761e.png
