# Contest ID: discovery2016-qual
# Problem ID: discovery_2016_qual_b ( https://atcoder.jp/contests/discovery2016-qual/tasks/discovery_2016_qual_b )
# Title: B. ディスコ社内ツアー
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-31 03:29:40 +0000 UTC ( https://atcoder.jp/contests/discovery2016-qual/submissions/625923 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

h = Hash.new{|h,k| h[k] = []}
n.times do |i|
  h[a[i]] << i
end
pos = 0
res = 1
h.keys.sort.each do |k|
  v = h[k]
  if v.first < pos && v.last > pos then
    res += 1
    pos = (v.select{|x| x < pos}).last
  elsif v.last < pos then
    res += 1
    pos = v.last
  else
    pos = v.last
  end
end
res -= 1 if pos == 0
puts res

# ref: Submission #624244
