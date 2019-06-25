# Contest ID: abc100
# Problem ID: abc100_c ( https://atcoder.jp/contests/abc100/tasks/abc100_c )
# Title: C. *3 or /2
# Language: Ruby (2.3.3)
# Submitted: 2018-08-25 05:33:18 +0000 UTC ( https://atcoder.jp/contests/abc100/submissions/3069103 ) 

n = gets.chomp.to_i

a = gets.chomp.split(" ").map(&:to_i)

n2 = 0

a.each do |i|
  x = i
  while x.even?
    x /= 2
    n2 += 1
  end
end

puts n2