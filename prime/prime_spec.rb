require 'rspec'

require_relative 'primefacto'

describe PrimeFactorization do

  it 'returns the prime factors of 2' do
    expect(PrimeFactorization.new(2).list).to eql([2])
  end

  it 'returns nothing for 1' do
    expect(PrimeFactorization.new(1).list).to eql([])
  end

  it 'returns only unique factors for larger numbers' do
    expect(PrimeFactorization.new(2).list).to eql([2])
  end

  it 'returns every factor for larger numbers' do
    expect(PrimeFactorization.new(10).list).to eql([2, 5])
  end

  it 'returns an error for 0' do
    expect(lambda { PrimeFactorization.new(0).list }).to raise_error
  end

  it 'returns an error for negative numbers' do
    expect(lambda { PrimeFactorization.new(-1).list }).to raise_error
  end

end
