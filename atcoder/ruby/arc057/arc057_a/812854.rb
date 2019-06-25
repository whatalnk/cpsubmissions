# Contest ID: arc057
# Problem ID: arc057_a ( https://atcoder.jp/contests/arc057/tasks/arc057_a )
# Title: A. 2兆円
# Language: Ruby (2.3.3)
# Submitted: 2016-07-20 07:55:26 +0000 UTC ( https://atcoder.jp/contests/arc057/submissions/812854 ) 

a, k = gets.chomp.split(" ").map(&:to_i)

aim = 2 * 10**12
day = 0
if k == 0
  puts aim - a
else
  while true
    a += (1 + k * a)
    day += 1
    if a >= aim then
      puts day
      break
    end
  end
end
