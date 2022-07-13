//
//  FighterList.swift
//  UFC OWC Tracker
//
//  Created by Furkan Türkmen on 13/07/2022.
//

import SwiftUI

struct FighterList: View {
    var body: some View {
        NavigationView {
            List(fighters) { fighter in
                NavigationLink {
                    FighterDetail(fighter: fighter)
                } label: {
                    FighterRow(fighter: fighter)
                }
            }
            .navigationTitle("All fighters")
        }
    }
}

struct FighterList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            FighterList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
