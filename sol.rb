

# puts "What is your startline?"

# startline = gets

# puts "Whats is your startstation?"

# startstation = gets

# puts "What is your endline?"

# endline = gets

# puts "What is your endstation?"

# endstation = gets





def stop_between_stations (startline, startstation, endline, endstation)

	subway_lines = 
		{
			red:
			["South Station",
 			 "Kendall",
 			 "Central",
 			 "Harvard",
 			 "Park Street",
 			 "Porter",
			 "Davis",
			 "Alewife"],

			green:
			["Government Center",
 			 "Boylston",
		 	 "Arlington",
 			 "Park Street",
			 "Copley",
			 "Hynes",
 			 "Kenmore"],

			orange:
			["North Station",
			 "Haymarket",
			 "State",
			 "Downtown Crossing",
			 "Chinatown",
			 "Park Street",
			 "Back Bay",
			 "Forest Hills"]
		}

	start_station_index = subway_lines[startline.to_sym].index(startstation)
	end_station_index = subway_lines[endline.to_sym].index(endstation)
	
	start_line_park_street_index = subway_lines[startline.to_sym].index('Park Street')
	end_line_park_street_index = subway_lines[endline.to_sym].index('Park Street')

	trip_to_park_street = (start_station_index - start_line_park_street_index).abs
	trip_from_park_street = (end_station_index - end_line_park_street_index).abs



	if startline == endline
		puts (start_station_index - end_station_index).abs
	else
		puts (trip_to_park_street + trip_from_park_street)
	end
	
end

stop_between_stations("red","South Station","red","Alewife")
stop_between_stations('red', 'Alewife', 'red', 'Park Street')
stop_between_stations('red', 'Alewife', 'orange', 'Downtown Crossing')
stop_between_stations('red', 'South Station', 'green', 'Kenmore')