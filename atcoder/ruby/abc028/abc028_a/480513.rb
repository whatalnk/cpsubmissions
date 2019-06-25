# Contest ID: abc028
# Problem ID: abc028_a ( https://atcoder.jp/contests/abc028/tasks/abc028_a )
# Title: A. テスト評価
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-29 12:42:07 +0000 UTC ( https://atcoder.jp/contests/abc028/submissions/480513 ) 

n = gets.chomp.to_i
if n < 60 then
  puts "Bad"
elsif n < 90 then
  puts "Good"
elsif n < 100 then
  puts "Great"
else
  puts "Perfect"
end
