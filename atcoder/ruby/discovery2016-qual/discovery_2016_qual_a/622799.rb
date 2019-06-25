# Contest ID: discovery2016-qual
# Problem ID: discovery_2016_qual_a ( https://atcoder.jp/contests/discovery2016-qual/tasks/discovery_2016_qual_a )
# Title: A. DISCO presents ディスカバリーチャンネルプログラミングコンテスト 2016
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-30 12:10:39 +0000 UTC ( https://atcoder.jp/contests/discovery2016-qual/submissions/622799 ) 

s = "DiscoPresentsDiscoveryChannelProgrammingContest2016"
w = gets.chomp.to_i
n = s.length
a = n / w
b = n % w

i = 0
a.times do
  puts s[i...(i + w)]
  i += w
end
if b > 0 then
  puts s[(n - b)...n]
end
