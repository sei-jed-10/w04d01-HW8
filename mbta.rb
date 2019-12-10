REDLINE = ["South Station","Kendall","Central","Harvard","Park Street","Porter","Davis","Alewife"]
GREENLINE = ["Government Center","Boylston","Arlington","Park Street","Copley","Hynes","Kenmore"]
ORANGELINE = ["North Station","Haymarket", "State","Downtown Crossing","Chinatown", "Park Street", "Back Bay","Forest Hills"]


def stops_between_stations(startLine, startStation, endLine, endStation)
    if (startLine == "Red" and endLine == "Red")
        p (REDLINE.index(startStation.downcase) - REDLINE.index(endStation.downcase)).abs
    elsif (startLine == "Green" and endLine == "Green")
        p (GREENLINE.index(startStation.downcase) - GREENLINE.index(endStation.downcase)).abs
        elsif (startLine == "Orange" and endLine == "Orange")
            p (ORANGELINE.index(startStation.downcase) - ORANGELINE.index(endStation.downcase)).abs
        elsif ((startLine == "Red" and endLine == "Green") or (startLine == "Green" and endLine == "Red"))
            p (REDLINE.index(startStation.downcase) - GREENLINE.index(endStation.downcase)).abs
        elsif((startLine == "Red" and endLine == "Orange") or (startLine == "Orange" and endLine == "Red"))
            p (REDLINE.index(startStation.downcase) - ORANGELINE.index(endStation.downcase)).abs

        end
    end

    stops_between_stations('Red', 'Alewife', 'Red', 'Park Street')) // 3 stops
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') // 5 stops
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') // 7 stops
  



