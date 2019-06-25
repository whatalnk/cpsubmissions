# Contest ID: abc116
# Problem ID: abc116_c ( https://atcoder.jp/contests/abc116/tasks/abc116_c )
# Title: C. Grand Garden
# Language: Ruby (2.3.3)
# Submitted: 2019-04-18 10:12:59 +0000 UTC ( https://atcoder.jp/contests/abc116/submissions/5017014 ) 

n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)
ans = 0
cnt = 0
while true
  n.times do |i|
    if h[i] > 0
      cnt += 1
      h[i] -= 1
    else
      if cnt != 0
        ans += 1
        cnt = 0
      end
    end
  end
  ans += 1 if cnt != 0
  cnt = 0
  break if h.all?{|x| x == 0}
end
puts ans