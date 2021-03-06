CREATE TABLE IF NOT EXISTS EntryTypes (
    id SERIAL PRIMARY KEY NOT NULL,
    uid INTEGER NOT NULL REFERENCES Users(id),
    name TEXT NOT NULL CHECK (CHAR_LENGTH(name) < 80),
    permission TEXT NOT NULL DEFAULT 'private',
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
