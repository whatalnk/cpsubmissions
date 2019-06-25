# Contest ID: arc038
# Problem ID: arc038_b ( https://atcoder.jp/contests/arc038/tasks/arc038_b )
# Title: B. マス目と駒
# Language: Ruby (2.3.3)
# Submitted: 2017-10-12 13:45:49 +0000 UTC ( https://atcoder.jp/contests/arc038/submissions/1678542 ) 

H, W = gets.chomp.split(" ").map(&:to_i)

@m = []
H.times do
  @m << gets.chomp.split("")
end

@memo = Array.new(H){Array.new(W)}

def judge(i, j)
  return 1 if i < 0 || i >= H || j < 0 || j >= W || @m[i][j] == "#" 
  return @memo[i][j] if !@memo[i][j].nil?
  result = -1
  result = 1 if judge(i + 1, j) == -1
  result = 1 if judge(i, j + 1) == -1
  result = 1 if judge(i + 1, j + 1) == -1
  @memo[i][j] = result
  return result
end

if judge(0, 0) > 0
  puts "First"
else
  puts "Second"
end