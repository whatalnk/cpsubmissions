# Contest ID: abc033
# Problem ID: abc033_b ( https://atcoder.jp/contests/abc033/tasks/abc033_b )
# Title: B. 町の合併
# Language: Ruby (2.1.5p273)
# Submitted: 2016-02-06 12:08:53 +0000 UTC ( https://atcoder.jp/contests/abc033/submissions/629258 ) 

n = gets.chomp.to_i
towns = []
populations = []
sum = 0
n.times do 
  s, p = gets.chomp.split(" ")
   p = p.to_i
  sum += p
  towns << s
  populations << p
end
n.times do |i|
  if populations[i] * 2 > sum then
    puts towns[i]
    exit
  end
end
puts "atcoder"
