# Contest ID: abc080
# Problem ID: abc080_d ( https://atcoder.jp/contests/abc080/tasks/abc080_d )
# Title: D. Recording
# Language: Ruby (2.3.3)
# Submitted: 2018-09-26 11:58:48 +0000 UTC ( https://atcoder.jp/contests/abc080/submissions/3274565 ) 

n, c = gets.chomp.split(" ").map(&:to_i)

N_MAX = 10**5

rs = Array.new(c + 1){Array.new(N_MAX*2 + 2, 0)}

n.times do
  si, ti, ci = gets.chomp.split(" ").map(&:to_i)
  (si*2 - 1).upto(ti*2) do |i|
    rs[ci][i] = 1
  end
end

ans = Array.new(N_MAX*2 + 2, 0)
rs.each do |r|
  (N_MAX*2 + 2).times do |i|
    ans[i] += r[i]
  end
end
puts ans.max