# Contest ID: code-festival-2015-quala
# Problem ID: codefestival_2015_qualA_b ( https://atcoder.jp/contests/code-festival-2015-quala/tasks/codefestival_2015_qualA_b )
# Title: B. とても長い数列
# Language: Ruby (2.1.5p273)
# Submitted: 2015-09-26 12:23:45 +0000 UTC ( https://atcoder.jp/contests/code-festival-2015-quala/submissions/510348 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
s = 0
a.each do |i|
  t = s * 2 + i
  s = t
end
puts s
