# atm_soundbox

ATM Sound Box

## Kiến trúc dự án

Project có các tầng xử lý dữ liệu như sau:
- **Data**: Chứa **ApiService**(Connect đến server) và **LocalStorage**(Chứa các dữ liệu lưu dưới local).
- **Domain**: Chứa **UseCase** và **Repository Interface**(Giao tiếp đến tầng Data).
- **Bloc Cubit**: Xử lý logic của tính năng tương ứng với screen.
- **UI**: Chứa code UI của ứng dụng giao tiếp với người dùng.  
  Một số các thư mục khác trong project để hỗ trợ:
- **DI**: Chứa enviroment và module được Dependency Injection.
- **l10n**: Chứa file ngôn ngữ của project.
- **utilities**:  Chứa constants, extension cần thiết. Đặc biệt chứa config liên quan đến style của project như: fonts, colors, textstyle, light/dark...
- **presentation/application**: Config route tổng của project.
- **presentation/common**: Chứa các common widget để tái sử dụng.

## Quản lý state trong ứng dụng Flutter

Ứng dụng sử dụng **Bloc Pattern** để quản lý state và tách biệt Logic và Giao diện.  Mỗi màn hình sẽ có 1 cubit riêng và các state thể hiện trạng thái.  
Xem thêm về **Bloc** tại: https://pub.dev/packages/flutter_bloc

## Cách chạy và build

Để generate build runner gen ra di, request/response chạy lệnh sau:

`flutter pub run build_runner build --delete-conflicting-outputs`

Để build release:

- Cho Android:  
  -- Build APK release sử dụng lệnh:

  `flutter build apk --release`

  -- Build AAB release sử dụng lệnh:

  `flutter build appbundle --release`

-- gen text
`dart run intl_utils:generate`

- Lưu ý khi build release: Xóa cache trước khi build và pub get lại:

  flutter clean  
  flutter pub get

Tài liệu tham khảo:  
https://docs.flutter.dev/deployment/android  
https://docs.flutter.dev/deployment/ios# lpb_insurance
