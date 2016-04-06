require_relative 'calculator'

RSpec.describe Calculator do 


	it 'has a subtract method' do
		calc = Calculator.new
		calc.subtract(2)
		expect(calc.answerTotal).to eq(-2)

	end

	it 'has a add method' do
		calc = Calculator.new
		calc.add(2)
		expect(calc.answerTotal).to eq(2)	
	end

	it 'has a multiple method' do
		calc = Calculator.new
		calc.multiply(2,2)
		expect(calc.answerTotal).to eq(4)
	end

	it 'chaining methods' do
		calc = Calculator.new
		calc.add(2,2,2).subtract(2,2).multiply(2)
		expect(calc.answerTotal).to eq(4)
	end

	
end