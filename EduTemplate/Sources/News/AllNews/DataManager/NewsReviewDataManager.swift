//
//  NewsReviewDataManager.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/25.
//

import Alamofire

class NewsReviewDataManager {
    func getRestaurant(reviewId: Int, viewController: AllNewsViewController) {
        let url = "\(Constant.BASE_URL)/restaurants/reviews/\(reviewId)"
        let encodedurl = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        AF.request(encodedurl!, encoding: URLEncoding.default)
            .validate()
            .responseDecodable(of: NewsReviewResponse.self) { response in
                switch response.result {
                case .success(let response):
                    viewController.didRetrieveNewsReview(response.result!)
                case .failure(let error):
                    print(error.localizedDescription)
                    viewController.failedToRequest(message: "서버와의 연결이 원활하지 않습니다.")
                }
            }
    }
}
