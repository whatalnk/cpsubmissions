# Contest ID: arc040
# Problem ID: arc040_a ( https://atcoder.jp/contests/arc040/tasks/arc040_a )
# Title: A. 床塗り
# Language: Ruby (2.1.5p273)
# Submitted: 2015-06-13 12:44:13 +0000 UTC ( https://atcoder.jp/contests/arc040/submissions/424907 ) 

n = gets.chomp.to_i
r = 0
b = 0
n.times do
  gets.chomp.split("").each do |i|
    if i == "R" then
      r += 1
    elsif i == "B" then
      b += 1
    end
  end
end
if r > b then
  puts 'TAKAHASHI'
elsif r < b then
  puts 'AOKI'
else
  puts 'DRAW'
end

