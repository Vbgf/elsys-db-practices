CREATE TABLE users(
  userid INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  age INT
);

CREATE TABLE groups(
  groupid INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL,
  dateFounded TIMESTAMP NOT NULL
);

CREATE TABLE events(
  eventid INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL,
  dateEvent TIMESTAMP NOT NULL,
  location VARCHAR(50) NOT NULL
);

CREATE TABLE userGroup(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  refUser INT NOT NULL,
  refGroup INT NOT NULL,
  FOREIGN KEY (refUser) REFERENCES users(userid),
  FOREIGN KEY (refGroup) REFERENCES groups(groupid)
);

CREATE TABLE groupEvents(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  refGroup INT NOT NULL,
  refEvent INT NOT NULL,
  FOREIGN KEY (refGroup) REFERENCES groups(groupid),
  FOREIGN KEY (refEvent) REFERENCES events(eventid)
);
