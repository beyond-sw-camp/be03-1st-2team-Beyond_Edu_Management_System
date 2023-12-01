-- 학생 테이블 수정
CREATE TABLE `student` (
    `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `registration_number` VARCHAR(50) NOT NULL UNIQUE,
    `phone_number` VARCHAR(50) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `major` ENUM('전공', '비전공') NOT NULL,
    `generation` VARCHAR(50) NOT NULL,
    `status` ENUM('수강', '졸업', '제적') NOT NULL,
    `manager_id` BIGINT NOT NULL,
     FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`)
);


-- 강사 테이블 수정
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
