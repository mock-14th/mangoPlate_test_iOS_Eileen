//
//  LogoutResponse.swift
//  EduTemplate
//
//  Created by κΆνμ on 2021/08/26.
//

struct LogoutResponse: Decodable {
    var isSuccess: Bool
    var code: Int
    var message: String
}
