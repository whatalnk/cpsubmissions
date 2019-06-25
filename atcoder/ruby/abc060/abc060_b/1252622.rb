# Contest ID: abc060
# Problem ID: abc060_b ( https://atcoder.jp/contests/abc060/tasks/abc060_b )
# Title: B. Choose Integers
# Language: Ruby (2.3.3)
# Submitted: 2017-04-29 13:20:14 +0000 UTC ( https://atcoder.jp/contests/abc060/submissions/1252622 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
x = a
h = Hash.new()
while true
  k = (x + c) % b
  break if h.has_key?(k)
  h[k] = 1
  x += a
end
if h.has_key?(0) then
  puts "YES"
else
  puts "NO"
end
