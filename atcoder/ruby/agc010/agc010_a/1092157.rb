# Contest ID: agc010
# Problem ID: agc010_a ( https://atcoder.jp/contests/agc010/tasks/agc010_a )
# Title: A. Addition
# Language: Ruby (2.3.3)
# Submitted: 2017-02-04 12:11:19 +0000 UTC ( https://atcoder.jp/contests/agc010/submissions/1092157 ) 

n = gets.chomp.to_i
even_ = 0
odd_ = 0
gets.chomp.split(" ").each do |x|
  x = x.to_i
  if x.even? then
    even_ += 1
  else
    odd_ += 1
  end
end
if odd_.odd? then
  puts "NO"
else
  puts "YES"
end
