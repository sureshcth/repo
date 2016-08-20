package main

import "fmt"


func main(){
	s:= "Hello "+
		"World"
	s1:=`hello
World againn`

	fmt.Printf("%s AND %s", s, s1)
}
