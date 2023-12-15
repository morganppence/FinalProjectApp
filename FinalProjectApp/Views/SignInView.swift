//
//  SignInView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/7/23.
//

import Foundation
import SwiftUI

struct SignInView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isSignInButtonDisabled: Bool = true

    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()

            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .autocapitalization(.none)

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: signIn) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(isSignInButtonDisabled ? Color.gray : Color.blue)
                    .cornerRadius(10)
            }
            .disabled(isSignInButtonDisabled)

        }
        .padding()
        .onChange(of: username) {
            updateSignInButtonStatus()
        }
        .onChange(of: password) {
            updateSignInButtonStatus()
        }
    }

    private func updateSignInButtonStatus() {
        isSignInButtonDisabled = username.isEmpty || password.isEmpty
    }

    private func signIn() {
        // Implement your sign-in logic here
        print("Signing in...")
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
