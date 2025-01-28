-- 1. Genres Table
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);
INSERT INTO Genres (genre_id, genre_name)
VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Biography'),
(5, 'Comedy'),
(6, 'Crime'),
(7, 'Documentary'),
(8, 'Drama'),
(9, 'Family'),
(10, 'Fantasy'),
(11, 'Film-Noir'),
(12, 'History'),
(13, 'Horror'),
(14, 'Music'),
(15, 'Musical'),
(16, 'Mystery'),
(17, 'Romance'),
(18, 'Sci-Fi'),
(19, 'Sport'),
(20, 'Thriller'),
(21, 'War'),
(22, 'Western'),
(23, 'Action/Adventure'),
(24, 'Action/Comedy'),
(25, 'Adventure/Comedy'),
(26, 'Drama/Action'),
(27, 'Drama/Thriller'),
(28, 'Comedy/Drama'),
(29, 'Fantasy/Action'),
(30, 'Fantasy/Adventure'),
(31, 'Family/Comedy'),
(32, 'Animation/Action'),
(33, 'Animation/Adventure'),
(34, 'Action/Horror'),
(35, 'Drama/Romance'),
(36, 'Action/Thriller'),
(37, 'Adventure/Thriller'),
(38, 'Sci-Fi/Fantasy'),
(39, 'Romance/Comedy'),
(40, 'Mystery/Thriller'),
(41, 'Crime/Drama'),
(42, 'Crime/Thriller'),
(43, 'Horror/Thriller'),
(44, 'Music/Drama'),
(45, 'Documentary/Drama'),
(46, 'Musical/Comedy'),
(47, 'Sci-Fi/Action'),
(48, 'Sci-Fi/Thriller'),
(49, 'Romance/Drama'),
(50, 'Mystery/Comedy');
select * from Genres;

-- 2. Movies Table

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100) NOT NULL,
    genre_id INT,
    release_date DATE,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);
INSERT INTO Movies (movie_id, movie_name, genre_id, release_date)
VALUES
(1, 'Kaalaivanam', 1, '2025-01-01'),
(2, 'Thangam', 2, '2024-12-15'),
(3, 'Anbu Aram', 3, '2024-11-10'),
(4, 'Ezhil Mazhai', 4, '2024-10-01'),
(5, 'Vetri Kodi', 5, '2024-09-25'),
(6, 'Pudhiya Vaanam', 6, '2024-08-20'),
(7, 'Neruppu', 7, '2024-07-15'),
(8, 'Thulir', 8, '2024-06-30'),
(9, 'Singa Kaalai', 9, '2024-06-01'),
(10, 'Mounam Pesiyadhe', 10, '2024-05-22'),
(11, 'Vaanam Kottatum', 1, '2024-04-15'),
(12, 'Oru Naal Oru Kanavu', 2, '2024-03-30'),
(13, 'Idhayathai Thirudathe', 3, '2024-03-10'),
(14, 'Pachai Nirame', 4, '2024-02-25'),
(15, 'Azhagiya Tamil Magan', 5, '2024-01-12'),
(16, 'Thiruda Thiruda', 6, '2023-12-30'),
(17, 'Kaalam Kettupochu', 7, '2023-12-01'),
(18, 'Aayiram Nilave Vaa', 8, '2023-11-15'),
(19, 'Sandhana Kaatru', 9, '2023-10-20'),
(20, 'Punnagai Mannan', 10, '2023-09-10'),
(21, 'Ennavale', 1, '2023-08-05'),
(22, 'Kathal Kottai', 2, '2023-07-18'),
(23, 'Unnai Thedi', 3, '2023-06-22'),
(24, 'Mugamoodi', 4, '2023-05-30'),
(25, 'Raavanan', 5, '2023-05-01'),
(26, 'Sivappu Roja', 6, '2023-04-10'),
(27, 'Velaiyilla Pattathari', 7, '2023-03-25'),
(28, 'Puthu Kavithai', 8, '2023-03-01'),
(29, 'Kattradhu Thamizh', 9, '2023-02-12'),
(30, 'Aayutha Ezhuthu', 10, '2023-01-22'),
(31, 'Kannathil Muthamittal', 1, '2022-12-10'),
(32, 'Kandukondain Kandukondain', 2, '2022-11-15'),
(33, 'Raja Rani', 3, '2022-10-05'),
(34, 'O Kadhal Kanmani', 4, '2022-09-28'),
(35, 'Vettaiyaadu Vilaiyaadu', 5, '2022-08-19'),
(36, 'Jilla', 6, '2022-07-30'),
(37, 'Singam', 7, '2022-06-15'),
(38, 'Ko', 8, '2022-05-01'),
(39, 'Kaakha Kaakha', 9, '2022-04-20'),
(40, 'Ghajini', 10, '2022-03-10'),
(41, 'Thuppakki', 1, '2022-02-28'),
(42, 'Anniyan', 2, '2022-01-17'),
(43, 'Vaaranam Aayiram', 3, '2021-12-25'),
(44, 'Vishwaroopam', 4, '2021-11-10'),
(45, 'Iruvar', 5, '2021-10-05'),
(46, 'Mahanadhi', 6, '2021-09-18'),
(47, 'Deiva Thirumagal', 7, '2021-08-01'),
(48, 'Alaipayuthey', 8, '2021-07-15'),
(49, 'Roja', 9, '2021-06-20'),
(50, 'Bombay', 10, '2021-05-01');

