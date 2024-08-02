package main

import (
	"encoding/json"
	"log"
	"net/http"
)

// Struct for book data
type Book struct {
	ID     int    `json:"id"`
	Title  string `json:"title"`
	Author string `json:"author"`
}

// Sample book list
var books = []Book{
	{ID: 1, Title: "Go Programming Language", Author: "Alan A. A. Donovan"},
	{ID: 2, Title: "Learning Go", Author: "Jon Bodner"},
	{ID: 3, Title: "The Way to Go", Author: "Ivo Balbaert"},
}

// Handler to get the book list in JSON format
func getBooks(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(books)
}

func main() {
	http.HandleFunc("/books", getBooks) // Assign handler to '/books' endpoint
	log.Println("Server starting on :8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
