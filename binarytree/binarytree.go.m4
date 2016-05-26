changecom("//")
// pass "-D TYPE=foo.Foo -D TYPE_IMPORT=github.com/foo" to build a Treefoo, which can be created with "binarytree.Newfoo"

define(`TYPE_NAME', substr(TYPE, eval(index(TYPE, `.') + 1)))

package binarytree

import (
	"fmt"
ifdef(`TYPE_IMPORT', `	"TYPE_IMPORT"
'))

type Tree`'TYPE_NAME`' struct {
	Head Node`'TYPE_NAME`'
}

type Node`'TYPE_NAME`' struct {
	Data  TYPE
	Left  *Node`'TYPE_NAME`'
	Right *Node`'TYPE_NAME`'
}

func New`'TYPE_NAME`'() *Tree`'TYPE_NAME`'{
	t := &Tree`'TYPE_NAME`'{}
	return t
}

func (n *Node`'TYPE_NAME`') AddLeft(data TYPE) {
	n.Left = &Node`'TYPE_NAME`'{Data: data}
}

func (n *Node`'TYPE_NAME`') AddRight(data TYPE) {
	n.Right = &Node`'TYPE_NAME`'{Data: data}
}

func (t *Tree`'TYPE_NAME`') String() string {
	return t.Head.String()
}

func (n *Node`'TYPE_NAME`') String() string {
	s := fmt.Sprintf("{\"data\":%v", n.Data)
	if n.Left != nil {
		s += fmt.Sprintf(",\"left\":%v", n.Left)
	}
	if n.Right != nil {
		s += fmt.Sprintf(",\"right\":%v", n.Right)
	}
	s += "}"
	return s
}
