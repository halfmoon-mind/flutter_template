# Basic Template for Flutter Application Development
플러터 어플리케이션 개발을 할 때 초기 세팅을 하는 법을 서술합니다.

기본적인 세팅은 동일하나, 각 프로젝트 별로 프로젝트 명이 동일하지 않으면 빌드가 되지 않는 경우가 있으니, 해당 부분을 확인해야 합니다.

따라서 해당 필요한 코드들(`pubspec.yaml`, `main.dart` 등)을 제외하고는 새로운 프로젝트로 진행하고, 다른 부분들은 `exampleproject`라는 이름을 모두 바꾸는 형식으로 진행하면 좋습니다.

기본적인 해당 프로젝트는 GetX를 통한 라우팅 및 상태관리를 사용합니다. 다른 상태관리 패키지를 작업한다면 다른 템플릿을 사용하는 것이 좋습니다.

## 기본 세팅 체크리스트
- [ ] (로그인이 필요한 서비스의 경우) Firebase 설정을 완료하였는가? [참고링크](https://firebase.google.com/docs/flutter/setup?hl=ko&platform=ios)
- [ ] 애플 로그인을 사용하려면 다음과 같은 로직을 따랐는가? [애플 로그인](https://dalgoodori.tistory.com/49)
- [ ] 카카오 로그인을 사용하려면 다음과 같은 로직을 따랐는가? [카카오 로그인](https://developers.kakao.com/docs/latest/ko/kakaologin/flutter)
- [ ] Android 용 패키지 설정을 완료하였는가?
- [ ] iOS 용 패키지 설정을 완료하였는가?

- [ ] /lib/env/env.dart 내부에 다음과 같은 ENV class가 존재하는가?
```dart
class ENV {
  static const version = "1.0.0";
  static const build = 1;
  static const playstoreURL = "";
  static const appstoreURL = "";
  static String get apiEndpoint => kReleaseMode ? "" : ""; //첫번째가 릴리즈 모드시 사용할 버전
}
```
- [ ] 앱 아이콘을 변경하였는가? [참고링크](https://www.appicon.co/)
- [ ] 테스트 플라이트에 올릴 때 알고리즘 체크를 안하기 위해 info.plist를 업데이트 하였는가?

```
Key : App Uses Non-Exempt Encryption
Type : Boolean
Value : NO
```
