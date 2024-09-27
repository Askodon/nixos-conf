while true
do
sleep 3600
printf "Tea time" | fuzzel -w 40 -y 40 -f "Roboto"-12 --line-height=20 --dmenu -l 7 -p "an hour has passed"
done
