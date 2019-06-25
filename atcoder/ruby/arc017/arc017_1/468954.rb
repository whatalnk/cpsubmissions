# Contest ID: arc017
# Problem ID: arc017_1 ( https://atcoder.jp/contests/arc017/tasks/arc017_1 )
# Title: A. 素数、コンテスト、素数
# Language: Ruby (1.9.3)
# Submitted: 2015-08-12 09:51:59 +0000 UTC ( https://atcoder.jp/contests/arc017/submissions/468954 ) 

n = gets.chomp.to_i
if n % 2 == 0 then
  puts "NO"
else
  i = 3
  ans = true
  while i < Math.sqrt(n)+1
    if n % i == 0 then
      ans = false
      break
    end
    i += 2
  end
  if ans then
    puts "YES"
  else
    puts "NO"
  end
end