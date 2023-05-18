-- Table: users
CREATE TABLE users (
  id INT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL,
  -- additional user fields can be added here
);

-- Table: streams
CREATE TABLE streams (
  id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  user_id INT NOT NULL,
  created_at DATETIME NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table: viewers
CREATE TABLE viewers (
  id INT PRIMARY KEY,
  stream_id INT NOT NULL,
  user_id INT NOT NULL,
  joined_at DATETIME NOT NULL,
  FOREIGN KEY (stream_id) REFERENCES streams(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table: chat_messages
CREATE TABLE chat_messages (
  id INT PRIMARY KEY,
  stream_id INT NOT NULL,
  user_id INT NOT NULL,
  message VARCHAR(255) NOT NULL,
  created_at DATETIME NOT NULL,
  FOREIGN KEY (stream_id) REFERENCES streams(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Inserting values into the users table
INSERT INTO users (id, username, email, password, created_at)
VALUES
  (1, 'johnDoe', 'johndoe@example.com', 'password123', '2023-05-10 10:00:00'),
  (2, 'janeSmith', 'janesmith@example.com', 'pass456', '2023-05-10 11:30:00'),
  (3, 'alexJones', 'alexjones@example.com', 'securepass', '2023-05-10 12:15:00');
  
-- Inserting values into the streams table
INSERT INTO streams (id, title, user_id, created_at)
VALUES
  (1, 'Gaming Stream', 1, '2023-05-10 10:30:00'),
  (2, 'Music Stream', 2, '2023-05-10 11:45:00'),
  (3, 'Cooking Stream', 3, '2023-05-10 12:30:00');

-- Inserting values into the viewers table
INSERT INTO viewers (id, stream_id, user_id, joined_at)
VALUES
  (1, 1, 2, '2023-05-10 10:35:00'),
  (2, 1, 3, '2023-05-10 10:40:00'),
  (3, 2, 1, '2023-05-10 11:50:00'),
  (4, 3, 1, '2023-05-10 12:40:00');

-- Inserting values into the chat_messages table
INSERT INTO chat_messages (id, stream_id, user_id, message, created_at)
VALUES
  (1, 1, 2, 'Hello everyone!', '2023-05-10 10:38:00'),
  (2, 1, 3, 'Hey, how are you?', '2023-05-10 10:39:00'),
  (3, 2, 1, 'I love this song!', '2023-05-10 11:52:00'),
  (4, 3, 1, 'This recipe is amazing!', '2023-05-10 12:42:00');