# Contest ID: code-festival-2015-qualb
# Problem ID: codefestival_2015_qualB_c ( https://atcoder.jp/contests/code-festival-2015-qualb/tasks/codefestival_2015_qualB_c )
# Title: C. 旅館/Hotel
# Language: Ruby (2.1.5p273)
# Submitted: 2015-11-07 10:14:29 +0000 UTC ( https://atcoder.jp/contests/code-festival-2015-qualb/submissions/558510 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
d = n - m
flag = true
if d < 0 then
  puts "NO"
else
  rooms = gets.chomp.split(" ").map(&:to_i).sort
  groups = gets.chomp.split(" ").map(&:to_i).sort
  j = 0
  groups.each_with_index do |group, i|
    if rooms[j].nil? then
      puts "NO"
      flag = false
      break
    end
    if group > rooms[j] then
      j += 1
      redo
    end
    j += 1
    if i - j > d then
      puts "NO"
      flag = false
      break
    end
  end
  puts "YES" if flag
end