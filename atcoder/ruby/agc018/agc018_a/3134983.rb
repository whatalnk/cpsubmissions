# Contest ID: agc018
# Problem ID: agc018_a ( https://atcoder.jp/contests/agc018/tasks/agc018_a )
# Title: A. Getting Difference
# Language: Ruby (2.3.3)
# Submitted: 2018-09-04 11:14:14 +0000 UTC ( https://atcoder.jp/contests/agc018/submissions/3134983 ) 

n, k = gets.chomp.split(" ").map(&:to_i)

a = gets.chomp.split(" ").map(&:to_i)

g = 1
amin = a.min
amax = a.max
amin.downto(1) do |i|
  if amin % i == 0
    if a.all?{|x| x % i == 0}
      g = i
      break
    end
  end
end

if k <= amax && k % g == 0
  puts "POSSIBLE"
else
  puts "IMPOSSIBLE"
end