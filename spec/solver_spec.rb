require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'When testing a Solver class' do
    it 'solver should be an instance of Solver class' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  context 'When testing a factorial method' do
    it 'should raise an error when a negative integer is given' do
      expect { @solver.factorial(-2) }.to raise_error('Only positive numbers are allowed')
    end

    it 'should return 1 when given 0' do
      expect(@solver.factorial(0)).to eql 1
    end

    it 'should return factorial of the given number' do
      expect(@solver.factorial(5)).to eq(120)
    end
  end

  context 'When testing a reverse method' do
    it 'should return olleh when given hello' do
      expect(@solver.reverse('hello')).to eql 'olleh'
    end
  end

  context 'Fizz Buzz' do
    it 'Should return Fizz when divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eql 'fizz'
    end

    it 'Should return Buzz when divisible by 5' do
      expect(@solver.fizzbuzz(20)).to eql 'buzz'
    end

    it 'Should return FizzBuzz when divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
    end

    it 'Should return Number as string when not divisible by 3 nor 5' do
      expect(@solver.fizzbuzz(7)).to eql '7'
    end
  end
end
