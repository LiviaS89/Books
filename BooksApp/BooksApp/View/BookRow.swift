import SwiftUI

struct BookRow: View {
    var book: Book
    
    var body: some View {
        
        HStack {
            Image (book.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 107)
                .padding(.trailing,8)
            
            VStack (alignment: .leading, spacing:4) {
                Text (book.title)
                    .bold()
                
                Text ("de \(book.author)")
                    .fontWeight(.light)
                    .font(Font.system(size: 14))
                
                Text ("Rating: \(book.rating)")
                    .padding(.vertical,6)
                    .foregroundColor(Color.gray)
                    .font(Font.system(size: 13))
                
                Text ("Preț: \(book.price, specifier: "%.2f") lei")
                    .bold()
                    .foregroundColor(Color.red)
                    .font(Font.system(size: 13))
            }
        }
    }
}
