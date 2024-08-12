CREATE TABLE IF NOT EXISTS Students (
    id_student UUID PRIMARY KEY,
    name VARCHAR(150),
    register_number VARCHAR(50),
    email VARCHAR(50),
    birthday DATE,
    is_class_representative BOOLEAN,
    fk_school UUID,
    fk_class UUID,
    CONSTRAINT fk_school FOREIGN KEY (fk_school) REFERENCES Schools (id_school) ON DELETE CASCADE,
    CONSTRAINT fk_class FOREIGN KEY (fk_class) REFERENCES Classes (id_class) ON DELETE CASCADE
);