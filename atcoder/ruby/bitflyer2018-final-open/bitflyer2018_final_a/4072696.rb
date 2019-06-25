# Contest ID: bitflyer2018-final-open
# Problem ID: bitflyer2018_final_a ( https://atcoder.jp/contests/bitflyer2018-final-open/tasks/bitflyer2018_final_a )
# Title: A. 値札
# Language: Ruby (2.3.3)
# Submitted: 2019-01-23 07:21:17 +0000 UTC ( https://atcoder.jp/contests/bitflyer2018-final-open/submissions/4072696 ) 

n = gets.chomp.to_i

zeros = []

n.times do
  price = gets.chomp.to_i
  z = 0
  while true
    if price % 10 == 0
      z += 1
      price /= 10
    else
      break
    end
  end
  zeros << z
end

puts zeros.min