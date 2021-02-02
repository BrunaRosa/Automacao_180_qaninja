# frozen_string_literal: true

Bruna = { nome: 'Bruna', email: 'bruninha20_468@hotmail.com', legal: true }.freeze
puts Bruna[:nome]
puts Bruna[:email]
puts Bruna[:legal]

Vanessa = { nome: 'Vanessa', email: 'vanessinha_soares@hotmail.com', legal: true }.freeze
puts Vanessa[:nome]
puts Vanessa[:email]
puts Vanessa[:legal]

pessoas = [Bruna, Vanessa]

puts pessoas[0][:nome]
puts pessoas[1][:email]
