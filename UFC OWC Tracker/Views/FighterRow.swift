//
//  FighterRow.swift
//  UFC OWC Tracker
//
//  Created by Furkan Türkmen on 13/07/2022.
//

import SwiftUI

struct FighterRow: View {
    var fighter: Fighter
    
    var body: some View {
        HStack {
            Text(fighter.name + " " + fighter.lastname)
            Spacer()
        }
    }
}

struct FighterRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FighterRow(fighter: fighters[0])
            FighterRow(fighter: fighters[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
