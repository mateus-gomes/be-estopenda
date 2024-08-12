CREATE TABLE IF NOT EXISTS Classes_ClassGroups (
    id_class UUID REFERENCES Classes (id_class) ON UPDATE CASCADE ON DELETE CASCADE,
    id_class_group UUID REFERENCES ClassGroups (id_class_group) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pk_class_group_class PRIMARY KEY (id_class, id_class_group)
);