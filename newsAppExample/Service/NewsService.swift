
import Foundation

class WebService {
    func getNews (url:URL, completion: @escaping ([News]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                let news = try? JSONDecoder().decode([News].self, from: data)
                if let news = news {
                    completion(news)
                }
                
            }
           
        }.resume()
    }
}
