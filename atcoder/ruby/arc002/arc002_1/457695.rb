# Contest ID: arc002
# Problem ID: arc002_1 ( https://atcoder.jp/contests/arc002/tasks/arc002_1 )
# Title: A. うるう年
# Language: Ruby (1.9.3)
# Submitted: 2015-07-31 08:06:51 +0000 UTC ( https://atcoder.jp/contests/arc002/submissions/457695 ) 

y = gets.chomp.to_i
if y % 4 == 0 then
  if y % 100  == 0 then
    if y % 400 == 0 then
      puts "YES"
    else
      puts "NO"
    end
  else
    puts "YES"
  end
else
  puts "NO"
end
