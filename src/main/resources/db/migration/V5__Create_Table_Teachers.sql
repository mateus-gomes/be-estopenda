CREATE TABLE IF NOT EXISTS Teachers (
    id_teacher UUID PRIMARY KEY,
    name VARCHAR(150),
    email VARCHAR(50),
    phone VARCHAR(13),
    subject VARCHAR(30),
    fk_school UUID,
    CONSTRAINT fk_school FOREIGN KEY(fk_school) REFERENCES Schools(id_school) ON DELETE CASCADE
);