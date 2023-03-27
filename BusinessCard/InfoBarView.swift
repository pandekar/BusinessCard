//
//  InfoBarView.swift
//  BusinessCard
//
//  Created by Pande Adhistanaya on 26/03/23.
//

import SwiftUI

struct InfoBarView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(width: .infinity, height: 50)
            .overlay {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .bold()
                }
            }
            .padding()
    }
}

struct InfoBarView_Previews: PreviewProvider {
    static var previews: some View {
        InfoBarView(text: "test", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
