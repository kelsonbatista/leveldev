RSpec.feature "Carrinho" do
  it "permite verificar um carrinho" do
    get "/carrinho"

    expect(response).to have_http_status(200)
  end
end
