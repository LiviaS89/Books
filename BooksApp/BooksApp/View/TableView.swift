import SwiftUI

struct TableView: View {
    
    var books = [Book (title: "Harap - Alb", author: "Ion Creangă", year: 1923, image: "Harap", price: 10.5, rating: 3, link: "https://carturesti.ro"),
                 Book (title: "Ion", author: "Liviu Rebreanu", year: 1959, image: "Ion", price: 12.7,rating: 4, link: "https://carturesti.ro"),
                 Book (title: "Poezii", author: " George Bacovia", year: 1933, image: "bacovia", price: 15.8,rating:2, link: "https://carturesti.ro"),
                 Book (title: "Temă pentru acasă", author: "Nicolae Dabija", year: 2019, image: "Dabija", price: 20.6,rating:5, link: "https://carturesti.ro"),
                 Book (title: "Adam și Eva", author: "Liviu Rebreanu", year: 1946, image: "Adam si Eva", price: 12.8,rating:3, link: "https://carturesti.ro"),
                 Book (title: "Fecioarele", author: "Alex Michaelides", year: 2021, image: "Fecioarele", price: 30.5,rating:4, link: "https://carturesti.ro")]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow
                
                List (books, id: \.title) {book in
                    NavigationLink(destination: BookDetailsView (book: book)) {
                        BookRow (book: book)
                    }
                }
                .listStyle(PlainListStyle ())
            }
            .background(Color.red)
            .navigationTitle("Cărțile mele")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
