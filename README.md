# DB_Project

## 학원 인적자원 관리 시스템


![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/f89d1e73-ac59-4dc0-8607-c43977db30eb)


## 📃 프로젝트 시나리오
```sh
기능 요구사항

1. 수강생 테이블(student)
  - 수강생은 이름(name), 주민등록번호(registration number), 전화번호(phone_number),
    주소(address), 이메일(email), 전공유무(major), 기수(generation), 상태(status), 담당 매니저(manager_id)를 입력 해야한다.
  - 주민등록번호(registration number)은 유일한(Unique)한 상태로 둔다.
  - 상태는 '수강', '졸업', '제적'으로 나눈다.
  - 졸업하거나 제적된 수강생은 다시 수업을 들을 수 없다.
  - 모든 속성은 반드시 입력되어야 한다.
  - 매니저 한 명이 관리한다.

2. 강사 테이블(teacher)
  - 강사는 이름(name), 주민등록번호(registration number), 전화번호(phone_number), 주소(address),
    이메일(email), 경력(exprience), 급여(salary), 계약시작일(contract_start), 계약 종료일(contract_end), 상태(status)를 입력 해야한다.
  - 주민등록번호(registration number)은 유일한(Unique)한 상태로 둔다.
  - 상태는 '등록', '휴직', '계약종료'으로 나눈다.
  - 전문분야는 제일 자신있는 기술스택을 기재한다.
  - 경력은 경력사항을 기재한다.
  - 계약시작일과 종료일의 타입은 DATETIME으로 한다.
  - 모든 속성은 반드시 입력되어야 한다.

3. 매니저 테이블(manager)
  - 이름(name),주민등록번호(registration number), 전화번호(phone_number),주소(address), 이메일(email),
    경력(exprience), 담당업무(work), 계약 시작일(contract_start), 계약 종료일(contract_end), 상태(status)를 가진다.
  - 경력은 0, 1년은 '신입', 그 외는 '경력자'로 분류된다
  - 담당 업무는 '기수', '야간', '상담'로 나누어 진다
  - 상태는 '근무', '연차', '특별휴가', '휴직', '퇴직'으로 나누어 진다.

4. 수업 테이블(class)
  - 강의명 (class_id), 담당 강사(teacher_id), 시작일(contract_start), 계약종료일(contract_end)를 가진다.
  - 수업은 단 한 명의 강사만이 진행해야 한다
        
5. 강의실 테이블(class_room)
  - 강의실은 이름(name), 수용인원(capacity)이 있다.
  - 강의실은 강의실 마다 이름이 있다
  - 강의실마다 최대 수용인원이 있다. 

6. 시간표 테이블(time_table)
  - 수업ID(class_id), 강의실ID(class_room_id), 시작 시간(start_time), 종료시간(end_time)을 가진다.
  - 시간표는 수업ID, 시작시간, 종료시간을 통해서만 구분된다.
  - 시간표 마다 강의실이 있다.

7. 출결 테이블(attendance)
  - 출결은 학생ID(student_id), 수업ID(class_id), 수업시작시간(start_time), 수업종료시간(end_time), 출결상태(status)를 가진다.
  - 출결 테이블은 한 시간표에 대한 여러 수강생의 출결을 가진다.
  - 출결 테이블은 출결 여부를 반드시 표시하여야 한다.
  - 출결 여부는 '램

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/1fe9e932-75e4-471b-9487-e161b1885f69)


queries : DDL, DML, DCL

