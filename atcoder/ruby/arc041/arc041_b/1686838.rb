# Contest ID: arc041
# Problem ID: arc041_b ( https://atcoder.jp/contests/arc041/tasks/arc041_b )
# Title: B. アメーバ
# Language: Ruby (2.3.3)
# Submitted: 2017-10-15 07:54:06 +0000 UTC ( https://atcoder.jp/contests/arc041/submissions/1686838 ) 

N, M = gets.chomp.split(" ").map(&:to_i)

@m = []
N.times do
  @m << gets.chomp.split("").map(&:to_i)
end
@ans = Array.new(N){Array.new(M, 0)}
(1...(N-1)).each do |i|
  (1...(M-1)).each do |j|
    x = [@m[i-1][j], @m[i][j+1], @m[i+1][j], @m[i][j-1]].min
    @ans[i][j] = x
    @m[i-1][j] -= x
    @m[i][j+1] -= x
    @m[i+1][j] -= x
    @m[i][j-1] -= x
  end
end
@ans.each do |row|
  puts row.join("")
end