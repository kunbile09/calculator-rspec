#!/usr/bin/env ruby
require 'Calculator'

describe Calculator do
	let(:calc){Calculator.new}
	
	describe "#mult" do
	
		it "returns an interger" do
			expect(calc.mult 1,1).to eq 1
		end
		
		context "when multiplly by zero" do
			it "returns zero" do
				expect(calc.mult 4, 0).to eq 0
			end
		end
		
		it "is not dependent on the operation order" do
			expect(calc.mult 1, 2).to eq calc.mult(2, 1)
		end
		
		it "accepts more than 2 arguments" do
			expect(calc.mult 2, 4, 3).to eq 24
		end
	end
end