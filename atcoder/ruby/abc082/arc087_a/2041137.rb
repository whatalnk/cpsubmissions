# Contest ID: abc082
# Problem ID: arc087_a ( https://atcoder.jp/contests/abc082/tasks/arc087_a )
# Title: C. Good Sequence
# Language: Ruby (2.3.3)
# Submitted: 2018-01-30 12:17:08 +0000 UTC ( https://atcoder.jp/contests/abc082/submissions/2041137 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

h = Hash.new(0)
a.each do |i|
  h[i] += 1
end

ans = 0
h.each do |k, v|
  if k < v then
    ans += v - k
  elsif k > v then
    ans += v
  end
end

puts ans