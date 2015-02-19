Given(/^ingreso a la aplicacion$/) do
	  visit '/'
end

Then(/^debe aparecer "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Given(/^Comenzo el juego$/) do
	  visit '/'
end

Given(/^envia letra "(.*?)"$/) do |arg1|
   fill_in("letra", :with => arg1)
   click_button("enviar")

end

Given(/^Palabra secreta es "(.*?)"$/) do |arg1|
  
end



