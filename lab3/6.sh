!/bin/bash
ppid=0
sleepavg=0
count=0
b=""
while read a
do
if [[ -n $a ]]
then
newppid=$(echo $a | grep -E -h -s -i -o "Parent_ProcessID=[0-9]+" | grep -o "[0-9]\+")
newsleepavg=$(echo $a | grep -E -h -s -i -o "Average_Sleeping_Time=[0-9.]+" | grep -o "[0-9.]\+" | awk '{printf("%s",$1)}')
if [[ $ppid == $newppid ]]
then sleepavg=$(echo "scale=5; $sleepavg+$newsleepavg" | bc -l | sed 's/^\./0./')
count=$(echo "$count+1" | bc -l)
else
sleepavg=$(echo "scale=5; $sleepavg/$count" | bc -l | sed 's/^\./0./')
if [[ -n $b ]]
then
b=$b"Average_Sleeping_Children_of_ParentID="$ppid" is "$sleepavg$'\n\n'
fi
sleepavg=$newsleepavg
ppid=$newppid
count=1
fi
b=$b$a$'\n'
fi
done < output.out
sleepavg=$(echo "scale=5; $sleepavg/$count" | bc -l | sed 's/^\./0./')
if [[ -n $b ]]
then
b=$b"Average_Sleeping_Children_of_ParentID="$ppid" is "$sleepavg$'\n'
fi
echo "$b" > outputt.out
 
