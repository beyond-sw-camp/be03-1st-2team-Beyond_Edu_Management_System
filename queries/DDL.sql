-- 수강생 테이블
CREATE TABLE `student` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `registration_number` VARCHAR(50) NOT NULL UNIQUE,
    `phone_number` VARCHAR(50) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `major` ENUM('전공', '비전공') NOT NULL,
    `generation` VARCHAR(50) NOT NULL,
    `status` ENUM('수강', '졸업', '제적') NOT NULL
);
-- 강사 테이블
CREATE TABLE `teacher` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `registration_number` VARCHAR(50) NOT NULL UNIQUE,
    `phone_number` VARCHAR(50) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `experience` VARCHAR(255) NOT NULL,
    `salary` INT NOT NULL,
    `contract_start` DATE NOT NULL,
    `contract_end` DATE NOT NULL,
    `status` ENUM('등록', '휴직', '계약종료') NOT NULL
);

-- 관리자 테이블 수정
CREATE TABLE `manager` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `registration_number` VARCHAR(50) NOT NULL UNIQUE,
    `phone_number` VARCHAR(50) NOT NULL,
    `experience` ENUM('신입', '경력') NOT NULL,
    `work` ENUM('기수', '야간', '상담') NOT NULL,
    `contract_start` DATETIME NOT NULL,
    `contract_end` DATETIME NOT NULL,
    `status` ENUM('근무', '연차', '휴직', '퇴직', '기타') DEFAULT '근무'
);
-- 수업 테이블 수정
CREATE TABLE `class` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `student_id` BIGINT NOT NULL,
    `teacher_id` BIGINT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `start_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
    FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
);

-- 도서 테이블 수정
CREATE TABLE `book` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `manager_id` BIGINT NOT NULL,
    `student_id` BIGINT,
    `name` VARCHAR(255) NOT NULL,
    `status` ENUM('대여중', '대여가능', '연체', '분실') NOT NULL DEFAULT '대여가능',
    `rental_date` DATETIME,
    `return_date` DATETIME,
    FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`),
    FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
);
-- 강의실 테이블 수정
CREATE TABLE `class_room` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `capacity` INT NOT NULL
);

-- 시간표 테이블 수정
CREATE TABLE `time_table` (
    `class_id` BIGINT NOT NULL,
    `start_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    `class_room_id` BIGINT NOT NULL,
    PRIMARY KEY (`class_id`, `start_time`, `end_time`),
    FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
    FOREIGN KEY (`class_room_id`) REFERENCES `class_room` (`id`)
);
-- 출석테이블 수정
CREATE TABLE `attendance` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `class_id` BIGINT NOT NULL,
    `start_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    `student_id` BIGINT NOT NULL,
    `status` ENUM('출석', '결석', '병가', '외출', '조퇴') NOT NULL DEFAULT '결석',
    FOREIGN KEY (`class_id`, `start_time`, `end_time`) REFERENCES `time_table` (`class_id`, `start_time`, `end_time`),
    FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
);

-- 성적 테이블
CREATE TABLE `grade` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `class_id` BIGINT NOT NULL,
    `student_id` BIGINT NOT NULL,
    `score` INT NOT NULL CHECK (`score` >= 0 AND `score` <= 100),
    `grade` ENUM('A', 'B', 'C', 'D', 'F') GENERATED ALWAYS AS (
        CASE
            WHEN `score` >= 91 THEN 'A'
            WHEN `score` >= 81 THEN 'B'
            WHEN `score` >= 71 THEN 'C'
            WHEN `score` >= 61 THEN 'D'
            ELSE 'F'
        END
    ) VIRTUAL,
    FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
    FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
);

-- 상담 테이블
CREATE TABLE `counsel` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `student_id` BIGINT NOT NULL,
    `manager_id` BIGINT NOT NULL,
    `date` DATETIME NOT NULL,
    `category` ENUM('학업', '취업', '건강', '기타') NOT NULL,
    `detail` VARCHAR(1000),
    FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
    FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`)
);