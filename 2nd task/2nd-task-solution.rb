#FIrst half of the task
total_score = 0
File.foreach("input.txt","\n") do |line, line_num|
    comb_played = line.split(" ")
        
        case comb_played[0]
        when "A"
            case comb_played[1]
                when "Y"
                    total_score += 2
                    total_score += 6
                when "X"
                    total_score += 1
                    total_score += 3
                when "Z" 
                    total_score += 3
                end
        when "B"
            case comb_played[1]
                when "Z"
                    total_score += 3
                    total_score += 6
                when "Y"
                    total_score += 2
                    total_score += 3
                when "X"
                    total_score += 1
                end
        when "C"
            case comb_played[1]
                when "X"
                    total_score += 1
                    total_score += 6
                when "Z"
                    total_score += 3
                    total_score += 3
                when "Y"
                    total_score += 2
                end
        end
end
puts "Total score: #{total_score}"
#Second half of the task
total_score = 0
File.foreach("input.txt","\n") do |line, line_num|
    comb_played = line.split(" ")
        
        case comb_played[0]
        when "A"
            case comb_played[1]
                when "Z"
                    total_score += 2
                    total_score += 6
                when "Y"
                    total_score += 1
                    total_score += 3
                when "X"
                    total_score += 3
                end
        when "B"
            case comb_played[1]
                when "Z"
                    total_score += 3
                    total_score += 6
                when "Y"
                    total_score += 2
                    total_score += 3
                when "X"
                    total_score += 1
                end
        when "C"
            case comb_played[1]
            when "Z"
                total_score += 1
                total_score += 6
            when "Y"
                total_score += 3
                total_score += 3
            when "X"
                total_score += 2
            end
        end
end
puts "Total score: #{total_score}"