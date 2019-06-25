# Contest ID: abc104
# Problem ID: abc104_c ( https://atcoder.jp/contests/abc104/tasks/abc104_c )
# Title: C. All Green
# Language: Ruby (2.3.3)
# Submitted: 2018-08-27 08:39:24 +0000 UTC ( https://atcoder.jp/contests/abc104/submissions/3088890 ) 

d, g = gets.chomp.split(" ").map(&:to_i)

pt = []
ct = []

d.times do
  p_, c = gets.chomp.split(" ").map(&:to_i)
  pt << p_
  ct << c
end

ans = []

(1 << d).times do |mask|
  score = 0
  n = 0
  ires = 0
  d.times do |i|
    if ((mask >> i) & 1) == 1
      score += 100 * (i + 1) * pt[i] + ct[i]
      n += pt[i]
    else
      ires = i
    end
  end
  if score < g
    s = 100 * (ires + 1)
    need = (g - score + s - 1) / s
    if need >= pt[ires]
      next
    end
    n += need
  end
  ans << n
end
puts ans.min
