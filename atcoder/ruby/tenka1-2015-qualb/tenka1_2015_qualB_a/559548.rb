# Contest ID: tenka1-2015-qualb
# Problem ID: tenka1_2015_qualB_a ( https://atcoder.jp/contests/tenka1-2015-qualb/tasks/tenka1_2015_qualB_a )
# Title: A. 天下一プログラマーコンテスト1998
# Language: Ruby (2.1.5p273)
# Submitted: 2015-11-10 04:14:49 +0000 UTC ( https://atcoder.jp/contests/tenka1-2015-qualb/submissions/559548 ) 

a = [100, 100, 200]
(3...20).each do |n|
  a << (a[n-1] + a[n-2] + a[n-3])
end
puts a[19]