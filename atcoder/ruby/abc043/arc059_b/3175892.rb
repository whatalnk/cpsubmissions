# Contest ID: abc043
# Problem ID: arc059_b ( https://atcoder.jp/contests/abc043/tasks/arc059_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-09-11 04:11:06 +0000 UTC ( https://atcoder.jp/contests/abc043/submissions/3175892 ) 

s = gets.chomp.split("")

n = s.length
(n-1).times do |i| 
  if s[i] == s[i+1]
    puts "#{i+1} #{i+2}"
    exit
  end
end

(n-2).times do |i| 
  if s[i] == s[i+2]
    puts "#{i+1} #{i+3}"
    exit
  end
end

puts "-1 -1"