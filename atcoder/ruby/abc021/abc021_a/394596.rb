# Contest ID: abc021
# Problem ID: abc021_a ( https://atcoder.jp/contests/abc021/tasks/abc021_a )
# Title: A. 足し算
# Language: Ruby (2.1.5p273)
# Submitted: 2015-04-28 03:43:50 +0000 UTC ( https://atcoder.jp/contests/abc021/submissions/394596 ) 

n = gets.chomp.to_i
res = n / 2
if n % 2 == 0 then
  puts res
  res.times do
    puts 2
  end
else
  puts res + 1
  res.times do
    puts 2
  end
  puts 1
end
