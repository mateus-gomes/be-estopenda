CREATE TABLE IF NOT EXISTS Teachers_Classes (
    id_teacher UUID REFERENCES Teachers (id_teacher) ON UPDATE CASCADE ON DELETE CASCADE,
    id_class UUID REFERENCES Classes (id_class) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pk_teacher_class PRIMARY KEY (id_teacher, id_class)
);