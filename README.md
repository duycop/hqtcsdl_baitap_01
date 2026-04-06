# Bài tập môn Hệ quản trị cơ sở dữ liệu-TEE560, Lớp: 59KMT

## YÊU CẦU BÀI TẬP #

1. Download và cài đặt SQL Server 2025, phiên bản Developer

   Link tải: https://www.microsoft.com/vi-vn/sql-server/sql-server-downloads 

   Chọn phiên bản *SQL Server 2025 Developer*

   Không chọn Azure (nặng, ko dùng đến), các tính năng mở rộng khác (feature) chọn tất cả   

   Cài đặt với 2 kiểu login (Mixed Mode): Windows Authentication (nhớ **Add Current User**) và SQL Server Authentication (username mặc định là **sa**, chỉ cần nhập mật khẩu **123** , nhớ nhập 2 chỗ: Enter password và Confirm password)
2. Cấu hình cho SQL Server làm việc ở cổng động (Dynamic Port), TCP: enable+active yes cho 127.0.0.1, chọn cổng động là 3xxxx với xxxx là **4 số cuối của mã số sv**, (nếu cổng này đã mở sẵn trước đó bởi 1 ứng dụng khác thì chọn cổng là 4xxxx hoặc 5xxxx)
3. Kiểm tra xem service SQL Server có đang running và mở đúng cổng đã chọn hay không?

   Sử dụng lệnh trên cmd: *netstat -ano | findstr LISTENING* để liệt kê các cổng mà máy tính đang mở,

   Nếu thấy dòng: **TCP    0.0.0.0:xxxxx**  với xxxxx là cổng đã chọn ở bước 2 là OK.
4. Cài đặt SQL Server Management Studio

   Link tải SSMS: https://learn.microsoft.com/en-us/ssms/install/install
5. Chạy phần mềm ssms để Đăng nhập vào SQL Server bằng 2 cách: Windows Authentication và SQL Server Authentication.

   Servername: localhost,xxxxx  (với xxxxx là cổng đã chọn ở bước 2)
6. Sử dụng giao diện đồ hoạ của ssms: Tạo cơ sở dữ liệu mới (create database) với tên tuỳ ý, chọn Path (nơi lưu trữ db) cho file lưu dữ liệu và file lưu log ở ổ đĩa khác với ổ C. mở path đã chọn xem 2 file đã tạo ra.
7. Sử dụng giao diện đồ hoạ của ssms: Tạo bảng dữ liệu (create and design table) với tên bảng tuỳ ý, có các trường dữ liệu phù hợp với dữ liệu của file [data mẫu (CSV)](./svtnut.csv?raw=true), với Khoá chính (Primary Key) là trường **masv**
8. Sử dụng giao diện đồ hoạ của ssms: Tìm cách import dữ liệu từ file mẫu vào trong bảng vừa tạo.
9. Mở cửa sổ mới để gõ lệnh trong ssms: GÕ lệnh để kiểm tra xem số dòng của bảng dữ liệu sau khi import, kết quả ok sẽ khoảng 12020 dòng.
10. Trong cửa sổ mới để gõ lệnh: Gõ lệnh để thêm (insert) 1 row vào bảng, với dữ liệu là thông tin cá nhân của sv đang làm bài (mỗi sv sẽ luôn khác nhau ở bước này). 
11. Trong cửa sổ mới để gõ lệnh: Gõ lệnh để cập nhật(update) trường noisinh thành 'Sao Hoả' cho những dòng có noisinh và diachi đều là NULL.
12. Sử dụng giao diện đồ hoạ của ssms: Tạo bảng **SaoHoa** gồm những sinh viên có nơi sinh ở 'Sao Hoả', keyword gợi ý: sử dụng 1 câu lệnh: SELECT + INTO
13. Trong cửa sổ mới để gõ lệnh: Gõ lệnh xoá (delete) trong bảng **SaoHoa** những sinh viên cùng họ với em, vd em họ nguyễn thì xoá những sv họ nguyễn.
14. Sử dụng giao diện đồ hoạ của ssms: Xuất toàn bộ kết quả của các bước 6,7,8,9,10,11,12,13 ra file **dulieu.sql** , keyword gợi ý: sử dụng tính năng GEN SCRIPT struct+data cho database
15. Sử dụng giao diện đồ hoạ của ssms: Xoá csdl đã tạo, sau khi xoá thành công, kiểm tra tại path (path chọn ở bước 6) xem còn tồn tại 2 file của bước 6 không?
16. Tạo cửa sổ mới để gõ lệnh: mở file **dulieu.sql** của bước 15, chạy toàn bộ các lệnh này. REFRESH lại cây liệt kê các database => kiểm chứng kết quả được tạo ra tương đương với các bước 6,7,8,9,10,11,12,13.
17. upload file **dulieu.sql** lên github repository của em (repository mà em đang edit file README.md)

