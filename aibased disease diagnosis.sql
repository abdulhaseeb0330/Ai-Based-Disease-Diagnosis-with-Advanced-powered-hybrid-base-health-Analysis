
use AiDisease
CREATE TABLE Patient (
    CNIC VARCHAR(15) PRIMARY KEY,
    Name VARCHAR(100),
    Height FLOAT,
    Weight FLOAT,
    Blood_Group VARCHAR(5),
    Gender VARCHAR(10),
    DOB DATE,
	age int,
    Address varchar(60),
    reg_Date DATE
);
CREATE TABLE Patient_Contact (
    CNIC VARCHAR(15),
    Contact VARCHAR(20),
    PRIMARY KEY (CNIC, Contact),
    FOREIGN KEY (CNIC) REFERENCES Patient(CNIC)
);
CREATE TABLE Patient_Disease (
    CNIC VARCHAR(15),
    Chronic_Disease VARCHAR(100),
    PRIMARY KEY (CNIC, Chronic_Disease),
    FOREIGN KEY (CNIC) REFERENCES Patient(CNIC)
);
CREATE TABLE Patient_Allergies (
    CNIC VARCHAR(15),
    Allergies VARCHAR(100),
    PRIMARY KEY (CNIC, Allergies),
	FOREIGN KEY (CNIC) REFERENCES Patient(CNIC)
);
CREATE TABLE Symptoms (
    Sid INT PRIMARY KEY,
    Name VARCHAR(100),
    Severity VARCHAR(50),
    Duration INT,
    Date DATE,
    Period VARCHAR(50),
    CNIC VARCHAR(15),
    FOREIGN KEY (CNIC) REFERENCES Patient(CNIC)
);
CREATE TABLE Symptoms_AssCondition (
    Sid INT,
    Associated_Condition VARCHAR(100),
    PRIMARY KEY (Sid, Associated_Condition),
    FOREIGN KEY (Sid) REFERENCES Symptoms(Sid)
);

CREATE TABLE Lead_to (
    Sid INT,
    Dia_id INT,
    PRIMARY KEY (Sid, Dia_id),
    FOREIGN KEY (Sid) REFERENCES Symptoms(Sid),
    FOREIGN KEY (Dia_id) REFERENCES Diagnosis(Dia_id)
);
CREATE TABLE Disease (
    D_id INT PRIMARY KEY,
    Name VARCHAR(100),
    Treatment varchar(300),
    RiskFactors varchar(300),
    Causes varchar(300),
    Prevention varchar(300)
);
CREATE TABLE Chronic (
    D_id INT PRIMARY KEY,
    Duration_Months INT,
    RequireLifeStyleChanging Bit,
    Progression_Rate VARCHAR(50),
    FOREIGN KEY (D_id) REFERENCES Disease(D_id)
);
CREATE TABLE Acute (
    D_id INT PRIMARY KEY,
    SuddenOnset bit,
    Typical_duration_days INT,
    FOREIGN KEY (D_id) REFERENCES Disease(D_id)
);
CREATE TABLE Diagnosis (
    Dia_id INT PRIMARY KEY,
    Name VARCHAR(100),
    Status VARCHAR(50),
    Date DATE,
    Condition VARCHAR(100),
    Probability FLOAT,
    Duration INT,
    CNIC VARCHAR(15),
    FOREIGN KEY (CNIC) REFERENCES Patient(CNIC)
);
CREATE TABLE Diagnosis_Recommendation (
    Dia_id INT PRIMARY KEY,
    Recommendation varchar(300),
    FOREIGN KEY (Dia_id) REFERENCES Diagnosis(Dia_id)
);
CREATE TABLE Confirms (
    D_id INT,
    Dia_id INT,
    PRIMARY KEY (D_id, Dia_id),
    FOREIGN KEY (D_id) REFERENCES Disease(D_id),
    FOREIGN KEY (Dia_id) REFERENCES Diagnosis(Dia_id)
);
CREATE TABLE Prescription (
    Pid INT PRIMARY KEY,
    Name VARCHAR(100),
    Date DATE,
	dose varchar(30),
    Probability FLOAT,
    Duration INT,
    Location varchar(30),
    Frequency VARCHAR(50),
    CNIC VARCHAR(15),
    FOREIGN KEY (CNIC) REFERENCES Patient(CNIC)
);
CREATE TABLE Prescription_Medicine (
    Pid INT,
    Medicine_Name VARCHAR(100),
    PRIMARY KEY (Pid, Medicine_Name),
    FOREIGN KEY (Pid) REFERENCES Prescription(Pid)
);
CREATE TABLE Patient_Disease_Treatment (
    Pid INT,
    Treatment_Option varchar(100),
    PRIMARY KEY (Pid, Treatment_Option),
    FOREIGN KEY (Pid) REFERENCES Prescription(Pid)
);
CREATE TABLE Patient_Allergies_Prevention (
    Pid INT,
    Prevention_Tips varchar(100),
    PRIMARY KEY (Pid, Prevention_Tips),
    FOREIGN KEY (Pid) REFERENCES Prescription(Pid)
);
CREATE TABLE Result_in (
    Pid INT,
    Dia_id INT,
    PRIMARY KEY (Pid, Dia_id),
    FOREIGN KEY (Pid) REFERENCES Prescription(Pid),
    FOREIGN KEY (Dia_id) REFERENCES Diagnosis(Dia_id)
);
CREATE TABLE Medical_Test (
    Mid INT PRIMARY KEY,
    Name VARCHAR(100),
    Expiry DATE,
    Status VARCHAR(50),
    Date DATE,
    Validity_Period INT,
    Organ VARCHAR(50),
    Result varchar(200),
    Duration INT,
    Urgency_Level VARCHAR(50),
    Activity_Level VARCHAR(50),
    CNIC VARCHAR(15),
    FOREIGN KEY (CNIC) REFERENCES Patient(CNIC)
);
CREATE TABLE Medical_Image (
    Mid INT PRIMARY KEY,
    Image Bit,
    FOREIGN KEY (Mid) REFERENCES Medical_Test(Mid)
);
CREATE TABLE Verify (
    Mid INT,
    Dia_id INT,
    PRIMARY KEY (Mid, Dia_id),
    FOREIGN KEY (Mid) REFERENCES Medical_Test(Mid),
    FOREIGN KEY (Dia_id) REFERENCES Diagnosis(Dia_id)
);
CREATE TABLE Detected_by (
    Did INT,
    Mid INT,
    PRIMARY KEY (Did, Mid),
    FOREIGN KEY (Did) REFERENCES Disease(D_id),
    FOREIGN KEY (Mid) REFERENCES Medical_Test(Mid)
);
CREATE TABLE Treated_by (
    D_id INT,
    Pid INT,
    PRIMARY KEY (D_id, Pid),
    FOREIGN KEY (D_id) REFERENCES Disease(D_id),
    FOREIGN KEY (Pid) REFERENCES Prescription(Pid)
);