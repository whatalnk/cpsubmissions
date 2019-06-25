# Contest ID: code-festival-2018-qualb
# Problem ID: code_festival_2018_qualb_b ( https://atcoder.jp/contests/code-festival-2018-qualb/tasks/code_festival_2018_qualb_b )
# Title: B. Tensai
# Language: Ruby (2.3.3)
# Submitted: 2018-10-14 12:09:44 +0000 UTC ( https://atcoder.jp/contests/code-festival-2018-qualb/submissions/3406605 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
ab = []
ans = 0
abmax = [0, 0]
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  ab << [a, b]
  ans += a * b
  if b > abmax[1]
    abmax = [a, b]
  elsif b == abmax[1]
    if a > abmax[0]
      abmax = [a, b]
    end
  end
end

puts ans - abmax[0] * abmax[1] + (abmax[0] + x) * abmax[1]