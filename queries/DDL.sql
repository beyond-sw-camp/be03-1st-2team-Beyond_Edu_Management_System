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