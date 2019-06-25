# Contest ID: agc017
# Problem ID: agc017_b ( https://atcoder.jp/contests/agc017/tasks/agc017_b )
# Title: B. Moderate Differences
# Language: Ruby (2.3.3)
# Submitted: 2017-07-10 14:48:42 +0000 UTC ( https://atcoder.jp/contests/agc017/submissions/1415096 ) 

n, a, b, c, d = gets.chomp.split(" ").map(&:to_i)

(0...n).each do |k|
  if k * c - (n - 1 - k) * d <= b - a && k * d - (n - 1 - k) * c >= b - a then
    puts "YES"
    exit
  end
end
puts "NO"