//go:generate sh -c "m4 -D TYPE=int $GOPATH/src/github.com/robert-butts/go-m4-generics/binarytree/binarytree.go.m4 > $GOPATH/src/github.com/robert-butts/go-m4-generics/binarytree/intbinarytree.go"
//go:generate sh -c "m4 -D TYPE=string $GOPATH/src/github.com/robert-butts/go-m4-generics/binarytree/binarytree.go.m4 > $GOPATH/src/github.com/robert-butts/go-m4-generics/binarytree/stringbinarytree.go"
//go:generate sh -c "m4 -D TYPE=customtype.CustomType -D TYPE_IMPORT=github.com/robert-butts/go-m4-generics/customtype $GOPATH/src/github.com/robert-butts/go-m4-generics/binarytree/binarytree.go.m4 > $GOPATH/src/github.com/robert-butts/go-m4-generics/binarytree/customtypebinarytree.go"

package main

import (
	"fmt"
	"github.com/robert-butts/go-m4-generics/binarytree"
	"github.com/robert-butts/go-m4-generics/customtype"
)

func main() {
	i := binarytree.Newint()
	i.Head.AddLeft(9)
	i.Head.AddRight(19)
	i.Head.Right.AddLeft(994)
	fmt.Println(i)

	s := binarytree.Newstring()
	s.Head.AddLeft("fu")
	s.Head.AddRight("bar")
	s.Head.Right.AddLeft("baz")
	fmt.Println(s)

	c := binarytree.NewCustomType()
	c.Head.AddLeft(customtype.CustomType{I: 42, S: "fu"})
	c.Head.AddRight(customtype.CustomType{I: 24, S: "uf"})
	c.Head.Right.AddLeft(customtype.CustomType{I: 31337, S: "fubar"})
	fmt.Println(c)
}
