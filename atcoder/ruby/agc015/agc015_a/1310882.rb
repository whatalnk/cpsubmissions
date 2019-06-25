# Contest ID: agc015
# Problem ID: agc015_a ( https://atcoder.jp/contests/agc015/tasks/agc015_a )
# Title: A. A+...+B Problem
# Language: Ruby (2.3.3)
# Submitted: 2017-05-27 12:13:45 +0000 UTC ( https://atcoder.jp/contests/agc015/submissions/1310882 ) 

N, A, B = gets.chomp.split(" ").map(&:to_i)
if N == 1 then
  if A == B then
    puts 1
  else
    puts 0
  end
else
  if A == B then
    puts 1
  elsif A > B then
    puts 0
  else
    puts (B - A) * (N - 2) + 1
  end
end
