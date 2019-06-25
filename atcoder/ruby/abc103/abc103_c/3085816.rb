# Contest ID: abc103
# Problem ID: abc103_c ( https://atcoder.jp/contests/abc103/tasks/abc103_c )
# Title: C. Modulo Summation
# Language: Ruby (2.3.3)
# Submitted: 2018-08-26 13:22:05 +0000 UTC ( https://atcoder.jp/contests/abc103/submissions/3085816 ) 

require 'prime'
n = gets.chomp
a = gets.chomp.split(" ").map(&:to_i)

h = Hash.new(0)

a.each do |i|
  Prime.prime_division(i).each do |n, e|
    h[n] = e if h[n] < e
  end
end

m = 1
h.each do |n, e|
  m *= (n**e)
end

m -= 1

puts a.map{|i| m % i}.inject(:+)