subway = {
    "red" => ["South Station", "Park Street" ,"Kendall" ,"Central" ,"Harvard" ,"Porter" ,"Davis" ,"Alewife"],
    "green" => ["Government" ,"Center" ,"Park Street" ,"Boylston" ,"Arlington" ,"Copley" ,"Hynes" ,"Kenmore"],
    "orange" =>  ["North Station" ,"Haymarket" ,"Park Street" ,"State" ,"Downtown Crossing" ,"Chinatown" ,"Back Bay" ,"Forest Hills"],
    stops_between_stations: def stops_between_stations(startline,startstation,endline,endstation)
        $steps = 0
        startstation = startline.to_sym
        # p startstation.index(startstation)
        endstation = endstation.to_sym
        # p endstation.index(endstation)
        breakPointS = startstation.index('Park Street')
        breakPointE = endline.index('Park Street')
        $result =0

        if (startline == endline)
            $result = (startstation - endstation).abs  
        elsif (startline != endline)
            $steps = (startstation - breakPointS).abs
            $result = (endstation  - breakPointE).abs - steps 
        end
        return result
    end 
}

stops_between_stations('green', 'Alewife', 'Red', 'Park Street')

