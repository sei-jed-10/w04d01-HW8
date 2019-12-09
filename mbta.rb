
subwayLines = [
    Red= [
      "South Station",
      "Park Street",
      "Kendall",
      "Central",
      "Harvard",
      "Porter",
      "Davis",
      "Alewife"
    ],
    Green= [
      "Government Center",
      "Park Street",
      "Boylston",
      "Arlington",
      "Copley",
      "Hynes",
      "Kenmore"
    ],
    Orange= [
      "North Station",
      "Haymarket",
      "Park Street",
      "State",
      "Downtown Crossing",
      "Chinatown",
      "Back Bay",
      "Forest Hills"
    ]
  ]
  
  def stopsBetweenStations(startLine, startStation, endLine, endStation)

     $startStationIndex = (startLine).index(startStation)

     $endStationIndex = (endLine).index(endStation)

     if (startLine === endLine) 
      return ($startStationIndex - $endStationIndex).abs
    end

    $startLineParkStreetIndex = (startLine).index("Park Street")

    $tripToParkStreet = ($startStationIndex - $startLineParkStreetIndex).abs

    $endLineParkStreetIndex = (endLine).index("Park Street")

    $tripToDestination = ($endStationIndex - $endLineParkStreetIndex).abs

    $totalTrip = $tripToParkStreet + $tripToDestination

    return $totalTrip

  end

  
puts stopsBetweenStations(Red, 'Alewife', Red, 'Alewife').to_s+" stops"
puts stopsBetweenStations(Red, 'Alewife', Red, 'South Station').to_s+" stops"  
puts stopsBetweenStations(Red, 'Central', Green, 'Arlington').to_s+" stops"