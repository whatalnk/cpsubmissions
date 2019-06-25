# Contest ID: abc058
# Problem ID: arc071_a ( https://atcoder.jp/contests/abc058/tasks/arc071_a )
# Title: C. 怪文書 / Dubious Document
# Language: Ruby (2.3.3)
# Submitted: 2017-04-09 05:52:44 +0000 UTC ( https://atcoder.jp/contests/abc058/submissions/1212495 ) 

n = gets.chomp.to_i
ret = Hash.new{|h, k| h[k] = Array.new()}
n.times do
  s = gets.chomp.split("")
  h = Hash.new(0)
  s.each do |c|
    h[c] += 1
  end
  h.each do |k, v|
    ret[k] << h[k]
  end
end
ret.keys.sort.each do |k|
  if ret[k].size == n then
    l = ret[k].min
    print(k * l)
  end
end
puts