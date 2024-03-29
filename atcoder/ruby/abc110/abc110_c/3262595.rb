# Contest ID: abc110
# Problem ID: abc110_c ( https://atcoder.jp/contests/abc110/tasks/abc110_c )
# Title: C. String Transformation
# Language: Ruby (2.3.3)
# Submitted: 2018-09-24 04:19:10 +0000 UTC ( https://atcoder.jp/contests/abc110/submissions/3262595 ) 

s = gets.chomp
t = gets.chomp

n = s.length

sh = Hash.new()
th = Hash.new()
("a".."z").each do |c|
  x = c.ord
  sh[x] = -1
  th[x] = -1
end

n.times do |i|
  x = s[i].ord
  y = t[i].ord
  if sh[x] >= 0
    if sh[x] != y
      puts "No"
      exit
    end
  else
    sh[x] = y
  end
  if th[y] >= 0
    if th[y] != x
      puts "No"
      exit
    end
  else
    th[y] = x
  end
end

puts "Yes"