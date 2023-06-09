# Basic Template for Flutter Application Development
플러터 어플리케이션 개발을 할 때 초기 세팅을 하는 법을 서술합니다.

기본적인 세팅은 동일하나, 각 프로젝트 별로 프로젝트 명이 동일하지 않으면 빌드가 되지 않는 경우가 있으니, 해당 부분을 확인해야 합니다.

따라서 해당 필요한 코드들(`pubspec.yaml`, `main.dart` 등)을 제외하고는 새로운 프로젝트로 진행하고, 다른 부분들은 `exampleproject`라는 이름을 모두 바꾸는 형식으로 진행하면 좋습니다.

기본적인 해당 프로젝트는 GetX를 통한 라우팅 및 상태관리를 사용합니다. 다른 상태관리 패키지를 작업한다면 다른 템플릿을 사용하는 것이 좋습니다.

## 기본 세팅 체크리스트
- [ ] (로그인이 필요한 서비스의 경우) Firebase 설정을 완료하였는가? [참고 링크](https://firebase.google.com/docs/flutter/setup?hl=ko&platform=ios)
- [ ] 애플 로그인을 사용하려면 다음과 같은 로직을 따랐는가? [애플 로그인](https://dalgoodori.tistory.com/49)
- [ ] 카카오 로그인을 사용하려면 다음과 같은 로직을 따랐는가? [카카오 로그인](https://developers.kakao.com/docs/latest/ko/kakaologin/flutter)
- [ ] Android 용 패키지 설정을 완료하였는가?
```
기본 세팅이 "app.example.sanghyeon"로 되어 있는 경우, /android/app/src/main/kotlin/내에 com/example/exampleproject에 MainActivity.kt로 저장되어 있다.
VSCode에서 "Shift + Command + F"를 이용하여 앱의 기본적인 앱 id와 매칭되는 것들을 모두 찾을 수 있고, 이를 수정할 수 있다.
하지만 폴더 구조는 변경되지 않기 때문에 꼭 폴더 위치도 변경된 것에 따라서 수정해 주어야 한다.
```
- [ ] iOS 용 패키지 설정을 완료하였는가? (애플의 패키지 이름은 언더바(_)를 허용하지 않기 때문에 이름을 설정할 때 패키지 uri에 바(-)나 언더 바(_)를 사용하지 않는 편이 좋다.)

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
- [ ] 앱 아이콘을 변경하였는가? [참고 링크](https://www.appicon.co/)
- [ ] 테스트 플라이트에 올릴 때 알고리즘 체크를 안하기 위해 info.plist를 업데이트 하였는가?
```
Key : App Uses Non-Exempt Encryption
Type : Boolean
Value : NO
```
- [ ] 배포 자동화를 위해 Fastlane 세팅을 완료하였는가? [참고 링크](https://dev-yakuza.posstree.com/ko/flutter/fastlane/#%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C%EC%9A%A9-fastlane-%EC%8B%A4%ED%96%89)
- [ ] 권한 설정을 위한 메시지를 잘 작성하였는가?
```
// 예시
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>"깨끗해질지도"가 사용자 위치 기반으로 주변 가게들을 추천하기 위해 위치 권한을 허용해야 합니다.</string>
```
- [ ] 어플리케이션 내에 API Key 데이터가 Native 단에서 필요한 경우 다음과 같은 포맷을 따랐는가? [참고 링크](https://velog.io/@flunge/Flutter-%EC%95%B1%EC%9D%98-Google-maps-api-key-%EA%B4%80%EB%A6%AC)
- [ ] 앱 사이닝을 위한 key를 업로드 하였는가? [참고 링크](https://docs.flutter.dev/deployment/android)
- [ ] 어플리케이션 알림을 확인할 수 있도록 flutter_app_badger를 사용하였는가? [참고 링크](https://pub.dev/packages/flutter_app_badger)
- [ ] JSON 직렬화를 위한 세팅을 완료하였는가? [참고 링크](https://pub.dev/packages/json_serializable)
```
flutter pub run build_runner build
```
- [ ] 
