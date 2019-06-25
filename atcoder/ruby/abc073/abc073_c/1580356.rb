# Contest ID: abc073
# Problem ID: abc073_c ( https://atcoder.jp/contests/abc073/tasks/abc073_c )
# Title: C. Write and Erase
# Language: Ruby (2.3.3)
# Submitted: 2017-09-09 12:32:49 +0000 UTC ( https://atcoder.jp/contests/abc073/submissions/1580356 ) 

n = gets.chomp.to_i
h = Hash.new(0)
n.times do
  a = gets.chomp.to_i
  h[a] += 1
end
ans = 0
h.each do |k, v|
  if v.odd?
    ans += 1
  end
end
puts ans