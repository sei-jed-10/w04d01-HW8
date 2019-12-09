

    def stops_between_stations(start_line,start_station,end_line,end_station)

      $subway_lines = {
        red: ["South Station",
            "Kendall",
            "Central",
            "Harvard",
            "Park Street",
            "Porter",
            "Davis",
            "Alewife"],
     green: ["Government Center",
            "Boylston",
            "Arlington",
            "Park Street",
            "Copley",
            "Hynes",
            "Kenmore"],
     orange: ["North Station",
            "Haymarket",
            "State",
            "Downtown Crossing",
            "Chinatown",
            "Park Street",
            "Back Bay",
            "Forest Hills"]
    }


    $stops =0
    $total_stops=0

            indexof_start_station = $subway_lines[start_line.downcase.to_sym].index(start_station)
            indexof_end_station = $subway_lines[end_line.downcase.to_sym].index(end_station)

            if start_line == end_line
                stops = (indexof_start_station-indexof_end_station).abs
                puts stops.to_s+" stops"
            end

            if start_line != end_line
                indexof_parkStreet_start = $subway_lines[start_line.downcase.to_sym].index("Park Street")
                indexof_parkStreet_end = $subway_lines[end_line.downcase.to_sym].index("Park Street")
                park_street_start_line = %(#{indexof_start_station - indexof_parkStreet_start}).abs
                park_street_end_line = %(#{indexof_end_station - indexof_parkStreet_end}).abs
                total_stops = park_street_start_line + park_street_end_line
                puts total_stops+ " stops"
            end
    end

stops_between_stations('Red', 'Alewife', 'Red', 'Park Street') #3 stops
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') # 5 stops
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 7 stops


 ######bonus########

p "Enter your statrt line"

user_input1 = gets

p "Enter your statrt station"

user_input2 = gets

p "Enter your end line"

user_input3 = gets

p "Enter your end station"

user_input4 = gets


stops_between_stations(user_input1, user_input2, user_input3, user_input4)






