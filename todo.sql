CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

INSERT INTO todos
(title, details, priority, created_at, completed_at)
VALUES
('Walk the dogs','','1','2017-08-30 07:11:35','2017-08-30 08:30:00');

INSERT INTO todos
(title, details, priority, created_at)
VALUES
('Take out the garbage','Get garbage from kitchen and bathroom','3','2017-09-05 11:33:05'),
('Go grocery shopping','Get eggs and bread','2','2017-09-01 12:01:01'),
('Bake cookies','Make oatmeal raisin cookies','1','2017-06-13 20:15:00'),
('Pay rent','Mail rent check','3','2017-09-01 15:04:30');

select title from todos where completed_at is Null;
select title from todos where priority > 1;
update todos SET completed_at = '2017-11-03 11:45:00' where id = 3;
delete from todos where id is NOT NULL;
