import SwiftUI

struct BookDetailsView: View {
    
    var book: Book
    @Environment(\.openURL) var openURL
    
    @State var number = ""
    @State var puncte = ""
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.1)
            
            VStack (alignment: .leading,spacing: 6) {
                Text (book.author.uppercased())
                    .bold()
                    .padding(.bottom,2)
                    .padding(.top,8)
                
                Text (book.title)
                
                TextField ("Rating", text: $puncte)
                    .keyboardType(.numberPad)
                
                Image (book.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                TextField ("Numar carti", text: $number)
                    .keyboardType(.numberPad)
                
                Text ("Pret: \(book.price,specifier: "%.2f") lei")
                    .foregroundColor(Color ("Portocaliu"))
                
                if !number.isEmpty {
                    Text ("Ai comandat \(number) carti")
                }
                
                HStack {
                    Spacer ()
                    
                    Button("Adauga in cos") {
                        print ("s-au adaugat \(number) carti")
                        openURL(URL(string: book.link)!)
                    }
                    .padding(.horizontal)
                    .padding(.vertical,4)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .clipShape(Capsule ())
                    
                    Spacer ()
                }
                Spacer ()
            }
            .padding(.horizontal, 12)
        }
    }
}
