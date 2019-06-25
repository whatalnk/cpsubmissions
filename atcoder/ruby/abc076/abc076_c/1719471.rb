# Contest ID: abc076
# Problem ID: abc076_c ( https://atcoder.jp/contests/abc076/tasks/abc076_c )
# Title: C. Dubious Document 2
# Language: Ruby (2.3.3)
# Submitted: 2017-10-28 12:38:42 +0000 UTC ( https://atcoder.jp/contests/abc076/submissions/1719471 ) 

s = gets.chomp
t_ = gets.chomp

ns = s.length
nt = t_.length
arr = []
(ns - nt + 1).times do |i|
  x = s.clone
  ss = s[i..(i + nt - 1)]
  ok = true
  nt.times do |j|
    if ss[j] != "?" && ss[j] != t_[j]
      ok = false
    end
  end
  if ok
    x[i, nt] = t_
    arr << x
  end
end
if arr.empty?
  puts "UNRESTORABLE"
else
  arr.sort!
  ans = arr[0].gsub("?", "a")
  puts ans
end