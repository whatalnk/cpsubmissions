# Contest ID: cf17-final-open
# Problem ID: cf17_final_a ( https://atcoder.jp/contests/cf17-final-open/tasks/cf17_final_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-05-03 09:47:02 +0000 UTC ( https://atcoder.jp/contests/cf17-final-open/submissions/5243060 ) 

s = gets.chomp
akb = "AKIHABARA"
n = akb.length
a = []
n.times do |i|
  a << i if akb[i] == "A"
end

if s == akb
  puts "YES"
  exit
else

  1.upto(4) do |i|
    a.combination(i) do |x|
      w = []
      n.times do |j|
        if x.include?(j)
          next
        else
          w << akb[j]
        end
      end
      if s == w.join("")
        puts "YES"
        exit
      end
    end
  end
end
puts "NO"