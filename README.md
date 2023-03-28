# Sử dụng

## Cài Đặt
- Download về sau đó giải nén và kéo vào project

## Sử dụng

Ví dụ ta có 1 API check địa chỉ IP sau: `https://ipinfo.io/json`, json có nội dụng sau:
```json
{
  "ip": "116.110.225.54",
  "city": "Da Nang",
  "region": "Da Nang",
  "country": "VN",
  "loc": "16.0678,108.2208",
  "org": "AS7552 Viettel Group",
  "postal": "50250",
  "timezone": "Asia/Ho_Chi_Minh",
  "readme": "https://ipinfo.io/missingauth"
}
```

Truy cập vào đây `https://app.quicktype.io/`, sử dụng tool này để chuyển đổi json về struct Codable, được 1 struct sau: 

```swift
import Foundation

// MARK: - Ipinfo
struct Ipinfo: Codable {
    let ip, hostname, city, region: String
    let country, loc, org, postal: String
    let timezone: String
    let readme: String
}
```
Tiếp theo ta tạo 1 struct IpInfoRequest để tạo request cho API này, trong đó ta truyền `Response` là kiểu dữ liêu decode `IpInfo`, `baseURL` là url của API, ngoài ra ta còn có thể đổi `httpMethod` , thêm `httpBody` cho phương thức `POST` nếu cần:
```swift
public struct IpInfoRequest: Requestable {
    
    public typealias Response = IpInfo
    
    public var baseURL: URL{
        return URL(string: "https://ipinfo.io/json")!
    }
    
    public var path: String {
        return ""
    }
    
    public var httpMethod: HTTPMethod {
        return .get
    }
    //
//    public var httpBody: Data?
//
//
//
//    init(httpBody: Data? = nil) {
//        self.httpBody = httpBody
//    }
//
}
```
Tiếp theo là gọi và sử dụng:
```swift
func fetch() {
        let request = IpInfoRequest()
        ApiSession.shared.send(request) { [self] result in
            switch result{
            case .failed(let error):
                print(error.localizedDescription)
            case .success(let response):
                print(response.ip)
            }
        }
    }
```

`response` là đối tượng `IpInfo` được decode từ json ban đầu, gọi hàm `fetch` ở vị trí mong muốn, có thể viết thêm callback để trả về response, hoặc có thể viết trực tiếp mà không cần viết hàm fetch
