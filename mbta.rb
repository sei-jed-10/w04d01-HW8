
# your solution here
def stops_between_stations

    puts "Please Enter StartLine: "
    startline = gets
     
    puts "Please Enter StartStation : "
    startstation = gets
    
    puts "Please Enter EndLine : "
    endline = gets
   
    puts "Please Enter EndStation : "
    endstation = gets
    

    subways = [
        {
            line: "Red",
            stations: ["South Station","Kendall","Central","Harvard","Park Street","Porter","Davis","Alewife"]
        },
        {
            line: "Green",
            stations: ["Government Center","Boylston","Arlington","Park Street","Copley","Hynes","Kenmore"]
        },
        {
            line: "Orange",
            stations: ["North Station","Haymarket","State","Downtown Crossing","Chinatown","Park Street","Back Bay","Forest Hills"]
        }
                        ]

    # bounus
    if startline != "Red" && startline != "Green" && startline != "Orange" || endline != "Red" && endline != "Green" && endline != "Orange" 
         puts "The line is wrong"
    end
    # puts "The line is wrong" unless startline == "Red" && startline == "Green" && startline == "Orange" || endline == "Red" && endline == "Green" && endline == "Orange" 


     indexofStartStation = 0
     indexofEndStation = 0
     sharedPoint = 0
     sharedPoint2 = 0
     totalSteps = 0


    i = 0
    j = 0
    while i < subways.length
        while j < subways[i][:stations].length
      
      if startline == subways[i][:line] 
        indexofStartStation = subways[i][:stations].indexOf(startstation)
        sharedPoint =  subways[i][:stations].indexOf("Park Street")
      end
      if endline == subways[i][:line]
        indexofEndStation = subways[i][:stations].indexOf(endstation)
        sharedPoint2 =  subways[i][:stations].indexOf("Park Street")
      end
    
        j+=1
        end
      i+= 1
    end


    if startline == endline then totalSteps =  indexofStartStation-indexofEndStation 
    else totalSteps = (indexofEndStation - sharedPoint2) + (sharedPoint-indexofStartStation)
    end


        # bouns       
    puts "Rider Transfers from #{startline} line from #{startstation}"
    if startline != endline
      puts "Change at Park Street. "	
    end
    puts "Rider Arrives to #{endline} line At #{endstation} "	
                             
    puts totalSteps


end

stops_between_stations