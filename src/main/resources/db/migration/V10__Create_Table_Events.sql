CREATE TABLE IF NOT EXISTS Events (
    id_event UUID PRIMARY KEY,
    title VARCHAR(50),
    description VARCHAR(250),
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    location VARCHAR(50),
    media TEXT,
    email VARCHAR(50),
    event_type VARCHAR(30),
    created_at TIMESTAMP,
    fk_school UUID,
    fk_student UUID,
    fk_teacher UUID,
    fk_class_group UUID,
    CONSTRAINT fk_school FOREIGN KEY (fk_school) REFERENCES Schools (id_school) ON DELETE CASCADE,
    CONSTRAINT fk_student FOREIGN KEY (fk_student) REFERENCES Students (id_student) ON DELETE CASCADE,
    CONSTRAINT fk_teacher FOREIGN KEY (fk_teacher) REFERENCES Teachers (id_teacher) ON DELETE CASCADE,
    CONSTRAINT fk_class_group FOREIGN KEY (fk_class_group) REFERENCES ClassGroups (id_class_group) ON DELETE CASCADE
);