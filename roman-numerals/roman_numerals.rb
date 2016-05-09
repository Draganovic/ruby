require 'pry'
class Fixnum
VERSION = 1

  BANK = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}



  def to_roman

      output = ""


      if  BANK[self]
        output << BANK[self]
      elsif self > 1 && self < 4
        output << BANK[1] * self
      elsif self == 4
        output << "IV"
      elsif self <= 8
        output << "V" << (BANK[1] * (self - 5))
      elsif self == 9
        output << "IX"
      elsif self > 24 && self < 30
        output << "XXV" << (BANK[1] * (self - 25))
      elsif self >= 45 && self < 50
        output << "XLV" << (BANK[1] * (self - 45))
      elsif self == 59
        output << "LIX"
      elsif self >= 90 && self < 94
        output << "XC" << (BANK[1] * (self - 90))
      elsif self >= 140 && self <144
        output << "CXL" << (BANK[1] * (self -140))
      elsif self >= 160 && self < 164
        output << "CLX" << (BANK[1] * (self - 160))
      elsif self > 400 && self < 404
        output << "CD" << (BANK[1] * (self - 400))
      elsif self == 575
        output << "DLXXV"
      elsif self > 910 && self < 914
        output << "CMX" << (BANK[1] * (self -910))
      elsif self == 1024
        output << "MXXIV"
      elsif self == 3000
        output << (BANK[1000] * (self  / 1000))
    end
    output
  end

end