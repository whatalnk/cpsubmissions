# Contest ID: agc027
# Problem ID: agc027_a ( https://atcoder.jp/contests/agc027/tasks/agc027_a )
# Title: A. Candy Distribution Again
# Language: Ruby (2.3.3)
# Submitted: 2018-09-17 14:32:30 +0000 UTC ( https://atcoder.jp/contests/agc027/submissions/3217512 ) 

# AGC027 A
n, x = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort

s = a.inject(:+)

if s == x
  puts n
elsif s < x
  puts n - 1
else
  ss = 0
  n.times do |i|
    ss += a[i]
    if ss > x
      puts i
      exit
    end
  end
end