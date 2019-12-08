

 
 $stations = {
  "Red" =>["South Station" ,
"Kendall" ,
"Central",
"Harvard",
"Park Street",
"Porter" ,
"Davis" ,
"Alewife"],
 
"Green" =>[
  "Government Center",
"Boylston" ,
"Arlington" ,
"Park Street" ,
"Copley" ,
"Hynes",
"Kenmore"
],
"Orange" => [
 "North Station",
"Haymarket" ,
"State" ,
"Downtown Crossing",
"Chinatown" ,
"Park Street" ,
"Back Bay" ,
"Forest Hills"
]
}

 
 
 def calcultes(startline , startstation, endline , endstation)

startstationindex = $stations[startline].index(startstation)

endstationindex = $stations[endline].index(endstation)
if (startline===endline)
  return (startstationindex-endstationindex).abs
end


start_station_parkstrete = $stations[startline].index("Park Street")

to_parkstreat = (startstationindex -start_station_parkstrete ).abs

end_station_parkstrete = $stations[endline].index("Park Street")

from_parkstret = (endstationindex - end_station_parkstrete).abs

total_stops = (to_parkstreat-from_parkstret).abs
return total_stops

end
 

 p calcultes("Red","Alewife","Red","Harvard")

 
