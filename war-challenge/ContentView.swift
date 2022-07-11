//
//  ContentView.swift
//  war-challenge
//
//  Created by shine on 2/6/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var myCard:String = "card3"
    @State private var cpuCard:String = "card4"
    @State private var myWins:Int = 0
    @State private var cpuWins:Int = 0
    private var matchCount: Int = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack() {
                Spacer()
                Image("logo")
                Spacer()
                HStack() {
                    Spacer()
                    Image(myCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    
                    let myRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    myCard = "card" + String(myRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if myRand > cpuRand {
                        myWins += 1
                    } else if myRand < cpuRand {
                        cpuWins += 1
                    }
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack() {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white).padding(.bottom, 10)
                        Text(String(myWins)).font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline) .foregroundColor(.white)
                            .padding(.bottom, 10)
                        Text(String(cpuWins))  .font(.largeTitle) .foregroundColor(.white)
                    }
                    Spacer()
                }
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
