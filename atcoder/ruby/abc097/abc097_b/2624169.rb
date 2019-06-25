# Contest ID: abc097
# Problem ID: abc097_b ( https://atcoder.jp/contests/abc097/tasks/abc097_b )
# Title: B. Exponential
# Language: Ruby (2.3.3)
# Submitted: 2018-06-06 01:48:04 +0000 UTC ( https://atcoder.jp/contests/abc097/submissions/2624169 ) 

x = gets.chomp.to_i
y = Math.sqrt(x).to_i + 1
if x == 1 then
  puts 1
  exit
end

ans = 1
2.upto(y) do |i|
  a = i
  10.times do |j|
    a *= i
    if a > x then
      break
    elsif a > ans then
      ans = a
    end
  end
end
puts ans