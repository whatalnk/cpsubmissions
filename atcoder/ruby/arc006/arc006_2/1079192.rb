# Contest ID: arc006
# Problem ID: arc006_2 ( https://atcoder.jp/contests/arc006/tasks/arc006_2 )
# Title: B. あみだくじ
# Language: Ruby (1.9.3)
# Submitted: 2017-01-26 09:38:44 +0000 UTC ( https://atcoder.jp/contests/arc006/submissions/1079192 ) 

n, l = gets.chomp.split(" ").map(&:to_i)
amida = []
l.times do
  amida << gets.chomp.split("")
end
nr = 2 * n - 1
goal = gets.chomp.split("")
sx = goal.index("o")

(l-1).downto(0) do |i|
  [-1, 1].each do |d|
    nx = sx + d
    if nx > -1 && nx < nr && amida[i][nx] == "-" then
      sx = nx + d
      break
    end
  end
end
puts (sx + 1 + 1) / 2