select * from Movies;

-- 3. Users Table

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15)
);
INSERT INTO Users (user_id, username, email, phone_number)
VALUES
(1, 'Arun', 'arun@example.com', '123-456-7890'),
(2, 'Santhosh', 'santhosh@example.com', '234-567-8901'),
(3, 'Murugan', 'murugan@example.com', '345-678-9012'),
(4, 'Kumaran', 'kumaran@example.com', '456-789-0123'),
(5, 'Vignesh', 'vignesh@example.com', '567-890-1234'),
(6, 'Bharathi', 'bharathi@example.com', '678-901-2345'),
(7, 'Krishna', 'krishna@example.com', '789-012-3456'),
(8, 'Priya', 'priya@example.com', '890-123-4567'),
(9, 'Meena', 'meena@example.com', '901-234-5678'),
(10, 'Sundar', 'sundar@example.com', '012-345-6789'),
(11, 'Kalyani', 'kalyani@example.com', '123-456-7891'),
(12, 'Venkat', 'venkat@example.com', '234-567-8902'),
(13, 'Siva', 'siva@example.com', '345-678-9013'),
(14, 'Kavi', 'kavi@example.com', '456-789-0124'),
(15, 'Gopi', 'gopi@example.com', '567-890-1235'),
(16, 'Anbu', 'anbu@example.com', '678-901-2346'),
(17, 'Saravanan', 'saravanan@example.com', '789-012-3457'),
(18, 'Latha', 'latha@example.com', '890-123-4568'),
(19, 'Kalai', 'kalai@example.com', '901-234-5679'),
(20, 'Suba', 'suba@example.com', '012-345-6790'),
(21, 'Dhanush', 'dhanush@example.com', '123-456-7892'),
(22, 'Ranjani', 'ranjani@example.com', '234-567-8903'),
(23, 'Krithika', 'krithika@example.com', '345-678-9014'),
(24, 'Mohan', 'mohan@example.com', '456-789-0125'),
(25, 'Keerthi', 'keerthi@example.com', '567-890-1236'),
(26, 'Mala', 'mala@example.com', '678-901-2347'),
(27, 'Vijay', 'vijay@example.com', '789-012-3458'),
(28, 'Arulmozhi', 'arulmozhi@example.com', '890-123-4569'),
(29, 'Somu', 'somu@example.com', '901-234-5680'),
(30, 'Ravi', 'ravi@example.com', '012-345-6791'),
(31, 'Sandhya', 'sandhya@example.com', '123-456-7893'),
(32, 'Ramya', 'ramya@example.com', '234-567-8904'),
(33, 'Vasanth', 'vasanth@example.com', '345-678-9015'),
(34, 'Ajay', 'ajay@example.com', '456-789-0126'),
(35, 'Sugan', 'sugan@example.com', '567-890-1237'),
(36, 'Sudha', 'sudha@example.com', '678-901-2348'),
(37, 'Aruna', 'aruna@example.com', '789-012-3459'),
(38, 'Mani', 'mani@example.com', '890-123-4570'),
(39, 'Sundari', 'sundari@example.com', '901-234-5681'),
(40, 'Amudhan', 'amudhan@example.com', '012-345-6792'),
(41, 'Kathir', 'kathir@example.com', '123-456-7894'),
(42, 'Anjali', 'anjali@example.com', '234-567-8905'),
(43, 'Sathya', 'sathya@example.com', '345-678-9016'),
(44, 'Bala', 'bala@example.com', '456-789-0127'),
(45, 'Kalpana', 'kalpana@example.com', '567-890-1238'),
(46, 'Chandran', 'chandran@example.com', '678-901-2349'),
(47, 'Raja', 'raja@example.com', '789-012-3460'),
(48, 'Rekha', 'rekha@example.com', '890-123-4571'),
(49, 'Soma', 'soma@example.com', '901-234-5682'),
(50, 'Akila', 'akila@example.com', '012-345-6793');

