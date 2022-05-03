//
//  ContentView.swift
//  AnotherRegexForEmailSurnamePhone
//
//  Created by Павел Кай on 03.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOnPhone = false
    @State var isOnEmail = false
    @State var isOnInfo = false
    
    @State var email = ""
    @State var phone = ""
    @State var info = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Enter phone", text: $phone)
                Button("Submit phone") {
                    isOnPhone.toggle()
                }
                .alert("\(regexPhone(phone: phone))", isPresented: $isOnPhone) {
                    Button("OK") {}
                }
                
                Spacer()
                
                TextField("Enter email", text: $email)
                Button("Submit email") {
                    isOnEmail.toggle()
                }
                .alert("\(regexEmail(email: email))", isPresented: $isOnEmail) {
                    Button("OK") {}
                }
                
                Spacer()
                
                TextField("Enter info", text: $info)
                Button("Submit info") {
                    isOnInfo.toggle()
                }
                .alert("\(regexInfo(info: info))", isPresented: $isOnInfo) {
                    Button("OK") {}
                }
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
