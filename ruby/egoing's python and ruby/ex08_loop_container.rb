
foo = ['a', 'b', 'c', 'd', 'e']
for e in foo
  puts(e)
end

print("\n")

for i in (0..foo.length-1)
  if i == 2
    exit
  end
  print(i, "=", foo[i], "\n")
end
