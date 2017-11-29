#passing in 1 would return "1st", 2 would return "2nd", 3 would return "3rd", 4 would return "4th", etc.



  def suffix(number)
    if number == 0
      return "zeo"
    elsif number.to_s.chars.map(&:to_i).last == 1 && number != 11
      return "#{number}st"
    elsif number.to_s.chars.map(&:to_i).last == 2 && number != 12
      return "#{number}nd"
    elsif number.to_s.chars.map(&:to_i).last == 3 && number != 13
      return "#{number}rd"
    else
      return "#{number}th"
    end
  end

   (1..19).each do |x|
    puts suffix(x)
    end
