# Contest ID: abc006
# Problem ID: abc006_2 ( https://atcoder.jp/contests/abc006/tasks/abc006_2 )
# Title: B. トリボナッチ数列
# Language: Ruby (1.9.3)
# Submitted: 2015-08-28 05:40:42 +0000 UTC ( https://atcoder.jp/contests/abc006/submissions/478401 ) 

n = gets.chomp.to_i
tribo = Array.new(10**6+1, 0)
tribo[2] = 1
3.upto(n-1){|i|
  tribo[i] = (tribo[i-3] + tribo[i-2] + tribo[i-1]) % 10007
}
puts tribo[n-1]