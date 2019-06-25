# Contest ID: abc035
# Problem ID: abc035_c ( https://atcoder.jp/contests/abc035/tasks/abc035_c )
# Title: C. オセロ
# Language: Ruby (2.3.3)
# Submitted: 2017-07-31 08:23:14 +0000 UTC ( https://atcoder.jp/contests/abc035/submissions/1474229 ) 

n, q = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(n+2, 0)
q.times do
  i, j = gets.chomp.split(" ").map(&:to_i)
  arr[i] += 1
  arr[j+1] -= 1
end
n.times do |i|
  arr[i+1] += arr[i]
end

puts arr.map{|x| 
  if x.even?
    0
  else
    1
  end
}[1..n].join("")

