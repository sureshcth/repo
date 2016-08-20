package main
import "fmt"

func main(){
        s := "Xello World"
	s1 := "Hello Xorld"
        c := []rune(s)
	c1 := []int32(s1)
        c[0] = 'H'
	c1[6] = 'H'
        s = string(c)
	s1 = string(c1)
        fmt.Printf("%s : %s\n", s, s1);
}
