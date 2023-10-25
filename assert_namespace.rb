module Tabajara
  class Assert
    class << self
      def assert(expr)
        raise "Falha de asserção" if !expr
        print "."
      end
    end
  end
end