# Contest ID: abc091
# Problem ID: arc092_a ( https://atcoder.jp/contests/abc091/tasks/arc092_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-03-19 05:03:18 +0000 UTC ( https://atcoder.jp/contests/abc091/submissions/2230796 ) 

n = gets.chomp.to_i
reds = []
blues = []

n.times do
  reds << gets.chomp.split(" ").map(&:to_i)
end
n.times do 
  blues << gets.chomp.split(" ").map(&:to_i)
end

blues.sort_by!{|x| x[0]}
flags = Array.new(n, 0)
cands = []


blues.each do |blue|
  red = [-1, -1]
  flag = -1
  n.times do |i|
    if flags[i] == 0 && reds[i][0] < blue[0] && reds[i][1] < blue[1] then
      if reds[i][1] > red[1] then
        red = reds[i]
        flag = i
      end
    end
  end
  if flag >= 0 then
    flags[flag] = 1
  end
end

puts flags.inject(:+)