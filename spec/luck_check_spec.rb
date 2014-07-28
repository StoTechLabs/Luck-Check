require('rspec')
require('luck_check')

describe('luck_check') do
  it('compares the sum of the first 3 strings to the second three, returns true if equal') do
    luck_check("123321").should(eq(true))
  end

  it('is false if the sum of the first half does not match the sum of the second half') do
    luck_check("123456").should(eq(false))
  end

  it('is true if the sum of the first 2 numbers and the last 2 numbers of a 5 didgit number are equal') do
    luck_check("12321").should(eq(true))
  end

end
