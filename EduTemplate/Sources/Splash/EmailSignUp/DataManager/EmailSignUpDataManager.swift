//
//  EmailLoginDataManager.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/17.
//

import Alamofire

class EmailSignUpDataManager {
    func usersemails(email: String, viewController: EmailSignUpViewController) {
        AF.request("\(Constant.BASE_URL)/users/emails/?email=\(email)", method: .get, parameters: nil)
            .validate()
            .responseDecodable(of: EmailSignUpResponse.self) { response in
                switch response.result {
                case .success(let response):
                    if response.isSuccess, let result = response.message as? String {
                        viewController.dismissIndicator()
                        viewController.message = result
                    }
                    else {
                        viewController.dismissIndicator()
                        viewController.presentAlert(title: response.message)
                    }
                case .failure(let error):
                    viewController.dismissIndicator()
                    print(error.localizedDescription)
                }
            }
    }
}
