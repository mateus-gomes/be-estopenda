CREATE TABLE IF NOT EXISTS Events_Classes (
    id_event UUID REFERENCES Events (id_event) ON UPDATE CASCADE ON DELETE CASCADE,
    id_class UUID REFERENCES Classes (id_class) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pk_event_class PRIMARY KEY (id_event, id_class)
);