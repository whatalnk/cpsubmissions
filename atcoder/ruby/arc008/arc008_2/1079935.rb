# Contest ID: arc008
# Problem ID: arc008_2 ( https://atcoder.jp/contests/arc008/tasks/arc008_2 )
# Title: B. 謎のたこ焼きおじさん
# Language: Ruby (1.9.3)
# Submitted: 2017-01-27 09:13:59 +0000 UTC ( https://atcoder.jp/contests/arc008/submissions/1079935 ) 

n, m = gets.chomp.split.map(&:to_i)

names = Hash.new(0)
gets.chomp.split("").each do |k|
  names[k] += 1
end
kit = Hash.new(0)
gets.chomp.split("").each do |k|
  kit[k] += 1
end
nkit = 0

names.keys.each do |key|
  if kit.has_key?(key) then
    nkit = [nkit, (names[key].to_f / kit[key])].max
  else
    puts -1
    exit
  end
end

puts nkit.ceil
