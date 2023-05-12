import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 3
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack (
                alignment: .center,
                spacing: 150
            ) {
                Image("diceeLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack (
                    spacing: 20
                ) {
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }
                .padding(.horizontal)
                
                Button("ROLL")
                {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }
                .font(Font.system(size: 50))
                .fontWeight(.bold)
                .padding(.vertical, 5)
                .padding(.horizontal, 70)
                .background(Color(UIColor(red: 0.84, green: 0.19, blue: 0.19, alpha: 1)))
                .cornerRadius(50)
                .foregroundColor(.white)
            }
        }
    }
}

struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.all, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


