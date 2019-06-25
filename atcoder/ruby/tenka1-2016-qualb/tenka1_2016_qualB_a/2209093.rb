# Contest ID: tenka1-2016-qualb
# Problem ID: tenka1_2016_qualB_a ( https://atcoder.jp/contests/tenka1-2016-qualb/tasks/tenka1_2016_qualB_a )
# Title: A. 天下一合成関数
# Language: Ruby (2.3.3)
# Submitted: 2018-03-15 13:13:57 +0000 UTC ( https://atcoder.jp/contests/tenka1-2016-qualb/submissions/2209093 ) 

def f(n)
  ((n**2 + 4) / 8.0).floor
end
puts f(f(f(20)))
