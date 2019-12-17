class Subway
	def stops_between_stations(start_line, start_station, end_line, end_station)
		s = SubwayLines.new
		lines = s.getLines 		#get all lines with stations
		stops = lines[start_line]		#get all stations for start line
		start_station_index = stops.find_index(start_station) 		#get index for start_station
		common_station_index = stops.find_index(s.getCommonStation)		#get index for intersected station for all subway lines
		start_diff = start_station_index - common_station_index		#finding the index difference for start_station and intersected station,this will be
																	#the total number of stops for the start line
		stops = lines[end_line]		#get all stations for end_station
		end_station_index = stops.find_index(end_station)		#get end station index
		common_station_index = stops.find_index(s.getCommonStation) #get common station index
		end_diff = end_station_index - common_station_index 	#the total number of stops for the end line
		print start_diff.abs() + end_diff.abs() , ' Stops in total'    #adding both lines stops count to get total number of stops
	end

class SubwayLines
	#initializing the Subway line details with their stops 
	def initialize()
		@lines = Hash[
				'Red' => ['South Station', 'Kendall', 'Central','Harvard', 'Park Street', 'Porter', 'Davis', 'Alewife'],
				'Green' => ['Government Center','Boylston', 'Arlington', 'Park Street', 'Copley', 'Hynes', 'Kenmore'],
				'Orange' => ['North Station', 'Haymarket', 'State', 'Downtown Crossing', 'Chinatown', 'Park Street', 'Back Bay','Forest Hills']
		]
		@common_station = 'Park Street'
	end
	
	#Common intersected stop for all the three lines
	def getCommonStation
		@common_station
	end
	
	#get the lines hash object
	def getLines
		@lines
	end
end

s=Subway.new
#calling the method to get no of stops and their names
s.stops_between_stations('Red', 'Alewife', 'Red', 'Park Street')
s.stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing')
s.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')
s.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')