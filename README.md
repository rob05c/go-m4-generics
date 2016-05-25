go-m4-generics
--

Proof-of-concept Go Generics using GNU M4

Go generics are often done with [ast](https://golang.org/pkg/go/ast) and [ssa](https://godoc.org/golang.org/x/tools/go/ssa). While parsing the AST allows for more control over generation, few would argue it's easy.

[GNU M4](https://www.gnu.org/software/m4/m4.html) is a macro processor. It was made for this kind of thing.

The string escapes in the macro code are a little hard to read, and play havoc with Go syntax highlighters, but only for the `.m4` code files, which will hopefully be only small libraries. Code _using_ the generics is normal Go syntax, as are generated files.

But don't take my word for it—see for yourself. This proof-of-concept is very small.

Inspired by http://blog.00null.net/post/144763147991/using-gnu-m4-as-a-css-pre-processor
