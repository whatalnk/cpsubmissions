# Contest ID: abc051
# Problem ID: abc051_b ( https://atcoder.jp/contests/abc051/tasks/abc051_b )
# Title: B. Sum of Three Integers
# Language: Ruby (2.3.3)
# Submitted: 2017-01-07 12:38:10 +0000 UTC ( https://atcoder.jp/contests/abc051/submissions/1056393 ) 

k, s = gets.chomp.split(" ").map(&:to_i)
ret = 0
(0..k).each do |z|
  (0..k).each do |x|
    y = s - z - x
    if y >= 0 && y <= k then
      ret += 1
    end
  end
end
puts ret
