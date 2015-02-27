#!/bin/bash
while :
do
	echo "Press [CTRL+C] to stop.."
	cucumber features/kf_mission.feature
	sleep 1
done
