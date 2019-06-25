# Contest ID: abc068
# Problem ID: abc068_b ( https://atcoder.jp/contests/abc068/tasks/abc068_b )
# Title: B. Break Number
# Language: Ruby (2.3.3)
# Submitted: 2017-07-29 14:56:07 +0000 UTC ( https://atcoder.jp/contests/abc068/submissions/1470119 ) 

n = gets.chomp.to_i

ans = 1
ndiv = 0
(1..n).each do |i|
  x = i
  if x.even?
    tmp = 1
    while x.even?
      x /= 2
      tmp += 1
    end
    if tmp > ndiv
      ndiv = tmp
      ans = i
    end
  end

end

puts ans