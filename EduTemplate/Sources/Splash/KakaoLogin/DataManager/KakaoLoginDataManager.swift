//
//  KakaoLoginDataManager.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/22.
//

import Alamofire

class KakaoLoginDataManager {
    func kakaoLogin(_ parameters: KakaoLoginInput, viewController: SplashViewController) {
        print("")
        AF.request("https://dev.sq-mangoplate.shop/kakao/login", method: .post, parameters: parameters)
            .validate()
            .responseDecodable(of: KakaoLoginResponse.self) { response in
                switch response.result {
                case .success(let response):
                    print(response.message)
                    print("성공!!!!!!!!")
                case .failure(let error):
                    //viewController.dismissIndicator()
                    print(error.localizedDescription)
                }
            }
    }
}
