#First task
double_items = []
File.foreach("input.txt","\n") do |line, line_num|
    line = line.gsub("\n",'')
    line_length = line.length
    letters_found = []
    line[0..line_length/2-1].each_char do |char|
        line[line_length/2..line_length].each_char do |char2|
            if char == char2 && !letters_found.include?(char2)
                double_items << char
                letters_found << char2
            end
        end
    end
end
puts "dublicates: "+double_items.to_s
items_cost = {a:1,b:2,c:3,d:4,e:5,f:6,g:7,h:8,i:9,j:10,k:11,l:12,m:13,n:14,o:15,p:16,q:17,r:18,s:19,t:20,u:21,v:22,w:23,x:24,y:25,z:26,
            A:27,B:28,C:29,D:30,E:31,F:32,G:33,H:34,I:35,J:36,K:37,L:38,M:39,N:40,O:41,P:42,Q:43,R:44,S:45,T:46,U:47,V:48,W:49,X:50,Y:51,Z:52}
items_score = 0
double_items.each do |item|
    items_score += items_cost[item.to_sym]
end
puts "Total score: "+items_score.to_s

#Second task

double_items = []
lines_of_group = []
File.foreach("input.txt","\n") do |line|
    line = line.gsub("\n",'')
    lines_of_group << line
    if lines_of_group.length == 3
        lines_of_group[0].each_char do |char|
            if lines_of_group[1].include?(char) && lines_of_group[2].include?(char)
                double_items << char
                break
            end
        end
        lines_of_group = []
    end
end
puts "dublicates: "+double_items.to_s
items_cost = {a:1,b:2,c:3,d:4,e:5,f:6,g:7,h:8,i:9,j:10,k:11,l:12,m:13,n:14,o:15,p:16,q:17,r:18,s:19,t:20,u:21,v:22,w:23,x:24,y:25,z:26,
            A:27,B:28,C:29,D:30,E:31,F:32,G:33,H:34,I:35,J:36,K:37,L:38,M:39,N:40,O:41,P:42,Q:43,R:44,S:45,T:46,U:47,V:48,W:49,X:50,Y:51,Z:52}
items_score = 0
double_items.each do |item|
    items_score += items_cost[item.to_sym]
end
puts "Total score: "+items_score.to_s