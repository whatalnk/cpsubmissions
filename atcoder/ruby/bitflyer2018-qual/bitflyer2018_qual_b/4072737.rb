# Contest ID: bitflyer2018-qual
# Problem ID: bitflyer2018_qual_b ( https://atcoder.jp/contests/bitflyer2018-qual/tasks/bitflyer2018_qual_b )
# Title: B. 洋菓子店
# Language: Ruby (2.3.3)
# Submitted: 2019-01-23 07:27:13 +0000 UTC ( https://atcoder.jp/contests/bitflyer2018-qual/submissions/4072737 ) 

a, b, n = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp
n.times do |i|
  if x[i] == "S"
    a -= 1 if a > 0
  elsif x[i] == "C"
    b -= 1 if b > 0
  else
    if a >= b && a > 0
      a -= 1
    elsif b > 0
      b -= 1
    end
  end
end

puts a
puts b