select * from Users;

-- 4. Cinemas Table
CREATE TABLE Cinemas (
    cinema_id INT PRIMARY KEY ,
    cinema_name VARCHAR(100)
);
INSERT INTO Cinemas (cinema_id, cinema_name)
VALUES
(1, 'Cineworld Mall'),
(2, 'IMAX Theater'),
(3, 'Regal Cinemas'),
(4, 'PVR Cinemas'),
(5, 'Cinemark 16'),
(6, 'AMC Theaters'),
(7, 'Vue Cinemas'),
(8, 'Odeon Cinema'),
(9, 'Cineplex Entertainment'),
(10, 'Hoyts Cinemas'),
(11, 'CGV Cinemas'),
(12, 'Showcase Cinemas'),
(13, 'Cinepolis'),
(14, 'Landmark Theatres'),
(15, 'ArcLight Cinemas'),
(16, 'Kerasotes ShowPlace Theatres'),
(17, 'TCL Chinese Theatre'),
(18, 'Alamo Drafthouse Cinema'),
(19, 'Cinema City'),
(20, 'Golden Village'),
(21, 'Cinema 21'),
(22, 'MovieTowne Cinemas'),
(23, 'Big Picture Theater'),
(24, 'Belfast Movie House'),
(25, 'Cinemagic'),
(26, 'Palace Cinemas'),
(27, 'Sunshine Cinema'),
(28, 'Emax Cinemas'),
(29, 'Galaxy Cinemas'),
(30, 'Golden Screen Cinemas'),
(31, 'Cinemax Theaters'),
(32, 'Studio Movie Grill'),
(33, 'Cineworld Cinemas'),
(34, 'GSC Cinemas'),
(35, 'Vue West End'),
(36, 'Bow Tie Cinemas'),
(37, 'Arclight Hollywood'),
(38, 'Landmark Sunshine Cinema'),
(39, 'Sunset Cinemas'),
(40, 'Cinemagic 3D'),
(41, 'Sterling Cinemas'),
(42, 'Cinema Deluxe'),
(43, 'Cineplex Odeon'),
(44, 'Parkway Cinema'),
(45, 'Southside Cinema'),
(46, 'Cinecity'),
(47, 'Paradise Cinemas'),
(48, 'Empire Cinema'),
(49, 'The Screening Room'),
(50, 'Eastwood Cinema');
select * from Cinemas ;


-- 5. Theaters Table

CREATE TABLE Theaters (
    theater_id INT PRIMARY KEY,
    theater_name VARCHAR(100) NOT NULL,
    cinema_id INT,
    FOREIGN KEY (cinema_id) REFERENCES Cinemas(cinema_id)
);
INSERT INTO Theaters (theater_id, theater_name, cinema_id)
VALUES
(1, 'Galaxy Cinema', 1),
(2, 'Star Light Theater', 2),
(3, 'Grand Cineplex', 3),
(4, 'Empire Screens', 4),
(5, 'Majestic Movies', 5),
(6, 'CineWorld', 6),
(7, 'Silver Screens', 7),
(8, 'Dream Cinemas', 8),
(9, 'Infinity Theater', 9),
(10, 'Cosmo Cinema', 10),
(11, 'Prime Cineplex', 1),
(12, 'Vista Theater', 2),
(13, 'Epic Screens', 3),
(14, 'Nova Cinemas', 4),
(15, 'Pinnacle Theater', 5),
(16, 'Radiant Screens', 6),
(17, 'CineStar', 7),
(18, 'Aurora Cinema', 8),
(19, 'Regal Theater', 9),
(20, 'Orbit Cinemas', 10),
(21, 'CineMagic', 1),
(22, 'Skyline Theater', 2),
(23, 'Elite Screens', 3),
(24, 'CinePlanet', 4),
(25, 'Summit Cinema', 5),
(26, 'Beacon Screens', 6),
(27, 'Lumina Theater', 7),
(28, 'Harmony Cinemas', 8),
(29, 'Spectrum Theater', 9),
(30, 'Zenith Screens', 10),
(31, 'CineVista', 1),
(32, 'CineGlobe', 2),
(33, 'Radiance Theater', 3),
(34, 'Crystal Screens', 4),
(35, 'Eclipse Cinema', 5),
(36, 'CineHaven', 6),
(37, 'Mirage Theater', 7),
(38, 'Opulent Screens', 8),
(39, 'CineParadise', 9),
(40, 'Stellar Theater', 10),
(41, 'Aurora Screens', 1),
(42, 'CineShine', 2),
(43, 'Brilliance Cinema', 3),
(44, 'Regency Theater', 4),
(45, 'Vanguard Screens', 5),
(46, 'CineSphere', 6),
(47, 'Serenity Cinemas', 7),
(48, 'Polaris Theater', 8),
(49, 'Euphoria Screens', 9),
(50, 'Odyssey Cinemas', 10);
select * from Theaters;

