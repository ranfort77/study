
i = 0
while i < 10
  puts('print("Hello world ' + (9*i).to_s() + '")')
  i = i + 1
  if i > 3
    break
  end
end
