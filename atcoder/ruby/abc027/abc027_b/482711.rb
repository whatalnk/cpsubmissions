# Contest ID: abc027
# Problem ID: abc027_b ( https://atcoder.jp/contests/abc027/tasks/abc027_b )
# Title: B. 島と橋
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-30 14:30:28 +0000 UTC ( https://atcoder.jp/contests/abc027/submissions/482711 ) 

n = gets.chomp.to_i
islands = gets.chomp.split(" ").map(&:to_i)
if islands.inject(:+) % n == 0 then
  people = islands.inject(:+) / n
  res = 0
  (0..n-2).each do |i|
    left = islands[0..i]
    right = islands[i+1..n-1]
    if people * left.length != left.inject(:+) or people * right.length != right.inject(:+) then
      res += 1
    end
  end
  puts res
else
  puts -1
end