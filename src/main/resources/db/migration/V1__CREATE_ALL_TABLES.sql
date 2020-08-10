CREATE TABLE school (
    id varchar(50) PRIMARY KEY,
    name varchar(250) NOT NULL,
    address varchar(250) NOT NULL,
    phone varchar(30) NOT NULL,
    allow_whatsapp boolean NOT NULL
);

CREATE TABLE students (
    id varchar(50) PRIMARY KEY,
    name varchar(250) NOT NULL,
    birth_date date NOT NULL,
    address varchar(250) NOT NULL,
    phone varchar(30) NOT NULL,
    has_emergency_contact boolean NOT NULL,
    emergency_contact varchar(30),
    cpf varchar(20) NOT NULL,
    rg varchar(20) NOT NULL,
    email varchar(100) NOT NULL,
    allow_whatsapp boolean NOT NULL,
    school_id varchar(50) NOT NULL,
    FOREIGN KEY (school_id) REFERENCES school(id),
    UNIQUE (cpf),
    UNIQUE (rg)
);

CREATE TABLE teachers (
    id varchar(50) PRIMARY KEY,
    name varchar(250) NOT NULL,
    birth_date date NOT NULL,
    has_emergency_contact boolean NOT NULL,
    emergency_contact varchar(30),
    address varchar(250) NOT NULL,
    phone varchar(30) NOT NULL,
    cpf varchar(20) NOT NULL,
    rg varchar(20) NOT NULL,
    email varchar(100) NOT NULL,
    allow_whatsapp boolean NOT NULL,
    school_id varchar(50) NOT NULL,
    FOREIGN KEY (school_id) REFERENCES school(id),
    UNIQUE (cpf),
    UNIQUE (rg)
);

CREATE TABLE subjects (
    id varchar(50) PRIMARY KEY,
    name varchar(250) NOT NULL,
    total_lessons int(3) NOT NULL
);

CREATE TABLE classes (
    id varchar(50) PRIMARY KEY,
    time TIME NOT NULL,
    school_id varchar(50) NOT NULL,
    subject_id varchar(50) NOT NULL,
    teacher_id varchar(50) NOT NULL,
    FOREIGN KEY (school_id) REFERENCES school(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

CREATE TABLE students_classes (
    student_id varchar(50),
    class_id varchar(50),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (class_id) REFERENCES classes(id),
    PRIMARY KEY (student_id, class_id)
);

CREATE TABLE teachers_subjects (
    subject_id varchar(50),
    teacher_id varchar(50),
    FOREIGN KEY (subject_id) REFERENCES subjects(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id),
    PRIMARY KEY (subject_id, teacher_id)
);

CREATE TABLE lessons (
    id varchar(50) PRIMARY KEY,
    lesson_date DATE NOT NULL,
    class_id varchar(50),
    FOREIGN KEY (class_id) REFERENCES classes(id)
);

CREATE TABLE lesson_attendance (
    id varchar(50) PRIMARY KEY,
    is_present boolean NOT NULL,
    lesson_id varchar(50),
    student_id varchar(50),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (lesson_id) REFERENCES lessons(id)
);