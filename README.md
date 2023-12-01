# Beyond Edu Management System


## 📃 프로젝트 소개
```
Beyond Edu Management System은 한화시스템 BEYOND SW캠프의 학원 관리를 위한 효율적인 인적자원 관리 시스템입니다. 이 시스템은 수강생, 강사, 매니저 등 다양한 역할을 가진 사용자들을 위한 종합적인 데이터베이스를 제공하여 학원 운영을 원활하게 지원합니다.
```

## 💡 프로젝트 목표
```
1. 인적자원 효율화: 강사, 매니저, 수강생의 정보를 중앙 관리하여 학원의 인적자원을 효과적으로 관리합니다.
2. 수업 일정 최적화: 수업, 강의실, 시간표 테이블을 통해 학원의 강의 일정을 최적화하고 관리합니다.
3. 출결 및 성적 관리: 학생들의 출결을 체계적으로 기록하고, 성적을 효율적으로 관리하여 학생들의 학습 상황을 파악합니다.
4. 도서 및 대출 관리: 도서의 대여 및 반납을 체계적으로 관리하여 학원 도서관 운영을 지원합니다.
5. 상담 및 커뮤니케이션: 매니저와 수강생 간의 상담을 관리하고, 효율적인 커뮤니케이션을 지원합니다.
```

## 개발 일정

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/f89d1e73-ac59-4dc0-8607-c43977db30eb)

## 요구사항 명세서

```sh
요구사항 명세서

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
  - 출결 여부는 '출석', '조퇴', '병가', '결석', '외출'로 나타낸다.

8. 도서 테이블(book)
  - 도서명(name), 관리자(manager_id), 상태(status), 대여일(rental_date), 반환일(return_date), 대여자(student_id)를 가진다.
  - 도서 하나당 도서명, 관리자, 상태를 반드시 명시하여야한다.
  - 도서의 상태는 '대여중', '대여가능', '연체', '분실'로 분류 된다.
  - 각 도서는 한명의 관리자에 의해 관리된다.
  - 각 도서는 한명의 대여자를 가질 수 있다.
  - 도서의 대여일, 반환일은 대여자가 있을 시에 입력해야 한다.

9. 성적 테이블(grade)
  - 성적은 수업(class_id), 수강생(student_id), 점수(score), 등급(grade)을 가진다.
  - 수업 종료 시 최종 테스트를 통해 등급을 결정한다.
  - 점수는 0부터 100까지의 값만 갖는다.
  - 성적에 따라 등급을 부여한다.
  - 등급은 'A(91~100)', 'B(81~90)', 'C(71~80)', 'D(61~70)', 'F(0~60)'로 구분된다.
  - 점수는 반드시 표기해야 한다.
  - 시험 미응시라면 0점으로 부여한다.	

10. 상담 테이블
  - 매니저(manager_id), 수강생(student_id), 상담 날짜(date), 상담 주제(category), 상담내용(detail)을 가진다.
  - 상담주제는 '학업', '취업', '건강', '기타'로 구분된다.
  - 상담은 수강생 한명이 하루에 두번 이상 받을 수 있다.
  - 상담내용은 반드시 표기해야 한다.
  - 상담날짜는 년,월,일,시,분으로 표현한다.

```
## 🔍 Modeling

### 1. ERD


![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/1fe9e932-75e4-471b-9487-e161b1885f69)


queries : DDL, DML, DCL

