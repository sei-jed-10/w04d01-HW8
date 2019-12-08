
# your solution here


class Line
    attr_reader :line
    def initialize(stops)
        @line = stops
    end

    def calc_distance(from, to)
        indexFrom = @line.find_index(from)
        indexTo = @line.find_index(to)
        return (indexFrom - indexTo).abs
    end

    def display_stops(from, to, multi_lines=false)
        temp = @line
        temp.reverse! if @line.find_index(from) > @line.find_index(to)

        indexFrom = @line.find_index(from)
        indexTo = @line.find_index(to)

        indexFrom = @line.find_index(from)+1 if multi_lines && from=="Park Street"

        return temp.slice(indexFrom..indexTo)
    end
end

class Subway
    attr_reader :lines
    attr_reader :intersected_stop
    def initialize(lines)
      @lines = lines
      @intersected_stop = "Park Street"
    end

    def stops_between_stations(line1, from, line2, to)
        puts "You must travel through the following stops on the #{line1.capitalize} line:"
        if line1.downcase == line2.downcase
            puts @lines[line1.downcase].display_stops(from, to)
            puts @lines[line1.downcase].calc_distance(from, to).to_s + " stops in total."
        else
            puts @lines[line1.downcase].display_stops(from, @intersected_stop, true)
            puts "Change at Park Street."
            puts "Your trip continues through the following stops on the #{line2.capitalize} line:"
            puts @lines[line2.downcase].display_stops(@intersected_stop, to, true)
            distance = @lines[line1.downcase].calc_distance(from, @intersected_stop) + @lines[line2.downcase].calc_distance(@intersected_stop, to)
            puts distance.to_s + " stops in total."
        end
    end
end

red = Line.new(["South Station","Kendall","Central","Harvard","Park Street","Porter","Davis","Alewife"])
green = Line.new(["Government Center","Boylston","Arlington","Park Street","Copley","Hynes","Kenmore"])
orange = Line.new(["North Station","Haymarket","State","Downtown Crossing","Chinatown","Park Street","Back Bay","Forest Hills"])

subway = Subway.new({"red" => red, "green" => green, "orange" => orange})

puts subway.stops_between_stations('Red', 'Alewife', 'Red', 'Park Street')
puts subway.stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing')
puts subway.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')

print "Enter start line: "
startLine = gets.chomp.to_s.downcase
print "Enter start station: "
startStation = gets.chomp.to_s.capitalize
print "Enter end line: "
endLine = gets.chomp.to_s.downcase
print "Enter end station: "
endStation = gets.chomp.to_s.capitalize

puts subway.stops_between_stations(startLine, startStation, endLine, endStation)

