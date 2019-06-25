# Contest ID: abc003
# Problem ID: abc003_2 ( https://atcoder.jp/contests/abc003/tasks/abc003_2 )
# Title: B. AtCoderトランプ
# Language: Ruby (1.9.3)
# Submitted: 2014-09-19 09:04:53 +0000 UTC ( https://atcoder.jp/contests/abc003/submissions/234229 ) 

str1= gets.chomp
str2= gets.chomp
n = str1.length
counter = 0
(0..n-1).each do |i|
  unless str1[i] == str2[i]
    if str1[i] == "@"
      if /[atcoder]/ =~ str2[i]
        counter += 1
        next
      else
        break
      end
    elsif str2[i] == "@"
      if /[atcoder]/ =~ str1[i]
        counter += 1
        next
      else
        break
      end
    else
      break
    end
  end
  counter += 1
end
if n == counter
  print "You can win\n"
else
  print "You will lose\n"
end
