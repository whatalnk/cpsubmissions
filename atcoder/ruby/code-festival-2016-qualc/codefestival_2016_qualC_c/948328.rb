# Contest ID: code-festival-2016-qualc
# Problem ID: codefestival_2016_qualC_c ( https://atcoder.jp/contests/code-festival-2016-qualc/tasks/codefestival_2016_qualC_c )
# Title: C. 二人のアルピニスト / Two Alpinists
# Language: Ruby (2.3.3)
# Submitted: 2016-10-23 15:58:43 +0000 UTC ( https://atcoder.jp/contests/code-festival-2016-qualc/submissions/948328 ) 

n = gets.chomp.to_i
tt = gets.chomp.split(" ").map(&:to_i)
aa = gets.chomp.split(" ").map(&:to_i)
htt = Array.new(n, nil)
tt.each_with_index do |e, i|
  if i == 0 || tt[i-1] < e then  
    htt[i] = e
  end
end
haa = Array.new(n, nil)
aa.each_with_index do |e, i|
  if i == (n - 1) || aa[i + 1] < e then
    haa[i] = e
  end
end
ret = 1
tt.zip(aa).each_with_index do |e, i|
  if haa[i] && e[0] < haa[i] then
    puts 0; exit
  elsif htt[i] && e[1] < htt[i] then
    puts 0; exit
  elsif htt[i] || haa[i] then
    next
  end
  ret *= e.min
  ret %= (10**9 + 7)
end
puts ret