class CarrinhoDeCompras
  def adicionar(produto, quantidade)
    @itens ||=[]
    @itens << { item: produto, quantidade: quantidade }
  end

  def total
    @itens.sum { |p| p[:item].preco * p[:quantidade] }
  end

  def quantidade
    @itens.sum { |item| item[:quantidade] }
  end
end