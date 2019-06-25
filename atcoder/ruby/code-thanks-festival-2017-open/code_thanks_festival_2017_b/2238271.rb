# Contest ID: code-thanks-festival-2017-open
# Problem ID: code_thanks_festival_2017_b ( https://atcoder.jp/contests/code-thanks-festival-2017-open/tasks/code_thanks_festival_2017_b )
# Title: B. Concatenated Palindrome
# Language: Ruby (2.3.3)
# Submitted: 2018-03-21 04:16:15 +0000 UTC ( https://atcoder.jp/contests/code-thanks-festival-2017-open/submissions/2238271 ) 

s = gets.chomp
ss = s.reverse

ans = ss.length
ss.length.times do |i|
  sss = s + ss[i..-1]
  if sss == sss.reverse then
    ans = ss.length - i
  end
end
if s == ss then
  puts 0
else
  puts ans
end