# Contest ID: abc009
# Problem ID: abc009_3 ( https://atcoder.jp/contests/abc009/tasks/abc009_3 )
# Title: C. 辞書式順序ふたたび
# Language: Ruby (2.3.3)
# Submitted: 2017-04-12 03:36:04 +0000 UTC ( https://atcoder.jp/contests/abc009/submissions/1217322 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

def diff(s, s2)
  return 0 if s.empty? && s2.empty?
  h = Hash.new(0)
  s.each{|c| h[c] += 1}
  s2.each{|c| h[c] -= 1}
  return h.values.map{|v| v.abs}.inject(:+) / 2
end

rem = s.dup.sort
ret = []
d = 0
n.times do |i|
  rem2 = []
  rem.each_with_index do |c, j|
    ret << c
    dd = 0
    if ret[i] != s[i] then
      dd = 1
    end
    if d + dd + diff(s[(i+1)..-1],  rem2 + rem[(j+1)..-1]) <= k then
      rem.slice!(j)
      d += dd
      break
    else
      rem2 << ret.pop
    end
  end
end

puts ret.join("")