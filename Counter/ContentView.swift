//
//  ContentView.swift
//  Counter
//
//  Created by Kyra Henningson on 2022-11-20.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Counter").foregroundColor(.white).font(.system(size: 48, weight: .bold))
                    .padding(.top, 48)
                    .padding(.bottom, 48)
                Text("\(count)")
                    .foregroundColor(.white).font(.system(size: 48, weight: .bold))
                Spacer()
                HStack(spacing: 48) {
                    if (count > 0 ) {
                        Button {
                            count -= 1
                        } label: {
                            Text ("-").foregroundColor(.blue).font(.system(size: 48, weight: .bold))
                        }
                    }
                    Button {
                        count += 1
                    } label: {
                        Text("+").foregroundColor(.blue).font(.system(size: 48, weight: .bold))
                    }
                }
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
