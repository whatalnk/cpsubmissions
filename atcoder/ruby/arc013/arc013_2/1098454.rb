# Contest ID: arc013
# Problem ID: arc013_2 ( https://atcoder.jp/contests/arc013/tasks/arc013_2 )
# Title: B. 引越しできるかな？
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 06:09:24 +0000 UTC ( https://atcoder.jp/contests/arc013/submissions/1098454 ) 

c = gets.chomp.to_i
nn = []
mm = []
ll = []
c.times do
  n, m, l = gets.chomp.split(" ").map(&:to_i).sort
  nn << n
  mm << m
  ll << l
end
puts nn.max * mm.max * ll.max