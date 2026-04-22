# Một số hình ảnh về SQL Server

1. Các service đang chạy

   <img width="1403" height="931" alt="image" src="https://github.com/user-attachments/assets/0d5d75f4-2c5e-430e-8c03-a3e53a025d1c" />

2. Enable TCP/IP

   <img width="620" height="389" alt="image" src="https://github.com/user-attachments/assets/15bd67a6-ece1-4997-a2ac-274b94dd03af" />

3. Cấu hình chi tiết cho TCP/IP:

   <img width="676" height="315" alt="image" src="https://github.com/user-attachments/assets/e0576715-5e6f-426f-9ad0-fb60941889cb" />

4. Listen ALL = YES

   <img width="709" height="705" alt="image" src="https://github.com/user-attachments/assets/130392f1-2b38-43e7-85e0-01c2a074d18f" />

5. IP Address + Dynamic Port

   <img width="818" height="707" alt="image" src="https://github.com/user-attachments/assets/889e344a-3363-44c2-9649-e76f870c39b2" />

6. Thông báo này là Mọi thứ đã được lưu lại, nhưng chưa có hiệu lực, phải restart SQL server thì mới có hiệu lực

   <img width="408" height="469" alt="image" src="https://github.com/user-attachments/assets/2314b6eb-d5e2-4d2a-91e3-c2ea7be2078f" />

7. Restart SQL Server

   <img width="786" height="332" alt="image" src="https://github.com/user-attachments/assets/e5557047-fded-4a6d-a919-20f59e8f7ab7" />

8. Kiểm tra cổng xxxxx có đang mở

   <img width="1197" height="736" alt="image" src="https://github.com/user-attachments/assets/efde8963-6c12-4c2b-94ba-1c128135b6dd" />

   Kiểm tra lại bằng tool [CurrPorts v2.77](https://www.nirsoft.net/utils/cports.html) - Monitoring Opened TCP/IP network ports

   <img width="1103" height="689" alt="image" src="https://github.com/user-attachments/assets/4fbdc81f-735d-4d40-a30a-ae9b98013bd1" />

   Thấy đúng là SQL Server đang mở cổng xxxxx này thật
   
   <img width="1267" height="992" alt="image" src="https://github.com/user-attachments/assets/f9aa3244-ef17-45e7-aaca-c992bbb261ea" />

9. Kết nối tới SQL Server:

   ** CLIENT SSMS

   <img width="471" height="509" alt="image" src="https://github.com/user-attachments/assets/c580505e-3ead-4412-b1bf-658748aefdfb" />

   ** Kết nối bằng Windows Auth:

   <img width="971" height="717" alt="image" src="https://github.com/user-attachments/assets/7d499211-6b22-4d9d-8ded-71a85e7bc62b" />

   Kết quả login thành công: (cách này chỉ áp dụng cho SQL Server trên cùng 1 máy tính với client, ở đây SSMS là client)

   <img width="779" height="449" alt="image" src="https://github.com/user-attachments/assets/34d97660-40e2-4c1d-b779-2daeb3aec9b0" />

   ** Kết nối sử dụng username và password:

   <img width="1097" height="739" alt="image" src="https://github.com/user-attachments/assets/5c892161-5137-4bb2-b711-2a0bdfa57fad" />

   Kết quả login cũng thành công:

   <img width="775" height="426" alt="image" src="https://github.com/user-attachments/assets/cb51019c-30d0-4577-8cc2-be30c4416435" />

   Cách login sử dụng username và password còn được áp dụng cho các máy chủ ở xa, trong cùng LAN, hoặc ở ngoài internet

   Thử kết nối bằng CLIENT khác (phần mềm siêu nhẹ [HeidiSQL](https://www.heidisql.com/)) qua giao thức **named pipe** siêu nhanh

   <img width="515" height="421" alt="image" src="https://github.com/user-attachments/assets/ed5b38e7-2af2-41be-9452-e4d905c71ec2" />

   <img width="1180" height="654" alt="image" src="https://github.com/user-attachments/assets/cd0c7df7-e5ac-4886-abc1-7dbe4168f806" />

   Thử truy vấn thấy ok, siêu nhanh:

   <img width="1919" height="402" alt="image" src="https://github.com/user-attachments/assets/e8c1767e-a7b4-486e-992e-ae3b01451925" />


# Edit file trên github theo cú pháp MarkDown

1. Khi EDIT thì chỉ nhìn thấy text và text (theo cú pháp Markdown) chứ ko thấy format đậm, nghiêng, ảnh, ...

   <img width="994" height="985" alt="image" src="https://github.com/user-attachments/assets/f3fd822a-a491-4c10-8c72-b7a8e2e8ae17" />
   
3. Preview thì thấy văn bản được format (sẽ thấy hình ảnh):
   
   <img width="1224" height="714" alt="image" src="https://github.com/user-attachments/assets/16f72d96-2adf-4db6-bd2c-1b332e4c3972" />
   
4. Sau khi chụp ảnh, đặt con trỏ vào chỗ cần dán ảnh, gõ CTRL+V thì sẽ thấy xuấy hiện uploading..., đợi vài giây sẽ upload ảnh xong và thay đổi thành < img ...
   
   
   <img width="1029" height="302" alt="image" src="https://github.com/user-attachments/assets/559ac0f1-01d9-4e74-8c55-9d95a5ddcffe" />



