# Contest ID: dwacon2017-prelims
# Problem ID: dwango2017qual_a ( https://atcoder.jp/contests/dwacon2017-prelims/tasks/dwango2017qual_a )
# Title: A. 動画検索
# Language: Ruby (2.3.3)
# Submitted: 2016-12-17 11:04:12 +0000 UTC ( https://atcoder.jp/contests/dwacon2017-prelims/submissions/1027326 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)
if a + b > n then
  puts a + b - n
else
  puts 0
end
