# Contest ID: abc106
# Problem ID: abc106_c ( https://atcoder.jp/contests/abc106/tasks/abc106_c )
# Title: C. To Infinity
# Language: Ruby (2.3.3)
# Submitted: 2018-08-31 03:01:42 +0000 UTC ( https://atcoder.jp/contests/abc106/submissions/3105779 ) 

s = gets.chomp.split("")
k = gets.chomp.to_i

s.each do |si|
  if si == "1"
    k -= 1
    if k <= 0
      puts 1
      exit
    end
  else
    puts si
    exit
  end
end
