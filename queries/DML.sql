

-- 관리자 데이터 추가
INSERT INTO `manager` (`name`, `registration_number`, `phone_number`, `experience`, `work`, `contract_start`, `contract_end`, `status`) 
VALUES 
('윤지용', '12345', '123-4567-8901', '경력', '기수', '2023-01-01', '2023-12-31', '근무'),
('배소영', '67890', '987-6543-2109', '신입', '야간', '2023-02-01', '2023-11-30', '근무'),
('김영광', '54321', '567-8901-2345', '경력', '상담', '2023-03-01', '2023-10-31', '연차'),
('김종원', '98765', '432-1098-7654', '신입', '기수', '2023-04-01', '2023-09-30', '휴직'),
('이원태', '13579', '876-5432-1098', '경력', '야간', '2023-05-01', '2023-08-31', '퇴직');

-- 학생 데이터 추가
INSERT INTO `student` (`name`, `registration_number`, `phone_number`, `address`, `email`, `major`, `generation`, `status`, `manager_id`) 
VALUES 
('신유정', '11111', '111-1111-1111', '123 Street, City', 'student1@example.com', '전공', '2023', '수강', 1),
('정세한', '22222', '222-2222-2222', '456 Avenue, City', 'student2@example.com', '비전공', '2022', '졸업', 2),
('권도훈', '33333', '333-3333-3333', '789 Road, City', 'student3@example.com', '전공', '2023', '수강', 3),
('김선국', '44444', '444-4444-4444', '321 Lane, City', 'student4@example.com', '비전공', '2022', '졸업', 4),
('박세종', '55555', '555-5555-5555', '654 Boulevard, City', 'student5@example.com', '전공', '2023', '수강', 5);

-- 강사 데이터 추가
INSERT INTO `teacher` (`name`, `registration_number`, `phone_number`, `address`, `email`, `experience`, `salary`, `contract_start`, `contract_end`, `status`) 
VALUES 
('제프 베조스', '11111', '111-1111-1111', '123 Street, City', 'teacher1@example.com', '경력', 50000, '2023-01-01', '2023-12-31', '등록'),
('일론 머스크', '22222', '222-2222-2222', '456 Avenue, City', 'teacher2@example.com', '신입', 60000, '2023-02-01', '2023-11-30', '휴직'),
('리누스 토르발스', '33333', '333-3333-3333', '789 Road, City', 'teacher3@example.com', '경력', 55000, '2023-03-01', '2023-10-31', '계약종료'),
('빌 게이츠', '44444', '444-4444-4444', '321 Lane, City', 'teacher4@example.com', '신입', 62000, '2023-04-01', '2023-09-30', '등록'),
('마크 저커버그', '55555', '555-5555-5555', '654 Boulevard, City', 'teacher5@example.com', '경력', 53000, '2023-05-01', '2023-08-31', '계약종료');

-- 도서 데이터 추가
INSERT INTO `book` (`manager_id`, `student_id`, `name`, `rental_date`, `return_date`) 
VALUES 
(1, 1, '미움받을 용기', '2023-01-01', '2023-02-01'),
(2, 2, 'Secret', '2023-02-01', '2023-03-01'),
(3, 3, '무소유', '2023-03-01', '2023-04-01'),
(4, 4, '너도 할 수 있어 스프링!', '2023-04-01', '2023-05-01'),
(5, 5, '깃허브 하루만에 정복하기', '2023-05-01', '2023-06-01');

-- 수업 데이터 추가
INSERT INTO `class` (`teacher_id`, `name`, `start_time`, `end_time`) 
VALUES 
(1, '이틀만에 뚝딱 리눅스', '2023-01-01 10:00:00', '2023-01-01 12:00:00'),
(2, '깃 A to Z', '2023-02-01 14:00:00', '2023-02-01 16:00:00'),
(3, 'Zero Base Java', '2023-03-01 09:00:00', '2023-03-01 11:00:00'),
(4, 'DB 간단 정복', '2023-04-01 13:00:00', '2023-04-01 15:00:00'),
(5, '웹 서비스 구축으로 배우는 스프링', '2023-05-01 11:00:00', '2023-05-01 13:00:00');

