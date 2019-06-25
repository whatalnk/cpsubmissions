# Contest ID: abc015
# Problem ID: abc015_2 ( https://atcoder.jp/contests/abc015/tasks/abc015_2 )
# Title: B. 高橋くんの集計
# Language: Ruby (1.9.3)
# Submitted: 2014-11-22 12:41:07 +0000 UTC ( https://atcoder.jp/contests/abc015/submissions/282383 ) 

a = gets.to_f
b = gets.chomp.split(" ").map(&:to_i)
i = 0
sum = 0
b.each do |n|
  if n == 0 then
    i += 1
  end
  sum += n
end
puts (sum/(a-i)).ceil