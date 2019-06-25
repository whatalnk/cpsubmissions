# Contest ID: abc010
# Problem ID: abc010_2 ( https://atcoder.jp/contests/abc010/tasks/abc010_2 )
# Title: B. 花占い
# Language: Ruby (1.9.3)
# Submitted: 2015-08-30 09:55:08 +0000 UTC ( https://atcoder.jp/contests/abc010/submissions/482505 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
res = 0
a.each do |i|
  case i
    when 2 then res += 1
    when 4 then res += 1
    when 5 then res += 2
    when 6 then res += 3
    when 8 then res += 1
  end
end
puts res