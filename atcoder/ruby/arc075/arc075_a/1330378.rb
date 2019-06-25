# Contest ID: arc075
# Problem ID: arc075_a ( https://atcoder.jp/contests/arc075/tasks/arc075_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-06-04 01:56:45 +0000 UTC ( https://atcoder.jp/contests/arc075/submissions/1330378 ) 

n = gets.chomp.to_i
s = []
ssum = 0
n.times do
  x = gets.chomp.to_i
  ssum += x
  s << x
end

s.sort!
if ssum % 10 == 0 then
  while x = s.shift
    if x % 10 != 0 then
      puts ssum - x
      exit
    end
  end
  puts 0
else
  puts ssum
end
