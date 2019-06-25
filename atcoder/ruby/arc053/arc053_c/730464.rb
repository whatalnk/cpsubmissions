# Contest ID: arc053
# Problem ID: arc053_c ( https://atcoder.jp/contests/arc053/tasks/arc053_c )
# Title: C. 魔法使い高橋君
# Language: Ruby (2.3.3)
# Submitted: 2016-05-14 15:24:48 +0000 UTC ( https://atcoder.jp/contests/arc053/submissions/730464 ) 

n = gets.chomp.to_i
dec = []
inc = []
while line = gets
  a, b = line.chomp.split(" ").map(&:to_i)
  if a < b then
    dec << [a, b]
  else
    inc << [-b, a]
  end
end
dec.sort_by!{|v| v[0]}
inc.sort_by!{|v| v[0]}
ans = 0
curr = 0
dec.each do |x|
  up, down = x
  ans = [ans, curr+up].max
  curr += (up - down)
end
inc.each do |x|
  down, up = x
  ans = [ans, curr+up].max
  curr += (up - down.abs)  
end
puts ans
