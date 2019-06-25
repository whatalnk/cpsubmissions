# Contest ID: abc123
# Problem ID: abc123_b ( https://atcoder.jp/contests/abc123/tasks/abc123_b )
# Title: B. Five Dishes
# Language: Ruby (2.3.3)
# Submitted: 2019-04-06 12:16:48 +0000 UTC ( https://atcoder.jp/contests/abc123/submissions/4848064 ) 

a = []
b = []

5.times do
  x = gets.chomp.to_i
  if x % 10 == 0
    a << x
  else
    b << x
  end
end

b.sort_by!{|x| x % 10}

ret = 0
ret += a.inject(:+) unless a.empty?
x = b.shift
ret += x unless x.nil?
b.each do |x|
  ret += (x / 10 + 1) * 10
end
puts ret