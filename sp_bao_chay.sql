USE [master]
GO
/****** Object:  Database [BaoChay]    Script Date: 2026-04-21 5:26:23 PM ******/
CREATE DATABASE [BaoChay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BaoChay', FILENAME = N'D:\data\BaoChay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BaoChay_log', FILENAME = N'D:\data\BaoChay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BaoChay] SET COMPATIBILITY_LEVEL = 170
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BaoChay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BaoChay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BaoChay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BaoChay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BaoChay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BaoChay] SET ARITHABORT OFF 
GO
ALTER DATABASE [BaoChay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BaoChay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BaoChay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BaoChay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BaoChay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BaoChay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BaoChay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BaoChay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BaoChay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BaoChay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BaoChay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BaoChay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BaoChay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BaoChay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BaoChay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BaoChay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BaoChay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BaoChay] SET RECOVERY FULL 
GO
ALTER DATABASE [BaoChay] SET  MULTI_USER 
GO
ALTER DATABASE [BaoChay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BaoChay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BaoChay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BaoChay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BaoChay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BaoChay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BaoChay] SET OPTIMIZED_LOCKING = OFF 
GO
ALTER DATABASE [BaoChay] SET QUERY_STORE = ON
GO
ALTER DATABASE [BaoChay] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BaoChay]
GO
/****** Object:  Table [dbo].[History]    Script Date: 2026-04-21 5:26:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ids] [int] NULL,
	[time_begin] [datetime] NULL,
	[time_end] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sensor]    Script Date: 2026-04-21 5:26:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sensor](
	[id] [int] NOT NULL,
	[zone] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_sensor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[History] ON 
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (1, 1, CAST(N'2026-04-21T15:48:04.103' AS DateTime), NULL, 0)
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (2, 2, CAST(N'2026-04-21T15:48:04.103' AS DateTime), NULL, 0)
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (3, 3, CAST(N'2026-04-21T15:48:04.103' AS DateTime), CAST(N'2026-04-21T15:50:45.157' AS DateTime), 0)
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (4, 4, CAST(N'2026-04-21T15:48:04.103' AS DateTime), NULL, 0)
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (5, 3, CAST(N'2026-04-21T15:50:45.157' AS DateTime), CAST(N'2026-04-21T15:52:09.320' AS DateTime), 1)
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (6, 3, CAST(N'2026-04-21T15:52:09.320' AS DateTime), CAST(N'2026-04-21T15:54:33.977' AS DateTime), 0)
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (7, 3, CAST(N'2026-04-21T15:54:33.977' AS DateTime), CAST(N'2026-04-21T16:33:34.660' AS DateTime), 1)
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (8, 3, CAST(N'2026-04-21T16:33:34.660' AS DateTime), CAST(N'2026-04-21T16:35:20.053' AS DateTime), 0)
GO
INSERT [dbo].[History] ([id], [ids], [time_begin], [time_end], [status]) VALUES (9, 3, CAST(N'2026-04-21T16:35:20.053' AS DateTime), CAST(N'2026-04-21T16:35:53.807' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[History] OFF
GO
INSERT [dbo].[sensor] ([id], [zone], [status], [time]) VALUES (1, N'A9-101', 0, CAST(N'2026-04-21T15:46:59.247' AS DateTime))
GO
INSERT [dbo].[sensor] ([id], [zone], [status], [time]) VALUES (2, N'A9-102', 0, CAST(N'2026-04-21T15:46:59.247' AS DateTime))
GO
INSERT [dbo].[sensor] ([id], [zone], [status], [time]) VALUES (3, N'A9-103', 1, CAST(N'2026-04-21T16:35:53.807' AS DateTime))
GO
INSERT [dbo].[sensor] ([id], [zone], [status], [time]) VALUES (4, N'A9-104', 0, CAST(N'2026-04-21T15:46:59.247' AS DateTime))
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_sensor] FOREIGN KEY([ids])
REFERENCES [dbo].[sensor] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_sensor]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSensorStatus_Optimized]    Script Date: 2026-04-21 5:26:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--tác giả: geminy, prompt bởi Đỗ Duy Cốp
--ngày tạo: 2026-04-21
--Phân tích Logic
--Cập nhật bảng sensor: Luôn cập nhật trạng thái mới nhất và thời gian nhận tin.
--Kiểm tra bảng History: Tìm dòng trạng thái gần nhất của sensor đó (dòng có time_end đang để trống hoặc là dòng mới nhất).
--Xử lý thay đổi:
--Nếu status giống dòng cũ: Chỉ cần cập nhật time_end của dòng hiện tại thành thời gian mới nhất (hoặc giữ nguyên nếu bạn chỉ muốn lưu mốc thay đổi). Ở đây tôi sẽ cập nhật time_end để bạn biết trạng thái đó vẫn đang duy trì đến thời điểm hiện tại.
--Nếu status khác dòng cũ: Đóng dòng cũ (set time_end) và INSERT dòng mới.
CREATE PROCEDURE [dbo].[sp_UpdateSensorStatus_Optimized]
    @SensorID INT,  --đầu vào : cảm biến nào
    @NewStatus BIT  --đầu vào : trạng thái mới là gì
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CurrentTime DATETIME = GETDATE(); --lấy now 1 lần

    IF @NewStatus IS NULL 
    BEGIN
        UPDATE SENSOR SET 
            status=@NewStatus, 
            TIME  = @CurrentTime
        WHERE ID=@SensorID;
        PRINT N'QUIT GAME SỚM'
        RETURN; -- QUIT GAME SỚM
    END
    
   
    DECLARE @OldStatus BIT;  -- trạng thái cũ
    DECLARE @LastHistoryID INT; -- id trong history lưu trữ cuối cùng cho sensor này

    BEGIN TRANSACTION; --bắt đầu 1 phiên, để có lỗi: rollback transaction

    BEGIN TRY  -- bẫy lỗi, nếu có lỗi thì xl ở CATCH
        -- 1. Lấy trạng thái cũ trực tiếp từ bảng Sensor (Rất nhanh vì bảng nhỏ)
        SELECT @OldStatus = [status] 
        FROM [dbo].[sensor] WITH (UPDLOCK) -- Khóa dòng để tránh xung đột dữ liệu
        WHERE [id] = @SensorID;

        --PRINT FORMATMESSAGE(N'sensor ID %d có trạng thái cũ là %d, tt mới=%d', @SensorID, CAST(@OldStatus AS INT),CAST(@NewStatus AS INT));

        -- 2. Kiểm tra logic thay đổi trạng thái
        IF @OldStatus IS NULL  -- tương đương ko có cũ -> cần thêm vào history
        BEGIN
            PRINT FORMATMESSAGE(N'sensor ID %d có trạng thái cũ là NULL', @SensorID);
            -- Nếu sensor lần đầu tiên chạy (chưa có status trong bảng sensor)
            INSERT INTO [dbo].[History] ([ids], [time_begin], [time_end], [status])
            VALUES (@SensorID, @CurrentTime, NULL, @NewStatus);
        END
        ELSE 
        begin
            set @LastHistoryID = (SELECT TOP 1 [id] 
                FROM [dbo].[History] 
                WHERE [ids] = @SensorID 
                ORDER BY [time_begin] DESC);

            --PRINT FORMATMESSAGE(N'test LastHistoryID=%d',@LastHistoryID);

            IF @OldStatus <> @NewStatus
            BEGIN
                PRINT FORMATMESSAGE(N'sensor ID %d có trạng thái cũ khác mới');

            
                -- NẾU TRẠNG THÁI THAY ĐỔI
                -- B1: Tìm và chốt time_end cho bản ghi history cũ nhất đang mở
                UPDATE [dbo].[History]
                SET [time_end] = @CurrentTime
                WHERE [id] = @LastHistoryID;

                -- B2: Thêm dòng mới cho trạng thái mới
                INSERT INTO [dbo].[History] ([ids], [time_begin], [time_end], [status])
                VALUES (@SensorID, @CurrentTime, NULL, @NewStatus);
            END
            ELSE
            BEGIN
            
                -- NẾU TRẠNG THÁI KHÔNG ĐỔI
                -- Cập nhật time_end của dòng history hiện tại để báo hiệu sensor vẫn sống
                UPDATE [dbo].[History]
                SET [time_end] = @CurrentTime
                WHERE [id] = @LastHistoryID;

                --PRINT FORMATMESSAGE(N'sensor ID %d có trạng thái ko đổi',@SensorID);
            END

            -- 3. Cập nhật bảng Sensor sau khi đã xử lý xong nghiệp vụ History
            UPDATE [dbo].[sensor]
            SET [status] = @NewStatus,
                [time] = @CurrentTime
            WHERE [id] = @SensorID;
        end
        COMMIT TRANSACTION;  -- hoàn thành: ghi nhận vào db
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;  -- undo mọi lệnh thay đổi data từ lúc Begin tran
        THROW; -- nợ chưa trả lời đc
    END CATCH
END
GO
USE [master]
GO
ALTER DATABASE [BaoChay] SET  READ_WRITE 
GO
