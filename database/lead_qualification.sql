CREATE TABLE lead_qualification (
    id BIGSERIAL PRIMARY KEY,

    contact_id BIGINT UNIQUE NOT NULL,

    business_type TEXT,

    niche TEXT,

    biggest_challenge TEXT,

    monthly_revenue TEXT,

    monthly_leads TEXT,

    budget TEXT,

    urgency TEXT,

    goal TEXT,

    qualification_notes TEXT,

    lead_score INTEGER DEFAULT 0,

    qualified BOOLEAN DEFAULT FALSE,

    created_at TIMESTAMPTZ DEFAULT NOW(),

    updated_at TIMESTAMPTZ DEFAULT NOW(),

    CONSTRAINT fk_qualification_contact
        FOREIGN KEY(contact_id)
        REFERENCES contacts(id)
        ON DELETE CASCADE
);

ALTER TABLE lead_qualification
ADD COLUMN IF NOT EXISTS lead_temperature TEXT;
