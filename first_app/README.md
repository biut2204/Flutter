# first_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Tại sao lại chọn lập trình mobie app với Flutter

Lý do thứ 1: Đa nền tảng
- Lập trình Cross Platform (đa nền tảng) đang ngày càng trở nên phổ biến và phát triển cực kỳ mạnh mẽ.
- Vào năm 2015, React Native xuất hiện và đã mở ra xu hướng xây dựng ứng dụng đa nền tảng, tức là chỉ cần code 1 lần → có thể chạy trên rất nhiều nền tảng khác nhau: Android Platform, IOS Platform
- Sau đó thì một loạt các công ty lớn như UberEats, Discord và Facebook đã chuyển sang sử dụng React Native → như một phần tất yếu của sự dịch chuyển công nghệ.
 Và tất nhiên, khi đó thì ông lớn Google không thể nằm im được. Họ đã nhận thấy độ phủ sóng của React Native và tiềm năng phát triển của nó.
- Sau 2 năm nghe ngóng và âm thầm phát triển, Google cho ra mắt phiên bản alpha của 1 framework có tên là: Flutter vào năm 2017, hứa hẹn sẽ tạo ra các ứng dụng chất lượng cao trên các phiên bản iOS và Android trong thời gian rất ngắn

Lý do thứ 2: Chuyển dịch công nghệ
- Công ty mình làm việc, đang có xu hướng dịch chuyển công nghệ
từ Android Native, IOS Native sang hướng Cross Platform (đa nền tảng): React Native or Flutter

Lý do thứ 3: Tính chất framework Flutter
- Code ngắn gọn, dễ học, dễ sử dụng
- Biên dịch nhanh, cực mạnh về animation (hiệu ứng chuyển động), performance (hiệu suất) app rất cao, mượt mà, giao diện của Flutter vô cùng đẹp mắt theo phong cách Material Design và Cupertino.
- Tài liệu hướng dẫn cực kỳ rõ ràng
- Cộng đồng đang phát triển rất mạnh mẽ, nhiều bên thứ 3 support rất nhiều thư viện hay.

Lý do thứ 4: vấn đề việc làm + tiền lương
- Nhu cầu việc làm đối với dev Flutter đang rất nhiều, được rất nhiều công ty săn đón
- Lương chắc chắn sẽ cao hơn 1 dev native (nếu so sánh với mặt bằng chung)

## Hướng dẫn cài đặt

* Cài đặt Flutter SDK & setup biến môi trường trên Windows

Bước 1: Download Flutter SDK
- Có thể download file zip rồi giải nén
- Hoặc Clone từ Git

Bước 2: Config biến môi trường
- Thêm biến môi trường flutter\bin vào Path trong mục User variables

Bước 3: Run "flutter doctor" trong cửa sổ Window Command Line
để kiểm tra xem đã cài đặt Flutter SDK thành công hay chưa

* Cài đặt JDK + Android SDK + Tool code Android Studio

Bước 1: Cài đặt JDK (Java Development Kit)

- Truy cập trang web của Oracle để tải JDK: https://www.oracle.com/java/technologies/javase-jdk11-downloads.html
- Chọn phiên bản JDK phù hợp với hệ điều hành của bạn và tải xuống.
- Chạy tệp tin cài đặt JDK và làm theo hướng dẫnên màn hình để hoàn thành quá trình cài đặt.
Bước 2: Cài đặt Android SDK

- Tải Android Studio từ trang web chính thức của Google: https://developer.android.com/studio
- Chạy tệp tin cài đặt Android Studio và làm theo hướng dẫn trên màn hình để hoàn thành quá trình cài đặt.
- Khi được yêu cầu, chọnCustom" để tùy chỉnh cài đặt.
- Chọn các gói SDK mà bạn mun cài đặt. Đảm bảo rằng bạn chọn phiên bản Android SDK phù hợp với dự án của mình.
- Tiếp tục vớiá trình cài đặt và chờ đợi cho đến khi hoàn thành.
Bước 3: Cấu hình Android Studio

