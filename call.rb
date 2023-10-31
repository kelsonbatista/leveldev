def hello(what)
    puts "hello #{what}"

    yield "mundo"
end

hello("world") { |x| puts "dentro do bloco: #{x}" }
  