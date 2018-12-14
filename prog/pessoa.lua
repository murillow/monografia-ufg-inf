local pessoa = {}

function pessoa.criar(nome, idade)
  return {nome = nome, idade = idade}
end

function pessoa.mostrar(p)
  print(p.nome, p.idade)
end

return pessoa