#!/usr/bin/env ruby
require 'Calculator'

describe Calculator do
	let(:calc){Calculator.new}
	
	describe "#mult" do
	
		it "returns a result" do
			expect(calc.mult 2,4).to eq 8
		end
		
		context "when multiplying zero to an interger" do
			it "returns the zero" do
				expect(calc.mult 4, 0).to eq 0
			end
		end
		
		it "is not dependent on the operation orders" do
			expect(calc.mult 1, 2).to eq calc.mult(2, 1)
		end
		
		it "accept more than 2 arguments" do
			expect(calc.mult 2, 4, 3).to eq 24
		end
	end
end