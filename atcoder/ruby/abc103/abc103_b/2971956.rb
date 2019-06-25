# Contest ID: abc103
# Problem ID: abc103_b ( https://atcoder.jp/contests/abc103/tasks/abc103_b )
# Title: B. String Rotation
# Language: Ruby (2.3.3)
# Submitted: 2018-08-08 10:49:42 +0000 UTC ( https://atcoder.jp/contests/abc103/submissions/2971956 ) 

s1 = gets.chomp
s2 = gets.chomp
n = s2.length

n.times do |i|
  if s1 == s2[(n-1-i)..(n-1)] + s2[0...(n-1-i)] then
    puts "Yes"
    exit
  end
end
puts "No"