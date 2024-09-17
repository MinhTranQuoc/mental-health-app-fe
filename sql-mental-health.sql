create database mental_health;

use  mental_health;

CREATE TABLE novel (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    chapter BIGINT NOT NULL,
    updated VARCHAR(50) NOT NULL,
    is_hot TINYINT(1) NOT NULL DEFAULT 0,
    avatar VARCHAR(255) NOT NULL,
    img VARCHAR(1000) NOT NULL
);


INSERT INTO novel (title, chapter, updated, is_hot, avatar, img) VALUES
('Chiến Tranh Các Vì Sao', 1151, '3 Ngày Trước', TRUE, 'https://p16-va.lemon8cdn.com/tos-alisg-v-a3e477-sg/ooAiJHAPiuAwZlBExQPA3qBBaYbI7mV6Rkgsv~tplv-tej9nj120t-origin.webp', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Cuộc Chiến Không Ngừng', 1152, '3 Ngày Trước', TRUE, 'https://example.com/avatar28.jpg', 'https://vcdn1-dulich.vnecdn.net/2021/07/16/1-1626437591.jpg?w=460&h=0&q=100&dpr=2&fit=crop&s=i2M2IgCcw574LT-bXFY92g'),
('Huyền Thoại Của Những Chiến Binh', 1153, '3 Ngày Trước', TRUE, 'https://p16-va.lemon8cdn.com/tos-alisg-v-a3e477-sg/ooAiJHAPiuAwZlBExQPA3qBBaYbI7mV6Rkgsv~tplv-tej9nj120t-origin.webp', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Hành Trình Tìm Kiếm', 1154, '3 Ngày Trước', TRUE, 'https://example.com/avatar30.jpg', 'https://img.wattpad.com/cover/280248663-256-k9327.jpg'),
('Cuộc Phiêu Lưu Đầy Kịch Tính', 1155, '3 Ngày Trước', TRUE, 'https://example.com/avatar31.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Những Bí Ẩn Của Vũ Trụ', 1156, '3 Ngày Trước', TRUE, 'https://example.com/avatar32.jpg', 'https://img.wattpad.com/cover/280248663-256-k9327.jpg'),
('Vương Quốc Bí Mật', 1157, '3 Ngày Trước', TRUE, 'https://example.com/avatar33.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Chiến Binh Của Ngọn Lửa', 1158, '3 Ngày Trước', TRUE, 'https://p16-va.lemon8cdn.com/tos-alisg-v-a3e477-sg/ooAiJHAPiuAwZlBExQPA3qBBaYbI7mV6Rkgsv~tplv-tej9nj120t-origin.webp', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Những Huyền Thoại Chưa Kể', 1159, '3 Ngày Trước', TRUE, 'https://example.com/avatar35.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Cuộc Đua Đến Vinh Quang', 1160, '3 Ngày Trước', TRUE, 'https://example.com/avatar36.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Những Người Được Chọn', 1161, '3 Ngày Trước', TRUE, 'https://example.com/avatar37.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Hành Trình Vượt Thời Gian', 1162, '3 Ngày Trước', TRUE, 'https://example.com/avatar38.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Vùng Đất Của Những Thần Thoại', 1163, '3 Ngày Trước', TRUE, 'https://example.com/avatar39.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Cuộc Chiến Của Những Anh Hùng', 1164, '3 Ngày Trước', TRUE, 'https://example.com/avatar40.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Huyền Thoại Của Những Cỗ Máy', 1165, '3 Ngày Trước', TRUE, 'https://example.com/avatar41.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Cuộc Phiêu Lưu Vượt Biên Giới', 1166, '3 Ngày Trước', TRUE, 'https://example.com/avatar42.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Những Bí Ẩn Của Hành Tinh', 1167, '3 Ngày Trước', TRUE, 'https://example.com/avatar43.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Vương Quốc Đã Mất', 1168, '3 Ngày Trước', TRUE, 'https://example.com/avatar44.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Những Cuộc Đua Mạo Hiểm', 1169, '3 Ngày Trước', TRUE, 'https://example.com/avatar45.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg'),
('Chiến Binh Của Sáng Thế', 1170, '3 Ngày Trước', TRUE, 'https://example.com/avatar46.jpg', 'https://img.wattpad.com/cover/186401212-256-k923164.jpg');

create table reader (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    avatar VARCHAR(255) NOT NULL
);
ALTER TABLE reader
ADD COLUMN role VARCHAR(255) NOT NULL;
INSERT INTO reader (user_name, password, avatar) VALUES ('testuser', '$2a$10$somehashedpasswordvalue', 'default-avatar.png');
