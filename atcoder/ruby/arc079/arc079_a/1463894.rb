# Contest ID: arc079
# Problem ID: arc079_a ( https://atcoder.jp/contests/arc079/tasks/arc079_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-07-29 12:15:05 +0000 UTC ( https://atcoder.jp/contests/arc079/submissions/1463894 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

cand = []
ship = Array.new(n+1, false)

m.times do 
  a, b = gets.chomp.split(" ").map(&:to_i)
  if b == n then
    cand << a
  elsif a == 1 then
    ship[b] = true
  end
end

cand.each do |i|
  if ship[i]
    puts "POSSIBLE"
    exit
  end
end
puts "IMPOSSIBLE"