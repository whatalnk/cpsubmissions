# Contest ID: soundhound2018
# Problem ID: soundhound2018_b ( https://atcoder.jp/contests/soundhound2018/tasks/soundhound2018_b )
# Title: B. 音量
# Language: Ruby (2.3.3)
# Submitted: 2018-01-27 12:10:07 +0000 UTC ( https://atcoder.jp/contests/soundhound2018/submissions/2022158 ) 

n, l, r = gets.chomp.split(" ").map(&:to_i)
input = gets.chomp.split(" ").map(&:to_i)
output = []
input.each do |a|
  if a < l then
    output << l
  elsif a > r then
    output << r
  else
    output << a
  end
end
puts output.join(" ")
