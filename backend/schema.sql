CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    contact_info VARCHAR(100)
);

CREATE TABLE followups (
    followup_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id),
    followup_date DATE,
    weight DECIMAL(5,2),
    blood_pressure VARCHAR(20),
    notes TEXT
);

CREATE TABLE deliveries (
    delivery_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id),
    delivery_date DATE,
    delivery_type VARCHAR(50),
    complications TEXT
);
