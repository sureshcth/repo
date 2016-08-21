package main

import "fmt"

func main(){
	for i,s:= range "Hello World"{
		fmt.Printf("%d: %c\n", i, s)
	}

	for pos, char := range "aΦx" {
		fmt.Printf("character '%c' starts at byte position %d\n", char, pos)
	}

}
