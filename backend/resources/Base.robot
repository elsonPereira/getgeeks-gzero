*Settings*
Documentation       Base test

Library     RequestsLibrary
Library     factories/Users.py

Resource    routes/SessionsRoute.robot
Resource    routes/UsersRoute.robot
Resource    routes/GeeksRoute.robot

Resource    Helpers.robot

*Variables*
${API_USERS}        http://getgeeks-users-elson.herokuapp.com
${API_GEEKS}        http://getgeeks-geeks-elson.herokuapp.com