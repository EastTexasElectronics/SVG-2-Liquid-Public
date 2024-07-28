import SwiftUI

/* A custom button view with a label and an icon.
    This button triggers a specified action when tapped. */
struct ActionButton: View {
    let label: String
    let icon: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Label(label, systemImage: icon)
                .frame(height: 40)
        }
        .help(label)
    }
}

// A preview for the ActionButton.
struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(label: "Test Button", icon: "pencil", action: {
            print("Button tapped")
        })
    }
}
