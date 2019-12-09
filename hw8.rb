
    def stops_between_stations(startLine, startStation, endLine, endStation)
      $subwayLines = {
          Red:[
            'South Station',
            'Kendall',
            'Central',
            'Harvard',
            'Park Street',
            'Porter',
            'Davis',
            'Alewife'
          ],
          Green: [
            'Government Center',
            'Boylston',
            'Arlington',
            'Park Street',
            'Copley',
            'Hynes',
            'Kenmore'
          ],
         Orange: [
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

      $startStationIndex = $subwayLines[startLine.to_sym].index(startStation)

      $endStationIndex = $subwayLines[endLine.to_sym].index(endStation)

    if (startLine === endLine)
    # p startStationIndex

      return ($startStationIndex - $endStationIndex).abs

    end
    $startLineParkStreetIndex = $subwayLines[startLine.to_sym].index('Park Street')
     $tripToParkStreet = ($startStationIndex - $startLineParkStreetIndex).abs
     $endLineParkStreetIndex = $subwayLines[endLine.to_sym].index('Park Street')
    $tripToDestination = ($endStationIndex - $endLineParkStreetIndex).abs
    $totalTrip = $tripToParkStreet + $tripToDestination
    return $totalTrip
end
    puts stops_between_stations("Red", "Alewife", "Red", "Park Street")
    puts stops_between_stations("Red", "Alewife", "Orange", "Downtown Crossing")
    puts stops_between_stations("Red", "South Station", "Green", "Kenmore")