-- 6. Seats Table

CREATE TABLE Seats (
    seat_id INT PRIMARY KEY,
    theater_id INT,
    seat_number INT NOT NULL,
    available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (theater_id) REFERENCES Theaters(theater_id)
);
INSERT INTO Seats (seat_id, theater_id, seat_number, available)
VALUES
(1, 1, 1, TRUE),
(2, 1, 2, TRUE),
(3, 1, 3, FALSE), -- Unavailable seat
(4, 1, 4, TRUE),
(5, 1, 5, FALSE), -- Unavailable seat
(6, 2, 1, TRUE),
(7, 2, 2, FALSE), -- Unavailable seat
(8, 2, 3, TRUE),
(9, 2, 4, TRUE),
(10, 2, 5, FALSE), -- Unavailable seat
(11, 3, 1, TRUE),
(12, 3, 2, TRUE),
(13, 3, 3, FALSE), -- Unavailable seat
(14, 3, 4, TRUE),
(15, 3, 5, TRUE),
(16, 4, 1, TRUE),
(17, 4, 2, TRUE),
(18, 4, 3, TRUE),
(19, 4, 4, FALSE), -- Unavailable seat
(20, 4, 5, TRUE),
(21, 5, 1, TRUE),
(22, 5, 2, TRUE),
(23, 5, 3, FALSE), -- Unavailable seat
(24, 5, 4, TRUE),
(25, 5, 5, TRUE),
(26, 6, 1, TRUE),
(27, 6, 2, FALSE), -- Unavailable seat
(28, 6, 3, TRUE),
(29, 6, 4, TRUE),
(30, 6, 5, TRUE),
(31, 7, 1, TRUE),
(32, 7, 2, TRUE),
(33, 7, 3, TRUE),
(34, 7, 4, FALSE), -- Unavailable seat
(35, 7, 5, TRUE),
(36, 8, 1, TRUE),
(37, 8, 2, TRUE),
(38, 8, 3, FALSE), -- Unavailable seat
(39, 8, 4, TRUE),
(40, 8, 5, TRUE),
(41, 9, 1, TRUE),
(42, 9, 2, TRUE),
(43, 9, 3, TRUE),
(44, 9, 4, FALSE), -- Unavailable seat
(45, 9, 5, TRUE),
(46, 10, 1, TRUE),
(47, 10, 2, FALSE), -- Unavailable seat
(48, 10, 3, TRUE),
(49, 10, 4, TRUE),
(50, 10, 5, TRUE);

select * from Seats;

-- 7. Showtimes Table

CREATE TABLE Showtimes (
    showtime_id INT PRIMARY KEY,
    movie_id INT,
    theater_id INT,
    showtime TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (theater_id) REFERENCES Theaters(theater_id)
);

