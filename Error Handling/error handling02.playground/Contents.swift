import UIKit
import Foundation


guard let url = URL(string: "http://kxcoding-study.azurewebsites.net/api/books") else {
   fatalError("invalid url")
}

struct BookListData: Codable {
   let code: Int
   let totalCount: Int
   let list: [Book]
}

struct Book: Codable {
   let title: String
}

typealias CompletionHandler = (BookListData?, Error?) -> ()

func parseBookList(completion: @escaping CompletionHandler) {
   let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error = error {
         completion(nil, error)
         return
      }
      
      guard let data = data else {
         completion(nil, nil)
         return
      }
      
      do {
         let list = try JSONDecoder().decode(BookListData.self, from: data)
         completion(list, nil)
      } catch {
         completion(nil, error)
      }
   }
   task.resume()
}

parseBookList { (data, error) in
   if let error = error {
      print(error.localizedDescription)
      return
   }

   data?.list.forEach { print($0.title) }
}
//
import Foundation



guard let url = URL(string: "http://kxcoding-study.azurewebsites.net/api/books") else {
   fatalError("invalid url")
}

struct BookListData1: Codable {
   let code: Int
   let totalCount: Int
   let list: [Book1]
}

struct Book1: Codable {
   let title: String
}

enum ApiError: Error {
   case general
   case invalidFormat
}

typealias CompletionHandler1 = (Result<BookListData1 , ApiError>) -> ()

func parseBookListWithResult(completion: @escaping CompletionHandler1) {
   let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error = error {
        completion(.failure(.general))
         return
      }

      guard let data = data else {
        completion(.failure(.general))
         return
      }

      do {
         let list = try JSONDecoder().decode(BookListData1.self, from: data)
        completion(.success(list))
      } catch {
        completion(.failure(.general))
      }
   }
   task.resume()
}

parseBookListWithResult { result in
    switch result {
    case .success(let data):
        data.list.forEach { book in
            print(book.title)
        }
    case .failure(let error):
        print(error.localizedDescription)
        switch error {
        case .general:
            print("general error")
        case .invalidFormat:
            print("format error")
        }
    }
}

//MARK: -higher order function

enum MyError: Error {
   case error
}

enum ValueError: Error {
   case evenNumber
}

func doSomethingWithResult(data: Int) -> Result<Int, MyError> {
   guard data.isMultiple(of: 2) else {
      return .failure(MyError.error)
   }
   
   return .success(data)
}

doSomethingWithResult(data: 3)


