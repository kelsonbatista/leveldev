RSpec.describe Array do
  it "matches!" do
    expect([ 1, 2, 3 ]).to eq [1, 2, 3]
    expect([ 1, 2, 3 ]).to include 2
    expect([]).not_to be_nil
    expect([ 1, 2, 3 ]).to be_a_kind_of(Enumeable).and include 2
    expect({ produto: "camiseta", quantidade: 2 }).to have_key :produto
  end
end