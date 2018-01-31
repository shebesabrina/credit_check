class CreditCard


def initialize(card_number)
  @card_number = card_number.split("").collect! { |number| number.to_i }
end
# 2x every other digit:  7 18 9 4 7 6 9 16 7 2 3

# there should be a second def here and you can use .digits
def times_by_2
  @card_number.reverse.map.with_index  do |number, index|
    if (index.odd?)
      number * 2
    else
      number
      end
    end
  end
# Summed digits over 10: 7 9 9 4 7 6 9 7 7 2 3
def double_digits
  times_by_2.map do |number|
  if number > 9
    number - 9
  else
    number
    end
  end
end

def summed
  double_digits.sum
end

def valid
    if summed % 10 == 0
      puts "This number is valid!"
    else
      puts "This number is not valid"
    end
end

# Results summed:        7 9 9 4 7 6 9 7 7 2 3 = 70
#this allows me to reverse and put the numbers in an array

# card_number.map {|card| card.odd?}

end
card_number_1 = CreditCard.new("5541801923795240")
puts card_number_1.valid
