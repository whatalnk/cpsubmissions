# Contest ID: arc060
# Problem ID: arc060_a ( https://atcoder.jp/contests/arc060/tasks/arc060_a )
# Title: C. 高橋君とカード / Tak and Cards
# Language: Ruby (2.3.3)
# Submitted: 2017-05-16 05:06:05 +0000 UTC ( https://atcoder.jp/contests/arc060/submissions/1290353 ) 

N, A = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i)
y = [0] + x.map{|x| x - A}
K_MAX = (x + [A]).max

dp = Array.new(N+1){Array.new(2*N*K_MAX+1, 0)}

(N+1).times do |i|
  (2*N*K_MAX+1).times do |j|
    if i == 0 && j == N * K_MAX then
      dp[i][j] = 1
    elsif i > 0 && (j - y[i] < 0 || j - y[i] > 2 * N * K_MAX) then
      dp[i][j] = dp[i - 1][j]
    elsif i > 0 && j - y[i] >= 0 && j - y[i] <= 2 * N * K_MAX then
      dp[i][j] = dp[i - 1][j] + dp[i - 1][j - y[i]]
    end
  end
end

puts dp[N][N * K_MAX] - 1