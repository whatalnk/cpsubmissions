# Contest ID: nikkei2019-final
# Problem ID: nikkei2019_final_a ( https://atcoder.jp/contests/nikkei2019-final/tasks/nikkei2019_final_a )
# Title: A. Abundant Resources
# Language: Ruby (2.3.3)
# Submitted: 2019-03-12 07:53:28 +0000 UTC ( https://atcoder.jp/contests/nikkei2019-final/submissions/4558338 ) 

N = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = Array.new(N+1)
b[0] = 0
N.times do |i|
  b[i+1] = b[i] + a[i]
end

1.upto(N) do |k|
  ret = 0
  0.upto(N-k) do |i|
    x = b[i+k] - b[i]
    ret = [ret, x].max
  end
  puts ret
end
