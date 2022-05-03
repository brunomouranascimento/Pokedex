//
//  ResponseLoadingView.swift
//  Pokedex
//
//  Created by Bruno Nascimento on 20/04/22.
//

import SwiftUI
//import Shimmer

struct ResponseLoadingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .center, spacing: 8) {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 24, height: 24)
                Text ("User username")
            }
            VStack(alignment: .leading, spacing: 0) {
                Text ("Content line 1 with a long line")
                Text ("Content line 2 with a long line")
                Text ("Content line 3 shorter line")
            }
        }
        .redacted(reason:.placeholder)
//        .shimmering()
    }
}

struct ResponseLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        ResponseLoadingView()
    }
}
