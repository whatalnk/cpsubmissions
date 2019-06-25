# Contest ID: abc001
# Problem ID: abc001_2 ( https://atcoder.jp/contests/abc001/tasks/abc001_2 )
# Title: B. 視程の通報
# Language: Ruby (1.9.3)
# Submitted: 2014-08-12 03:57:18 +0000 UTC ( https://atcoder.jp/contests/abc001/submissions/212552 ) 

x = gets.to_i
if x < 100
  print "00\n"
elsif x < 1000
  print "0#{x / 100}\n"
elsif x <= 5000
  print "#{x / 100}\n"
elsif x >= 6000 && x <= 30000
  print "#{x / 1000 + 50}\n"
elsif x >= 35000 && x <= 70000
  print "#{(x / 1000 - 30) / 5 + 80}\n"
elsif x > 70000
  print "89\n"
end
