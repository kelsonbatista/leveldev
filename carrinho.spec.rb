require './produto.rb'
require './carrinhoDeCompras.rb'

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
end