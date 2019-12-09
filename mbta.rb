def Stops_loop (arr)
  stops = -1
   for lines in arr do
     stops +=1
   end 
  return stops
end

def stops_between_stations (start_line,start_station, end_line, end_station) 

subway_lines =
{
 red: [ "South Station" , "Park Street" , "Kendall" , "Central" , "Harvard" , "Porter" , "Davis" , "Alewife"] ,
 green: [ "Government Center" , "Park Street" , "Boylston" , "Arlington" , "Copley" , "Hynes" , "Kenmore"] ,
 orange: [ "North Station" , "Haymarket" , "Park Street" , "State" , "Downtown Crossing" , "Chinatown" , "Back Bay" , "Forest Hills" ] 
}

 stops =0
 intersection_index_1=subway_lines[start_line.to_sym].index("Park Street")
 intersection_index_2=subway_lines[end_line.to_sym].index("Park Street")
 start_station_index=subway_lines[start_line.to_sym].index(start_station)
 end_station_index=subway_lines[end_line.to_sym].index(end_station)

 if (start_line == end_line)
   
     if(start_station==end_station)
      
       puts "Rider boards the train a #{start_station} Station and end up in the same station ."
       puts "Number of stops = #{stops} " 
      
     elsif (start_station_index < end_station_index)
     
       puts "Rider boards the train a #{start_line} Line and #{start_station} "
       arr = subway_lines[start_line.to_sym].slice(start_station_index , end_station_index + 1)
       print " This is the stops stations #{arr} \n"
       num =Stops_loop(arr)
       puts "Rider exits the train at #{end_line} Line and #{end_station} "
       puts "Number of stops = #{num} "
      
     elsif (start_station_index>end_station_index)
     
      puts "Rider boards the train a #{start_line} Line and #{start_station} "
      arr = subway_lines[start_line.to_sym].slice( end_station_index , start_station_index + 1)
      print " This is the stops stations #{arr} \n"
        num =Stops_loop(arr)
       puts "Rider exits the train at #{end_line} Line and #{end_station} "
       puts "Number of stops = #{num} "
     
   end

   
  else
   
    puts "Rider boards the train a #{start_line} Line and #{start_station} "
    arr1 = subway_lines[start_line.to_sym].slice(start_station_index , intersection_index_1 + 1)
    arr2 = subway_lines[end_line.to_sym].slice(intersection_index_2 , end_station_index + 1)
    num1 =Stops_loop(arr1)
    puts "Rider transfers from #{start_line} Line to #{end_line} Line at Park Street. "
    num2=Stops_loop(arr2)
    num =num1+num2
    puts "Rider exits the train at #{end_line} Line and #{end_station} "
    puts "Number of stops = #{num} "
 end

end



#stops_between_stations("red","South Station", "red", "Central")  # 3 stops
#stops_between_stations("red", "Alewife", "red", "Alewife") # 0 stops
#stops_between_stations('red', 'Alewife', 'red', 'South Station') # 7 stops
#stops_between_stations("red", "South Station", "green", "Kenmore") # 6 stops
stops_between_stations("red", "South Station", "green", "Copley") # 5 stops

