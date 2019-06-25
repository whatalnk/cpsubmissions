# Contest ID: tenka1-2016-quala
# Problem ID: tenka1_2016_qualA_a ( https://atcoder.jp/contests/tenka1-2016-quala/tasks/tenka1_2016_qualA_a )
# Title: A. 天下一プログラマーゲーム
# Language: Ruby (2.3.3)
# Submitted: 2017-09-25 04:11:09 +0000 UTC ( https://atcoder.jp/contests/tenka1-2016-quala/submissions/1627076 ) 

ans = 0
(1..100).each do |i|
  if i % 3 == 0 || i % 5 == 0 then
    next
  else
    ans += i
  end
end
puts ans