# Contest ID: nikkei2019-final
# Problem ID: nikkei2019_final_b ( https://atcoder.jp/contests/nikkei2019-final/tasks/nikkei2019_final_b )
# Title: B. Big Integers
# Language: Ruby (2.3.3)
# Submitted: 2019-03-12 03:28:37 +0000 UTC ( https://atcoder.jp/contests/nikkei2019-final/submissions/4556184 ) 

N, M, K = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

if N == M
  N.times do |i|
    if a[i] > b[i]
      puts "Y"
      exit
    elsif b[i] > a[i]
      puts "X"
      exit
    end
  end
  puts "Same"
elsif N > M
  puts "Y"
else
  puts "X"
end
