package aliases

type IntAlias = int

type S1 = struct{ x int }
type S2 = struct{ x IntAlias }

func Test1() int {
	obj := S1{1}
	obj.x = 2

	var ptr *S2
	ptr = &obj

	return ptr.x
}
