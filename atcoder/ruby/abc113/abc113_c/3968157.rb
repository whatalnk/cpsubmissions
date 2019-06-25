# Contest ID: abc113
# Problem ID: abc113_c ( https://atcoder.jp/contests/abc113/tasks/abc113_c )
# Title: C. ID
# Language: Ruby (2.3.3)
# Submitted: 2019-01-09 13:09:49 +0000 UTC ( https://atcoder.jp/contests/abc113/submissions/3968157 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
prefs = Array.new(n+1){Array.new()}
city = Struct.new("City", :num, :year, :pref, :id)
m.times do |i|
  pref_, year_ = gets.chomp.split(" ").map(&:to_i)
  prefs[pref_] << city.new(i, year_, pref_, nil)
end

ret = Array.new(n+1)
prefs.each do |pref|
  next if pref.empty?
  pref.sort!{|a, b| a[:year] <=> b[:year]}
  i = 1
  pref.each do |c|
    c[:id] = i
    ret[c[:num]] = c
    i += 1
  end
end

ret.each do |c|
  next if c.nil?
  puts sprintf("%06d", c[:pref]) + sprintf("%06d", c[:id])
end
