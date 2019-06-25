# Contest ID: code-festival-2016-qualb
# Problem ID: codefestival_2016_qualB_a ( https://atcoder.jp/contests/code-festival-2016-qualb/tasks/codefestival_2016_qualB_a )
# Title: A. Signboard
# Language: Ruby (2.3.3)
# Submitted: 2017-07-28 03:16:14 +0000 UTC ( https://atcoder.jp/contests/code-festival-2016-qualb/submissions/1456333 ) 

right = "CODEFESTIVAL2016"
s = gets.chomp
res = 0
(0...(s.length)).each do |i|
  if right[i] != s[i] then
    res += 1
  end
end
puts res
