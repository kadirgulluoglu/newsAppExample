import Foundation

struct NewsTableViewModel {
    let newsList : [News]
    
    
    func numberOfRowsInSection () -> Int {
         self.newsList.count
    }
    
    
    func newsAtIndexPath(_ index : Int) -> NewsViewModel {
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
}

struct NewsViewModel {
    let news : News
    
    
    var title : String {
        return news.title
    } 
    var story : String {
        return news.story
    }
}
