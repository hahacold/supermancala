//
//  SwiftUIView.swift
//  supermancala
//
//  Created by User19 on 2023/4/17.
//

import SwiftUI

struct HowToPlayView: View {
    @Binding var ShowHowToPlay : Bool
    var body: some View {
        
        ZStack {
            Image("africa")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.8)
            
            VStack(alignment: .trailing ){
                VStack(alignment: .trailing ){
                    Button {
                    ShowHowToPlay = false
                    } label: {
                    Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(20)
                    
                    }
                    
                
                }
                
                
                Text("遊戲玩法頗多，知名的有西非播棋（Oware）、肯亞播棋（Endodoi）、美國播棋（Kalah）等。基本的進行方式，是雙方輪流從己方任一有棋子的小洞取出該洞的所有棋子，以逆時針方向分配到其他的小洞中，一洞分配一顆，直到分配完。當一方獲得超過總棋子數量一半時得勝。")
                    .font(.system(size: 20))
                    .bold()
                    .background(Color.white)
            }
        }
    }
}

struct HowToPlayView_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlayView(ShowHowToPlay: .constant(true))
            .previewLayout(.fixed(width: 852, height: 393))
    }
}
