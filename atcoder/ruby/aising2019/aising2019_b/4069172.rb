# Contest ID: aising2019
# Problem ID: aising2019_b ( https://atcoder.jp/contests/aising2019/tasks/aising2019_b )
# Title: B. Contests
# Language: Ruby (2.3.3)
# Submitted: 2019-01-22 12:17:50 +0000 UTC ( https://atcoder.jp/contests/aising2019/submissions/4069172 ) 

n = gets.chomp.to_i

a, b = gets.chomp.split(" ").map(&:to_i)

q1 = 0
q2 = 0
q3 = 0

q = gets.chomp.split(" ").map(&:to_i)

q.each do |x|
  if x > b
    q3 += 1
  elsif x > a
    q2 += 1
  else
    q1 += 1
  end
end

puts [q1, q2, q3].min
