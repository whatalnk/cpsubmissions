# Contest ID: abc095
# Problem ID: abc095_a ( https://atcoder.jp/contests/abc095/tasks/abc095_a )
# Title: A. Something on It
# Language: Ruby (2.3.3)
# Submitted: 2018-05-04 02:24:52 +0000 UTC ( https://atcoder.jp/contests/abc095/submissions/2452602 ) 

s = gets.chomp
price = 700
3.times do |i|
  price += 100 if s[i] == "o"
end
puts price