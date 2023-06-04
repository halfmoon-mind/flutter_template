# flutte basic template
플러터 개발에 대한 기본적인 템플릿을 만듦니다.
This is the basic template for flutter devleopment.

기본적인 세팅은 동일하나, 각 프로젝트 별로 프로젝트 명이 동일하지 않으면 빌드가 되지 않는 경우가 있으니, 해당 부분을 확인해야한다.

따라서 해당 필요한 코드들(`pubspec.yaml`, `main.dart` 등)을 제외하고는 새로운 프로젝트로 진행하고, 다른 부분들은 `exampleproject`라는 이름을 모두 바꾸는 형식으로 진행하면 좋다.

## 기본 세팅 체크리스트
- [ ] (로그인이 필요한 서비스의 경우) Firebase 설정을 완료하였는가? [참고링크](https://firebase.google.com/docs/flutter/setup?hl=ko&platform=ios)

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
