require './assert.rb'
require './produto.rb'
require_relative './assert_namespace'

produto = Produto.new "Capacete", 550.0

Tabajara::Assert.assert produto.nome == "Capacete"
Tabajara::Assert.assert produto.preco == 550.0

