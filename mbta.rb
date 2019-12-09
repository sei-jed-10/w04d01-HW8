$subwayarr = {Red:['South Station', 'Kendall', 'Central', 'Harvard', 'Park Street', 'Porter', 'Davis', 'Alewife'],
Green:['Government Center', 'Boylston', 'Arlington', 'Park Street', 'Copley', 'Hynes', 'Kenmore'],
Orange:['North Station', 'Haymarket', 'State', 'Downtown Crossing', 'Chinatown', 'Park Street', 'Back Bay', 'Forest Hills']}

$conter = 0
$conter2 = 0
$conter3 = 0
#p subwayarr[:red.to_sym].index("Park Street")

def stops_between_stations(firstline, firststation, lastline, laststation)
    firstS = $subwayarr[firstline.to_sym].index(firststation)
    lastS = $subwayarr[lastline.to_sym].index(laststation)
    parkFirst = $subwayarr[firstline.to_sym].index('Park Street')
    parkLast = $subwayarr[lastline.to_sym].index('Park Street')
    firstLineLength = $subwayarr[firstline.to_sym].length
    lasttLineLength = $subwayarr[lastline.to_sym].length

    j = 0
    ##########################
    if firstline == lastline
        while firstS < lastS do
            $conter += 1
            firstS = firstS + 1
        end
        p $conter.to_s + " Stops"
    end
    ##########################

    if firstline != lastline
        if parkFirst > firstS
            while firstS < parkFirst do
                $conter2 += 1
                firstS = firstS + 1
            end
            while parkLast < lastS
                $conter2 += 1
                parkLast = parkLast + 1        
            end
            p $conter2.to_s + " Stops"
        end
        #############################
        if parkFirst < firstS
            while firstS < firstLineLength do
                $conter3 += 1
                firstS = firstS + 1
            end
            while j <= lastS
                $conter3 += 1
                j = j + 1        
            end
            p $conter3.to_s + " Stops"
        end
        ###############################
    end
    
    
end
stops_between_stations('Red', 'Park Street', 'Red', 'Alewife') # 3 stops
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') # 5 stops
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 7 stops