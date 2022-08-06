//
//  ContentView.swift
//  CounterApp
//
//  Created by udesh sharma on 06/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var  items : Int32 = 0;
    var body: some View {
        
        ZStack {
            VStack(){
               
                
                
                Text("Current count \(items)")
                    .padding()
                
                Spacer()
                
                HStack(){
                    Spacer()
                    Button(action: {
                        self.items+=1;
        //                self.items.append(Item(value: "Item"))
                    }, label: {
                        Text("+")
                            .font(.system(.largeTitle))
                            .frame(width: 77, height: 70)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 7)
                    })
                    .background(Color.blue)
                    .cornerRadius(38.5)
                    .padding()
                    .shadow(color: Color.black.opacity(0.3),
                            radius: 3,
                            x: 3,
                            y: 3)
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
