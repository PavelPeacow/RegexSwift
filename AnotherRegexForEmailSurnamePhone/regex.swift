//
//  regex.swift
//  AnotherRegexForEmailSurnamePhone
//
//  Created by Павел Кай on 03.05.2022.
//

import Foundation

func regexPhone(phone: String) -> String {
    var returnPhone = ""
    
    let phonePattern = #"^(\+7|8) \(\d\d\d\) \d\d\d-\d\d-\d\d$"#
    
    let result = phone.range(
        of: phonePattern,
        options: .regularExpression
    )
    
    if result != nil {
       returnPhone = phone
    }
    else {
        returnPhone = "Error"
    }
    
    return returnPhone
}


func regexEmail(email: String) -> String {
    var returnEmail = ""
    
    let emailPattern = #"^\S+@\S+$"#
    
    let result = email.range(
        of: emailPattern,
        options: .regularExpression
    )
    
    if (result != nil) {
        returnEmail = email
    } else {
        returnEmail = "Error"
    }
    
    return returnEmail
}


func regexInfo(info: String) -> String {
    var returnInfo = ""
    
    let infoPattern = #"^[a-zA-Z]+ [a-zA-Z]+ [a-zA-Z]+$"#
    
    let result = info.range(
        of: infoPattern,
        options: .regularExpression
    )
    
    if (result != nil) {
        returnInfo = info
    } else {
        returnInfo = "Error"
    }
    
    return returnInfo
}