INSERT INTO Showtimes (showtime_id, movie_id, theater_id, showtime)
VALUES
(1, 1, 1, '2025-01-01 10:00:00'),
(2, 2, 2, '2025-01-01 12:00:00'),
(3, 3, 3, '2025-01-01 14:00:00'),
(4, 4, 4, '2025-01-01 16:00:00'),
(5, 5, 5, '2025-01-01 18:00:00'),
(6, 6, 6, '2025-01-01 20:00:00'),
(7, 7, 7, '2025-01-02 10:00:00'),
(8, 8, 8, '2025-01-02 12:00:00'),
(9, 9, 9, '2025-01-02 14:00:00'),
(10, 10, 10, '2025-01-02 16:00:00'),
(11, 1, 1, '2025-01-02 18:00:00'),
(12, 2, 2, '2025-01-02 20:00:00'),
(13, 3, 3, '2025-01-03 10:00:00'),
(14, 4, 4, '2025-01-03 12:00:00'),
(15, 5, 5, '2025-01-03 14:00:00'),
(16, 6, 6, '2025-01-03 16:00:00'),
(17, 7, 7, '2025-01-03 18:00:00'),
(18, 8, 8, '2025-01-03 20:00:00'),
(19, 9, 9, '2025-01-04 10:00:00'),
(20, 10, 10, '2025-01-04 12:00:00'),
(21, 1, 2, '2025-01-04 14:00:00'),
(22, 2, 3, '2025-01-04 16:00:00'),
(23, 3, 4, '2025-01-04 18:00:00'),
(24, 4, 5, '2025-01-04 20:00:00'),
(25, 5, 6, '2025-01-05 10:00:00'),
(26, 6, 7, '2025-01-05 12:00:00'),
(27, 7, 8, '2025-01-05 14:00:00'),
(28, 8, 9, '2025-01-05 16:00:00'),
(29, 9, 10, '2025-01-05 18:00:00'),
(30, 10, 1, '2025-01-05 20:00:00'),
(31, 1, 2, '2025-01-06 10:00:00'),
(32, 2, 3, '2025-01-06 12:00:00'),
(33, 3, 4, '2025-01-06 14:00:00'),
(34, 4, 5, '2025-01-06 16:00:00'),
(35, 5, 6, '2025-01-06 18:00:00'),
(36, 6, 7, '2025-01-06 20:00:00'),
(37, 7, 8, '2025-01-07 10:00:00'),
(38, 8, 9, '2025-01-07 12:00:00'),
(39, 9, 10, '2025-01-07 14:00:00'),
(40, 10, 1, '2025-01-07 16:00:00'),
(41, 1, 2, '2025-01-07 18:00:00'),
(42, 2, 3, '2025-01-07 20:00:00'),
(43, 3, 4, '2025-01-08 10:00:00'),
(44, 4, 5, '2025-01-08 12:00:00'),
(45, 5, 6, '2025-01-08 14:00:00'),
(46, 6, 7, '2025-01-08 16:00:00'),
(47, 7, 8, '2025-01-08 18:00:00'),
(48, 8, 9, '2025-01-08 20:00:00'),
(49, 9, 10, '2025-01-09 10:00:00'),
(50, 10, 1, '2025-01-09 12:00:00');

select * from Showtimes;

-- 8. Reservations Table

CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    user_id INT,
    seat_id INT,
    showtime_id INT,
    reservation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id),
    FOREIGN KEY (showtime_id) REFERENCES Showtimes(showtime_id)
);


INSERT INTO Reservations (reservation_id, user_id, seat_id, showtime_id, reservation_time)
VALUES
(1, 1, 1, 1, '2025-01-01 09:00:00'),
(2, 2, 2, 2, '2025-01-01 11:00:00'),
(3, 3, 3, 3, '2025-01-01 13:00:00'),
(4, 4, 4, 4, '2025-01-01 15:00:00'),
(5, 5, 5, 5, '2025-01-01 17:00:00'),
(6, 6, 6, 6, '2025-01-01 19:00:00'),
(7, 7, 7, 7, '2025-01-02 09:00:00'),
(8, 8, 8, 8, '2025-01-02 11:00:00'),
(9, 9, 9, 9, '2025-01-02 13:00:00'),
(10, 10, 10, 10, '2025-01-02 15:00:00'),
(11, 1, 11, 11, '2025-01-02 17:00:00'),
(12, 2, 12, 12, '2025-01-02 19:00:00'),
(13, 3, 13, 13, '2025-01-03 09:00:00'),
(14, 4, 14, 14, '2025-01-03 11:00:00'),
(15, 5, 15, 15, '2025-01-03 13:00:00'),
(16, 6, 16, 16, '2025-01-03 15:00:00'),
(17, 7, 17, 17, '2025-01-03 17:00:00'),
(18, 8, 18, 18, '2025-01-03 19:00:00'),
(19, 9, 19, 19, '2025-01-04 09:00:00'),
(20, 10, 20, 20, '2025-01-04 11:00:00'),
(21, 1, 21, 21, '2025-01-04 13:00:00'),
(22, 2, 22, 22, '2025-01-04 15:00:00'),
(23, 3, 23, 23, '2025-01-04 17:00:00'),
(24, 4, 24, 24, '2025-01-04 19:00:00'),
(25, 5, 25, 25, '2025-01-05 09:00:00'),
(26, 6, 26, 26, '2025-01-05 11:00:00'),
(27, 7, 27, 27, '2025-01-05 13:00:00'),
(28, 8, 28, 28, '2025-01-05 15:00:00'),
(29, 9, 29, 29, '2025-01-05 17:00:00'),
(30, 10, 30, 30, '2025-01-05 19:00:00'),
(31, 1, 31, 31, '2025-01-06 09:00:00'),
(32, 2, 32, 32, '2025-01-06 11:00:00'),
(33, 3, 33, 33, '2025-01-06 13:00:00'),
(34, 4, 34, 34, '2025-01-06 15:00:00'),
(35, 5, 35, 35, '2025-01-06 17:00:00'),
(36, 6, 36, 36, '2025-01-06 19:00:00'),
(37, 7, 37, 37, '2025-01-07 09:00:00'),
(38, 8, 38, 38, '2025-01-07 11:00:00'),
(39, 9, 39, 39, '2025-01-07 13:00:00'),
(40, 10, 40, 40, '2025-01-07 15:00:00'),
(41, 1, 41, 41, '2025-01-07 17:00:00'),
(42, 2, 42, 42, '2025-01-07 19:00:00'),
(43, 3, 43, 43, '2025-01-08 09:00:00'),
(44, 4, 44, 44, '2025-01-08 11:00:00'),
(45, 5, 45, 45, '2025-01-08 13:00:00'),
(46, 6, 46, 46, '2025-01-08 15:00:00'),
(47, 7, 47, 47, '2025-01-08 17:00:00'),
(48, 8, 48, 48, '2025-01-08 19:00:00'),
(49, 9, 49, 49, '2025-01-09 09:00:00'),
(50, 10, 50, 50, '2025-01-09 11:00:00');
select * from Reservations;

