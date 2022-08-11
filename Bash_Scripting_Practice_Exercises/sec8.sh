#!/bin/bash

<< task1
Write a shell script that displays one random number to the 
screen and also generates a syslog message with that random number. Use the "user" facility and the "info" facility for your messages.
task1


<<task2
Modify the previous script so that it uses a logging function. 
Additionally tag each syslog message with "randomly" and include the process ID. Generate 3 random numbers.
task2

# reference: https://gist.github.com/PhilipSchmid/df69017fc15877997d3528633abd802d
