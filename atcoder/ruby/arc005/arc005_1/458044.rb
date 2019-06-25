# Contest ID: arc005
# Problem ID: arc005_1 ( https://atcoder.jp/contests/arc005/tasks/arc005_1 )
# Title: A. 大好き高橋君
# Language: Ruby (1.9.3)
# Submitted: 2015-08-01 06:18:03 +0000 UTC ( https://atcoder.jp/contests/arc005/submissions/458044 ) 

n = gets.chomp.to_i
words = gets.chomp.chop.split(" ")
tkhs = %w(TAKAHASHIKUN Takahashikun takahashikun)
res = 0
words.each do |w|
  if tkhs.include?(w) then
    res += 1
  end
end
puts res