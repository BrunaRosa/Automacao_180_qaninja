# frozen_string_literal: true

Dado('que acesso a página de cadastro') do
  visit 'http://localhost:3000/signup'
end

Quando('submeto o meu cadastro completo') do
  find('#fullName').set Faker::Internet.username
  find('#email').set Faker::Internet.free_email
  find('#password').set '1234'

  click_button 'Cadastrar'
end

Então('sou redirecionado para o Dashboard') do
  expect(page).to have_css('.dashboard')
end

Quando('submeto o meu cadastro sem o nome') do
  find('#email').set Faker::Internet.free_email
  find('#password').set '1234'

  click_button 'Cadastrar'
end

Então('vejo a mensagem de alerta: Oops.Informe seu nome completo!') do
  alert = find(".alert-dark")
  expect(alert.text).to eql 'Oops. Informe seu nome completo!'
end

Quando('submeto o meu cadastro sem o email') do
  find('#fullName').set Faker::Internet.username
  find('#password').set '1234'

  click_button 'Cadastrar'

end

Então('vejo a mensagem de alerta: Oops.Informe um email válido!') do
  alert = find(".alert-dark")
  expect(alert.text).to eql 'Oops. Informe um email válido!'
end

