//
//  EmailLoginDataManager.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/20.
//

import Alamofire

class EmailLoginDataManager {
    func emailLogin(_ parameters: EmailLoginInput, viewController: EmailLoginViewController) {
        AF.request("\(Constant.BASE_URL)/login", method: .post, parameters: parameters)
            .validate()
            .responseDecodable(of: EmailLoginResponse.self) { response in
                switch response.result {
                case .success(let response):
                    viewController.presentAlert(message: response.message)
                    print(response.isSuccess)
                case .failure(let error):
                    //viewController.dismissIndicator()
                    print(error.localizedDescription)
                }
            }
    }
}
