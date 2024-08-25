INSERT INTO
  type (name)
VALUES
  ('student'),
  ('professor');

INSERT INTO
  user (name)
VALUES
  ('Test Student 1'),
  ('Test Student 2'),
  ('Test Student 3'),
  ('Test Student 4'),
  ('Test Professor 1'),
  ('Test Professor 2'),
  ('Test Professor 3');

INSERT INTO
  course (name)
VALUES
  ('Course 1'),
  ('Course 2'),
  ('Course 3'),
  ('Course 4'),
  ('Course 5');

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Professor 1'
  and course.name = 'Course 1'
  and type.name = 'professor';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Professor 2'
  and course.name = 'Course 2'
  and type.name = 'professor';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Professor 3'
  and course.name = 'Course 3'
  and type.name = 'professor';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Professor 1'
  and course.name = 'Course 4'
  and type.name = 'professor';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Professor 1'
  and course.name = 'Course 5'
  and type.name = 'professor';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 1'
  and course.name = 'Course 1'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 1'
  and course.name = 'Course 2'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 2'
  and course.name = 'Course 2'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 2'
  and course.name = 'Course 3'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 3'
  and course.name = 'Course 3'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 3'
  and course.name = 'Course 1'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 1'
  and course.name = 'Course 4'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 2'
  and course.name = 'Course 4'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 3'
  and course.name = 'Course 4'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 4'
  and course.name = 'Course 1'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 4'
  and course.name = 'Course 4'
  and type.name = 'student';

INSERT INTO
  user_course_relation (userID, courseID, typeID)
SELECT
  user.userID,
  course.courseID,
  type.typeID
FROM
  user,
  course,
  type
WHERE
  user.name = 'Test Student 4'
  and course.name = 'Course 5'
  and type.name = 'student';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  1,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 1'
  and course.name = 'Course 1';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  5,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 1'
  and course.name = 'Course 2';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  6,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 2'
  and course.name = 'Course 2';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  9,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 2'
  and course.name = 'Course 3';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  10,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 3'
  and course.name = 'Course 3';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  2,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 3'
  and course.name = 'Course 1';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  3,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 1'
  and course.name = 'Course 1';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  7,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 1'
  and course.name = 'Course 2';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  8,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 2'
  and course.name = 'Course 2';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  11,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 2'
  and course.name = 'Course 3';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  12,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 3'
  and course.name = 'Course 3';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  4,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 3'
  and course.name = 'Course 1';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  2,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 1'
  and course.name = 'Course 4';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  2,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 2'
  and course.name = 'Course 4';

INSERT INTO
  grade (grade, userID, courseID)
SELECT
  2,
  user.userID,
  course.courseID
FROM
  user,
  course
WHERE
  user.name = 'Test Student 3'
  and course.name = 'Course 4';
