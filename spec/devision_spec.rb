#!/usr/bin/env ruby
require 'Calculator'

describe Calculator do
	let(:calc){Calculator.new}
	
	describe "#div" do
	
		it "returns an interger" do
			expect(calc.div 10,2).to eq 5
		end
		
		context "when deviding by zero" do
			it "throws an exception" do
				expect { calc.div 20, 0 }.to raise_exception
			end
		end
		
		it "accepts more than 2 arguments" do
			expect(calc.div 100, 2, 2).to eq 25
		end
	end
end