-- 강의실 데이터 추가
INSERT INTO `class_room` (`name`, `capacity`) 
VALUES 
('1 강의실', 30),
('2 강의실', 25),
('3 강의실', 20),
('4 강의실', 35),
('5 강의실', 40);

-- 시간표 데이터 추가
INSERT INTO `time_table` (`class_id`, `start_time`, `end_time`, `class_room_id`) 
VALUES 
(1, '2023-01-01 10:00:00', '2023-01-01 12:00:00', 1),
(2, '2023-02-01 14:00:00', '2023-02-01 16:00:00', 2),
(3, '2023-03-01 09:00:00', '2023-03-01 11:00:00', 3),
(4, '2023-04-01 13:00:00', '2023-04-01 15:00:00', 4),
(5, '2023-05-01 11:00:00', '2023-05-01 13:00:00', 5);

-- 출석 데이터 추가
INSERT INTO `attendance` (`class_id`, `start_time`, `end_time`, `student_id`, `status`) 
VALUES 
(1, '2023-01-01 10:00:00', '2023-01-01 12:00:00', 1, '출석'),
(2, '2023-02-01 14:00:00', '2023-02-01 16:00:00', 2, '출석'),
(3, '2023-03-01 09:00:00', '2023-03-01 11:00:00', 3, '결석'),
(4, '2023-04-01 13:00:00', '2023-04-01 15:00:00', 4, '출석'),
(5, '2023-05-01 11:00:00', '2023-05-01 13:00:00', 5, '결석');

-- 성적 데이터 추가
INSERT INTO `grade` (`class_id`, `student_id`, `score`) 
VALUES 
(1, 1, 90),
(2, 2, 85),
(3, 3, 75),
(4, 4, 92),
(5, 5, 78);

-- 상담 데이터 추가
INSERT INTO `counsel` (`student_id`, `manager_id`, `date`, `category`, `detail`) 
VALUES 
(1, 1, '2023-01-01 14:00:00', '학업', '정보 처리 기사 실기 5수 했습니다. 어떡하죠?'),
(2, 2, '2023-02-01 15:00:00', '취업', '서류 탈락만 65번, 어떡하죠?'),
(3, 3, '2023-03-01 16:00:00', '건강', '감기가 2개월째 낫지 않아요.'),
(4, 4, '2023-04-01 17:00:00', '기타', '수업이 너무 쉬워서 재미가 없습니다. 제가 강사를 해도 될 정도인것 같네요.'),
(5, 5, '2023-05-01 18:00:00', '취업', '코테 탈락만 20번째 저는 이 길이 아닐까요?');


--학생아이디를 통해 학생 이름, 학생이 빌린 책의 이름, 빌린날짜, 반납날짜를 알 수 있는 SELECT
SELECT s.name, b.name, b.rental_date, b.return_date 
from book b 
join student s on b.student_id = s.id
where s.name = '김선국';
--수업 번호를 통해 학생 이름, 출석 상태, 수업 번호, 수업 시작시간, 수업 종료시간을 찾는 SELECT
SELECT s.name, a.status, a.class_id, a.start_time, a.end_time
FROM student s
JOIN attendance a on s.id = a.student_id
where a.id = 1;


-- 학생의 이름과 그 학생을 담당하는 매니저의 이름
SELECT s.name AS student_name, m.name AS manager_name
FROM student s
INNER JOIN manager m ON s.manager_id = m.id;

-- 학생의 출석 기록과 그에 따른 수업 이름
SELECT s.name AS student_name, a.status AS attendance_status, c.name AS class_name
FROM student s
LEFT JOIN attendance a ON s.id = a.student_id
LEFT JOIN time_table tt ON a.class_id = tt.class_id AND a.start_time = tt.start_time AND a.end_time = tt.end_time
LEFT JOIN class c ON tt.class_id = c.id;
