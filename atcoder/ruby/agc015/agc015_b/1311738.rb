# Contest ID: agc015
# Problem ID: agc015_b ( https://atcoder.jp/contests/agc015/tasks/agc015_b )
# Title: B. Evilator
# Language: Ruby (2.3.3)
# Submitted: 2017-05-27 12:26:57 +0000 UTC ( https://atcoder.jp/contests/agc015/submissions/1311738 ) 

S = gets.chomp.split("")

n = S.size
ret = 0
(1..n).each do |i|
  if i == 1 || i == n then
    ret += (n - 1)
  else
    if S[i - 1] == "U" then
      ret += ((n - i) + (i - 1) * 2)
    else
      ret += ((n - i) * 2 + (i - 1))
    end
  end
end
puts ret