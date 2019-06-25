# Contest ID: abc072
# Problem ID: abc072_b ( https://atcoder.jp/contests/abc072/tasks/abc072_b )
# Title: B. OddString
# Language: Ruby (2.3.3)
# Submitted: 2017-09-02 12:06:54 +0000 UTC ( https://atcoder.jp/contests/abc072/submissions/1558528 ) 

s = gets.chomp.split("")
n = s.length
ret = []
n.times do |i|
  if (i + 1).odd?
    ret << s[i]
  end
end
puts ret.join("")