require('rspec')
require('coinapp')

describe('String#coinapp') do
  it("fetches a number of cents in integer form and return number of individual coins") do
    expect ((10).coinapp()).to(eq("You have 0 quarters, 1 dimes, 0 nickels, 0 pennies"))
  end
end
