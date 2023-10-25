class Produto
  attr_reader :nome, :preco

  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
end

RSpec.describe Produto do
  it "deve inicializar produto com nome e preco" do
    produto = Produto.new("Camiseta", 50.0)

    expect(produto.nome).to eq "Camiseta"
    expect(produto.preco).to eq 50.0
  end
end