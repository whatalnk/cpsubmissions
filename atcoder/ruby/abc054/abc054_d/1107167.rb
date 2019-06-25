# Contest ID: abc054
# Problem ID: abc054_d ( https://atcoder.jp/contests/abc054/tasks/abc054_d )
# Title: D. Mixing Experiment
# Language: Ruby (2.3.3)
# Submitted: 2017-02-11 16:36:05 +0000 UTC ( https://atcoder.jp/contests/abc054/submissions/1107167 ) 

N, Ma, Mb = gets.chomp.split(" ").map(&:to_i)
a = []
b = []
c = []

N.times do
  abc = gets.chomp.split(" ").map(&:to_i)
  a << abc[0]
  b << abc[1]
  c << abc[2]
end

nmax = 40
abmax = 10
inf = c.max * N * 10

dp = Array.new(nmax+1){Array.new(nmax*abmax + 1){Array.new(nmax*abmax + 1, inf)}}
dp[0][0][0] = 0

(0...N).each do |i|
  (0..(nmax*abmax)).each do |ca|
    (0..(nmax*abmax)).each do |cb|
      next if dp[i][ca][cb] == inf
      dp[i+1][ca][cb] = [dp[i+1][ca][cb], dp[i][ca][cb]].min
      dp[i+1][ca+a[i]][cb+b[i]] = [dp[i+1][ca+a[i]][cb+b[i]], dp[i][ca][cb] + c[i]].min
    end
  end
end

ans = []
(1..(nmax*abmax)).each do |ca|
  (1..(nmax * abmax)).each do |cb|
    if ca*Mb == cb * Ma then
      ans << dp[N][ca][cb]
    end
  end
end

if ans.min == inf then
  puts -1
else
  puts ans.min
end