- Mở Android Studio sau khi cài đặt hoàn tất.
- Trên màn hình chào đón, chọn "Configure" và sau đó chọn "SDK Manager".
- Trong SDK Manager, kiểm tra xem các gói SDK đã được cài đặt đúng phiên bản mà bạn muốn s dụng. Nếu không, hãy chọn các gói cần thiết và nhấp vào nút "Apply" để cài đặt chúng.
- Sau khi c đặt xong, bạn có thể đóng SDK Manager.
Bước 4: Kiểm tra cài đặt

- Để tra xem JDK và Android SDK đã được cài đặt thành công, hãy mở Terminal (trên macOS và Linux) hoặc Command Prompt (trên Windows).
- Gõ lệnh "java -version" để kiểm tra phiên bản JDK.
- Gõ lệnh "javac -version" để kiểm tra phiên bản trình biên dịch Java.
- Gõ lệnh "adb version" để kiểm tra phiên bản Android Debug Bridge (ADB).

* Cài đặt Flutter Plugin & Dart Plugin trong Android Studio

- Mở Android Studio.
- Nhấp vào menu "File" và chọn "Settings".
- Trong cửa sổ "Settings", nhấp vào tab "Plugins".
- Trong thanh tìm kiếm, nhập "Flutter".
- Chọn plugin "Flutter" và nhấp vào nút "Install".
- Sau khi plugin được cài đặt, hãy khởi động lại Android Studio.
- Mở một dự án mới và chọn "Flutter" làm ngôn ngữ lập trình.
- Android Studio sẽ tải Flutter SDK và các plugin cần thiết.
- Sau khi tải xong, bạn có thể bắt đầu phát triển ứng dụng Flutter của mình.

* Tạo project

- Chọn New Flutter Project
- Chọn Flutter -> Chọn SDK đã cài đặt -> Đặt tên project -> Project type chọn Application , Platforms chọn Android và IOS -> Next
- Device ManaGer -> Chọn thiết bị máy ảo chạy -> Run

* chạy main.dart

Bước 1 : Khai báo thư viện import 'package:flutter/material.dart';

Bước 2 : Tạo main

Bước 3 : Khai báo ứng dụng app sử dụng MaterialApp

- Tạo AppBar với nội dung tiêu đề "Bài tập test"
- Tạo class MyWidget nối tiếp StatefulWidget -> dữ liệu mà nó sử dụng để hiển thị chính nó
- SharedPreferenceslà một plugin Flutter cung cấp cách lưu trữ dữ liệu trên thiết bị
- Trong class MyWidgetState có initState() được gọi khi widget được tạo lần đầu tiên
- _loadData()phương thức để tải danh sách các chuỗi từ thiết bị của người dùng
- _saveData()trong mã bạn cung cấp được sử dụng để lưu danh sách các chuỗi vào thiết bị
- sử dụng setState() để thay đổi lại giao diện cập nhật dữ liệu mới
- add(String congViec) để lưu dữ liệu vào listDanhSach 
- remove(int index) để xóa dữ liệu từ listDanhSach theo vị trí index 
- update(int index, String update) để cập nhật dữ liệu mới vào listDanhSach theo vị trí index
- len(int index)  để thay đổi vị trí dữ liệu của listDanhSach theo vị trí index lên 1 đơn vị
- xuong(int index) để thay đổi vị trí dữ liệu của listDanhSach theo vị trí index xuống 1 đơn vị

* Tính năng của các button

- Button 1 : Thêm dữ liệu
click vào button -> Hiển thị bàn phìm nhập dữ liệu -> Nhập dữ liệu -> Click thêm
-> Thêm dữ liệu vào cuối list

- Button 2 : Xóa dữ liệu
click vào button -> từ vị ví button xóa dữ liệu theo vị trí -> hiển thị list mới

- Button 3 : Cập nhật dữ liệu
click vào button -> Hiển thị bàn phìm nhập dữ liệu -> Nhập dữ liệu -> Click Cập nhật
-> Cập nhật dữ liệu vào vị ví button đã chọn

- Button 4 : Lên
click vào button -> từ vị ví button đã chọn sẽ hoán đổi vị trí với dữ liệu bên trên -> hiển thị list mới

- Button 5 : Xuống
click vào button -> từ vị ví button đã chọn sẽ hoán đổi vị trí với dữ liệu bên dưới -> hiển thị list mới