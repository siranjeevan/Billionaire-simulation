//
//  resolution.swift
//  Billionaire simulation
//
//  Created by IOSTEAM   on 4/23/25.
//

import SwiftUI

struct resolution: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: width * 0.1 , height: 100)
            .offset(x : width * 0.1 , y : height * 0.1)
    }
}

#Preview {
    resolution()
}
