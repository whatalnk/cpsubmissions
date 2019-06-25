# Contest ID: abc034
# Problem ID: abc034_d ( https://atcoder.jp/contests/abc034/tasks/abc034_d )
# Title: D. 食塩水
# Language: Ruby (2.1.5p273)
# Submitted: 2016-03-12 13:32:57 +0000 UTC ( https://atcoder.jp/contests/abc034/submissions/659055 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
a = []
n.times do 
  w, p = gets.chomp.split(" ").map(&:to_f)
  solt = w * p
  a << [w, p, solt]
end
a = a.sort_by{|x| -x[1]}
amax = a.shift

pmax = 0
pi = 0
w = 0
solt = 0

(k-1).times do
  (n-1).times do |i|
    tmp = (amax[2] + a[i][2]) / (amax[0] + a[i][0])
    if tmp > pmax then
      pmax = tmp
      w = amax[0] + a[i][0]
      solt = amax[2] + a[i][2]
      pi = i
    end
  end
  a.delete_at(pi)
  i = (0...a.size).bsearch{|x| a[x][1] < pmax}
  a.insert(i, [w, pmax, solt])
  amax = a.shift
  n -= 1
  pmax = 0
end
puts amax[1]
