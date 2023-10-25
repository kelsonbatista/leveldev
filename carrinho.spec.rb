require './produto.rb'
require './carrinhoDeCompras.rb'

RSpec::Matchers.define :have_quantity do |quantity|
  match do |carrinho|
    carrinho.quantidade == quantity
  end

  failure_message do |carrinho|
    "A quantidade #{carrinho.quantidade} está incorreta"
  end
end

RSpec.describe CarrinhoDeCompras do
  let(:camiseta) { Produto.new("Camiseta", 50.0) }
  let(:calca) { Produto.new("Calça Jeans", 100.0) }

  describe "#total" do
    it "deve calcular o total do carrinho" do
      carrinho = CarrinhoDeCompras.new
      carrinho.adicionar camiseta, 1
      carrinho.adicionar calca, 2

      expect(carrinho.total).to eq 250  
    end
  end

  describe "#quantidade" do
    it "deve calcular a quantidade total do carrinho" do
      carrinho = CarrinhoDeCompras.new
      carrinho.adicionar camiseta, 1
      carrinho.adicionar calca, 2

      expect(carrinho).to have_quantity(3)
    end
  end
end