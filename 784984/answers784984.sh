event_array=("event_A" "event_B" "event_C")

ipaddr () {
echo $((RANDOM%200+10)).$((RANDOM%200+10)).$((RANDOM%200+10)).$((RANDOM%200+10)) 
}

# echo "date time adress status code"
for i in $(seq 1 2000)
do
if [ $((RANDOM%3)) == "0" ]; then  
timestamp=$(date -v -${i}H  "+%Y-%m-%d %H:%M:%S")
echo "${timestamp} $(ipaddr) event=${event_array[$((RANDOM%3))]}"
fi
done



getIpaddr() { }
getTimeStamp() {}
getEvent(){}
getPeople(){}




