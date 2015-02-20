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
   click_button("comprobar")

end

Given(/^Palabra secreta es "(.*?)"$/) do |arg1|
  
end

Given(/^ingrese a la aplicacion$/) do
	visit '/'
end

When(/^ingreso "(.*?)"$/) do |arg1|
  fill_in("nombre", :with => arg1)
end

When(/^inicio partida$/) do
  click_button("iniciar")
end

Then(/^deberia ver "(.*?)" en la pantalla de juego$/) do |arg1|
 last_response.body.should =~ /#{arg1}/m
end

Then(/^deberia ver mi puntaje en "(.*?)"$/) do |arg1|
 last_response.body.should =~ /#{arg1}/m
end

Given(/^inicio el juego$/) do
  visit '/'
  fill_in("nombre", :with => "Sergio")
  click_button("iniciar")
end

Then(/^deberia ver "(.*?)"$/) do |arg1|
 last_response.body.should =~ /#{arg1}/m
end
