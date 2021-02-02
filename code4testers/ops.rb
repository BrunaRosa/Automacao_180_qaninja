# frozen_string_literal: true

# Operadores Matematicos

# def soma(n1, n2)
#     puts n1 + n2
# end

# def subtrai(n1, n2)
#     puts n1 - n2
# end

# def multiplica(n1, n2)
#     puts n1 * n2
# end

# def divide(n1, n2)
#     resultado =  (n1.to_f / n2.to_f).round(2)
#     puts resultado
#     puts resultado.class
# end

# soma(1,2)
# subtrai(3,2)
# multiplica(2,2)
# divide(10,3)

# Operadores de Comparação

def maior_que(v1, v2)
  puts v1 > v2
end

# # Retorna true, pq 10 é maior que 5
# maior_que(10, 5)

# # Retorna false, pq 5 não é maior que 10
# maior_que(5, 10)

# # Retorna false, pq 10 não é maior que 10, pq ele é igual
# maior_que(10, 10)

def menor_que(v1, v2)
  puts v1 < v2
end

# # Retorna true, pq 5 é menor que 10
# maior_que(5, 10)

def maior_ou_igual_que(v1, v2)
  puts v1 >= v2
end

# Retorna true, pq 10 é igual a 10
# maior_ou_igual_que(10, 10)

# Retorna true, pq 15 é maior que  10
# maior_ou_igual_que(15, 10)

def menor_ou_igual_que(v1, v2)
  puts v1 <= v2
end

# Retorna true, pq 5 é igual a 5
# menor_ou_igual_que(5, 5)

# Retorna true, pq 5 é menor que  10
# maior_ou_igual_que(5, 10)

# Retorna false, pq 10 não é menor que 5
# maior_ou_igual_que(10, 5)

def igual(v1, v2)
  puts v1 == v2
end

# Deve retornar true, pq 10 é de fato igual a 10
# igual(10, 10)

# Deve retornar false, pq mesmo os valores sendo 10, são de tipos diferentes
# igual(10, "10")

# Deve retornar false, pq 10 é diferente de 9
# igual(10, 9)

def diferente(v1, v2)
  puts v1 != v2
end

# Deve retornar true, pq 10 (inteiro) é de fato diferente de 10 (string)
# diferente(10, "10")

# Deve retornar false, pq ambos são iguais
# diferente(10, 10)

# Deve retornar true, pq de fato são diferentes
# diferente(10, 5)
