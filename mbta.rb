
# your solution here
$subwayLines = {
     "Red" => ['South Station','Kendall','Central','Harvard','Park Street','Porter','Davis','Alewife'
     ],
     "Green" => ['Government Center','Boylston','Arlington','Park Street','Copley','Hynes','Kenmore'
     ],
    "Orange" => ['North Station','Haymarket','State','Downtown Crossing','Chinatown','Park Street','Back Bay','Forest Hills'
     ]
   }

      def stops_between_stations(startLine, startStation, endLine, endStation)

      $startStationIndex = $subwayLines[startLine].index(startStation)
     $endStationIndex = $subwayLines[endLine].index(endStation)


      $startLineParkStreetIndex = $subwayLines[startLine].index('Park Street')
  	  $tripToParkStreet = ($startStationIndex - $startLineParkStreetIndex).abs
  	  $endLineParkStreetIndex = $subwayLines[endLine].index('Park Street')
     $tripToDestination = ($endStationIndex - $endLineParkStreetIndex).abs
     $totalTrip = $tripToParkStreet + $tripToDestination
     return $totalTrip
end

      puts stops_between_stations('Red', 'Alewife', 'Red', 'Park Street') #3stops
     puts stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') #5stops
     puts stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') #7stops
