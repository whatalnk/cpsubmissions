# Contest ID: abc111
# Problem ID: arc103_a ( https://atcoder.jp/contests/abc111/tasks/arc103_a )
# Title: C. /\/\/\/
# Language: Ruby (2.3.3)
# Submitted: 2018-10-01 07:58:22 +0000 UTC ( https://atcoder.jp/contests/abc111/submissions/3315227 ) 

n = gets.chomp.to_i

v = gets.chomp.split(" ").map(&:to_i)

v1 = Hash.new(0)
v2 = Hash.new(0)

n.times do |i|
  if i.odd?
    v1[v[i]] += 1
  else
    v2[v[i]] += 1
  end
end

k1 = v1.sort{|a, b| a[1] <=> b[1]}.reverse
k2 = v2.sort{|a, b| a[1] <=> b[1]}.reverse

if k1[0][0] == k2[0][0]
  if k1.length == 1 && k2.length == 1
    puts n/2
  elsif k1.length == 1
    puts [n - k1[0][1] - k2[1][1], n - n/2 - k2[0][1]].min
  elsif k2.length == 1
    puts [n - k1[0][1] - n/2, n - k1[1][1] - k2[0][1]].min
  else
    puts [n - k1[0][1] - k2[1][1], n - k1[1][1] - k2[0][1]].min
  end
else
  puts n - k1[0][1] - k2[0][1]
end