-- 9. Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    reservation_id INT,
    amount DECIMAL(10, 2),
    payment_status VARCHAR(50),
    payment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id)
);
INSERT INTO Payments (payment_id, reservation_id, amount, payment_status, payment_time)
VALUES
(1, 1, 15.50, 'Paid', '2025-01-01 09:15:00'),
(2, 2, 20.00, 'Paid', '2025-01-01 11:15:00'),
(3, 3, 18.75, 'Unpaid', NULL),
(4, 4, 22.00, 'Paid', '2025-01-01 15:15:00'),
(5, 5, 19.50, 'Unpaid', NULL),
(6, 6, 21.00, 'Paid', '2025-01-01 19:15:00'),
(7, 7, 17.25, 'Paid', '2025-01-02 09:15:00'),
(8, 8, 16.00, 'Unpaid', NULL),
(9, 9, 23.00, 'Paid', '2025-01-02 13:15:00'),
(10, 10, 20.00, 'Paid', '2025-01-02 15:15:00'),
(11, 11, 18.00, 'Paid', '2025-01-02 17:15:00'),
(12, 12, 19.75, 'Unpaid', NULL),
(13, 13, 21.50, 'Paid', '2025-01-03 09:15:00'),
(14, 14, 22.25, 'Paid', '2025-01-03 11:15:00'),
(15, 15, 18.30, 'Paid', '2025-01-03 13:15:00'),
(16, 16, 19.80, 'Paid', '2025-01-03 15:15:00'),
(17, 17, 17.40, 'Paid', '2025-01-03 17:15:00'),
(18, 18, 20.50, 'Unpaid', NULL),
(19, 19, 18.95, 'Paid', '2025-01-04 09:15:00'),
(20, 20, 22.40, 'Paid', '2025-01-04 11:15:00'),
(21, 21, 16.25, 'Paid', '2025-01-04 13:15:00'),
(22, 22, 21.75, 'Unpaid', NULL),
(23, 23, 19.00, 'Paid', '2025-01-04 17:15:00'),
(24, 24, 22.10, 'Paid', '2025-01-04 19:15:00'),
(25, 25, 20.60, 'Paid', '2025-01-05 09:15:00'),
(26, 26, 21.10, 'Paid', '2025-01-05 11:15:00'),
(27, 27, 17.50, 'Paid', '2025-01-05 13:15:00'),
(28, 28, 19.90, 'Unpaid', NULL),
(29, 29, 18.20, 'Paid', '2025-01-05 17:15:00'),
(30, 30, 20.30, 'Paid', '2025-01-05 19:15:00'),
(31, 31, 21.00, 'Paid', '2025-01-06 09:15:00'),
(32, 32, 23.50, 'Paid', '2025-01-06 11:15:00'),
(33, 33, 19.60, 'Paid', '2025-01-06 13:15:00'),
(34, 34, 18.30, 'Paid', '2025-01-06 15:15:00'),
(35, 35, 20.70, 'Unpaid', NULL),
(36, 36, 22.40, 'Paid', '2025-01-06 19:15:00'),
(37, 37, 17.80, 'Paid', '2025-01-07 09:15:00'),
(38, 38, 20.00, 'Paid', '2025-01-07 11:15:00'),
(39, 39, 21.20, 'Paid', '2025-01-07 13:15:00'),
(40, 40, 22.10, 'Unpaid', NULL),
(41, 41, 19.40, 'Paid', '2025-01-07 17:15:00'),
(42, 42, 20.70, 'Paid', '2025-01-07 19:15:00'),
(43, 43, 21.10, 'Paid', '2025-01-08 09:15:00'),
(44, 44, 19.80, 'Paid', '2025-01-08 11:15:00'),
(45, 45, 22.50, 'Paid', '2025-01-08 13:15:00'),
(46, 46, 20.40, 'Unpaid', NULL),
(47, 47, 21.30, 'Paid', '2025-01-08 17:15:00'),
(48, 48, 18.50, 'Paid', '2025-01-08 19:15:00'),
(49, 49, 23.20, 'Paid', '2025-01-09 09:15:00'),
(50, 50, 19.60, 'Paid', '2025-01-09 11:15:00');

