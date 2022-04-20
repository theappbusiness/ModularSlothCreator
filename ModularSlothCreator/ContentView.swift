//
//  ContentView.swift
//  ModularSlothCreator
//
//  Created by Pranav Kasetti on 12/04/2022.
//

import SwiftUI
import Viewing
import Models

struct ContentView: View {
    @State var sloth: Sloth = .init(name: "SuperSloth",
                                    color: .blue,
                                    power: .ice)

    var body: some View {
        SlothView(sloth: $sloth)
    }
}

struct ContentView_Previews: PreviewProvider {

    @State static var sloth: Sloth = .init(name: "SuperSloth", color: .blue, power: .ice)

    static var previews: some View {
        SlothView(sloth: $sloth)
    }
}
