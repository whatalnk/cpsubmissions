# Contest ID: abc089
# Problem ID: abc089_b ( https://atcoder.jp/contests/abc089/tasks/abc089_b )
# Title: B. Hina Arare
# Language: Ruby (2.3.3)
# Submitted: 2018-03-16 01:58:01 +0000 UTC ( https://atcoder.jp/contests/abc089/submissions/2210616 ) 

gets
n = gets.chomp.split(" ").uniq.length
if n == 3 then
  puts "Three"
else
  puts "Four"
end