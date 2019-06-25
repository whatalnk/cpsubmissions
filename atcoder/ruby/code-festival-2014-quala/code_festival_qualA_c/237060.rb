# Contest ID: code-festival-2014-quala
# Problem ID: code_festival_qualA_c ( https://atcoder.jp/contests/code-festival-2014-quala/tasks/code_festival_qualA_c )
# Title: C. 2月29日
# Language: Ruby (1.9.3)
# Submitted: 2014-09-20 12:58:03 +0000 UTC ( https://atcoder.jp/contests/code-festival-2014-quala/submissions/237060 ) 

s, e = gets.chomp.split(" ").map(&:to_i)
a = e/4 - s/4
if s%4 == 0
  a += 1
end
b = e/100 - s/100
if s%100 == 0
  b += 1
end
c = e/400 - s/400
if s%400 == 0
  c += 1
end
print a-b+c, "\n"