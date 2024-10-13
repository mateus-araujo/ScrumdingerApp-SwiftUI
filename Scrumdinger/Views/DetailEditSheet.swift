//
//  DetailEditSheet.swift
//  Scrumdinger
//
//  Created by Mateus Araújo on 13/10/24.
//

import SwiftUI

struct DetailEditSheet: View {
    @State private var editingScrum = DailyScrum.emptyScrum
    @Binding var scrum: DailyScrum
    @Binding var isPresentingEditView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editingScrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isPresentingEditView = false
                            scrum = editingScrum
                        }
                    }
                }
        }
        .onAppear {
            editingScrum = scrum
        }
    }
}

#Preview {
    DetailEditSheet(
        scrum: .constant(DailyScrum.sampleData[0]),
        isPresentingEditView: .constant(true)
    )
}
