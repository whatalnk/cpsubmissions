# Contest ID: tenka1-2018-beginner
# Problem ID: tenka1_2018_b ( https://atcoder.jp/contests/tenka1-2018-beginner/tasks/tenka1_2018_b )
# Title: B. Exchange
# Language: Ruby (2.3.3)
# Submitted: 2018-10-27 12:03:30 +0000 UTC ( https://atcoder.jp/contests/tenka1-2018-beginner/submissions/3478841 ) 

a, b, k = gets.chomp.split(" ").map(&:to_i)
k.times do |i|
  if (i + 1).odd?
    if a.odd?
      a -= 1
    end
    b += a / 2
    a /= 2
  else
    if b.odd?
      b -= 1
    end
    a += b / 2
    b /= 2
  end
end
puts "#{a} #{b}"