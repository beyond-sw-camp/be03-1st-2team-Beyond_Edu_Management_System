
> # <center>Beyond Edu Management System</center>



![image](https://velog.velcdn.com/images/dhkdtld37/post/2cf0e364-af22-4f2b-9d37-071213f1eaca/image.PNG)




## 📢 프로젝트 소개
```
Beyond Edu Management System은 한화시스템 BEYOND SW캠프의 학원 관리를 위한 효율적인 인적자원 관리 시스템입니다.
이 시스템은 수강생, 강사, 매니저 등 다양한 역할을 가진 사용자들을 위한 종합적인 데이터베이스를 제공하여 학원 운영을 지원합니다.
```



## 💡 프로젝트 목표
```
1. 인적자원 효율화: 강사, 매니저, 수강생의 정보를 중앙 관리하여 학원의 인적자원을 효과적으로 관리
2. 수업 일정 최적화: 수업, 강의실, 시간표 테이블을 통해 학원의 강의 일정을 최적화
3. 출결 및 성적 관리: 학생들의 출결을 체계적으로 기록하고, 성적을 효율적으로 관리하여 학생들의 학습 상황을 파악
4. 도서 및 대출 관리: 도서의 대여 및 반납을 체계적으로 관리하여 학원 도서관 운영을 지원
5. 상담 및 커뮤니케이션: 매니저와 수강생 간의 상담을 관리하고, 효율적인 커뮤니케이션을 지원
```


## 📆 개발 일정

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/bc2c7b5d-b8f1-4613-8078-9ac4498e7bc4)





## 📝 요구사항 명세서

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



## 🔍 Data_Modeling

### 1. ERD


![image](data_modeling/ERD.png)
> pk가 복합키인 time_table이 굉장히 거슬린다.
>> 복합키를 가지면 조인시 쿼리 복잡함, 행여나 값이 갱신되면 연관관계에 있는 테이블의 값을 수정해줘야하는 번거로움이 생기는 단점등을 가지게 된다.
<details>
<summary>ERD NEXT GENERATION</summary>
<div markdown="1">
  
![erd_gen2](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/b94d5d36-5763-4188-a47a-82f3a1bb9d7b)

</div>
</details>



## 🖥️ Queries 

### 1. DDL

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/2b8f6cd2-5f0b-42c2-b4cf-386c6b22931a)





### 2. DML
![DML 1](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/aeb9ff5b-b567-441b-9474-f54768223abd)
> DML 명령어 중의 하나인 Insert문을 활용한 코드
---
![DML 2](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/90ad12e2-1889-4c02-9398-b5b8ed34d4bc)
> 눈에 띄는 4번 학생의 상담, 조인을 통해서 4번학생의 이름과 상담 내용을 조회해보려 SELECT사용
---
![DML 3](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/a4f2bd7f-1c17-4a1d-9ac5-cb78a85532a9)
> 결과, 학생의 이름과 상담내용



---
### 3. DCL
![DCL 1](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/b5c60b16-e2c4-42d3-8c7a-77136b5e1b1c)
> 뷰 만들어서 DCL 명령어 사용
---
![DCL 2](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/54ec4a14-89be-40a2-a45b-2f1be7d185f4)
> manager1의 권한 조회


---

<img width="175" alt="DCL" src="https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/b722c973-ef45-4833-a35a-42ff799d39fa">

> manager1 아이디로 student 테이블을 조회
---

<img width="401" alt="DCLL" src="https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/efb842ed-4d47-4848-9fe0-20cc428ce52b">

> 결과는 permittion denied.
--- 

<img width="204" alt="DCLL1" src="https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/dc5c7120-e5af-4d47-bf5a-fb11d6cd54e2">


<img width="930" alt="DCLL2" src="https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/62212610/9bf62511-7eb7-4822-85d2-a08f2a5c4708">

> student_info 뷰는 정상적으로 조회 되는것을 볼 수 있다.
<br/>
<details>
<summary>뷰를 이용한 조회</summary>
<div markdown="1">
<br/>

> 상담 내용 조회

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/6cc0e5ee-9b6c-4bad-97e2-cf50ffdd1a23)

<br/>상담받은 학생과 담당매니저, 상담 내용을 확인할 수 있다.

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/b4e5615e-f627-42a0-9ca1-962c48be2941)

<br/>

> 도서 대출 내역 조회

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/7d4e4729-1bdc-45be-b719-e4e24123fde5)

<br/>대출한 학생과 도서명, 반납일을 확인할 수 있다.

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/26dacb34-95a7-4234-ba5a-ceafccb99a9a)

</div>
</details>

## 📝 TestCase

![ezgif com-gif-maker](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/0c394f73-a0ac-43fa-8b94-a75a5f063808)


## ⭐ Tables

<details>
<summary>최종 테이블</summary>
<div markdown="1">
<br/>
  
> #### 매니저 테이블
  
![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/a113401d-5e95-4785-8132-fc4d5c465ad2)

> #### 수강생 테이블

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/ed1498bc-c6cc-4d88-9609-91f1af1fcbb4)

> #### 강사 테이블

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/bf8b48aa-efc5-4729-8360-522d2e3ba1b4)

> #### 도서 테이블

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/d96bbd2f-05c1-45a1-b22f-59a453e2f491)

> #### 수업 테이블

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/43ff7f77-eb19-447d-9337-60a91be1ad1d)

> #### 강의실 테이블

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/3e0a27bc-94ed-4d29-8b8b-573928f2a31b)

> #### 시간표 테이블 

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/d039eb1a-f11d-4e7f-87aa-36c97a61fed4)

> #### 출석 테이블 

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/990f3f3f-5bc4-4fc5-b00f-f9752e1b98fc)

> #### 성적 테이블  

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/942694da-aa8a-44a6-8625-f5ff4325d38b)

> #### 상담 테이블

![image](https://github.com/qoth-0/BEYOND_SWCAMP_DB_Project/assets/112849147/8de5ccab-25a4-4bec-8491-0f80936d17e4)


</div>
</details>
<br/>

## 👯 팀원
- 김영광
- 김종원
- 배소영
- 윤지용
- 이원태
