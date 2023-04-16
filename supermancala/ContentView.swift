//
//  ContentView.swift
//  supermancala
//
//  Created by User19 on 2023/4/16.
//

import SwiftUI

struct ContentView: View {
    @State private var ShowPlayer = false
        @State private var ShowComputer = false
        @State private var ShowStatistics = false
        @State private var ShowHowToPlay = false
    var body: some View {
        ZStack{
            Image("africa")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.8)
            VStack{
                Text("Mancala")
                    .bold()
                    .font(.system(size: 80))
                HStack{
                        Button {
                            ShowComputer = true
                        } label: {
                            Text("VS Computer")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .background(Color.green)
                        }
                        .fullScreenCover(isPresented: $ShowComputer) {
                            //ComputerPage()
                        }
                        
                        Button {
                            ShowPlayer = true
                        } label: {
                            Text("VS Human")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .background(Color.green)
                        }
                        .fullScreenCover(isPresented: $ShowPlayer) {
                            //PlayersGamePage()
                        }
                    }.padding(.bottom)
                HStack{
                        Button {
                            ShowStatistics = true
                        } label: {
                            Text("ShowStatistics")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .background(Color.green)
                        }
                        .fullScreenCover(isPresented: $ShowComputer) {
                            //ComputerPage()
                        }
                        
                        Button {
                            ShowHowToPlay = true
                        } label: {
                            Text("ShowHowToPlay")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .background(Color.green)
                        }
                        .fullScreenCover(isPresented: $ShowPlayer) {
                            //PlayersGamePage()
                        }
                    }.padding(.bottom)
            }
            
        }
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 852, height: 393))
    }
}
