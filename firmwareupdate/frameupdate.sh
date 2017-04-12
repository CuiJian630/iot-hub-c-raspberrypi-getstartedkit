#! /bin/bash
sudo /home/pi/cmake/samples/remote_monitoring/remote_monitoring &
while true
do
    	case "$(pidof remote_monitoring | wc -w)" in

	0)  sudo cp /home/pi/fireware2.0/remote_monitoring /home/pi/cmake/samples/remote_monitoring/ & echo "$(date +'%T'):Restarting remote_monitoring" >> /home/pi/log.txt & sudo /home/pi/cmake/samples/remote_monitoring/remote_monitoring & 
	    ;;
	1)  echo  "$(date +'%T'):remote_monitoring running" & echo "$(date +'%T'):remote_monitoring running" >> /home/pi/log.txt
	    ;;
	esac
    	sleep 10
done