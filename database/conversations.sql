CREATE TABLE conversations (
    id BIGSERIAL PRIMARY KEY,

    contact_id BIGINT NOT NULL,

    session_id TEXT NOT NULL,

    role TEXT NOT NULL,

    message TEXT NOT NULL,

    agent_name TEXT,

    created_at TIMESTAMPTZ DEFAULT NOW(),

    CONSTRAINT fk_contact
        FOREIGN KEY(contact_id)
        REFERENCES contacts(id)
        ON DELETE CASCADE
);

CREATE INDEX idx_conversations_contact
ON conversations(contact_id);

CREATE INDEX idx_conversations_session
ON conversations(session_id);

CREATE INDEX idx_conversations_created
ON conversations(created_at);

alter into conversations
add message_count int;
