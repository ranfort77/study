
# ex01
# Lines between =begin and =end are skipped by the interpreter.
=begin
This is a skip line.
This line is also skip line.
=end
puts("Hello, Ruby!")
puts("My first ruby code")


# ex02
# Each expression is delimited by semicolons or newlines 
# unless obviously incomplete (e.g. trailing '+')
a = "hello,"; b = " world"
puts(a + b)
c = 1 + 
  2 + 
  3
puts(c)


# ex03
# Backslashes at the end of line does not terminate expression.
s = "Backslashes is \
at the end of line \
does not terminate expression."
puts(s)

