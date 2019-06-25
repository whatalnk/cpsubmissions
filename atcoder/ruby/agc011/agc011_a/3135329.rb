# Contest ID: agc011
# Problem ID: agc011_a ( https://atcoder.jp/contests/agc011/tasks/agc011_a )
# Title: A. Airport Bus
# Language: Ruby (2.3.3)
# Submitted: 2018-09-04 12:29:41 +0000 UTC ( https://atcoder.jp/contests/agc011/submissions/3135329 ) 

n, c, k = gets.chomp.split(" ").map(&:to_i)

tt = []
n.times do
  tt << gets.chomp.to_i
end

tt.sort!

bus = 0
cap = c
lim = 0
n.times do |i|
  
  if cap == c
    bus += 1
    cap -= 1
    lim = tt[i] + k
  elsif cap > 0
    if tt[i] <= lim
      cap -= 1
    else
      bus += 1
      cap = c - 1
      lim = tt[i] + k
    end
  else
    bus += 1
    cap = c - 1
    lim = tt[i] + k
  end
  # p [tt[i], bus, cap, lim]
end

puts bus