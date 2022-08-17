//
//  LinkView.swift
//  finalAppProject
//
//  Created by Mohamed2 on 8/17/22.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        Link("BiPoc Project", destination: URL(string: "https://alliedmedia.org/post/donate-to-the-bipoc-project")!)
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
