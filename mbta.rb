def stops_between_stations (start_line,start_station,end_line,end_station)
    subway = {
     red:["South Station","Kendall","Central","Harvard", "Park Street", "Porter","Davis", "Alewife"],
     green:["Government Center","Boylston","Arlington","Park Street", "Copley", "Hynes","Kenmore"],
     orange:["North Station","Haymarket", "State", "Downtown Crossing", "Chinatown","Park Street", "Back Bay", "Forest Hills"]
    }
       start_station = subway[start_line.to_sym].index(start_station)
         end_station = subway[end_line.to_sym].index(end_station)
         break_Point_S = subway[start_line.to_sym].index("Park Street")
         break_Point_E = subway[end_line.to_sym].index("Park Street")
         if start_line == end_line
             $result = (start_station - end_station).abs  
         elsif start_line != end_line
             steps = (start_station - break_Point_S).abs
             result = (end_station  - break_Point_E).abs + steps 
         end
   end 
  p stops_between_stations('red', 'Alewife', 'red', 'Alewife') 
  p stops_between_stations('red', 'Alewife', 'red', 'South Station') 
 p stops_between_stations('red', 'South Station', 'orange', 'Forest Hills') 
 
 



























