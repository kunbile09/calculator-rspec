#!/usr/bin/env ruby
require 'Calculator'

describe Calculator do
	let(:calc){Calculator.new}
	
	describe "#sub" do
	
		it "returns an difference" do
			expect(calc.sub 4,1).to eq 3
		end
		
		context "when subtracting zero to an interger" do
			it "returns the same number" do
				expect(calc.sub 4, 0).to eq 4
			end
		end
		
		it "is  dependent on the operations order" do
			expect(calc.sub 1, 2).to eq -1
		end
		
		it "accepts more  arguments" do
			expect(calc.sub 10, 4, 3).to eq 3
		end
	end
end