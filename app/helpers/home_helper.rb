module HomeHelper

  def lotterypicks
    a = []
    b = []

    45.times do |i|
      a.push(i+1)
    end
    a.shuffle!
    6.times do
      b.push(a.pop)
    end
    return b

  end

end

