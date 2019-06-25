# Contest ID: abc022
# Problem ID: abc022_b ( https://atcoder.jp/contests/abc022/tasks/abc022_b )
# Title: B. Bumble Bee
# Language: Ruby (1.9.3p550)
# Submitted: 2015-04-25 12:33:46 +0000 UTC ( https://atcoder.jp/contests/abc022/submissions/392406 ) 

n = gets.chomp.to_i
flowers = Array.new(100000, false)
res = 0
n.times do
  f = gets.chomp.to_i
  if flowers[f] then
    res += 1
  else
    flowers[f] = true
  end
end
puts res