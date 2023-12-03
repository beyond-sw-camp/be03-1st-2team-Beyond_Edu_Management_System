-- 새로운 매니저가 있다는 상황에서 학생들의 정보를 볼 수 있는 뷰를 생성후 권한을 부여하는 상황 
-- 학생 테이블 뷰(student_info) 생성
create view student_info as select * from student;
-- manager1이라는 유저 생성
create user 'manager1'@'%' identified by 'admin';
-- manager1에게 뷰 SELECT권한 부여
grant SELECT on test.student_info to manager1;
-- manager1의 권한 조회
show grants for manager1;