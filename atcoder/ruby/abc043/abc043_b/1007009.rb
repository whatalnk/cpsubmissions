# Contest ID: abc043
# Problem ID: abc043_b ( https://atcoder.jp/contests/abc043/tasks/abc043_b )
# Title: B. バイナリハックイージー / Unhappy Hacking (ABC Edit)
# Language: Ruby (2.3.3)
# Submitted: 2016-12-03 10:03:08 +0000 UTC ( https://atcoder.jp/contests/abc043/submissions/1007009 ) 

s = gets.chomp.split("")
ret = []
s.each do |x|
  case x
  when '0'
    ret << "0"
  when '1'
    ret << "1"
  else
    ret.pop if !(ret.empty?)
  end
end
puts ret.join("")