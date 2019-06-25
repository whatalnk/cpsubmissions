# Contest ID: abc017
# Problem ID: abc017_2 ( https://atcoder.jp/contests/abc017/tasks/abc017_2 )
# Title: B. choku語
# Language: Ruby (1.9.3)
# Submitted: 2015-01-17 13:40:51 +0000 UTC ( https://atcoder.jp/contests/abc017/submissions/319797 ) 

str = gets.chomp
res = str.gsub(/ch/, "").gsub(/o/, "").gsub(/k/, "").gsub(/u/, "")
if res == "" then
  puts "YES"
else
  puts "NO"
end
