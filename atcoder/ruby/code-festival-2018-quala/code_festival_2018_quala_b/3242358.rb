# Contest ID: code-festival-2018-quala
# Problem ID: code_festival_2018_quala_b ( https://atcoder.jp/contests/code-festival-2018-quala/tasks/code_festival_2018_quala_b )
# Title: B. みかん
# Language: Ruby (2.3.3)
# Submitted: 2018-09-22 12:08:06 +0000 UTC ( https://atcoder.jp/contests/code-festival-2018-quala/submissions/3242358 ) 

n, m, a, b = gets.chomp.split(" ").map(&:to_i)

orange = Array.new(n+1, 0)

m.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  l.upto(r) do |i|
    orange[i] = 1
  end
end

asum = orange.inject(:+)

puts asum * a + (n - asum) * [a, b].max