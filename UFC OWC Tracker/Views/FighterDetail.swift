//
//  FighterDetail.swift
//  UFC OWC Tracker
//
//  Created by Furkan Türkmen on 13/07/2022.
//

import SwiftUI

struct FighterDetail: View {
    var fighter: Fighter

    var body: some View {
        ScrollView {

            VStack(alignment: .leading) {
                Text("#\(fighter.id)")
                    .font(.subheadline)
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text(fighter.name + " " + fighter.lastname)
                    .font(.title2)
                Text("Type: \(fighter.type)")
                Text("Overall: \(fighter.overall)")
            }
            .padding()
        }
        .navigationTitle(fighter.name + " " + fighter.lastname)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct FighterDetail_Previews: PreviewProvider {
    static var previews: some View {
        FighterDetail(fighter: fighters[0])
    }
}
