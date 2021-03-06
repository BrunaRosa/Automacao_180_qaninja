# frozen_string_literal: true

Dado('que acesso a página de cadastro') do
  visit 'http://localhost:3000/signup'
end

Quando('submeto o seguinte formulário do cadastro') do |table|
  user = table.hashes.first

  MongoDB.new.remove_user(user[:email])

  find('#fullName').set user[:nome]
  find('#email').set user[:email]
  find('#password').set user[:senha]

  click_button 'Cadastrar'
end
