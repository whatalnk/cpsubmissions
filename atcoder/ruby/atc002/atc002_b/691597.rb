# Contest ID: atc002
# Problem ID: atc002_b ( https://atcoder.jp/contests/atc002/tasks/atc002_b )
# Title: B. n^p mod m
# Language: Ruby (2.3.3)
# Submitted: 2016-04-10 12:48:35 +0000 UTC ( https://atcoder.jp/contests/atc002/submissions/691597 ) 

n, m, p = gets.chomp.split(" ").map(&:to_i)

def pow_mod(n, p, m)
  if p == 0 then
    return 1
  elsif p.odd? then
    return pow_mod(n, p-1, m) * n % m
  else
    t = pow_mod(n, p / 2, m)
    return t * t % m
  end
end

puts pow_mod(n, p, m)
