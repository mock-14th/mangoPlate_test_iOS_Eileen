//
//  EmailLoginResponse.swift
//  EduTemplate
//
//  Created by κΆνμ on 2021/08/20.
//

struct EmailLoginResponse: Decodable {
    var isSuccess: Bool
    var code: Int
    var message: String
    var result: EmailLoginResult?
}

struct EmailLoginResult: Decodable {
    var id: Int
    var jwt: String
}
