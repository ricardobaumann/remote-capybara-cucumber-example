# encoding: UTF-8
Given /^loop on missions$/ do
	10.times do
		steps %{
			* click on "Missão" Text
			* choose option "gesinnung" with "Cavaleiro das sombras em missão de saque"
			* click on input with src like "img/lang/br/btn_weiter.jpg"
			* Wait for "660" seconds
	  	}		
	end
end

Given /^loop on fights$/ do
	10.times do
		steps %{
			* click on "Missão" Text
			* choose option "gesinnung" with "Cavaleiro das sombras em missão de saque"
			* click on input with src like "img/lang/br/btn_weiter.jpg"
			* Wait for "660" seconds
	  	}		
	end
end
