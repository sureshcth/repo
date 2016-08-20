package main
import "fmt"

func main(){
	i:= 0
	again:
		fmt.Printf("%d ", i)
		if i<9{
			i++
			goto again
		}
}
