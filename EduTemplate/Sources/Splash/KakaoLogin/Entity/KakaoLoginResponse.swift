//
//  KakaoLoginResponse.swift
//  EduTemplate
//
//  Created by κΆνμ on 2021/08/22.
//

struct KakaoLoginResponse: Decodable {
    var isSuccess: Bool
    var code: Int
    var message: String
    var result: KakaoLoginResult?
}

struct KakaoLoginResult: Decodable{
    var userId: Int
    var jwt: String
}
