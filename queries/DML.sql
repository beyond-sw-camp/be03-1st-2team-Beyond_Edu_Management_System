-- 성적 테이블
INSERT INTO grade (class_id, student_id, score) 
VALUES (2, 3, 0);
INSERT INTO grade (class_id, student_id, score) 
VALUES (1, 2, 90);
INSERT INTO grade (class_id, student_id, score) 
VALUES (3, 4, 67);

-- 상담 테이블
INSERT INTO counsel (student_id, manager_id, date, category, detail)
VALUES (3, 2, '2023-01-01 14:00:00', '학업', '공부가 잘 안된다.');
INSERT INTO counsel (student_id, manager_id, date, category, detail)
VALUES (7, 1, '2023-01-01 15:00:00', '취업', '모의 면접 해주세요.');

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