# Contest ID: code-festival-2014-quala
# Problem ID: code_festival_qualA_b ( https://atcoder.jp/contests/code-festival-2014-quala/tasks/code_festival_qualA_b )
# Title: B. とても長い文字列
# Language: Ruby (1.9.3)
# Submitted: 2014-09-20 12:10:14 +0000 UTC ( https://atcoder.jp/contests/code-festival-2014-quala/submissions/235638 ) 

a = gets.chomp
b = gets.chomp.to_i
na = a.length
i = b.modulo(na)
print a[i - 1], "\n"