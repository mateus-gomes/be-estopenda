CREATE TABLE IF NOT EXISTS Classes (
    id_class UUID PRIMARY KEY,
    name VARCHAR(150),
    location VARCHAR(50),
    fk_school UUID,
    fk_class_group UUID,
    CONSTRAINT fk_school FOREIGN KEY (fk_school) REFERENCES Schools (id_school) ON DELETE CASCADE,
    CONSTRAINT fk_class_group FOREIGN KEY (fk_class_group) REFERENCES ClassGroups (id_class_group) ON DELETE CASCADE
);