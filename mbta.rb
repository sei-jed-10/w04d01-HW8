subwayarr = {red:['South Station', 'Kendall', 'Central', 'Harvard', 'Park Street', 'Porter', 'Davis', 'Alewife'],
green:['Government Center', 'Boylston', 'Arlington', 'Park Street', 'Copley', 'Hynes', 'Kenmore'],
orange:['North Station', 'Haymarket', 'State', 'Downtown Crossing', 'Chinatown', 'Park Street', 'Back Bay', 'Forest Hills']}

p subwayarr
p subwayarr[:red]
# your solution here
def stops_between_stations(firstline, firststation , lastline, laststation)

end


stops_between_stations('Red', 'Alewife', 'Red', 'Park Street')) // 3 stops
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') // 5 stops
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') // 7 stops