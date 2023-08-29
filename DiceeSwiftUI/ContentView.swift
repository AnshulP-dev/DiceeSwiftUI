//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Anshul parashar on 28/07/23.
//

import SwiftUI

struct ContentView: View {
	@State var leftDiceNumber = 1
	@State var rightDiceNumber = 1

	var body: some View {
		ZStack {
			Image("background")
				.resizable()
				.edgesIgnoringSafeArea(.all)

			VStack {
				Image("diceeLogo")

				Spacer()
				HStack {
					Spacer()
					Image("dice\(leftDiceNumber)")
					Spacer()
					Image("dice\(rightDiceNumber)")
					Spacer()
				}

				Spacer()
				Button("Roll") {
					leftDiceNumber = Int.random(in: 1...6)
					rightDiceNumber = Int.random(in: 1...6)
				}
				.background(.red)
				.foregroundColor(.white)
				.font(.system(size: 30))
				.fontWeight(.heavy)
				.padding(.bottom)

			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
