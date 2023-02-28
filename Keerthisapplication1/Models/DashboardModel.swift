//
//  DashboardModel.swift
//  Keerthisapplication1
//
//  Created by Keerthi Devipriya(kdp) on 28/02/23.
//

import Foundation
import Alamofire
import UIKit

struct DashboardModel: Codable {
    let status: Bool
    let statusCode: Int
    let message, supportWhatsappNumber: String
    let extraIncome: Double
    let totalLinks, totalClicks, todayClicks: Int
    let topSource, topLocation, startTime: String
    let linksCreatedToday: Int
    let data: DataClass

    enum CodingKeys: String, CodingKey {
        case status, statusCode, message
        case supportWhatsappNumber = "support_whatsapp_number"
        case extraIncome = "extra_income"
        case totalLinks = "total_links"
        case totalClicks = "total_clicks"
        case todayClicks = "today_clicks"
        case topSource = "top_source"
        case topLocation = "top_location"
        case startTime
        case linksCreatedToday = "links_created_today"
        case data
    }
}

struct DataClass: Codable {
    let recentLinks, topLinks: [Link]
    let overallURLChart: [String: Int]

    enum CodingKeys: String, CodingKey {
        case recentLinks = "recent_links"
        case topLinks = "top_links"
        case overallURLChart = "overall_url_chart"
    }
}

struct Link: Codable {
    let urlID: Int
    let webLink: String
    let smartLink, title: String
    let totalClicks: Int
    let originalImage: String
    let timesAgo, createdAt: String
    let domainID: String
    let urlPrefix: String?
    let urlSuffix, app: String

    enum CodingKeys: String, CodingKey {
        case urlID = "url_id"
        case webLink = "web_link"
        case smartLink = "smart_link"
        case title
        case totalClicks = "total_clicks"
        case originalImage = "original_image"
        case timesAgo = "times_ago"
        case createdAt = "created_at"
        case domainID = "domain_id"
        case urlPrefix = "url_prefix"
        case urlSuffix = "url_suffix"
        case app
    }
}

class Api : ObservableObject{
    func loadData(completion:@escaping (DashboardModel) -> ()) {
        
        let authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI"
        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue(authToken, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print("got error---")
            } else {
                
                guard let data = data, error == nil else {
                    print(error?.localizedDescription ?? "No data")
                    return
                }
                
                let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
                if let responseJSON = responseJSON as? [String: Any] {
                    print("response----\(responseJSON)")
                    print(responseJSON)
                }
                
                /*let model = try! JSONDecoder().decode(DashboardModel.self, from: data!)
                print("model-----\(model)")
                DispatchQueue.main.async {
                    completion(model)
                }*/
            }
            
            
            //completion(nil)
        }.resume()
        
    }
    
    
}
