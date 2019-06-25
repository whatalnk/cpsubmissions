# Contest ID: arc023
# Problem ID: arc023_2 ( https://atcoder.jp/contests/arc023/tasks/arc023_2 )
# Title: B. 謎の人物X
# Language: Ruby (1.9.3)
# Submitted: 2017-02-11 06:20:42 +0000 UTC ( https://atcoder.jp/contests/arc023/submissions/1102451 ) 

R, C, D = gets.chomp.split(" ").map(&:to_i)
@room = []
R.times do
  @room << gets.chomp.split(" ").map(&:to_i)
end

@ret = []

(1..R).each do |i|
  (1..C).each do |j|
    if (i - 1) + (j - 1) <= D && ((i + j) % 2) == (D % 2) then
      @ret << @room[i - 1][j - 1]
    end
  end
end

puts @ret.max