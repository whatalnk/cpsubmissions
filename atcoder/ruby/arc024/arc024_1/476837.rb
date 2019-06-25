# Contest ID: arc024
# Problem ID: arc024_1 ( https://atcoder.jp/contests/arc024/tasks/arc024_1 )
# Title: A. くつがくっつく
# Language: Ruby (1.9.3)
# Submitted: 2015-08-24 10:08:12 +0000 UTC ( https://atcoder.jp/contests/arc024/submissions/476837 ) 

l, r = gets.chomp.split(" ").map(&:to_i)
ls = gets.chomp.split(" ").map(&:to_i)
rs = gets.chomp.split(" ").map(&:to_i)
res = 0
ls.each do |ll|
  i = rs.index(ll)
  unless i.nil? then
    rs.delete_at(i)
    res += 1
  end
end
puts res