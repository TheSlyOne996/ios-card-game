//
//  ContentView.swift
//  war game
//
//  Created by Atul Vasudev on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard:String = "card5"
    @State private var cpuCard = "card3"
    @State private var playerScore = 0
    @State private var cpuScore:Int = 0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                .padding()
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action:{
                   
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card"+String(playerRand)
                    cpuCard = "card"+String(cpuRand)
                    
//                    playerScore+=1
//                    cpuScore+=1
                    if playerRand > cpuRand {
                        playerScore+=1
                    }else if playerRand < cpuRand {
                        cpuScore+=1
                    }
                    
                },label:{
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).foregroundColor(.white).padding(.bottom, 5.0)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).foregroundColor(.white).padding(.bottom, 5.0)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                }//a
                Spacer()
                Spacer()
                
            }
                
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
