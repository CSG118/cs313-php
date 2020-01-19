-- Creating tables
CREATE TABLE Users (
  user_id int NOT NULL,
  full_name varchar(255) NOT NULL
);

CREATE TABLE Speakers (
  speaker_id int  NOT NULL,
  title varchar(255) NOT NULL,
  full_name varchar(255) NOT NULL,
  position varchar(255) NOT NULL
);

CREATE TABLE Sessions (
  session_id int NOT NULL,
  year int NOT NULL,
  month varchar(10) NOT NULL,
  day varchar //[Sat|Sun] NOT NULL,
  is_morning boolean NOT NULL
 );
 
CREATE TABLE Notes (
   note_id int NOT NULL,
   note varchar(500) NOT NULL,
   user_id int NOT NULL,
   speaker_id int NOT NULL,
   session_id int NOT NULL,
   PRIMARY KEY (note_id),
   FOREIGN KEY (user_id) REFERENCES users(user_id),
   FOREIGN KEY (speaker_id_id) REFERENCES speakers(speaker_id),
   FOREIGN KEY (session_id) REFERENCES sessions(session_id)
 );