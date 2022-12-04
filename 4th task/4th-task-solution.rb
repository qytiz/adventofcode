#first task
range_contained = []
counter = 0
overlap_counter = 0

File.foreach("input.txt","\n") do |line|
    line = line.split(",")
    line.each do |item|
    range_element = []
    begin_of_range = item.split("-")[0].to_i
    end_of_range = item.split("-")[1].to_i
    while begin_of_range <= end_of_range
        range_element << begin_of_range
        begin_of_range += 1
    end
    range_contained << range_element
    end
end
puts range_contained.to_s
first_range = []
range_contained.each do |range|
    if first_range.empty?
        first_range = range
    else
        if (first_range - range).empty? || (range - first_range).empty?
            counter += 1
        end
        first_range = []
    end
end
puts counter
#second task
first_range = []
range_contained.each do |range|
    if first_range.empty?
        first_range = range
    else
        if !(first_range & range).empty? || !(range & first_range).empty?
            overlap_counter += 1
        end
        first_range = []
    end
end
puts overlap_counter
