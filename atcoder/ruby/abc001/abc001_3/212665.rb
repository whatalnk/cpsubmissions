# Contest ID: abc001
# Problem ID: abc001_3 ( https://atcoder.jp/contests/abc001/tasks/abc001_3 )
# Title: C. 風力観測
# Language: Ruby (1.9.3)
# Submitted: 2014-08-12 13:22:40 +0000 UTC ( https://atcoder.jp/contests/abc001/submissions/212665 ) 

d0, w0 = gets.chomp.split(" ").map(&:to_i)
w1 = (w0/60.0).round(1)

if w1 >= 32.7
  w2 = 12
elsif w1 <= 10.7
  if w1 <= 3.3
    if w1.between?(0.0, 0.2)
      w2 = 0
    elsif w1.between?(0.3, 1.5)
      w2 = 1
    else
      w2 = 2
    end
  else
    if w1.between?(3.4, 5.4)
      w2 = 3
    elsif w1.between?(5.5, 7.9)
      w2 = 4
    else
      w2 = 5
    end
  end
else
  if w1 <= 20.7
    if w1.between?(10.8, 13.8)
      w2 = 6
    elsif w1.between?(13.9, 17.1)
      w2 = 7
    else
      w2 = 8
    end
  else
    if w1.between?(20.8, 24.4)
      w2 = 9
    elsif w1.between?(24.5, 28.4)
      w2 = 10
    else
      w2 = 11
    end
  end
end

if w2 == 0
  d1 = 'C'
elsif d0 <= 1687
  if d0 <= 787
    if d0 <= 337
      if d0 <= 112
        d1 = 'N'
      else
        d1 = 'NNE'
      end
    else
      if d0 <= 562
        d1 = 'NE'
      else
        d1 = 'ENE'
      end
    end
  else
    if d0 <= 1237
      if d0 <= 1012
        d1 = 'E'
      else
        d1 = 'ESE'
      end
    else
      if d0 <= 1462
        d1 = 'SE'
      else
        d1 = 'SSE'
      end
    end
  end
else
   if d0 <= 2587
    if d0 <= 2137
      if d0 <= 1912
        d1 = 'S'
      else
        d1 = 'SSW'
      end
    else
      if d0 <= 2362
        d1 = 'SW'
      else
        d1 = 'WSW'
      end
    end
  else
    if d0 <= 3037
      if d0 <= 2812
        d1 = 'W'
      else
        d1 = 'WNW'
      end
    else
      if d0 <= 3262
        d1 = 'NW'
      elsif d0 <= 3487
        d1 = 'NNW'
      else
        d1 = 'N'
      end
    end
  end
end

print "#{d1} #{w2}\n"
