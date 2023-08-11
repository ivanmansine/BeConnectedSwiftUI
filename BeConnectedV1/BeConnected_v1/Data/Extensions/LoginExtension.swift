//
//  LoginExtension.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 8/8/23.
//

import SwiftUI
import Firebase

extension View {
    func navigate<NewView: View>(
        to view: NewView,
        when binding: Binding<Bool>
    ) -> some View {
        modifier(LoginExtension(
            destination: view,
            isActive: binding
        ))
    }
}

struct LoginExtension<NewView: View>: ViewModifier {
    let destination: NewView
    @Binding var isActive: Bool
    
    func body(content: Content) -> some View {
        content.background(
            NavigationLink(
                destination: destination,
                isActive: $isActive
            ) {
                EmptyView()
            }
                .opacity(0)
        )
    }
    
}
