# Contest ID: abc042
# Problem ID: abc042_b ( https://atcoder.jp/contests/abc042/tasks/abc042_b )
# Title: B. 文字列大好きいろはちゃんイージー / Iroha Loves Strings (ABC Edition)
# Language: Ruby (2.3.3)
# Submitted: 2016-07-23 12:11:10 +0000 UTC ( https://atcoder.jp/contests/abc042/submissions/815422 ) 

n, l = gets.chomp.split(" ").map(&:to_i)
ss = []
n.times do
  ss << gets.chomp
end
puts ss.sort.join("")
