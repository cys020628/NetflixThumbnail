import UIKit

// Task는 비동기 작업을 실행하는 코드 블록을 나타내는 객체입니다. Task를 사용하면 비동기 작업을 비동기적으로 실행할 수 있습니다.
Task {
// URL 객체를 생성하는 부분입니다. 이 URL은 호출할 API의 주소입니다.
let url = URL(string: "https://gvec03gvkf.execute-api.ap-northeast-2.amazonaws.com/")!

// 주석 처리된 부분입니다. URL 객체의 'scheme'을 출력하려는 코드입니다.
// URL의 scheme은 'https', 'http'와 같은 프로토콜을 의미합니다.
// print("url scheme \(url?.scheme)")

// URLSession.shared.data(from:) 메서드를 사용하여 URL로부터 데이터를 비동기적으로 받아옵니다.
// URLSession은 네트워크 요청을 관리하는 클래스입니다.
// 'await'는 비동기 작업이 완료될 때까지 기다리도록 해줍니다.
// 'try!'는 오류를 강제로 처리하는 방식인데, 오류가 나면 앱이 중단됩니다.
let (data, _) = try! await URLSession.shared.data(from: url)

// 'data'를 UTF-8 인코딩을 사용하여 문자열로 변환합니다.
// jsonString에는 API에서 받은 데이터를 문자열 형태로 저장하게 됩니다.
let jsonString = String(data:data, encoding: .utf8)

// 받아온 데이터를 출력하는 부분입니다.
// 이 데이터는 JSON 형식일 가능성이 높습니다.
print(jsonString)
}
 
