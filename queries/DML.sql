-- 관리자 데이터 추가
INSERT INTO `manager` (`name`, `registration_number`, `phone_number`, `experience`, `work`, `contract_start`, `contract_end`, `status`) 
VALUES 
('Manager 1', '12345', '123-4567-8901', '경력', '기수', '2023-01-01', '2023-12-31', '근무'),
('Manager 2', '67890', '987-6543-2109', '신입', '야간', '2023-02-01', '2023-11-30', '근무'),
('Manager 3', '54321', '567-8901-2345', '경력', '상담', '2023-03-01', '2023-10-31', '연차'),
('Manager 4', '98765', '432-1098-7654', '신입', '기수', '2023-04-01', '2023-09-30', '휴직'),
('Manager 5', '13579', '876-5432-1098', '경력', '야간', '2023-05-01', '2023-08-31', '퇴직');

-- 학생 데이터 추가
INSERT INTO `student` (`name`, `registration_number`, `phone_number`, `address`, `email`, `major`, `generation`, `status`, `manager_id`) 
VALUES 
('Student 1', '11111', '111-1111-1111', '123 Street, City', 'student1@example.com', '전공', '2023', '수강', 1),
('Student 2', '22222', '222-2222-2222', '456 Avenue, City', 'student2@example.com', '비전공', '2022', '졸업', 2),
('Student 3', '33333', '333-3333-3333', '789 Road, City', 'student3@example.com', '전공', '2023', '수강', 3),
('Student 4', '44444', '444-4444-4444', '321 Lane, City', 'student4@example.com', '비전공', '2022', '졸업', 4),
('Student 5', '55555', '555-5555-5555', '654 Boulevard, City', 'student5@example.com', '전공', '2023', '수강', 5);

-- 강사 데이터 추가
INSERT INTO `teacher` (`name`, `registration_number`, `phone_number`, `address`, `email`, `experience`, `salary`, `contract_start`, `contract_end`, `status`) 
VALUES 
('Teacher 1', '11111', '111-1111-1111', '123 Street, City', 'teacher1@example.com', '경력', 50000, '2023-01-01', '2023-12-31', '등록'),
('Teacher 2', '22222', '222-2222-2222', '456 Avenue, City', 'teacher2@example.com', '신입', 60000, '2023-02-01', '2023-11-30', '휴직'),
('Teacher 3', '33333', '333-3333-3333', '789 Road, City', 'teacher3@example.com', '경력', 55000, '2023-03-01', '2023-10-31', '계약종료'),
('Teacher 4', '44444', '444-4444-4444', '321 Lane, City', 'teacher4@example.com', '신입', 62000, '2023-04-01', '2023-09-30', '등록'),
('Teacher 5', '55555', '555-5555-5555', '654 Boulevard, City', 'teacher5@example.com', '경력', 53000, '2023-05-01', '2023-08-31', '계약종료');

-- 도서 데이터 추가
INSERT INTO `book` (`manager_id`, `student_id`, `name`, `rental_date`, `return_date`) 
VALUES 
(1, 1, 'Book 1', '2023-01-01', '2023-02-01'),
(2, 2, 'Book 2', '2023-02-01', '2023-03-01'),
(3, 3, 'Book 3', '2023-03-01', '2023-04-01'),
(4, 4, 'Book 4', '2023-04-01', '2023-05-01'),
(5, 5, 'Book 5', '2023-05-01', '2023-06-01');

-- 수업 데이터 추가
INSERT INTO `class` (`teacher_id`, `name`, `start_time`, `end_time`) 
VALUES 
(1, 'Class 1', '2023-01-01 10:00:00', '2023-01-01 12:00:00'),
(2, 'Class 2', '2023-02-01 14:00:00', '2023-02-01 16:00:00'),
(3, 'Class 3', '2023-03-01 09:00:00', '2023-03-01 11:00:00'),
(4, 'Class 4', '2023-04-01 13:00:00', '2023-04-01 15:00:00'),
(5, 'Class 5', '2023-05-01 11:00:00', '2023-05-01 13:00:00');

-- 강의실 데이터 추가
INSERT INTO `class_room` (`name`, `capacity`) 
VALUES 
('Room 101', 30),
('Room 102', 25),
('Room 103', 20),
('Room 104', 35),
('Room 105', 40);

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
(1, 1, '2023-01-01 14:00:00', '학업', '학업 상담 내용 1'),
(2, 2, '2023-02-01 15:00:00', '취업', '취업 상담 내용 2'),
(3, 3, '2023-03-01 16:00:00', '건강', '건강 상담 내용 3'),
(4, 4, '2023-04-01 17:00:00', '기타', '기타 상담 내용 4'),
(5, 5, '2023-05-01 18:00:00', '취업', '취업 상담 내용 5');


--학생아이디를 통해 학생 이름, 학생이 빌린 책의 이름, 빌린날짜, 반납날짜를 알 수 있는 SELECT
SELECT s.name, b.name, b.rental_date, b.return_date 
from book b 
join student s on b.student_id = s.id
where s.name = 'Student 1';
--수업 번호를 통해 학생 이름, 출석 상태, 수업 번호, 수업 시작시간, 수업 종료시간을 찾는 SELECT
SELECT s.name, a.status, a.class_id, a.start_time, a.end_time
FROM student s
JOIN attendance a on s.id = a.student_id
where a.id = 1;

-- 강의실 테이블
insert class_room(id,name,capacity) values (1,'햇님반',30);
insert class_room(id,name,capacity) values (2,'별님반',50);
insert class_room(id,name,capacity) values (3,'달님반',30);
insert class_room(id,name,capacity) values (4,'꽃잎반',30);
insert class_room(id,name,capacity) values (5,'풀잎반',20);
insert class_room(id,name,capacity) values (6,'주황반',25);
insert class_room(id,name,capacity) values (7,'빨강반',50);
insert class_room(id,name,capacity) values (8,'파랑반',30);
insert class_room(id,name,capacity) values (9,'미팅룸1',10);
insert class_room(id,name,capacity) values (10,'미팅룸2',10);

-- 시간표 테이블 
insert time_table(class_id,class_room_id,start_time,end_time) values (1,1,'2023-12-01 09:00','2023-12-01 12:00');
insert time_table(class_id,class_room_id,start_time,end_time) values (2,2,'2023-12-01 09:00','2023-12-01 12:00');
insert time_table(class_id,class_room_id,start_time,end_time) values (3,3,'2023-12-02 10:00','2023-12-01 11:00');
insert time_table(class_id,class_room_id,start_time,end_time) values (4,4,'2023-12-03 12:00','2023-12-01 13:00');
insert time_table(class_id,class_room_id,start_time,end_time) values (5,5,'2023-12-04 09:00','2023-12-01 12:00');
insert time_table(class_id,class_room_id,start_time,end_time) values (6,1,'2023-12-01 13:00','2023-12-01 15:00');