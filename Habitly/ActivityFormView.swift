//
//  ActivityFormView.swift
//  Habitly
//
//  Created by newbie on 12.09.2022.
//

import SwiftUI

struct ActivityFormView: View {
    
    @State private var title = ""
    @State private var description = ""
    
    @ObservedObject var userActivities: UserActivities
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Form {
            TextField("Activity title", text: $title)
            TextField("Activity description", text: $description)
            Button("Add activity") {
                userActivities.activities.append(Activity(title: title, description: description, timesExecuted: 0, timesInRow: 0))
                dismiss()
            }
        }
    }
}

struct ActivityFormView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityFormView(userActivities: UserActivities())
    }
}
