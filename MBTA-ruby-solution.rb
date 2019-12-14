def stops_between_stations (start_line, start_station, end_line, end_station)
   subway = {
       Red:["South Station","Kendall","Central","Harvard", "Park Street", "Porter","Davis", "Alewife"],
       Green:["Government Center","Boylston","Arlington","Park Street", "Copley", "Hynes","Kenmore"],
       Orange:["North Station","Haymarket", "State", "Downtown Crossing", "Chinatown","Park Street", "Back Bay", "Forest Hills"]
      }


   start_index =subway[start_line.to_sym].index(start_station)
  end_index =subway[end_line.to_sym].index(end_station)


   if start_line == end_line 

    (start_index - end_index).abs

       else
       start_park_street_index = subway[start_line.to_sym].index("Park Street")
      to_park_street = (start_index - start_park_street_index).abs


   end_park_street_index = subway[end_line.to_sym].index("Park Street")
   from_park_street = (end_index - end_park_street_index).abs

      total = to_park_street + from_park_street
   end
end

p stops_between_stations('Red', 'Alewife', 'Red', 'Park Street') # 3 stops
p stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') # 5 stops
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 7 stops