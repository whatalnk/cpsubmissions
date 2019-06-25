# Contest ID: arc041
# Problem ID: arc041_b ( https://atcoder.jp/contests/arc041/tasks/arc041_b )
# Title: B. アメーバ
# Language: Ruby (2.3.3)
# Submitted: 2017-10-15 07:48:17 +0000 UTC ( https://atcoder.jp/contests/arc041/submissions/1686826 ) 

N, M = gets.chomp.split(" ").map(&:to_i)

@m = []
N.times do
  @m << gets.chomp.split("").map(&:to_i)
end
@ans = Array.new(N){Array.new(M, 0)}
(N-2).times do |i|
  (1...(M-1)).each do |j|
    x = @m[i][j]
    @ans[i+1][j] += x
    @m[i][j] -= x
    @m[i+1][j-1] -= x
    @m[i+1][j+1] -= x
    @m[i+2][j] -= x
  end
end
@ans.each do |row|
  puts row.join("")
end