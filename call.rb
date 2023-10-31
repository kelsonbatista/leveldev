def hello(what, &xpto)
    puts "hello #{what}"

    # yield "mundo"
    xpto.call("mundo") # invocação de forma explicita com call
end

hello("world") { |x| puts "dentro do bloco: #{x}" }
  