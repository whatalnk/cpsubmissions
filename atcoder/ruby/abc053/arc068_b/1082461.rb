# Contest ID: abc053
# Problem ID: arc068_b ( https://atcoder.jp/contests/abc053/tasks/arc068_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-01-28 12:30:03 +0000 UTC ( https://atcoder.jp/contests/abc053/submissions/1082461 ) 

n = gets.chomp.to_i
h = Hash.new(0)
gets.chomp.split(" ").each do |a|
  h[a.to_i] += 1
end

n_even = 0
n_odd = 0
h.each do |k, v|
  if v.even? then
    n_even += 1
  else
    n_odd += 1
  end
end
if n_even.even? then
  puts n_odd + n_even
else
  puts n_odd + n_even - 1
end