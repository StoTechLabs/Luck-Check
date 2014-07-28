require('rspec')
require('luck_check')

describe('luck_check') do
  it('Verifies that the number entered is 6 digits long') do
    luck_check(123456).should(eq(true))
  end

  it('splits the first three digits into a separate array') do
    luck_check(123456).should(eq([1, 2, 3]))
  end
end
