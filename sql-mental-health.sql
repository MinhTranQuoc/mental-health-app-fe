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
('The Silent Warrior', 35, '2023-09-01', 1, 'https://picsum.photos/200/300?random=1', 'https://picsum.photos/200/300?random=1'),
('Whispers of the Wind', 42, '2023-09-05', 0, 'https://picsum.photos/200/300?random=2', 'https://picsum.photos/200/300?random=2'),
('Tales of the Forgotten', 12, '2023-09-10', 0, 'https://picsum.photos/200/300?random=3', 'https://picsum.photos/200/300?random=3'),
('The Dragon\'s Lair', 75, '2023-09-12', 1, 'https://picsum.photos/200/300?random=4', 'https://picsum.photos/200/300?random=4'),
('Moonlight Mysteries', 28, '2023-09-15', 0, 'https://picsum.photos/200/300?random=5', 'https://picsum.photos/200/300?random=5'),
('Echoes of the Past', 60, '2023-09-18', 1, 'https://picsum.photos/200/300?random=6', 'https://picsum.photos/200/300?random=6'),
('Shadows in the Mist', 19, '2023-09-20', 0, 'https://picsum.photos/200/300?random=7', 'https://picsum.photos/200/300?random=7'),
('The Lost Kingdom', 50, '2023-09-22', 1, 'https://picsum.photos/200/300?random=8', 'https://picsum.photos/200/300?random=8'),
('Journey Beyond the Stars', 85, '2023-09-25', 1, 'https://picsum.photos/200/300?random=9', 'https://picsum.photos/200/300?random=9'),
('A Dance with Destiny', 10, '2023-09-28', 0, 'https://picsum.photos/200/300?random=10', 'https://picsum.photos/200/300?random=10'),
('The Phoenix\'s Rise', 32, '2023-09-30', 0, 'https://picsum.photos/200/300?random=11', 'https://picsum.photos/200/300?random=11'),
('Winds of Change', 45, '2023-10-01', 1, 'https://picsum.photos/200/300?random=12', 'https://picsum.photos/200/300?random=12'),
('Beneath the Waves', 21, '2023-10-03', 0, 'https://picsum.photos/200/300?random=13', 'https://picsum.photos/200/300?random=13'),
('The Forgotten City', 67, '2023-10-05', 1, 'https://picsum.photos/200/300?random=14', 'https://picsum.photos/200/300?random=14'),
('A Tale of Two Worlds', 53, '2023-10-07', 1, 'https://picsum.photos/200/300?random=15', 'https://picsum.photos/200/300?random=15'),
('The Iron Throne', 22, '2023-10-10', 0, 'https://picsum.photos/200/300?random=16', 'https://picsum.photos/200/300?random=16'),
('Rising Shadows', 48, '2023-10-12', 1, 'https://picsum.photos/200/300?random=17', 'https://picsum.photos/200/300?random=17'),
('The Eternal Flame', 39, '2023-10-14', 1, 'https://picsum.photos/200/300?random=18', 'https://picsum.photos/200/300?random=18'),
('Valley of the Kings', 14, '2023-10-15', 0, 'https://picsum.photos/200/300?random=19', 'https://picsum.photos/200/300?random=19'),
('Whispers of Fate', 25, '2023-10-17', 0, 'https://picsum.photos/200/300?random=20', 'https://picsum.photos/200/300?random=20'),
('Echoes of Eternity', 68, '2023-10-20', 1, 'https://picsum.photos/200/300?random=21', 'https://picsum.photos/200/300?random=21'),
('Path of the Warrior', 30, '2023-10-22', 0, 'https://picsum.photos/200/300?random=22', 'https://picsum.photos/200/300?random=22'),
('The Crimson Moon', 18, '2023-10-24', 0, 'https://picsum.photos/200/300?random=23', 'https://picsum.photos/200/300?random=23'),
('Legends of the Deep', 72, '2023-10-26', 1, 'https://picsum.photos/200/300?random=24', 'https://picsum.photos/200/300?random=24'),
('Beyond the Horizon', 11, '2023-10-27', 0, 'https://picsum.photos/200/300?random=25', 'https://picsum.photos/200/300?random=25'),
('The King\'s Gambit', 56, '2023-10-29', 1, 'https://picsum.photos/200/300?random=26', 'https://picsum.photos/200/300?random=26'),
('Shattered Dreams', 41, '2023-10-31', 1, 'https://picsum.photos/200/300?random=27', 'https://picsum.photos/200/300?random=27'),
('The Last Crusade', 35, '2023-11-02', 0, 'https://picsum.photos/200/300?random=28', 'https://picsum.photos/200/300?random=28'),
('Heart of the Forest', 49, '2023-11-04', 1, 'https://picsum.photos/200/300?random=29', 'https://picsum.photos/200/300?random=29'),
('The Final Frontier', 55, '2023-11-05', 1, 'https://picsum.photos/200/300?random=30', 'https://picsum.photos/200/300?random=30'),
('The Mystic Lands', 13, '2023-11-07', 0, 'https://picsum.photos/200/300?random=31', 'https://picsum.photos/200/300?random=31'),
('Rise of the Fallen', 61, '2023-11-08', 1, 'https://picsum.photos/200/300?random=32', 'https://picsum.photos/200/300?random=32'),
('Chronicles of the Brave', 20, '2023-11-10', 0, 'https://picsum.photos/200/300?random=33', 'https://picsum.photos/200/300?random=33'),
('The Storm\'s Call', 52, '2023-11-12', 1, 'https://picsum.photos/200/300?random=34', 'https://picsum.photos/200/300?random=34'),
('The Dark Tower', 70, '2023-11-13', 1, 'https://picsum.photos/200/300?random=35', 'https://picsum.photos/200/300?random=35'),
('Voices from the Abyss', 27, '2023-11-15', 0, 'https://picsum.photos/200/300?random=36', 'https://picsum.photos/200/300?random=36'),
('Embers of Time', 44, '2023-11-17', 1, 'https://picsum.photos/200/300?random=37', 'https://picsum.photos/200/300?random=37'),
('The Guardian\'s Oath', 37, '2023-11-19', 0, 'https://picsum.photos/200/300?random=38', 'https://picsum.photos/200/300?random=38'),
('Fires of the North', 16, '2023-11-21', 0, 'https://picsum.photos/200/300?random=39', 'https://picsum.photos/200/300?random=39'),
('The Crystal Maze', 66, '2023-11-22', 1, 'https://picsum.photos/200/300?random=40', 'https://picsum.photos/200/300?random=40'),
('Kingdoms of Sand', 29, '2023-11-24', 0, 'https://picsum.photos/200/300?random=41', 'https://picsum.photos/200/300?random=41'),
('The Forsaken Crown', 47, '2023-11-26', 1, 'https://picsum.photos/200/300?random=42', 'https://picsum.photos/200/300?random=42'),
('The Lunar Chronicles', 40, '2023-11-28', 1, 'https://picsum.photos/200/300?random=43', 'https://picsum.photos/200/300?random=43'),
('Shadow of the Empire', 24, '2023-11-30', 0, 'https://picsum.photos/200/300?random=44', 'https://picsum.photos/200/300?random=44'),
('Tales of the Wanderer', 59, '2023-12-01', 1, 'https://picsum.photos/200/300?random=45', 'https://picsum.photos/200/300?random=45'),
('The Enchanted Grove', 12, '2023-12-03', 0, 'https://picsum.photos/200/300?random=46', 'https://picsum.photos/200/300?random=46'),
('Call of the Ancients', 63, '2023-12-05', 1, 'https://picsum.photos/200/300?random=47', 'https://picsum.photos/200/300?random=47'),
('The Warrior\'s Path', 38, '2023-12-07', 0, 'https://picsum.photos/200/300?random=48', 'https://picsum.photos/200/300?random=48'),
('The Silver Throne', 54, '2023-12-09', 1, 'https://picsum.photos/200/300?random=49', 'https://picsum.photos/200/300?random=49'),
('Legends of the Horizon', 33, '2023-12-10', 0, 'https://picsum.photos/200/300?random=50', 'https://picsum.photos/200/300?random=50'),
('The Hidden Empire', 62, '2023-11-06', 1, 'https://picsum.photos/200/300?random=31', 'https://picsum.photos/200/300?random=31'),
('Songs of the Night', 27, '2023-11-08', 0, 'https://picsum.photos/200/300?random=32', 'https://picsum.photos/200/300?random=32'),
('The Dark Tides', 33, '2023-11-09', 0, 'https://picsum.photos/200/300?random=33', 'https://picsum.photos/200/300?random=33'),
('The Mystic Quest', 50, '2023-11-10', 1, 'https://picsum.photos/200/300?random=34', 'https://picsum.photos/200/300?random=34'),
('Shadow of the Ancients', 46, '2023-11-12', 1, 'https://picsum.photos/200/300?random=35', 'https://picsum.photos/200/300?random=35'),
('The Icebound Throne', 15, '2023-11-13', 0, 'https://picsum.photos/200/300?random=36', 'https://picsum.photos/200/300?random=36'),
('The Celestial Realm', 77, '2023-11-15', 1, 'https://picsum.photos/200/300?random=37', 'https://picsum.photos/200/300?random=37'),
('Tales from the Abyss', 38, '2023-11-16', 0, 'https://picsum.photos/200/300?random=38', 'https://picsum.photos/200/300?random=38'),
('Whispers of the Stars', 23, '2023-11-17', 0, 'https://picsum.photos/200/300?random=39', 'https://picsum.photos/200/300?random=39'),
('The Warrior\'s Path', 64, '2023-11-19', 1, 'https://picsum.photos/200/300?random=40', 'https://picsum.photos/200/300?random=40'),
('The Kingdom of Ashes', 58, '2023-11-21', 1, 'https://picsum.photos/200/300?random=41', 'https://picsum.photos/200/300?random=41'),
('The Flame of Destiny', 36, '2023-11-22', 0, 'https://picsum.photos/200/300?random=42', 'https://picsum.photos/200/300?random=42'),
('Wings of the Storm', 40, '2023-11-24', 1, 'https://picsum.photos/200/300?random=43', 'https://picsum.photos/200/300?random=43'),
('Secrets of the Void', 18, '2023-11-25', 0, 'https://picsum.photos/200/300?random=44', 'https://picsum.photos/200/300?random=44'),
('Beyond the Shadows', 61, '2023-11-26', 1, 'https://picsum.photos/200/300?random=45', 'https://picsum.photos/200/300?random=45'),
('The Lost Prophecy', 28, '2023-11-28', 0, 'https://picsum.photos/200/300?random=46', 'https://picsum.photos/200/300?random=46'),
('The Forsaken Realm', 57, '2023-11-29', 1, 'https://picsum.photos/200/300?random=47', 'https://picsum.photos/200/300?random=47'),
('Rise of the Guardians', 31, '2023-12-01', 0, 'https://picsum.photos/200/300?random=48', 'https://picsum.photos/200/300?random=48'),
('Shadows of the Forgotten', 44, '2023-12-03', 1, 'https://picsum.photos/200/300?random=49', 'https://picsum.photos/200/300?random=49'),
('The Darkest Hour', 70, '2023-12-05', 1, 'https://picsum.photos/200/300?random=50', 'https://picsum.photos/200/300?random=50');




create table reader (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    avatar VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    reader_name VARCHAR(255) NOT NULL
);
ALTER TABLE reader
ADD COLUMN reader_name VARCHAR(255) NOT NULL;
INSERT INTO reader (user_name, password, avatar) VALUES ('testuser', '$2a$10$somehashedpasswordvalue', 'default-avatar.png');
