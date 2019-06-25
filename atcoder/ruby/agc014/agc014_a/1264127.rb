# Contest ID: agc014
# Problem ID: agc014_a ( https://atcoder.jp/contests/agc014/tasks/agc014_a )
# Title: A. Cookie Exchanges
# Language: Ruby (2.3.3)
# Submitted: 2017-05-06 12:36:34 +0000 UTC ( https://atcoder.jp/contests/agc014/submissions/1264127 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)

ret = 0
while true
  break if a.odd? || b.odd? || c.odd?
  if ret > 30 then
    puts -1
    exit
  end
  aa = (b + c) / 2
  bb = (a + c) / 2
  cc = (a + b) / 2
  a, b, c = aa, bb, cc
  ret += 1
end
puts ret
