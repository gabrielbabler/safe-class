CREATE TABLE school (
    id varchar(50) PRIMARY KEY,
    name varchar(250) NOT NULL,
    address varchar(250) NOT NULL,
    phone varchar(30) NOT NULL,
    whatsapp_flag boolean NOT NULL
);

CREATE TABLE students (
    id varchar(50) PRIMARY KEY,
    name varchar(250) NOT NULL,
    birth_date date NOT NULL,
    address varchar(250) NOT NULL,
    phone varchar(30) NOT NULL,
    secondary_contact varchar(30),
    cpf varchar(20) NOT NULL CONSTRAINT,
    rg varchar(20) NOT NULL CONSTRAINT,
    email varchar(100) NOT NULL,
    sec_contact_flag boolean NOT NULL,
    whatsapp_flag boolean NOT NULL,
    FOREIGN KEY (school_id) REFERENCES school(id)
);

CREATE TABLE teachers (
    id varchar(50) PRIMARY KEY,
    name varchar(250) NOT NULL,
    birth_date date NOT NULL,
    address varchar(250) NOT NULL,
    phone varchar(30) NOT NULL,
    cpf varchar(20) NOT NULL CONSTRAINT,
    rg varchar(20) NOT NULL CONSTRAINT,
    email varchar(100) NOT NULL,
    whatsapp_flag boolean NOT NULL,
    FOREIGN KEY (school_id) REFERENCES school(id)
);

CREATE TABLE subjects (
    id varchar(50) PRIMARY KEY,
    name varchar(250) NOT NULL,
    class_quantity int(3) NOT NULL
);

CREATE TABLE classes (
    id varchar(50) PRIMARY KEY,
    time int(3) NOT NULL,
    FOREIGN KEY (school_id) REFERENCES school(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

CREATE TABLE students_classes (
    student_id varchar(50) PRIMARY KEY,
    class_id varchar(50) PRIMARY KEY,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (class_id) REFERENCES classes(id)
);

CREATE TABLE teachers_subjects (
    subject_id varchar(50) PRIMARY KEY,
    teacher_id varchar(50) PRIMARY KEY,
    FOREIGN KEY (subject_id) REFERENCES subjects(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);