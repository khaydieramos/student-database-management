CREATE TABLE Students (
           sid VARCHAR(50) PRIMARY KEY NOT NULL,
           name VARCHAR(50) NOT NULL,
           gpa REAL
);




CREATE TABLE Courses(
        cid VARCHAR(50) PRIMARY KEY NOT NULL, 
        cname VARCHAR(50) NOT NULL, 
        credits INTEGER
);


CREATE TABLE Enrolled(
        sid VARCHAR(50), 
        cid VARCHAR(50), 
        grade VARCHAR(50),
        PRIMARY KEY (sid, cid),
        FOREIGN KEY (sid) REFERENCES Students (sid),
        FOREIGN KEY (cid) REFERENCES Courses (cid) 


);


INSERT INTO Students (sid, name, gpa) VALUES 
('S101', 'Michael', 2.78),
('S102', 'George', 3.51),
('S103', 'Rios', 3.13);


INSERT INTO Students (sid, name, gpa) VALUES ('S001', 'Student_1', 2.78);
INSERT INTO Students (sid, name, gpa) VALUES ('S002', 'Student_2', 3.51);
INSERT INTO Students (sid, name, gpa) VALUES ('S003', 'Student_3', 3.13);
INSERT INTO Students (sid, name, gpa) VALUES ('S004', 'Student_4', 2.39);
INSERT INTO Students (sid, name, gpa) VALUES ('S005', 'Student_5', 3.81);
INSERT INTO Students (sid, name, gpa) VALUES ('S006', 'Student_6', 2.21);
INSERT INTO Students (sid, name, gpa) VALUES ('S007', 'Student_7', 3.06);
INSERT INTO Students (sid, name, gpa) VALUES ('S008', 'Student_8', 3.94);
INSERT INTO Students (sid, name, gpa) VALUES ('S009', 'Student_9', 2.46);
INSERT INTO Students (sid, name, gpa) VALUES ('S010', 'Student_10', 3.34);
INSERT INTO Students (sid, name, gpa) VALUES ('S011', 'Student_11', 3.18);
INSERT INTO Students (sid, name, gpa) VALUES ('S012', 'Student_12', 3.42);
INSERT INTO Students (sid, name, gpa) VALUES ('S013', 'Student_13', 2.27);
INSERT INTO Students (sid, name, gpa) VALUES ('S014', 'Student_14', 3.53);
INSERT INTO Students (sid, name, gpa) VALUES ('S015', 'Student_15', 3.15);
INSERT INTO Students (sid, name, gpa) VALUES ('S016', 'Student_16', 2.91);
INSERT INTO Students (sid, name, gpa) VALUES ('S017', 'Student_17', 3.79);
INSERT INTO Students (sid, name, gpa) VALUES ('S018', 'Student_18', 2.68);
INSERT INTO Students (sid, name, gpa) VALUES ('S019', 'Student_19', 3.02);
INSERT INTO Students (sid, name, gpa) VALUES ('S020', 'Student_20', 3.47);
INSERT INTO Students (sid, name, gpa) VALUES ('S021', 'Student_21', 3.64);
INSERT INTO Students (sid, name, gpa) VALUES ('S022', 'Student_22', 2.76);
INSERT INTO Students (sid, name, gpa) VALUES ('S023', 'Student_23', 2.88);
INSERT INTO Students (sid, name, gpa) VALUES ('S024', 'Student_24', 3.56);
INSERT INTO Students (sid, name, gpa) VALUES ('S025', 'Student_25', 3.91);
INSERT INTO Students (sid, name, gpa) VALUES ('S026', 'Student_26', 2.97);
INSERT INTO Students (sid, name, gpa) VALUES ('S027', 'Student_27', 2.42);
INSERT INTO Students (sid, name, gpa) VALUES ('S028', 'Student_28', 3.77);
INSERT INTO Students (sid, name, gpa) VALUES ('S029', 'Student_29', 2.31);
INSERT INTO Students (sid, name, gpa) VALUES ('S030', 'Student_30', 3.65);
INSERT INTO Students (sid, name, gpa) VALUES ('S031', 'Student_31', 3.25);
INSERT INTO Students (sid, name, gpa) VALUES ('S032', 'Student_32', 2.53);
INSERT INTO Students (sid, name, gpa) VALUES ('S033', 'Student_33', 3.12);
INSERT INTO Students (sid, name, gpa) VALUES ('S034', 'Student_34', 2.71);
INSERT INTO Students (sid, name, gpa) VALUES ('S035', 'Student_35', 3.85);
INSERT INTO Students (sid, name, gpa) VALUES ('S036', 'Student_36', 2.34);
INSERT INTO Students (sid, name, gpa) VALUES ('S037', 'Student_37', 3.21);
INSERT INTO Students (sid, name, gpa) VALUES ('S038', 'Student_38', 2.66);
INSERT INTO Students (sid, name, gpa) VALUES ('S039', 'Student_39', 3.92);
INSERT INTO Students (sid, name, gpa) VALUES ('S040', 'Student_40', 2.84);
INSERT INTO Students (sid, name, gpa) VALUES ('S041', 'Student_41', 3.37);
INSERT INTO Students (sid, name, gpa) VALUES ('S042', 'Student_42', 2.45);
INSERT INTO Students (sid, name, gpa) VALUES ('S043', 'Student_43', 3.11);
INSERT INTO Students (sid, name, gpa) VALUES ('S044', 'Student_44', 2.55);
INSERT INTO Students (sid, name, gpa) VALUES ('S045', 'Student_45', 3.67);
INSERT INTO Students (sid, name, gpa) VALUES ('S046', 'Student_46', 2.98);
INSERT INTO Students (sid, name, gpa) VALUES ('S047', 'Student_47', 3.72);
INSERT INTO Students (sid, name, gpa) VALUES ('S048', 'Student_48', 2.62);
INSERT INTO Students (sid, name, gpa) VALUES ('S049', 'Student_49', 3.48);
INSERT INTO Students (sid, name, gpa) VALUES ('S050', 'Student_50', 2.93);




