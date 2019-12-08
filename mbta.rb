# your solution here
def stops_between_stations(startLine, startStation, endLine, endStation)

    redLine = ["South Station", "Kendall", "Central", "Harvard", "Park Street", "Porter", "Davis", "Alewife"]
    greenLine = ["Government Center", "Boylston", "Arlington", "Park Street", "Copley", "Hynes", "Kenmore"]
    orangeLine = ["North Station", "Haymarket", "State", "Downtown Crossing", "Chinatown", "Park Street", "Back Bay", "Forest Hills"]
    
    if startLine === "Red" && endLine === "Green"
        ((redLine.index(startStation) - redLine.index("Park Street")).abs + (greenLine.index(endStation) - greenLine.index("Park Street")).abs).abs

    elsif startLine === "Red" && endLine === "Orange"
        ((redLine.index(startStation) - redLine.index("Park Street")).abs + (orangeLine.index(endStation) - orangeLine.index("Park Street")).abs).abs

    elsif startLine === "Red" && endLine === "Red"
        (redLine.index(startStation) - redLine.index(endStation)).abs 
    end
end

p stops_between_stations('Red', 'Alewife', 'Red', 'Park Street')
p stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing')
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')

