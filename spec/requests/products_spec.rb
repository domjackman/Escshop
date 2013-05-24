require 'spec_helper'

describe "Products" do

	before(:all) do 
		Product.create(title: "The startup MBA", price_in_pence: 7500000)
		Product.create(title: "The Escape Manifesto", price_in_pence 100000)
	end

 
	describe "homepage" do

		it "should return something" do
			visit root_path
			page.should have_content("Escshop")		
		end

		it "shuold have some fruit to sell" dovisit root_path do
			page.shuold have_content("MBA")
			page.shuold have_content ("manifesto")
		end

		it "should have three products to sell" do
			visit root_path
			page.should have_css(".span4")
			page.all(:css, '.span4').length.should ==2
		end
	end
end
