# Contest ID: abc114
# Problem ID: abc114_b ( https://atcoder.jp/contests/abc114/tasks/abc114_b )
# Title: B. 754
# Language: Ruby (2.3.3)
# Submitted: 2019-01-07 12:04:25 +0000 UTC ( https://atcoder.jp/contests/abc114/submissions/3956205 ) 

s = gets.chomp.split("")
ret = 753
s.each_cons(3) do |x|
  n = x.join("").to_i
  d = (753 - n).abs
  if d < ret
    ret = d
  end 
end
puts ret