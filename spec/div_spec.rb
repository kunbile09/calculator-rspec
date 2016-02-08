#!/usr/bin/env ruby
require 'Calculator'

describe Calculator do
	let(:calc){Calculator.new}
	
	describe "#div" do
	
		it "returns an divident" do
			expect(calc.div 4,2).to eq 2
		end
		
		context "when dividing zero to an interger" do
			it "throws an error" do
				  expect { 1 / 0 }.to raise_error(ZeroDivisionError)
			end
		end
		
		it "is dependent on the operation order" do
			expect(calc.div 2, 4).to eq 1/2
		end
		
		it "accepts more than 2 argument" do
			expect(calc.div 100, 2, 2).to eq 25
		end
	end
end