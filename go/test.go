package main
import "fmt"


type T []int

func (t *T)Add(n int){
	*t = append(*t, n)
}

func main() {
	t := make(T, 0)
	t.Add(2)
	t.Add(10)
	
	for _,n := range(t){
		fmt.Println(n)
	}
}
