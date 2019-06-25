# Contest ID: arc001
# Problem ID: arc001_2 ( https://atcoder.jp/contests/arc001/tasks/arc001_2 )
# Title: B. リモコン
# Language: Ruby (1.9.3)
# Submitted: 2015-09-27 13:41:20 +0000 UTC ( https://atcoder.jp/contests/arc001/submissions/515475 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
temperature = [[a, 0]]
button = [1, -1, 5, -5, 10, -10]
while !temperature.empty?
  c = temperature.shift
  break if c[0] == b
  button.each do |d|
    if (c[0]+d - b).abs < (c[0] - b).abs then
      temperature << [c[0]+d, c[1]+1]
    end
  end
end
puts c[1]