#NoEnv
#Warn
s := "<pre class=""line-numbers""><code class=""language-autohotkey"">텍스트</code></pre>"

re_tag := "<[/a-z]+[ ]?([a-z]+=""[a-z\-]+"")?>"
re := format("{1}{1}(.*?){1}{1}", re_tag)

pos := RegExMatch(s, re, match)

msgbox % format("matchAll={}", match)
msgbox % format("text={}", match3)