INSERT INTO Courses (cid, cname, credits) VALUES ('C101', 'Database Systems', 3);
INSERT INTO Courses (cid, cname, credits) VALUES ('C102', 'Operating Systems', 4);
INSERT INTO Courses (cid, cname, credits) VALUES ('C103', 'Data Mining', 3);
INSERT INTO Courses (cid, cname, credits) VALUES ('C104', 'Computer Networks', 3);
INSERT INTO Courses (cid, cname, credits) VALUES ('C105', 'Artificial Intelligence', 4);
INSERT INTO Courses (cid, cname, credits) VALUES ('C106', 'Machine Learning', 3);
INSERT INTO Courses (cid, cname, credits) VALUES ('C107', 'Software Engineering', 3);
INSERT INTO Courses (cid, cname, credits) VALUES ('C108', 'Algorithms', 4);
INSERT INTO Courses (cid, cname, credits) VALUES ('C109', 'Web Development', 3);
INSERT INTO Courses (cid, cname, credits) VALUES ('C110', 'Cybersecurity', 4);


INSERT INTO Enrolled (sid, cid, grade) VALUES
('S001', 'C101', 'A'),
('S001', 'C104', 'B'),
('S001', 'C109', 'C'),


('S002', 'C102', 'B'),
('S002', 'C106', 'A'),
('S002', 'C110', 'D'),


('S003', 'C103', 'C'),
('S003', 'C105', 'B'),
('S003', 'C108', 'A'),


('S004', 'C101', 'B'),
('S004', 'C107', 'F'),
('S004', 'C110', 'C'),


('S005', 'C102', 'A'),
('S005', 'C104', 'B'),
('S005', 'C109', 'D'),


('S006', 'C103', 'C'),
('S006', 'C106', 'A'),
('S006', 'C108', 'B'),


('S007', 'C101', 'B'),
('S007', 'C105', 'A'),
('S007', 'C110', 'C'),


('S008', 'C102', 'D'),
('S008', 'C104', 'B'),
('S008', 'C109', 'A'),


('S009', 'C103', 'C'),
('S009', 'C106', 'B'),
('S009', 'C108', 'F'),


('S010', 'C101', 'A'),
('S010', 'C107', 'C'),
('S010', 'C110', 'B'),


('S011', 'C102', 'B'),
('S011', 'C104', 'A'),
('S011', 'C109', 'C'),


('S012', 'C103', 'C'),
('S012', 'C106', 'B'),
('S012', 'C108', 'A'),


('S013', 'C101', 'A'),
('S013', 'C105', 'C'),
('S013', 'C110', 'B'),


('S014', 'C102', 'D'),
('S014', 'C104', 'B'),
('S014', 'C107', 'A'),


