CREATE TABLE contacts (
    id BIGSERIAL PRIMARY KEY,

    session_id TEXT UNIQUE NOT NULL,

    name TEXT,
    email TEXT UNIQUE,
    phone TEXT UNIQUE,

    source TEXT DEFAULT 'chat_widget',

    status TEXT DEFAULT 'new',

    qualification_stage TEXT DEFAULT 'intro',

    assigned_agent TEXT DEFAULT 'reception_agent',

    first_seen TIMESTAMPTZ DEFAULT NOW(),

    last_interaction TIMESTAMPTZ DEFAULT NOW(),

    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_contacts_email
ON contacts(email);

CREATE INDEX idx_contacts_phone
ON contacts(phone);

CREATE INDEX idx_contacts_status
ON contacts(status);

CREATE INDEX idx_contacts_session_id
ON contacts(session_id);