## HƯỚNG DẪN LÀM BÀI ##

1. trên Github, (tạo tài khoản nếu chưa có), sau đó: Create a new repository, đặt tên repository tuỳ ý (không đặt tên như trong ảnh dưới, không phải đặt tên cho thầy, mà đặt sao cho có ý nghia cho sau này), nhớ bật README, nhớ để truy cập PUBLIC
<img width="859" height="789" alt="image" src="https://github.com/user-attachments/assets/16379fdf-d6f5-432e-839b-b1534957f8d2" />

2. Edit file README trên 1 tab của trình duyệt, đồng thời làm việc với phần mềm SSMS. khi cần chụp hình ảnh: sử dụng **Snipping tool** có sẵn của window để chụp, sau đó sang tab README.md để paste (bấm CTRL+V) hình ảnh vào, paste xong thấy có 1 dòng img ... sang nút Preview sẽ thấy hình ảnh.

<img width="648" height="324" alt="image" src="https://github.com/user-attachments/assets/c37d0e50-93bc-4c4d-92df-55e8656f785e" />
 
 khi rời máy nhớ Commit changes... để lưu file README lại
 
<img width="442" height="265" alt="image" src="https://github.com/user-attachments/assets/667be689-2b2e-4e72-bf92-3588ddd7636f" />

khi quay lại làm tiếp trên ssms thì lại edit file README

<img width="387" height="430" alt="image" src="https://github.com/user-attachments/assets/353c4d07-cc03-4357-8114-e40407a141b1" />

khi làm theo các bước yêu cầu bài tập: nhớ chụp FULL màn hình, sử dụng **Snipping tool** có sẵn của window hoặc bằng cách bấm nút PrnSC trên bàn phím (ảnh chụp full màn hình phải thấy cả ngày+giờ của clock) rồi paste (bấm CTRL+V) vào README, ví dụ Thế nào là ảnh chụp full màn hình:

<img width="2559" height="1079" alt="image" src="https://github.com/user-attachments/assets/af32e313-fc96-4f12-801d-8eb511241129" />

3. Khi soạn thảo file README.md : ngôn ngữ mặc định của github là markdown, cần tự tìm hiểu cách sử dụng markdown (dễ lắm). giao diện soạn thảo có nút Edit và Preview cạnh nhau, thi thoảng đảo qua lại 2 nút này để xem kết quả có ổn không => ỔN quyết định điểm cao, KHÔNG ỔN thì điểm sẽ thấp.

## KẾT LUẬN ##
1. SV cần đọc kỹ yêu cầu và hướng dẫn làm bài, rồi làm theo, chỗ nào không hiểu thì hỏi trên nhóm zalo
2. Kết quả: mọi kết quả sv tự làm trên máy tính cá nhân, tự đẩy lên repository trong github cá nhân, để quyền truy cập public để ai cũng xem được (trong đó có thầy). trong repository bài tập này chỉ có 2 file: **README.md** và **dulieu.sql**, bài tập khác sẽ làm ở repository khác, không làm cùng repository nào khác.
3. Chú ý: Thời gian lưu vết trên github ko fake được, mọi sửa đổi đều được lưu lại. Mọi thứ copy đều bị phát hiện tự động bởi tool (**sv vi phạm chắc chắn 100% sẽ bị cấm thi**)
4. Deadline: 23:59:59 ngày 12 tháng 4 năm 2026. (deadline được hiểu là hạn chót phải **hoàn thành**, hoàn thành === làm đủ 17 yêu cầu, thiếu 1 yêu cầu tương đương chưa hoàn thành, thời gian hoàn thành sớm hơn OK, muộn hơn bị cấm thi)
5. Link public cuả repository được paste vào đúng dòng của file excel online sau: (phải login bằng tài khoản @tnut thì mới edit được, đừng xin quyền edit, thầy đã cấp quyền edit cho sv thuộc ds lớp, phải xin quyền edit tức là chưa login đúng tài khoản)

   Link file excel online để dán link repository: https://docs.google.com/spreadsheets/d/1iwHJ6qSFKkS3iUjtlbCxw_0jUWC56PnCso1kcgxOEas/edit?usp=sharing

   chú ý link phải truy cập được public (ai cũng truy cập được),

   ví dụ với link repository của thầy là: https://github.com/duycop/hqtcsdl_baitap_01

   nên sv cần đảm bảo link repository truy cập được public : kiểm tra bằng cách mở cửa sổ ẩn danh để truy cập thử, nếu truy cập được thì mới OK
