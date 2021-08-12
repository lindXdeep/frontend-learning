-- teachers
CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  firstname TEXT NOT NULL,
  lastname TEXT NOT NULL,
  email TEXT NOT NULL
);

-- courses
CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE
);

-- streams
CREATE TABLE streams (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  course_id INTEGER,
  number INTEGER NOT NULL,
  data NUMERIC NOT NULL,
  sum_students NUMERIC NOT NULL,

  FOREIGN KEY(course_id) REFERENCES courses(id)
);

-- achievements
CREATE TABLE achievements (
  teacher_id INTEGER NOT NULL,
  stream_id INTEGER NOT NULL,
  grade REAL,

  PRIMARY KEY(teacher_id, stream_id),
  FOREIGN KEY (teacher_id) REFERENCES teachers(id),
  FOREIGN KEY (stream_id) REFERENCES streams(id)
);

DROP TABLE teachers;
DROP TABLE courses;
DROP TABLE streams;
DROP TABLE achievements;