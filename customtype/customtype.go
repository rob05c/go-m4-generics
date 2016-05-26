package customtype

import (
	"fmt"
)

type CustomType struct {
	I int
	S string
}

func (c CustomType) String() string {
	return fmt.Sprintf(`{"Name":"CustomType", "I":%d, "S", "%s"}`, c.I, c.S)
}
