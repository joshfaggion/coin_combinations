require('rspec')
require('pry')
require('coin_combinations')


describe('#coin_combinations?') do
  it('returns a string with four pennies interpolated in') do
    expect(4.coin_combo()).to(eq('0 q, 0 d, 0 n, 4 p'))
  end
  it('returns a string with one nickel and two pennies interpolated in') do
    expect(7.coin_combo()).to(eq('0 q, 0 d, 1 n, 2 p'))
  end
  it('returns one quarter, one dime, and one nickels') do
    expect(40.coin_combo()).to(eq('1 q, 1 d, 2 n, 0 p'))
  end
  it('returns two dimes, and two pennies') do
    expect(22.coin_combo()).to(eq('0 q, 2 d, 0 n, 2 p'))
  end
  it('returns two quarters, one dime, one nickel, and two pennies') do
    expect(67.coin_combo()).to(eq('2 q, 1 d, 1 n, 2 p'))
  end
end
