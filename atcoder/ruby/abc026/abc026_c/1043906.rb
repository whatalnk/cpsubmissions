# Contest ID: abc026
# Problem ID: abc026_c ( https://atcoder.jp/contests/abc026/tasks/abc026_c )
# Title: C. 高橋君の給料
# Language: Ruby (2.1.5p273)
# Submitted: 2016-12-25 13:31:23 +0000 UTC ( https://atcoder.jp/contests/abc026/submissions/1043906 ) 

n = gets.chomp.to_i
bb = Array.new(n + 1){Array.new()}
(n-1).times do |i|
  k = gets.chomp.to_i
  bb[k] << i + 2
end
bbb = Array.new(n + 1, 1)
n.downto(1).each do |i|
  if bb[i].empty? then
    bbb[i] = 1
  else
    bbb[i] = bb[i].map{|j| bbb[j]}.minmax.inject(:+) + 1
  end
end
puts bbb[1]