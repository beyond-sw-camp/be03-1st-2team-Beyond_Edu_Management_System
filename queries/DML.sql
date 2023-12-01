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