# Contest ID: abc036
# Problem ID: abc036_b ( https://atcoder.jp/contests/abc036/tasks/abc036_b )
# Title: B. 回転
# Language: Ruby (2.3.3)
# Submitted: 2016-04-20 12:44:20 +0000 UTC ( https://atcoder.jp/contests/abc036/submissions/700022 ) 

n = gets.chomp.to_i

field = []
while line = gets
  field << line.split("")
end
(0..(n-1)).each do |i|
  r = ""
  (n-1).downto(0).each do |j|
    r += field[j][i]
  end
  puts r
end
