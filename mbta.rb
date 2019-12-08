
# your solution here
def stops_between_stations (start_line, start_station, end_line, end_station)

    red_line = ["South Station", "Kendall", "Central", "Harvard", "Park Street", "Porter", "Davis", "Alewife"]
    green_line = ["Government Center", "Boylston", "Arlington", "Park Street", "Copley", "Hynes", "Kenmore"]
    orange_line = ["North Station", "Haymarket", "State", "Downtown Crossing", "Chinatown", "Park Street", "Back Bay", "Forest Hills"]

    if start_line === "Red" and end_line === "Red"
        ((red_line.index(start_station) - red_line.index(end_station)).abs).to_s + " stops to your destination from " + start_station + " station to " + end_station + " station."

    elsif start_line === "Green" and end_line === "Green"
        ((green_line.index(start_station) - green_line.index(end_station)).abs).to_s + " stops to your destination from " + start_station + " station to " + end_station + " station."

    elsif start_line === "Orange" and end_line === "Orange"
        ((orange_line.index(start_station) - orange_line.index(end_station)).abs).to_s + " stops to your destination from " + start_station + " station to " + end_station + " station."

    elsif start_line === "Red" && end_line === "Green"
        (((red_line.index(start_station) - red_line.index("Park Street")).abs + (green_line.index(end_station) - green_line.index("Park Street")).abs).abs).to_s + " stops to your destination from " + start_station + " station to " + end_station + " station."

    elsif start_line === "Red" && end_line === "Orange"
        (((red_line.index(start_station) - red_line.index("Park Street")).abs + (orange_line.index(end_station) - orange_line.index("Park Street")).abs).abs).to_s + " stops to your destination from " + start_station + " station to " + end_station + " station."

    elsif start_line === "Green" && end_line === "Orange"
        (((green_line.index(start_station) - green_line.index("Park Street")).abs + (orange_line.index(end_station) - orange_line.index("Park Street")).abs).abs).to_s + " stops to your destination from " + start_station + " station to " + end_station + " station."

    end

end