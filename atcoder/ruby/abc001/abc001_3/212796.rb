# Contest ID: abc001
# Problem ID: abc001_3 ( https://atcoder.jp/contests/abc001/tasks/abc001_3 )
# Title: C. 風力観測
# Language: Ruby (1.9.3)
# Submitted: 2014-08-13 12:06:35 +0000 UTC ( https://atcoder.jp/contests/abc001/submissions/212796 ) 

deg, dis = gets.chomp.split(" ").map(&:to_i)
dis1 = (dis/60.0).round(1)
dirs = %w(N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW N)
diss = [0.2, 1.5, 3.3, 5.4, 7.9, 10.7, 13.8, 17.1, 20.7, 24.4, 28.4, 32.6]
dir = 'C'
w = 0
a = 112.5
(0..16).each do |i|
  if deg < a
    dir = dirs[i]
    break
  else
    a += 225
  end
end
l = 0
(0..11).each do |i|
  if dis1 >= 32.7
    w = 12
    break
  elsif dis1 >= l and dis1 <= diss[i]
    w = i
    break
  else
    l = (diss[i] + 0.1).round(1)
  end
end
dir = 'C' if w == 0
print "#{dir} #{w}\n"
