# Contest ID: abc105
# Problem ID: abc105_b ( https://atcoder.jp/contests/abc105/tasks/abc105_b )
# Title: B. Cakes and Donuts
# Language: Ruby (2.3.3)
# Submitted: 2018-08-13 02:50:58 +0000 UTC ( https://atcoder.jp/contests/abc105/submissions/3001003 ) 

n = gets.chomp.to_i

a = n / 4 + 1
b = n / 7 + 1

a.times do |i|
  b.times do |j|
    if 4 * i + 7 * j == n
      puts "Yes"
      exit
    end
  end
end

puts "No"