CREATE TABLE Activity (
  actID VARCHAR2(24) NOT NULL,
  actName VARCHAR2(50) NOT NULL,
  actLocation VARCHAR2(50) NOT NULL,
  PRIMARY KEY (actID),
  FOREIGN KEY (sesID) REFERENCES Session
);