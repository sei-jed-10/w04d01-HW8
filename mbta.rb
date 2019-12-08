
# your solution here

$subwayLines = {
    "Red" => [
      'South Station',
      'Kendall',
      'Central',
      'Harvard',
      'Park Street',
      'Porter',
      'Davis',
      'Alewife'
    ],
    "Green" => [
      'Government Center',
      'Boylston',
      'Arlington',
      'Park Street',
      'Copley',
      'Hynes',
      'Kenmore'
    ],
   "Orange" => [
      'North Station',
      'Haymarket',
      'State',
      'Downtown Crossing',
      'Chinatown',
      'Park Street',
      'Back Bay',
      'Forest Hills'
    ]
  }

    def stops_between_stations(startLine, startStation, endLine, endStation)

    # puts "input a startLine"
    # startLine = gets.chomp
    # puts "input a startStation"
    # startStation = gets.chomp
    # puts "input a endLine"
    # endLine = gets.chomp
    # puts "input a endStation"
    # endStation = gets.chomp

    $startStationIndex = $subwayLines[startLine].index(startStation)
    $endStationIndex = $subwayLines[endLine].index(endStation)

    if startLine === endLine
      return ($startStationIndex - $endStationIndex).abs
    end

    $startLineParkStreetIndex = $subwayLines[startLine].index('Park Street')
 	  $tripToParkStreet = ($startStationIndex - $startLineParkStreetIndex).abs
 	  $endLineParkStreetIndex = $subwayLines[endLine].index('Park Street')
    $tripToDestination = ($endStationIndex - $endLineParkStreetIndex).abs
    $totalTrip = $tripToParkStreet + $tripToDestination
    return $totalTrip
end

    puts stops_between_stations('Red', 'Alewife', 'Red', 'Park Street') # 3 stops
    puts stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') # 5 stops
    puts stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 7 stops
