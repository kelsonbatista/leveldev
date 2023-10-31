def hello(what, &xpto)
    puts "hello #{what}"

    # yield "mundo"
    xpto.call("mundo") # invocação de forma explicita com call
end

# hello("world") { |x| puts "dentro do bloco: #{x}" }

# ola = -> (quem) { puts "olá #{quem}" } # funções anonimas
# ola.call("mundo")

ola = Proc.new { |quem| puts "olá #{quem}" }
ola.call "mundo"
