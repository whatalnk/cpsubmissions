# Contest ID: arc036
# Problem ID: arc036_a ( https://atcoder.jp/contests/arc036/tasks/arc036_a )
# Title: A. ぐっすり
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-26 06:07:20 +0000 UTC ( https://atcoder.jp/contests/arc036/submissions/477627 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
a = []
a << gets.chomp.to_i
a << gets.chomp.to_i
i = 2
while line = gets
  a << line.chomp.to_i
  st = a[i-2] + a[i-1] + a[i]
  if st < k then
    puts i + 1
    break
  else
    i += 1
  end
end
if i == n then
  puts -1
end