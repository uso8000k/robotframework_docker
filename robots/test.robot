*** Settings ***

Documentation            RobotFrameworkTest
Resource                 env.robot
Resource                 PeeringDB.robot

*** Test Cases ***

Exec PeeringDB Search
    Open PeeringDB Page
    Input PeeringDB Form
    Click PeeringDB Link 
    Show PeeringDB Result
