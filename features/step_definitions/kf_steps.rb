# encoding: iso-8859-1
# language: pt-BR
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
	begin
		10.times do
		steps %{
			* click on "Missão" Text
			* Wait for "15" seconds
			* click on input with src like "img/lang/br/btn_weiter.jpg"
			* Wait for "15" seconds
			* click on "Ataque" Text
			* Wait for "15" seconds
			* click on "Missão" Text
			* Wait for "360" seconds
			
	  	}		
	end
	rescue
		sleep 10
		retry
	end
end
