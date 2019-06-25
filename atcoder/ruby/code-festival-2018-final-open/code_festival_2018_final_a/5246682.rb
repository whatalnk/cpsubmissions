# Contest ID: code-festival-2018-final-open
# Problem ID: code_festival_2018_final_a ( https://atcoder.jp/contests/code-festival-2018-final-open/tasks/code_festival_2018_final_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-05-03 14:59:44 +0000 UTC ( https://atcoder.jp/contests/code-festival-2018-final-open/submissions/5246682 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

city = Array.new(n+1){Hash.new(0)}
m.times do
  a, b, l = gets.chomp.split(" ").map(&:to_i)
  city[a][l] += 1
  city[b][l] += 1
end
ans = 0
city.each do |h|
  cnt = 0
  h.each do |k, v|
    kk = 2540 - k
    if kk == 1270
      cnt += v * (v - 1)
    else
      cnt += v * h[kk]
    end
  end
  ans += cnt
end
puts ans / 2