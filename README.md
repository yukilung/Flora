# Flutter_Flora

> 一切皆 Dart, 一起皆 Widget.

A Flutter application project.

## 結構

#### UI

- [x] 初始-Splash
- [x] 主頁-首頁
- [x] 主頁-相機
- [x] 登錄-登錄
- [x] 註冊-註冊
- [x] 個人信息-個人信息
- [x] 設置-設置
- [ ]  網頁-嵌入網頁

#### Utils

- [x] SpUtil
- [x] DeviceUtil
- [x] ObjectUtil

#### Common UI

- [x] Image Banner Slider
- [x] Google Map
- [ ]  ...

## 結構樹

```

┬
└ flutter_flora
  ┬
  ├ android - Android 工程文件
  ├ assets - 資源文件用於存放文字字體和圖像
  ├ build - 項目的構建輸出目錄
  ├ ios - iOS 工程文件
  ├ lib - 項目的 Dart 源文件
    ┬
    ├ generated - 自動生成文件, 勿手動修改
    ├ i10n - 語言在地化 (en, zh_HK)
    ├ model - 把伺服器返回的 json data 轉換成 dart
    ├ ui - 手機 app interface
      ┬
      ├ common_widgets - 通用 widgets (各 screen 下的 components 同理, 用於各畫面調用)
      └ screen - 存放多個子目錄，每個子目錄對應著一個畫面
    ├ utils - 封裝成各工具類以便被各 page 調用, 用作避免重複性代碼,
    ├ web - 網頁項目目錄
      ┬
      ├ screens - 網頁界面
        ┬
        └ home_page.dart - 網頁主畫面構成
      └ widgets - 封裝好的 widget 調用於網頁
    ├ app.dart - 手機 app 初始目錄
    ├ web.dart - 網頁初始目錄
    └ main.dart - 自動生成的項目入口文件
  ├ test - 測試文件
  └ pubspec.yaml - 項目依賴配置文件類似於 RN 的 package.json

```

#### Back-End

back-end: https://florabackend.azurewebsites.net/

