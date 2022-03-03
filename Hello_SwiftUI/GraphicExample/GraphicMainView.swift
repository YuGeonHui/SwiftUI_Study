//
//  GraphicMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/03.
//

import SwiftUI

struct GraphicMainView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct GraphicMainView_Previews: PreviewProvider {
    static var previews: some View {
        GraphicMainView()
    }
}
