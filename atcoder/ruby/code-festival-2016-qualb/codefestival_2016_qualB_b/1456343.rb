# Contest ID: code-festival-2016-qualb
# Problem ID: codefestival_2016_qualB_b ( https://atcoder.jp/contests/code-festival-2016-qualb/tasks/codefestival_2016_qualB_b )
# Title: B. Qualification simulator
# Language: Ruby (2.3.3)
# Submitted: 2017-07-28 03:24:09 +0000 UTC ( https://atcoder.jp/contests/code-festival-2016-qualb/submissions/1456343 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
rem1 = a + b
rem2 = b
s.each do |e|
  if e == "a" then
    if rem1 > 0 then
      puts "Yes"
      rem1 -= 1
    else
      puts "No"
    end
  elsif e == "b" then
    if rem1 > 0 && rem2 > 0 then
      puts "Yes"
      rem1 -= 1
      rem2 -= 1
    else 
      puts "No"
    end
  else
    puts "No"
  end
end
