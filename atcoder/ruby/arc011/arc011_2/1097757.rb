# Contest ID: arc011
# Problem ID: arc011_2 ( https://atcoder.jp/contests/arc011/tasks/arc011_2 )
# Title: B. ルイス・キャロルの記憶術
# Language: Ruby (1.9.3)
# Submitted: 2017-02-05 11:42:06 +0000 UTC ( https://atcoder.jp/contests/arc011/submissions/1097757 ) 

k = %w|b c d w t j f q l v s x p m h k n g z r|
v = %w|1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 0 0|
h = Hash.new()
k.zip(v).each do |kk, vv|
  h[kk] = vv
end

n = gets.chomp.to_i
w = gets.chomp.split(" ").map{|x| x.downcase}
ret = []
w.each do |ww|
  char = []
  ww.split("").each do |c|
    if h.has_key?(c)
      char << h[c]
    end
  end
  ret << char.join("") if !char.empty?
end

puts ret.join(" ")