//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Mateus Araújo on 12/10/24.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(scrum.lengthInMinutes)) minutes")
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
