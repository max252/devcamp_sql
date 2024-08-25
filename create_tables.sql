-- User type (student or professor)
CREATE TABLE type (
  typeID INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (typeID)
);

-- All users
CREATE TABLE user (
  userID INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (userID)
);

-- Courses
CREATE TABLE course (
  courseID INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (courseID)
);

-- User to courses relation
CREATE TABLE user_course_relation (
  user_courseID INT AUTO_INCREMENT NOT NULL,
  userID INT NOT NULL,
  courseID INT NOT NULL,
  typeID INT,
  PRIMARY KEY (user_courseID, userID, courseID, typeID),
  FOREIGN KEY (userID) REFERENCES user (userID),
  FOREIGN KEY (courseID) REFERENCES course (courseID),
  FOREIGN KEY (typeID) REFERENCES type (typeID)
);

-- Grade
CREATE TABLE grade (
  gradeID INT AUTO_INCREMENT NOT NULL,
  grade INT NOT NULL,
  userID INT NOT NULL,
  courseID INT NOT NULL,
  PRIMARY KEY (gradeID),
  FOREIGN KEY (userID) REFERENCES user (userID),
  FOREIGN KEY (courseID) REFERENCES course (courseID)
);
