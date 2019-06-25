# Contest ID: abc008
# Problem ID: abc008_2 ( https://atcoder.jp/contests/abc008/tasks/abc008_2 )
# Title: B. 投票
# Language: Ruby (1.9.3)
# Submitted: 2015-08-30 07:45:03 +0000 UTC ( https://atcoder.jp/contests/abc008/submissions/482433 ) 

n = gets.chomp.to_i
res = {}
n.times do
  name = gets.chomp
  if res.key?(name) then
    res[name] += 1
  else
    res[name] = 1
  end
end
puts res.key(res.values.max)
