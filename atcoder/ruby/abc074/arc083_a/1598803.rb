# Contest ID: abc074
# Problem ID: arc083_a ( https://atcoder.jp/contests/abc074/tasks/arc083_a )
# Title: C. Sugar Water
# Language: Ruby (2.3.3)
# Submitted: 2017-09-16 12:53:54 +0000 UTC ( https://atcoder.jp/contests/abc074/submissions/1598803 ) 

a, b, c, d, e, f = gets.chomp.split(" ").map(&:to_i)
na = f / (100 * a)
nb = f / (100 * b)
ans = []
0.upto(na) do |i|
  0.upto(nb) do |j|
    s = f - (100 * a * i + 100 * b * j)
    next if s < 0
    nc = s / c
    nd = s / d
    0.upto(nc) do |k|
      0.upto(nd) do |l|
        sugar =  c * k + d * l
        water = 100 * (a * i + b * j)
        if  sugar + water <= f && e * water >= 100 * sugar then
          ans << [sugar + water, sugar] if sugar + water != 0
        end
      end
    end
  end
end
puts ans.max_by{|x, y| y.to_f / x}.join(" ")
