DROP DATABASE IF EXISTS medical;

CREATE DATABASE medical

\c medical


CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    doctor_name TEXT NOT NULL,
    patient_ids INTEGER DEFAULT NULL FOREIGN KEY REFERENCES patients
)

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    patient_name TEXT NOT NULL,
    doctors INTEGER DEFAULT NULL FOREIGN KEY REFERENCES doctors,
    diagnosed INTEGER DEFAULT NULL FOREIGN KEY REFERENCES diseases
)

CREATE TABLE diseases (
    id SERIAL PRIMARY KEY,
    disease_name TEXT NOT NULL,
)