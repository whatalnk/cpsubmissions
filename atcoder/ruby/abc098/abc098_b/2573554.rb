# Contest ID: abc098
# Problem ID: abc098_b ( https://atcoder.jp/contests/abc098/tasks/abc098_b )
# Title: B. Cut and Count
# Language: Ruby (2.3.3)
# Submitted: 2018-05-27 02:37:55 +0000 UTC ( https://atcoder.jp/contests/abc098/submissions/2573554 ) 

n = gets.chomp.to_i
x = gets.chomp
ans = 0
(n - 1).times do |i|
  l = x[0..i].split("").uniq
  r = x[(i+1)..-1].split("").uniq
  s = 0
  l.each do |e|
    s += 1if r.include?(e)
  end
  ans = [ans, s].max
end
puts ans