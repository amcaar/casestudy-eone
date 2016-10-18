
t0="$( date +%s )"
mintime="-1"
echo "starting execution!" $(date) >> /home/ubuntu/launch_gwf.out
cat $1 | while read a t a r n a; do
	[ $(( mintime < 0 )) -eq 1 ] && mintime="$t"
	while true; do
		t1="$( date +%s )"
		echo $t $mintime $t1 $t0
		if [ $(( t-mintime <= t1-t0 )) -eq 1 ]; then
			for ((i=0; i<n; i++)); do
				# Remplaza por un comando que lanza un sleep de $r secs
				echo sbatch mysleep.sh $r
				sbatch mysleep.sh $r &
			done
			break
		fi
		sleep 1
	done
done
echo "Last job launched:" $(date) >> /home/ubuntu/launch_gwf.out
