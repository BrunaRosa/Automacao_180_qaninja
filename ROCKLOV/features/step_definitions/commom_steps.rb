# frozen_string_literal: true

Então('sou redirecionado para o Dashboard') do
  expect(page).to have_css('.dashboard')
end
