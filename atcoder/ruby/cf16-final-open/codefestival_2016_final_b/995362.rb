# Contest ID: cf16-final-open
# Problem ID: codefestival_2016_final_b ( https://atcoder.jp/contests/cf16-final-open/tasks/codefestival_2016_final_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2016-11-26 07:22:15 +0000 UTC ( https://atcoder.jp/contests/cf16-final-open/submissions/995362 ) 

n = gets.chomp.to_i
nn = Math.sqrt(n*2)
l = nn.floor
if l * (l + 1) == n * 2 then
  puts (1..l).to_a
elsif ((l - 1) * l <= n*2) && (n*2 <= l * (l + 1)) then
  ll = l * (l + 1) / 2
  ret = (1..l).to_a
  rem = ll - n
  ret.delete(rem)
  puts ret
else
  ll = (l + 1) * (l + 2) / 2
  ret = (1..(l+1)).to_a
  rem = ll - n
  ret.delete(rem)
  puts ret
end