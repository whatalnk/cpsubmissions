# Contest ID: ddcc2017-qual
# Problem ID: ddcc2017_qual_d ( https://atcoder.jp/contests/ddcc2017-qual/tasks/ddcc2017_qual_d )
# Title: D. 石
# Language: Ruby (2.3.3)
# Submitted: 2017-10-08 04:53:28 +0000 UTC ( https://atcoder.jp/contests/ddcc2017-qual/submissions/1662066 ) 

H, W = gets.chomp.split(" ").map(&:to_i)
A, B = gets.chomp.split(" ").map(&:to_i)
cc = 0
m = Array.new(H)
H.times do |i|
  row = gets.chomp.split("")
  m[i] = row
  row.each do |cell|
    cc += 1 if cell == 'S'
  end
end

k1 = k2 = k3 = al = 0
(H / 2).times do |i|
  (W / 2).times do |j|
    zi = H - i - 1
    zj = W - j - 1
    bt = 0
    bt |= 1 if m[i][j] == 'S'
    bt |= 2 if m[zi][j] == 'S'
    bt |= 4 if m[i][zj] == 'S'
    bt |= 8 if m[zi][zj] == 'S'
    if bt == 15
      al += 1
    else
      k1 += 1 if (bt & 3) == 3 || (bt & 12) == 12
      k2 += 1 if (bt & 5) == 5 || (bt & 10) == 10
    end
  end
end
r1 = 0
r1 += A if al * 4 + k1 * 2 != cc
r1 += (k1 * A)
r1 += B if al * 4 != cc
r1 += (al * ([A, B].max + A + B))

r2 = 0
r2 += B if al * 4 + k2 * 2 != cc
r2 += (k2 * B)
r2 += A if al * 4 != cc
r2 += (al * ([A, B].max + A + B))

if r1 > r2 
  puts r1
else
  puts r2
end