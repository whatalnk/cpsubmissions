# Contest ID: abc085
# Problem ID: abc085_c ( https://atcoder.jp/contests/abc085/tasks/abc085_c )
# Title: C. Otoshidama
# Language: Ruby (2.3.3)
# Submitted: 2018-02-21 08:16:54 +0000 UTC ( https://atcoder.jp/contests/abc085/submissions/2120124 ) 

N, Y = gets.chomp.split(" ").map(&:to_i)

(0..N).each do |x|
  (0..N).each do |y|
    z = N - (x + y)
    next if z < 0
    if x * 10000 + y * 5000 + z * 1000 == Y then
      puts "#{x} #{y} #{z}"
      exit
    end
  end
end
puts "-1 -1 -1"