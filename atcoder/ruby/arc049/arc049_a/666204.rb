# Contest ID: arc049
# Problem ID: arc049_a ( https://atcoder.jp/contests/arc049/tasks/arc049_a )
# Title: A. "強調"
# Language: Ruby (2.3.3)
# Submitted: 2016-03-19 12:42:51 +0000 UTC ( https://atcoder.jp/contests/arc049/submissions/666204 ) 

s = gets.chomp
abcd = gets.chomp.split(" ").map(&:to_i)
a = []
l = 0
4.times do |i|
  r = abcd[i]
  a << s[l...r]
  l = r
end
a << s[abcd.last...s.length]
puts a.join("\"")