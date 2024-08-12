CREATE TABLE IF NOT EXISTS Students_Tutors (
    id_student UUID REFERENCES Students (id_student) ON UPDATE CASCADE ON DELETE CASCADE,
    id_tutor UUID REFERENCES Tutors (id_tutor) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pk_student_tutor PRIMARY KEY (id_student, id_tutor)
);