#myArray=("kitchen" "family_room" "office" "playroom" "living_room" "main_bedroom" "main_bathroom" "jr_suite" "garage" "mudroom" "nino_bedroom" "gianluca_room" "sunroom" "basement_hub")
myArray=("kitchen" "family_room" "office" "playroom" "living_room" "main_bedroom" "main_bathroom" "jr_suite" "garage" "mudroom" "nino_bedroom" "gianluca_room")

for str in ${myArray[@]}; do
  echo $str
  mosquitto_pub -h 192.168.1.130 -u mosquitto -P t9T!4e@qLzEXAp98XG7tbAs2Y \
    -i presensce-information -t "espresense/rooms/$str/include/set" -m "apple:1006:10-8 apple:1006:10-7" -d
    -i presensce-information -t "espresense/rooms/$str/exclude/set" -m "sonos:d2d25d9324ce sonos:d2d2e1bf215e sonos:d2d24900f349 sonos:ededaa2e5684 sonos:d2d25078f328 sonos:d2d254df648b sonos:d2d2dc1083cc name:gianluca-s-room" -d
  mosquitto_pub -h 192.168.1.130 -u mosquitto -P t9T!4e@qLzEXAp98XG7tbAs2Y \
    -i presensce-information -t "espresense/rooms/$str/restart/set" -m "PRESS" -d
done



-i presensce-information -t "espresense/rooms/$str/include/set" -m "" -d
