start_of_packed = 0
pack_found = false
File.foreach("input.txt") do |line|
    litter_start = 0
    pack = []
    while !pack_found
        pack = line[litter_start..litter_start+3].split("")
        if pack.uniq! == nil
            start_of_packed = litter_start
            pack_found = true
        end
        litter_start += 1
    end
end
puts start_of_packed+4
# second task
start_of_packed = 0
pack_found = false
File.foreach("input.txt") do |line|
    litter_start = 0
    pack = []
    while !pack_found
        pack = line[litter_start..litter_start+13].split("") #only deferense from first task is 13 instead of 3 to get 14 litter pack
        if pack.uniq! == nil
            start_of_packed = litter_start
            pack_found = true
        end
        litter_start += 1
    end
end
puts start_of_packed+4