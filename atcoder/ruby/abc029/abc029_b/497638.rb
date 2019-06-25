# Contest ID: abc029
# Problem ID: abc029_b ( https://atcoder.jp/contests/abc029/tasks/abc029_b )
# Title: B. カキ
# Language: Ruby (2.1.5p273)
# Submitted: 2015-09-19 12:10:45 +0000 UTC ( https://atcoder.jp/contests/abc029/submissions/497638 ) 

res = 0
while line = gets
  s = line.chomp
  if s =~ /r/ then
    res += 1
  end
end
puts res