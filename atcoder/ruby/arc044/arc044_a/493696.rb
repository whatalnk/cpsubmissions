# Contest ID: arc044
# Problem ID: arc044_a ( https://atcoder.jp/contests/arc044/tasks/arc044_a )
# Title: A. 素数判定
# Language: Ruby (2.1.5p273)
# Submitted: 2015-09-13 11:12:18 +0000 UTC ( https://atcoder.jp/contests/arc044/submissions/493696 ) 

n = gets.chomp.to_i
ans = true
if n == 1 then
  ans = false
elsif n == 2 then
  ans = true
elsif n % 2 != 0 then
  lim = Math.sqrt(n).to_i + 1
  3.step(lim, 2) do |i|
    if n % i == 0 then
      ans = false
      break
    end
  end
else
  ans = false
end
if ans then
  puts "Prime"
elsif n > 2 && n % 2 != 0 && n % 5 !=0 && n % 3 != 0 then
  puts "Prime"
else
  puts "Not Prime"
end
