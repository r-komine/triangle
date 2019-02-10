a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

def triangle(a, b, c)
  # 三角形か確認する
  if a + b > c && b + c > a && c + a > b
    triangle = 
      if a == b && b == c
        '正三角形'
      elsif a == b || b == c || c == a
        '二等辺三角形'
      else
        '不等辺三角形'
      end
    return triangle + 'ですね！'
  else
    return '三角形じゃないです＞＜'
  end
end

puts triangle(a, b, c)