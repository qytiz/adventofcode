# Parse the input file to extract the initial configuration of the stacks and the rearrangement steps
#first task
@stacks = {}
@steps = []
stack_data_writed = false

def line_checker(line)
    if line.include? "["
        index = line.index("[")

        if @stacks[(index/4+1)].nil?
            @stacks[(index/4+1)] = line[index+1]
        else
            @stacks[(index/4+1)] << line[index+1]
        end

        line[index] = " "

        line_checker(line)
    else
        return
    end 
end

File.foreach("input.txt","\n") do |line|
    if line == "\n"
        stack_data_writed = true
        next
    end
    unless stack_data_writed
        line_checker(line)
    else
        next_step = ''
        current_step = []
        line.split(" ").each do |step|
            if !next_step.empty?
                case next_step
                when 'move'
                    current_step << step
                when 'from'
                    current_step << step
                when 'to'
                    current_step << step
                end
                next_step.clear
            else
                next_step = step
            end
        end
        @steps << current_step
    end
end
@steps.each do |step|
    moving = @stacks[step[1].to_i].slice(0..step[0].to_i-1)
    @stacks[step[1].to_i] = @stacks[step[1].to_i][step[0].to_i..@stacks[step[1].to_i].length]
    @stacks[step[2].to_i].prepend(moving.reverse)
end
puts @stacks.sort.to_h.to_s
@stacks.sort.to_h.each do |key, value|
    puts "#{key}: #{value[0]}"
end

#second task
@stacks = {}
@steps = []
stack_data_writed = false

def line_checker(line)
    if line.include? "["
        index = line.index("[")

        if @stacks[(index/4+1)].nil?
            @stacks[(index/4+1)] = line[index+1]
        else
            @stacks[(index/4+1)] << line[index+1]
        end

        line[index] = " "

        line_checker(line)
    else
        return
    end 
end

File.foreach("input.txt","\n") do |line|
    if line == "\n"
        stack_data_writed = true
        next
    end
    unless stack_data_writed
        line_checker(line)
    else
        next_step = ''
        current_step = []
        line.split(" ").each do |step|
            if !next_step.empty?
                case next_step
                when 'move'
                    current_step << step
                when 'from'
                    current_step << step
                when 'to'
                    current_step << step
                end
                next_step.clear
            else
                next_step = step
            end
        end
        @steps << current_step
    end
end
@steps.each do |step|
    moving = @stacks[step[1].to_i].slice(0..step[0].to_i-1)
    @stacks[step[1].to_i] = @stacks[step[1].to_i][step[0].to_i..@stacks[step[1].to_i].length]
    @stacks[step[2].to_i].prepend(moving)
end
puts @stacks.sort.to_h.to_s
@stacks.sort.to_h.each do |key, value|
    puts "#{key}: #{value[0]}"
end
