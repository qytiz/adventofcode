require 'byebug'
#first part
callories_carried_by_elfs = []
current_elf_callories = 0
File.foreach('1st-task-data.txt',"\n\n") do |line|
    line = line.split(/\n/).each do |callories|
            current_elf_callories += callories.to_i
    end
    callories_carried_by_elfs << current_elf_callories
    current_elf_callories = 0
end
puts 'Most callories carried by elfs:'   + callories_carried_by_elfs.max.to_s + " number: " + (callories_carried_by_elfs.index(callories_carried_by_elfs.max)+1).to_s
#second part
puts 'Top 3 most callories carried by elfs:' + callories_carried_by_elfs.sort.reverse[0..2].to_s + " numbers: " + (callories_carried_by_elfs.sort.reverse[0..2].map{|callories| callories_carried_by_elfs.index(callories)+1}).to_s
puts 'Top 3 collories carrid by elfs together:' + callories_carried_by_elfs.sort.reverse[0..2].inject(:+).to_s