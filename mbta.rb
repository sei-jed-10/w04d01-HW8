def stops_between_stations (startline,startstation,endline,endstation)
   subway = {
    red:["South Station","Kendall","Central","Harvard", "Park Street", "Porter","Davis", "Alewife"],
    green:["Government Center","Boylston","Arlington","Park Street", "Copley", "Hynes","Kenmore"],
    orange:["North Station","Haymarket", "State", "Downtown Crossing", "Chinatown","Park Street", "Back Bay", "Forest Hills"]
   }
      startstation = subway[startline.to_sym].index(startstation)
        endstation = subway[endline.to_sym].index(endstation)
        breakPointS = subway[startline.to_sym].index("Park Street")
        breakPointE = subway[endline.to_sym].index("Park Street")
        if startline == endline
            $result = (startstation - endstation).abs  
        elsif startline != endline
            steps = (startstation - breakPointS).abs
            result = (endstation  - breakPointE).abs + steps 
        end
  end 
 p stops_between_stations('red', 'Alewife', 'red', 'Alewife') 
 p stops_between_stations('red', 'Alewife', 'red', 'South Station') 
p stops_between_stations('red', 'South Station', 'orange', 'Forest Hills') 
