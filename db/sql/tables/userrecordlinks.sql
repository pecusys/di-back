
CREATE TABLE IF NOT EXISTS UserRecordLinks(
    id SERIAL PRIMARY KEY NOT NULL,
    uid INTEGER NOT NULL REFERENCES Users(id),
    rid INTEGER NOT NULL REFERENCES Records(id),
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
