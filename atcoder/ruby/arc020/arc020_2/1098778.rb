# Contest ID: arc020
# Problem ID: arc020_2 ( https://atcoder.jp/contests/arc020/tasks/arc020_2 )
# Title: B. 縞模様
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 11:08:02 +0000 UTC ( https://atcoder.jp/contests/arc020/submissions/1098778 ) 

n, c = gets.chomp.split(" ").map(&:to_i)
a = readlines().map{|x| x.chomp.to_i}

ret = []
(1..10).to_a.combination(2).each do |v|
  cand1 = v * (n / 2)
  cand1 << v[0] if n.odd?
  cand2 = v.reverse * (n / 2)
  cand2 << v[1] if n.odd?
  d = 0
  cand1.zip(a) do |x, y|
    d += 1 if x != y
  end
  ret << d
  d = 0
  cand2.zip(a) do |x, y|
    d += 1 if x != y
  end
  ret << d
end

puts ret.min * c