select * from Payments;

-- 10. Ticket Types Table

CREATE TABLE Ticket_Types (
    ticket_type_id INT PRIMARY KEY,
    type_name VARCHAR(50),
    price DECIMAL(10, 2)
);
INSERT INTO Ticket_Types (ticket_type_id, type_name, price)
VALUES
(1, 'Regular', 10.00),
(2, 'Student', 8.00),
(3, 'Senior', 7.50),
(4, 'VIP', 20.00),
(5, '3D', 12.00),
(6, 'IMAX', 18.00),
(7, 'VIP 3D', 25.00),
(8, 'Matinee', 6.00),
(9, 'Evening', 12.50),
(10, 'Family Pack', 30.00),
(11, 'Early Bird', 9.00),
(12, 'Late Night', 11.00),
(13, 'Group Discount', 8.50),
(14, 'Student 3D', 10.50),
(15, 'Senior 3D', 9.50),
(16, 'Child', 5.00),
(17, 'Couple Ticket', 18.00),
(18, 'Weekend Special', 14.00),
(19, 'Holiday Special', 16.00),
(20, 'Birthday Special', 20.00),
(21, 'Couple VIP', 35.00),
(22, 'Group VIP', 45.00),
(23, 'Military Discount', 7.00),
(24, 'Corporate Ticket', 12.00),
(25, 'Membership Ticket', 15.00),
(26, 'Charity Fundraiser', 25.00),
(27, 'Limited Edition', 30.00),
(28, 'Gold Pass', 50.00),
(29, 'Platinum Pass', 75.00),
(30, 'Student VIP', 18.00),
(31, 'Senior VIP', 17.50),
(32, 'VIP 2D', 22.00),
(33, 'IMAX 3D', 20.00),
(34, '3D Weekend', 14.00),
(35, 'Premium Seating', 22.50),
(36, 'Luxury Seating', 30.00),
(37, '2-for-1 Offer', 12.00),
(38, 'Exclusive Event', 40.00),
(39, 'Private Screening', 100.00),
(40, 'Festive Offer', 17.00),
(41, 'Holiday VIP', 25.00),
(42, 'New Release Special', 18.00),
(43, 'Discounted Ticket', 9.00),
(44, 'Flash Sale', 8.00),
(45, 'Midnight Screening', 13.00),
(46, 'Festival Pass', 60.00),
(47, 'Student Weekend', 10.00),
(48, 'Senior Weekend', 11.00),
(49, 'Family VIP', 40.00),
(50, 'Golden Ticket', 100.00);
select * from Ticket_Types;

-- -- Logical Questions:
--  1. List the names of all movies available in the system.

SELECT movie_name FROM Movies;

-- 2. Find the details of all users who have made a reservation.

SELECT DISTINCT u.user_id, u.username, u.email, u.phone_number
FROM Users u
JOIN Reservations r ON u.user_id = r.user_id;

-- 3. List all the showtimes for a particular movie (e.g., movie_id = 1).

SELECT s.showtime, t.theater_name, c.cinema_name
FROM Showtimes s
JOIN Theaters t ON s.theater_id = t.theater_id
JOIN Cinemas c ON t.cinema_id = c.cinema_id
WHERE s.movie_id = 1;


-- 4. Find the total revenue generated from a specific reservation (e.g., reservation_id = 5).

SELECT p.amount
FROM Payments p
JOIN Reservations r ON p.reservation_id = r.reservation_id
WHERE r.reservation_id = 5;

-- 5. Show all reservations made by a particular user (e.g., user_id = 3).

SELECT r.reservation_id, r.reservation_time, s.showtime, m.movie_name, t.theater_name
FROM Reservations r
JOIN Showtimes s ON r.showtime_id = s.showtime_id
JOIN Movies m ON s.movie_id = m.movie_id
JOIN Theaters t ON s.theater_id = t.theater_id
WHERE r.user_id = 3;

-- 6. Find the most popular movie (movie with the highest number of reservations).

