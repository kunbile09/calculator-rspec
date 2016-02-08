#!/usr/bin/env ruby
require 'Calculator'

describe Calculator do
	let(:calc){Calculator.new}
	
	describe "#add" do
	
		it "returns an interger" do
			expect(calc.add 3,1).to eq 4
		end
		
		context "when adding zero to an interger" do
			it "returns the interger" do
				expect(calc.add 4, 0).to eq 4
			end
		end
		
		it "is not dependent on the operation order" do
			expect(calc.add 1, 2).to eq calc.add(2, 1)
		end
		
		it "accepts more than two arguments" do
			expect(calc.add 2, 4, 3).to eq 9
		end
	end
end