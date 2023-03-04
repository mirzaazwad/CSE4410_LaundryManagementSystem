DROP TABLE Notification;
CREATE TABLE Notification(
  NotificationID varchar(100),
  NotificationMessage varchar(255),
  laundryID varchar(50),
  email varchar(100),
  CONSTRAINT pk_Notification PRIMARY KEY(NotificationID),
  CONSTRAINT fk_NotificationUSERS FOREIGN KEY (email) REFERENCES USERS(email),
  CONSTRAINT fk_NotificationLaundry FOREIGN KEY(laundryID) REFERENCES LAUNDRY(laundryID)
);