('S015', 'C103', 'C'),
('S015', 'C106', 'A'),
('S015', 'C109', 'B'),


('S016', 'C101', 'B'),
('S016', 'C105', 'D'),
('S016', 'C108', 'A'),


('S017', 'C102', 'C'),
('S017', 'C104', 'B'),
('S017', 'C110', 'A'),


('S018', 'C103', 'A'),
('S018', 'C106', 'C'),
('S018', 'C107', 'B'),


('S019', 'C101', 'C'),
('S019', 'C104', 'B'),
('S019', 'C108', 'A'),


('S020', 'C102', 'D'),
('S020', 'C105', 'B'),
('S020', 'C109', 'C'),


('S021', 'C103', 'B'),
('S021', 'C106', 'C'),
('S021', 'C110', 'A'),


('S022', 'C101', 'A'),
('S022', 'C104', 'C'),
('S022', 'C107', 'B'),


('S023', 'C102', 'B'),
('S023', 'C105', 'A'),
('S023', 'C109', 'D'),


('S024', 'C103', 'C'),
('S024', 'C106', 'B'),
('S024', 'C108', 'A'),


('S025', 'C101', 'B'),
('S025', 'C104', 'C'),
('S025', 'C110', 'A'),


('S026', 'C102', 'A'),
('S026', 'C107', 'C'),
('S026', 'C109', 'B'),


('S027', 'C103', 'C'),
('S027', 'C105', 'B'),
('S027', 'C108', 'A'),


('S028', 'C101', 'A'),
('S028', 'C106', 'C'),
('S028', 'C109', 'B'),


('S029', 'C102', 'C'),
('S029', 'C104', 'B'),
('S029', 'C110', 'A'),


('S030', 'C103', 'D'),
('S030', 'C105', 'C'),
('S030', 'C107', 'A'),


('S031', 'C101', 'B'),
('S031', 'C106', 'C'),
('S031', 'C109', 'A'),


('S032', 'C102', 'A'),
('S032', 'C104', 'C'),
('S032', 'C108', 'B'),


('S033', 'C103', 'B'),
('S033', 'C107', 'A'),
('S033', 'C110', 'C'),


('S034', 'C101', 'A'),
('S034', 'C105', 'B'),
('S034', 'C109', 'C'),


('S035', 'C102', 'B'),
('S035', 'C106', 'D'),
('S035', 'C108', 'A'),


('S036', 'C103', 'C'),
('S036', 'C104', 'B'),
('S036', 'C110', 'A'),


('S037', 'C101', 'B'),
('S037', 'C107', 'C'),
('S037', 'C109', 'A'),


('S038', 'C102', 'A'),
('S038', 'C105', 'B'),
('S038', 'C108', 'C'),


('S039', 'C103', 'B'),
('S039', 'C106', 'C'),
('S039', 'C110', 'A'),


('S040', 'C101', 'C'),
('S040', 'C104', 'A'),
('S040', 'C107', 'B'),


('S041', 'C102', 'B'),
('S041', 'C105', 'C'),
('S041', 'C109', 'A'),


('S042', 'C103', 'A'),
('S042', 'C106', 'B'),
('S042', 'C108', 'C'),


('S043', 'C101', 'B'),
('S043', 'C104', 'C'),
('S043', 'C110', 'A'),


('S044', 'C102', 'A'),
('S044', 'C105', 'B'),
('S044', 'C107', 'C'),


('S045', 'C103', 'C'),
('S045', 'C106', 'B'),
('S045', 'C109', 'A'),


('S046', 'C101', 'B'),
('S046', 'C104', 'D'),
('S046', 'C108', 'A'),


('S047', 'C102', 'A'),
('S047', 'C105', 'C'),
('S047', 'C110', 'B'),


('S048', 'C103', 'B'),
('S048', 'C106', 'C'),
('S048', 'C107', 'A'),


('S049', 'C101', 'A'),
('S049', 'C104', 'B'),
('S049', 'C109', 'C'),


('S050', 'C102', 'B'),
('S050', 'C105', 'D'),
('S050', 'C110', 'A'),


('S101', 'C101', 'A'),
('S101', 'C104', 'C'),
('S101', 'C107', 'B'),


('S102', 'C102', 'B'),
('S102', 'C105', 'A'),
('S102', 'C108', 'D'),


('S103', 'C103', 'C'),
('S103', 'C106', 'B'),
('S103', 'C109', 'A');