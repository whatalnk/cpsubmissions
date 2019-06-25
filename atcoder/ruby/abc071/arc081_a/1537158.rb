# Contest ID: abc071
# Problem ID: arc081_a ( https://atcoder.jp/contests/abc071/tasks/arc081_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-08-25 06:03:34 +0000 UTC ( https://atcoder.jp/contests/abc071/submissions/1537158 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
a.each do |x|
  h[x] += 1
end
l = 0
s = 0
h.keys.sort.reverse.each do |k|
  if h[k] >= 4 then
    l = k if l.zero?
    s = k if s.zero?
  elsif h[k] >= 2 then
    if l.zero? then
      l = k
    elsif s.zero?
      s = k
    end
  end
end
puts l * s