require './assert.rb'
require './produto.rb'

produto = Produto.new "Capacete", 550.0

assert produto.nome == "Capacete"
assert produto.preco == 550.0

