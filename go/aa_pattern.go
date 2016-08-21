package main

import "fmt"

func main(){
	for i :=00; i<100; i++{
		for j :=0; j< i+1; j++{
			fmt.Printf("A");
		}
		fmt.Printf("\n");
	}
}