SELECT m.movie_name, COUNT(r.reservation_id) AS reservation_count
FROM Movies m
JOIN Showtimes s ON m.movie_id = s.movie_id
JOIN Reservations r ON s.showtime_id = r.showtime_id
GROUP BY m.movie_name
ORDER BY reservation_count DESC
LIMIT 1;

-- 7. List all seat numbers that are available for a specific showtime (e.g., showtime_id = 10).

SELECT seat_number
FROM Seats
WHERE available = TRUE
AND theater_id = (SELECT theater_id FROM Showtimes WHERE showtime_id = 10);

-- 8. Find the total number of available seats in a specific theater (e.g., theater_id = 2).

SELECT COUNT(seat_id) AS available_seats
FROM Seats
WHERE available = TRUE
AND theater_id = 2;

-- 9. List the total revenue generated for a particular movie (e.g., movie_id = 3).

SELECT SUM(p.amount) AS total_revenue
FROM Payments p
JOIN Reservations r ON p.reservation_id = r.reservation_id
JOIN Showtimes s ON r.showtime_id = s.showtime_id
WHERE s.movie_id = 3;

-- 10. Show all available seats for a given showtime (e.g., showtime_id = 15).

SELECT seat_number
FROM Seats
WHERE available = TRUE
AND theater_id = (SELECT theater_id FROM Showtimes WHERE showtime_id = 15);

-- 11. Find the reservation details (movie, showtime, and seat) for a user who has paid for a ticket

SELECT m.movie_name, s.showtime, t.theater_name, se.seat_number, p.amount, p.payment_status
FROM Payments p
JOIN Reservations r ON p.reservation_id = r.reservation_id
JOIN Showtimes s ON r.showtime_id = s.showtime_id
JOIN Movies m ON s.movie_id = m.movie_id
JOIN Theaters t ON s.theater_id = t.theater_id
JOIN Seats se ON r.seat_id = se.seat_id
WHERE r.user_id = 6 ;


-- 12. Show all the ticket types and their prices.

SELECT type_name, price
FROM Ticket_Types;

-- 13. List all the movies in a specific genre (e.g., genre_id = 2).

SELECT m.movie_name
FROM Movies m
JOIN Genres g ON m.genre_id = g.genre_id
WHERE g.genre_id = 2;

-- 14. Calculate the total number of tickets sold for a specific movie (e.g., movie_id = 6).

SELECT COUNT(r.reservation_id) AS tickets_sold
FROM Reservations r
JOIN Showtimes s ON r.showtime_id = s.showtime_id
WHERE s.movie_id = 6;

-- 15. Find the total amount paid by a specific user (e.g., user_id = 5).

SELECT SUM(p.amount) AS total_paid
FROM Payments p
JOIN Reservations r ON p.reservation_id = r.reservation_id
WHERE r.user_id = 5;

-- 16. Find all movies that have 3D showtimes.

SELECT DISTINCT m.movie_name
FROM Movies m
JOIN Showtimes s ON m.movie_id = s.movie_id
WHERE s.showtime_id IN (SELECT showtime_id FROM Showtimes WHERE movie_id = m.movie_id AND showtime_id IN (SELECT showtime_id FROM Showtimes WHERE movie_id = m.movie_id));

-- 17. List all the available movie theaters and the movies playing in them.

SELECT t.theater_name, m.movie_name
FROM Theaters t
JOIN Showtimes s ON t.theater_id = s.theater_id
JOIN Movies m ON s.movie_id = m.movie_id;


-- 18. Show all reservations that were made for a specific cinema (e.g., cinema_id = 3).

SELECT r.reservation_id, r.reservation_time, m.movie_name, s.showtime
FROM Reservations r
JOIN Showtimes s ON r.showtime_id = s.showtime_id
JOIN Movies m ON s.movie_id = m.movie_id
JOIN Theaters t ON s.theater_id = t.theater_id
JOIN Cinemas c ON t.cinema_id = c.cinema_id
WHERE c.cinema_id = 3;

-- 19. List all users who have reserved seats for a specific movie (e.g., movie_id = 7).

SELECT DISTINCT u.username, u.email
FROM Users u
JOIN Reservations r ON u.user_id = r.user_id
JOIN Showtimes s ON r.showtime_id = s.showtime_id
WHERE s.movie_id = 5;

-- 20. Find the most popular cinema (the cinema with the highest number of reservations).

SELECT c.cinema_name, COUNT(r.reservation_id) AS reservation_count
FROM Cinemas c
JOIN Theaters t ON c.cinema_id = t.cinema_id
JOIN Showtimes s ON t.theater_id = s.theater_id
JOIN Reservations r ON s.showtime_id = r.showtime_id
GROUP BY c.cinema_name
ORDER BY reservation_count DESC
LIMIT 4;
