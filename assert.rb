def assert(expr)
  raise "Falha de asserção" if !expr
  print "."
end

begin
  assert 1 == 2
rescue StandardError => e
  if e.message == "Falha de asserção"
    print "."
  else
    raise e
  end
end

assert 1 == 1