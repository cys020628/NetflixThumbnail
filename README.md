# SwiftUI를 활용한 넷플릭스 스타일 iOS 앱

이 프로젝트는 SwiftUI를 사용하여 넷플릭스의 썸네일 화면만 구현한 것으로 AsyncImage를 사용하여 비동기로 서버에서 정보를 가져오는 것을 배우려 만든 앱 

## 🌟 주요 기능

- 재생 및 정보 버튼이 있는 동적 배너 이미지
- 가로 스크롤 방식의 콘텐츠 카테고리
- 비동기 이미지 로딩
- 탭 기반 내비게이션 시스템
- 반응형 로딩 상태 표시

## 🛠 기술적 구성 요소

### 1. 홈 화면 (HomeView.swift)

스트리밍 콘텐츠를 표시하는 메인 인터페이스:

- 오버레이 컨트롤이 있는 배너 이미지
- 카테고리 기반 콘텐츠 구성
- 로딩 표시기가 있는 비동기 콘텐츠 로딩

```swift
struct HomeView: View {
    @State var bigBanner: String = ""
    @State var dramas: [Drama] = []
    
    var body: some View {
        ScrollView {
            // 배너 및 콘텐츠 구현
        }
    }
}

```

### 2. 데이터 모델 (Drama.swift)

콘텐츠 구성을 위한 구조화된 데이터 모델:

```swift
struct DramaCollection: Codable {
    var bigBanner: String
    var dramas: [Drama]
}

struct Drama: Codable {
    var categoryTitle: String
    var posters: [String]
}

```

### 3. 내비게이션 (ContentView.swift)

다음 기능을 포함한 탭 기반 내비게이션 시스템:

- 홈 탭
- 게임 섹션
- 신규 & 인기 콘텐츠
- 사용자 프로필

## 🔧 핵심 구성 요소

- **AsyncImage**: 효율적인 네트워크 이미지 로딩
- **ScrollView**: 수직 및 수평 콘텐츠 스크롤 처리
- **Stack Views**: HStack과 VStack을 통한 레이아웃 관리
- **TabView**: 메인 내비게이션 구조
- **상태 관리**: @State를 사용한 동적 콘텐츠 업데이트
