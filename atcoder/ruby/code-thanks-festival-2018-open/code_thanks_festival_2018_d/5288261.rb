# Contest ID: code-thanks-festival-2018-open
# Problem ID: code_thanks_festival_2018_d ( https://atcoder.jp/contests/code-thanks-festival-2018-open/tasks/code_thanks_festival_2018_d )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-05-06 06:22:23 +0000 UTC ( https://atcoder.jp/contests/code-thanks-festival-2018-open/submissions/5288261 ) 

alphabet = ('a'..'z').to_a
num = (1..(alphabet.length)).to_a

h = {}
num.each do |i|
  h[alphabet[i-1]] = i
end

s = gets.chomp.split("").map{|x| h[x]}

ans = 1
l = s.first
(s.length - 1).times do |i|
  if l >= s[i + 1]
    ans += 1
    l = s[i+1]
  end
end
puts ans