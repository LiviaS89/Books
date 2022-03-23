import SwiftUI

struct TableView: View {
    
    var books = [Book (title: "Povestea lui Harap - Alb", author: "Ion Creangă", year: 2021, image: "povestea", price: 19.0, rating: 3, link: "https://carturesti.ro", category: "Ficțiune", language: "Română", publisher: "Pavcon", numberOfPages: 96, cover: "Paperback", collection: "Cărțile Copilăriei Mele"),
                 Book (title: "Ion", author: "Liviu Rebreanu", year: 2017, image: "ion2", price: 14.9,rating: 4, link: "https://carturesti.ro",category: "Clasici", language: "Română",publisher: "Litera", numberOfPages: 446, cover: "Paperback", collection: "Lecturi școlare"),
                 Book (title: "Poezii", author: " George Bacovia", year: 2013, image: "bacovia", price: 15.0,rating:3, link: "https://carturesti.ro", category: "Poezie", language: "Română",publisher: "Cartex", numberOfPages: 208, cover: "Paperback", collection: "Seria de autor"),
                 Book (title: "Temă pentru acasă", author: "Nicolae Dabija", year: 2016, image: "Dabija", price: 53.10,rating:5, link: "https://carturesti.ro", category: "Literatură contemporană", language: "Română", publisher: "Bestseller", numberOfPages: 430, cover: "Paperback", collection: "Buzz Books"),
                 Book (title: "Adam și Eva", author: "Liviu Rebreanu", year: 2018, image: "eva", price: 19.0, rating:3, link: "https://carturesti.ro", category: "Clasici", language: "Română", publisher: "Cartex", numberOfPages: 288, cover: "Paperback", collection: "Seria de autor"),
                 Book (title: "Fecioarele", author: "Alex Michaelides", year: 2021, image: "fecioarele", price: 49.90,rating:3, link: "https://carturesti.ro", category: "Crimă, Mister", language: "Română", publisher: "Litera", numberOfPages: 384, cover: "Paperback", collection: "Buzz Books"),
                 Book (title: "Prințesa de hârtie", author: "Erin Watt", year: 2017, image: "erin", price: 49.00, rating: 4, link: "https://carturesti.ro", category: "Tineret", language: "Română", publisher: "Trei", numberOfPages: 392, cover: "Paperback", collection: "Familia Royal"),
                 Book (title: "Ugly love", author: "Colleen Hoover", year: 2016, image: "love", price: 39.90, rating: 3, link: "https://carturesti.ro", category: "Romantism", language: "Română", publisher: "Epica", numberOfPages: 352, cover: "Paperback", collection: "Buzz Books"),
                 Book (title: "Fetița din scrisoare" , author: "Emily Gunnis", year: 2019, image: "fetita", price: 49.90, rating: 3, link: "https://carturesti.ro", category: "Thriller", language: "Română", publisher: "Litera", numberOfPages: 400, cover: "Paperback", collection: "Buzz Books")]
    
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
