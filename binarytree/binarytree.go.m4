changecom("//")
// pass "-D TYPE=foo" to build a Treefoo, which can be created with "binarytree.Newfoo"

package binarytree

import (
	"fmt"
)

type Tree`'TYPE`' struct {
	Head Node`'TYPE`'
}

type Node`'TYPE`' struct {
	Data  TYPE
	Left  *Node`'TYPE`'
	Right *Node`'TYPE`'
}

func New`'TYPE`'() *Tree`'TYPE`'{
	t := &Tree`'TYPE`'{}
	return t
}

func (n *Node`'TYPE`') AddLeft(data TYPE) {
	n.Left = &Node`'TYPE`'{Data: data}
}

func (n *Node`'TYPE`') AddRight(data TYPE) {
	n.Right = &Node`'TYPE`'{Data: data}
}

func (t *Tree`'TYPE`') String() string {
	return t.Head.String()
}

func (n *Node`'TYPE`') String() string {
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
