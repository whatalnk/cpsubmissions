# Contest ID: abc111
# Problem ID: abc111_b ( https://atcoder.jp/contests/abc111/tasks/abc111_b )
# Title: B. AtCoder Beginner Contest 111
# Language: Ruby (2.3.3)
# Submitted: 2018-10-01 06:41:32 +0000 UTC ( https://atcoder.jp/contests/abc111/submissions/3314859 ) 

n = gets.chomp.to_i

1.upto(9) do |i|
  x = 111 * i
  if n <= x
    puts x
    exit
  end
end