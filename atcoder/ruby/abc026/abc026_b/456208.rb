# Contest ID: abc026
# Problem ID: abc026_b ( https://atcoder.jp/contests/abc026/tasks/abc026_b )
# Title: B. N重丸
# Language: Ruby (2.1.5p273)
# Submitted: 2015-07-27 02:45:11 +0000 UTC ( https://atcoder.jp/contests/abc026/submissions/456208 ) 

n = gets.chomp.to_i

ary = []

while line = gets
  ary << line.chomp.to_i ** 2
end

ary = ary.sort.reverse

res = 0

ary.each_with_index do |c, i|
  if i.even?
    res += c
  else
    res -= c
  end
end

puts res * Math::PI