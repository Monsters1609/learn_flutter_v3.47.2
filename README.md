# learn_flutter_v3.47

## Table of Contents (Mục lục)

- [Chapter 1: Introduction & Overview (Tổng quan)](#chapter-1-overview-tổng-quan)
  - [Target (Mục tiêu)](#11-target-mục-tiêu)
  - [Research subjects (Đối tượng nghiên cứu)](#12-research-subjects-đối-tượng-nghiên-cứu)
  - [Scope (Phạm vi nghiên cứu)](#13-scope-phạm-vi-nghiên-cứu)
  - [Technology used (Công nghệ sử dụng)](#14-technology-used-công-nghệ-sử-dụng)
  - [Research roadmap (Lộ trình nghiên cứu)](#15-research-roadmap-lộ-trình-nghiên-cứu)

- [Chapter 2: Theoretical and technological basis (Cơ sở lý thuyết và công nghệ)](#chapter-2-theoretical-and-technological-basis-cơ-sở-lý-thuyết-và-công-nghệ)
  - [Client-Server Architecture (Kiến trúc Client – Server)](#21-client-server-architecture-kiến-trúc-client--server)
  - [RESTful API](#22-restful-api)
  - [HTTP/HTTPS](#23-httphttps)
  - [Dart](#24-dart)
  - [Flutter](#25-flutter)
  - [Android Debug Bridge (ADB - Cầu nối gỡ lỗi Android)](#26-android-debug-bridge-adb---cầu-nối-gỡ-lỗi-android)
  - [Environment variable (Biến môi trường)](#27-environment-variable-biến-môi-trường)
  - [FVM (Flutter Version Manager)](#28-fvm-flutter-version-manager)
  - [State management (Quản lý trạng thái)](#29-state-management-quản-lý-trạng-thái)

- [Chapter 3: System analysis and design (Phân tích và thiết kế hệ thống)](#chapter-3-system-analysis-and-design-phân-tích-và-thiết-kế-hệ-thống)
  - [Functional requirements (Yêu cầu chức năng)](#31-functional-requirements-yêu-cầu-chức-năng)
    - [Authentication & Authorization (Xác thực & Phân quyền)](#311-authentication--authorization-xác-thực--phân-quyền)
    - [Customer (Khách hàng)](#312-customer-khách-hàng)
    - [Admin (Quản trị viên)](#313-admin-quản-trị-viên)
  - [Database design and analysis (Thiết kế và phân tích cơ sở dữ liệu)](#32-database-design-and-analysis-thiết-kế-và-phân-tích-cơ-sở-dữ-liệu)
  - [Directory structure (Cấu trúc thư mục)](#33-directory-structure-cấu-trúc-thư-mục)
  - [Project configuration (Cấu hình dự án)](#34-project-configuration-cấu-hình-dự-án)
  - [Libraries (Thư viện và phụ thuộc)](#35-libraries-thư-viện-và-phụ-thuộc)
    - [dependencies](#351-dependencies)
    - [dev_dependencies](#352-dev_dependencies)

- [Chapter 4: Building and deploying the system (Xây dựng và triển khai hệ thống)](#chapter-4-building-and-deploying-the-systemxây-dựng-và-phát-triển-hệ-thống)
## Chapter 1: Overview (Tổng quan)
### 1.1 Target (Mục tiêu):
  - Học và tìm hiểu flutter
  - Thử nghiệm nghiên cứu và phát triện ứng dụng E-commerce
  - Ứng dụng giao bán, đặt hàng đồ ăn (Food delivery and ordering app)
### 1.2 Research subjects (Đối tượng nghiên cứu):
  - admin (Quản lý / Quản trị viên)
  - customer (Khách hàng)
  - staff (Nhân viên) (later)
### 1.3 Scope (Phạm vi nghiên cứu):
  - Phạm vi người dùng gồm admin, customer, staff.
### 1.4 Technology used (Công nghệ sử dụng)
  - Flutter (v3.47.2)
### 1.5 Research roadmap (Lộ trình nghiên cứu):
  - https://roadmap.sh/flutter
## Chapter 2: Theoretical and technological basis (Cơ sở lý thuyết và công nghệ)
### 2.1 Client-Server Architecture (Kiến trúc Client – Server):
  - Client–Server Architecture (kiến trúc Client–Server) là mô hình trong đó hệ thống được chia thành 2 phía chính:
    - Client (Khách hàng): là phía người dùng, nơi mà người dùng tương tác với hệ thống thông qua giao diện người dùng (UI). Client gửi yêu cầu (request) đến server để truy xuất dữ liệu hoặc thực hiện các thao tác.
    - Server (Máy chủ): là phía cung cấp dịch vụ, nơi xử lý các yêu cầu từ client và trả về kết quả. Server quản lý dữ liệu, thực hiện các logic nghiệp vụ và đảm bảo tính bảo mật của hệ thống.
  - Mô hình Client–Server giúp phân tách rõ ràng giữa giao diện người dùng và logic xử lý, từ đó tăng tính mở rộng, bảo mật và dễ dàng quản lý hệ thống. Nó cũng cho phép nhiều client kết nối đến một server duy nhất, giúp tối ưu hóa tài nguyên và hiệu suất của hệ thống.
### 2.2 RESTful API:
  - API(Application Programming Interface) là Giao diện lập trình ứng dụng
  - API là một cơ chế/cầu nối cho phép các chương trình khác nhau giao tiếp và trao đổi dữ liệu với nhau.
  - REST (Representational State Transfer) là à một kiến trúc/phong cách thiết kế (architectural style) dùng để xây dựng các hệ thống API giao tiếp qua mạng.
  - REST đưa ra các nguyên tắc về cách chúng ta thiết kế API.
  - RESTful API là API được thiết kế và triển khai theo các nguyên tắc của REST.
### 2.3 HTTP/HTTPS:
  - HTTP(Hypertext Transfer Protocol) là giao thức truyền tải dữ liệu.
  - HTTP là một bộ quy tắc giúp Client và Server trao đổi dữ liệu với nhau qua mạng.
  - HTTPS(Hypertext Transfer Protocol Secure) là giao thức truyền tải dữ liệu an toàn.
  - HTTPS sử dụng TLS (Transport Layer Security) để bảo vệ dữ liệu khi truyền giữa Client và Server.
  - Chi tiết: 
    - HTTPS → cách dữ liệu được truyền.
    - GET/POST/PUT/DELETE/PATCH/... → HTTP method (phương thức của HTTP).
    - URL: https://example.com/api/v1 trong đó /api/v1 → endpoint/resource.
    - RESTful → cách API được thiết kế.
    - RESTful API sử dụng HTTP/HTTPS để Client và Server giao tiếp với nhau.
### 2.4 Dart:
  - Dart là một ngôn ngữ lập trình được phát triển bởi Google, chủ yếu được sử dụng để xây dựng các ứng dụng web, di động và máy tính để bàn.
  - Dart có cú pháp tương tự như các ngôn ngữ lập trình phổ biến khác như Java, C# và JavaScript, giúp cho việc học và sử dụng trở nên dễ dàng hơn.
  - Dart hỗ trợ lập trình hướng đối tượng (OOP), cho phép bạn tạo ra các lớp, đối tượng và kế thừa.
  - Dart có thể biên dịch sang mã máy (native code) hoặc mã JavaScript, giúp ứng dụng chạy nhanh trên nhiều nền tảng khác nhau.
### 2.5 Flutter:
  - Flutter là một framework UI đa nền tảng (cross-platform) do Google phát triển, dùng để xây dựng ứng dụng bằng ngôn ngữ Dart.
  - Flutter giúp bạn viết code một lần để xây dựng app cho Android, iOS, Web và Desktop.
  - Các câu lệnh Flutter:
    - Kiểm tra phiên bản flutter: ```powershell flutter --version ```
    - Kiểm tra các thiết bị kết nối: ```powershell flutter devices ```
    - Tạo project mới: ```powershell flutter create --platforms=android,ios,web,linux,macos,windows --android-language <java/kotlin> <project_name Tên dự án> ```
    - Chạy ứng dụng: ```powershell flutter run ```
    - Build ứng dụng Android: ```powershell flutter build apk ```
    - Build ứng dụng iOS: ```powershell flutter build ios ```
    - Build ứng dụng Web: ```powershell flutter build web ```
    - Build ứng dụng Windows: ```powershell flutter build windows ```
    - Build ứng dụng macOS: ```powershell flutter build macos ```
    - Build ứng dụng Linux: ```powershell flutter build linux ```
    - Build ứng dụng cho tất cả nền tảng: ```powershell flutter build all ```
    - Thêm thư viện: ```powershell flutter pub add <library-flutter> ```
    - Xóa thư viện: ```powershell flutter pub remove <library-flutter> ```
    - Cập nhật thư viện: ```powershell flutter pub upgrade ```
    - Xóa tất cả các file sinh ra trong quá trình biên dịch (build): ```powershell flutter clear ```
    - Lấy tất cả các thư viện đã cài đặt sẵn trong pubspec.yaml: ```powershell flutter pub get ```
### 2.6 Android Debug Bridge (ADB - Cầu nối gỡ lỗi Android):
  - Công cụ dòng lệnh giúp máy tính của bạn giao tiếp với thiết bị Android (điện thoại, máy tính bảng, máy ảo)
  - Các câu lệnh ADB:
    - Kiểm tra thiết bị kết nối: ```powershell adb devices ```
    - Cài đặt ứng dụng: ```powershell adb install <tên file apk> ```
    - Gỡ cài đặt ứng dụng: ```powershell adb uninstall <tên package> ```
    - Xem log lỗi của app: ```powershell adb logcat ```
    - Mở terminal trên điện thoại: ```powershell adb shell ```
    - Khởi động lại điện thoại: ```powershell adb reboot ```
    - Kiểm tra phiên bản adb: ```powershell adb version ```
    - Tắt ADB Server: ```powershell adb kill-server ```
    - Khởi động lại ADB Server: ```powershell adb start-server ```
### 2.7 Environment variable (Biến môi trường):
  - Environment variable (biến môi trường) là một biến dùng để lưu các thông tin cấu hình của ứng dụng ở bên ngoài source code.
  - Environment variable là những giá trị có thể thay đổi tùy môi trường chạy app mà bạn không muốn viết cứng trực tiếp vào code.
  - Environment variable dùng để lưu trữ các thông tin cấu hình của ứng dụng. Phân biệt các môi trường VD: development, staging, production... Không cần hard-code cấu hình trong source code.
### 2.8 FVM (Flutter Version Manager):
  - FVM (Flutter Version Management) là công cụ dùng để quản lý nhiều phiên bản Flutter SDK trên cùng một máy.
  - FVM giúp bạn chọn phiên bản Flutter phù hợp cho từng project.
  - Các câu lệnh FVM:
    - Cài đặt FVM: ```powershell dart pub global activate fvm ```
    - Kiểm tra phiên bản FVM: ```powershell fvm --version ```
    - Cài đặt phiên bản Flutter: ```powershell fvm install <version> ```
    - Chọn phiên bản Flutter cho project: ```powershell fvm use <version> ```
    - Chạy ứng dụng với FVM: ```powershell fvm flutter run ```
    - Build ứng dụng với FVM: ```powershell fvm flutter build <platform> ```
    - Xem danh sách phiên bản Flutter đã cài đặt: ```powershell fvm list ```
    - Xóa phiên bản Flutter khỏi danh sách: ```powershell fvm remove <version> ```
### 2.9 State management (quản lý trạng thái):
  - Riverpod và Bloc/Cubit là 2 thư viện quản lý trạng thái trong flutter.
  - Riverpod là một thư viện quản lý trạng thái (state management) cho Flutter. Nó giúp bạn quản lý dữ liệu (state) của ứng dụng một cách có tổ chức, dễ dàng chia sẻ dữ liệu giữa các màn hình/widget, và tự động cập nhật giao diện khi dữ liệu thay đổi.
  - Riverpod giúp bạn không phải "đẩy dữ liệu lên xuống" giữa các widget cha-con một cách rườm rà nữa. Thay vì phải truyền dữ liệu qua constructor (gọi là "prop drilling"), bạn chỉ cần khai báo một "kho chứa" (provider) và bất cứ widget nào cũng có thể lấy dữ liệu từ đó.
  - Công việc chính của Riverpod:
    - Chia sẻ dữ liệu toàn cục
    - Quản lý trạng thái của một màn hình hoặc một widget
    - Gọi API và quản lý dữ liệu bất đồng bộ (async):
      - Riverpod có FutureProvider và AsyncValue giúp bạn dễ dàng gọi API, xử lý trạng thái loading/error/data một cách gọn gàng, tự động cache và refresh.
    - Tái sử dụng logic (business logic): 
      - Bạn có thể tạo các provider chứa các hàm xử lý nghiệp vụ và dùng lại ở nhiều nơi.
    - Phụ thuộc (dependency injection): 
      - Riverpod giúp bạn khởi tạo và cung cấp các đối tượng một cách dễ dàng mà không cần dùng các thư viện DI khác.
## Chapter 3: System analysis and design (Phân tích và thiết kế hệ thống)
### 3.1 Functional requirements (Yêu cầu chức năng):
  - Core requirements (Yêu cầu chính)
    - Authentication & Authorization (Xác thực & Phân quyền)
    - Product (Sản phẩm)
    - Category (Danh mục)
    - Cart (Giỏ hàng)
    - Checkout (Thanh toán)
    - Order (Đơn hàng)
    - Customer (Khách hàng)
    - Admin (Quản trị viên)
    - Home / Dashboard (Trang chủ / Bảng điều khiển)
  - Further development (Phát triển tiếp theo)
    - Wishlist (Danh sách yêu thích)
    - Search (Tìm kiếm)
    - Filter (Lọc)
    - Notification (Thông báo)
    - Address management (Quản lý địa chỉ)
    - Review / Rating (Đánh giá / Xếp hạng)
    - Statistics (Thống kê)
  - Extend (Mở rộng)
    - Online payment (Thanh toán trực tuyến)
    - Voucher / Coupon (Mã giảm giá / Phiếu giảm giá)
    - Promotion (Khuyến mãi)
    - Recommendation (Gợi ý)
    - Chat (Trò chuyện)
    - Loyalty points (Điểm tích lũy)
    - Delivery tracking (Theo dõi giao hàng)
    - Multiple payment gateways (Nhiều cổng thanh toán)
    - ...
#### 3.1.1 Authentication & Authorization (Xác thực & Phân quyền)
  - Login (Đăng nhập)
  - Logout (Đăng xuất)
  - Register (Đăng ký)
  - Forgot password (Quên mật khẩu)
  - Change password (Đổi mật khẩu)
  - Update profile (Cập nhật hồ sơ)
  - Role-based access control (Kiểm soát truy cập dựa trên vai trò)
  - Refresh token / Auto login (Làm mới token / Đăng nhập tự động)
#### 3.1.2 Customer (Khách hàng)
  - View products (Xem sản phẩm)
  - Search products (Tìm kiếm sản phẩm)
  - Filter products (Lọc sản phẩm)
  - Sort products (Sắp xếp sản phẩm)
  - View product details (Xem chi tiết sản phẩm)
  - Add to cart (Thêm vào giỏ hàng)
  - View cart (Xem giỏ hàng)
  - Update cart quantity (Cập nhật số lượng trong giỏ hàng)
  - Remove product from cart (Xóa sản phẩm khỏi giỏ hàng)
  - Clear cart (Dọn dẹp giỏ hàng)
  - Checkout (Thanh toán)
  - Select delivery address (Chọn địa chỉ giao hàng)
  - Select payment method (Chọn phương thức thanh toán)
  - Create order (Tạo đơn hàng)
  - View order history (Xem lịch sử đơn hàng)
  - View order details (Xem chi tiết đơn hàng)
  - Track order status (Theo dõi trạng thái đơn hàng)
  - Cancel order (Hủy đơn hàng)
  - Manage wishlist (Quản lý danh sách yêu thích)
  - Add product to wishlist (Thêm sản phẩm vào danh sách yêu thích)
  - Remove product from wishlist (Xóa sản phẩm khỏi danh sách yêu thích)
  - Add product review (Thêm đánh giá sản phẩm)
  - Rate product (Đánh giá sản phẩm)
  - Manage addresses (Quản lý địa chỉ)
  - View notifications (Xem thông báo)
#### 3.1.3 Admin (Quản trị viên)
  - View dashboard (Xem bảng điều khiển)
  - View statistics (Xem thống kê)
  - Manage products
    - View products (Xem sản phẩm)
    - Add products (Thêm sản phẩm)
    - Edit products (Chỉnh sửa sản phẩm)
    - Delete products (Xóa sản phẩm)
    - Search products (Tìm kiếm sản phẩm)
    - Filter products (Lọc sản phẩm)
    - Update product status (Cập nhật trạng thái sản phẩm)
    - Upload product image (Tải lên hình ảnh sản phẩm)
  - Manage categories (Quản lý danh mục)
    - View categories (Xem danh mục)
    - Add categories (Thêm danh mục)
    - Edit categories (Chỉnh sửa danh mục)
    - Delete categories (Xóa danh mục)
  - Manage orders (Quản lý đơn hàng)
    - View orders (Xem đơn hàng)
    - View order details (Xem chi tiết đơn hàng)
    - Search orders (Tìm kiếm đơn hàng)
    - Filter orders (Lọc đơn hàng)
    - Update order status (Cập nhật trạng thái đơn hàng)
    - Cancel orders (Hủy đơn hàng)
    - View payment status (Xem trạng thái thanh toán)
  - Manage customers (Quản lý khách hàng)
    - View customers (Xem khách hàng)
    - View customer details (Xem chi tiết khách hàng)
    - Search customers (Tìm kiếm khách hàng)
    - View customer order history (Xem lịch sử đơn hàng của khách hàng)
    - Enable / Disable customer (Cho phép / Vô hiệu hóa khách hàng)
  - Manage notifications (Quản lý thông báo)
    - View notifications (Xem thông báo)
    - Send notifications (Gửi thông báo)
### 3.2 Database design and analysis (Thiết kế và phân tích cơ sở dữ liệu):
#### 3.2.1 Database Overview (Tổng quan cơ sở dữ liệu):
  ![Database Overview](./assets/overview_database.png)
#### 3.2.2 Design Database (Thiết kế cơ sở dữ liệu):
### 3.3 Directory structure (Cấu trúc thư mục):
### 3.4 Project configuration (Cấu hình dự án):
### 3.5 Libraries (Thư viện và phụ thuộc):
#### 3.5.1 dependencies:
#### 3.5.2 dev_dependencies:
## Chapter 4: Building and deploying the system(Xây dựng và phát triển hệ thống)