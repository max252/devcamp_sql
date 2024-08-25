-- The average grade that is given by each professor
SELECT
  u.name,
  AVG (g.grade)
FROM
  user u
  JOIN user_course_relation uc ON u.userID = uc.userID
  JOIN grade g ON uc.courseID = g.courseID
WHERE
  uc.typeID = (
    SELECT
      typeID
    FROM
      type
    WHERE
      name = 'professor'
  )
GROUP BY
  u.name;

-- The top grades for each student
SELECT
  u.name,
  IFNULL(MAX(g.grade), 0)
FROM
  user u
  LEFT JOIN grade g ON u.userID = g.userID
  JOIN user_course_relation uc on uc.userID = u.userID
WHERE
  uc.typeID = (
    SELECT
      typeID
    FROM
      type
    WHERE
      name = 'student'
  )
GROUP BY
  u.name;

-- Sort students by the courses that they are enrolled in
SELECT
  u.name,
  c.name
FROM
  user u
  JOIN user_course_relation uc ON uc.userID = u.userID
  JOIN course c ON uc.courseID = c.courseID
WHERE
  uc.typeID = (
    SELECT
      typeID
    FROM
      type
    WHERE
      name = 'student'
  )
ORDER BY
  u.name;

-- Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course
SELECT
  c.name,
  AVG (g.grade) as grade
FROM
  course c
  JOIN grade g ON c.courseID = g.courseID
GROUP BY
  c.name
ORDER BY
  grade;

-- Finding which student and professor have the most courses in common
SELECT
  us.name,
  up.name,
  COUNT(ucs.courseID) as cmax
FROM
  user_course_relation ucs
  JOIN (
    SELECT
      *
    FROM
      user_course_relation
    WHERE
      user_course_relation.typeID = (
        SELECT
          typeID
        FROM
          type
        WHERE
          name = 'professor'
      )
  ) ucp ON ucp.courseID = ucs.courseID
  JOIN user us ON ucs.userID = us.userID
  JOIN user up ON ucp.userID = up.userID
WHERE
  ucs.typeID = (
    SELECT
      typeID
    FROM
      type
    WHERE
      name = 'student'
  )
GROUP BY
  ucs.userID,
  ucp.userID
ORDER BY
  cmax DESC
LIMIT
  1;
