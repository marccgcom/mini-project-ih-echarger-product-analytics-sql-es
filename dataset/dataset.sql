--
-- File generated with SQLiteStudio v3.4.4 on sá. jun. 8 10:22:06 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: chargers
DROP TABLE IF EXISTS chargers;

CREATE TABLE IF NOT EXISTS chargers (
    id    INTEGER       PRIMARY KEY AUTOINCREMENT,
    label VARCHAR (128) NOT NULL,
    type  TEXT          CHECK (type IN ('AC', 'DC') ) 
                        NOT NULL
                        DEFAULT 'AC'
);

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         1,
                         'Home #1',
                         'AC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         2,
                         'Home #2',
                         'DC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         3,
                         'Home #3',
                         'AC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         4,
                         'Home #4',
                         'DC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         5,
                         'Home #5',
                         'AC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         6,
                         'Office #1',
                         'DC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         7,
                         'Office #2',
                         'AC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         8,
                         'Office #3',
                         'DC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         9,
                         'Office #4',
                         'AC'
                     );

INSERT INTO chargers (
                         id,
                         label,
                         type
                     )
                     VALUES (
                         10,
                         'Office #5',
                         'DC'
                     );


-- Table: sessions
DROP TABLE IF EXISTS sessions;

CREATE TABLE IF NOT EXISTS sessions (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    user_id    INT      NOT NULL,
    charger_id INT      NOT NULL,
    start_time DATETIME NOT NULL,
    end_time   DATETIME,
    FOREIGN KEY (
        user_id
    )
    REFERENCES users (id),
    FOREIGN KEY (
        charger_id
    )
    REFERENCES chargers (id) 
);

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         1,
                         4,
                         2,
                         '2021-01-05 01:26:24',
                         '2021-01-06 19:40:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         2,
                         9,
                         9,
                         '2021-01-10 10:04:48',
                         '2021-01-13 02:38:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         3,
                         1,
                         9,
                         '2021-01-10 06:00:00',
                         '2021-01-11 15:36:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         4,
                         7,
                         1,
                         '2021-01-04 01:55:12',
                         '2021-01-05 22:48:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         5,
                         2,
                         10,
                         '2021-01-10 01:40:48',
                         '2021-01-12 11:16:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         6,
                         6,
                         7,
                         '2021-01-07 06:14:24',
                         '2021-01-09 18:00:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         7,
                         4,
                         10,
                         '2021-01-05 12:00:00',
                         '2021-01-07 21:50:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         8,
                         1,
                         2,
                         '2021-01-08 09:21:36',
                         '2021-01-09 22:19:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         9,
                         2,
                         5,
                         '2021-01-05 19:12:00',
                         '2021-01-08 02:09:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         10,
                         5,
                         7,
                         '2021-01-06 06:43:12',
                         '2021-01-08 00:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         11,
                         2,
                         10,
                         '2021-01-06 12:00:00',
                         '2021-01-09 06:14:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         12,
                         4,
                         4,
                         '2021-01-05 17:31:12',
                         '2021-01-07 06:43:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         13,
                         10,
                         8,
                         '2021-01-05 08:09:36',
                         '2021-01-07 20:52:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         14,
                         5,
                         3,
                         '2021-01-07 22:04:48',
                         '2021-01-10 20:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         15,
                         1,
                         7,
                         '2021-01-03 07:55:12',
                         '2021-01-04 18:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         16,
                         2,
                         7,
                         '2021-01-04 09:50:24',
                         '2021-01-06 11:16:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         17,
                         6,
                         10,
                         '2021-01-04 20:09:36',
                         '2021-01-07 12:28:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         18,
                         8,
                         10,
                         '2021-01-02 09:50:24',
                         '2021-01-03 19:12:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         19,
                         7,
                         2,
                         '2021-01-08 19:26:24',
                         '2021-01-11 07:55:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         20,
                         3,
                         2,
                         '2021-01-10 07:26:24',
                         '2021-01-11 08:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         21,
                         6,
                         5,
                         '2021-01-02 09:50:24',
                         '2021-01-03 19:55:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         22,
                         8,
                         1,
                         '2021-01-07 17:31:12',
                         '2021-01-08 20:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         23,
                         1,
                         6,
                         '2021-01-05 16:33:36',
                         '2021-01-07 12:28:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         24,
                         6,
                         3,
                         '2021-01-04 22:33:36',
                         '2021-01-06 08:09:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         25,
                         2,
                         8,
                         '2021-01-07 19:55:12',
                         '2021-01-10 15:36:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         26,
                         10,
                         9,
                         '2021-01-08 14:52:48',
                         '2021-01-11 06:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         27,
                         7,
                         10,
                         '2021-01-05 08:52:48',
                         '2021-01-07 15:07:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         28,
                         3,
                         6,
                         '2021-01-03 19:26:24',
                         '2021-01-04 22:48:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         29,
                         5,
                         7,
                         '2021-01-05 22:04:48',
                         '2021-01-08 12:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         30,
                         3,
                         4,
                         '2021-01-03 05:45:36',
                         '2021-01-04 19:26:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         31,
                         6,
                         6,
                         '2021-01-07 12:14:24',
                         '2021-01-09 01:40:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         32,
                         4,
                         4,
                         '2021-01-05 06:00:00',
                         '2021-01-06 15:21:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         33,
                         4,
                         2,
                         '2021-01-03 08:09:36',
                         '2021-01-05 20:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         34,
                         8,
                         1,
                         '2021-01-02 13:55:12',
                         '2021-01-03 15:36:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         35,
                         2,
                         7,
                         '2021-01-11 07:55:12',
                         '2021-01-12 09:21:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         36,
                         2,
                         10,
                         '2021-01-07 05:45:36',
                         '2021-01-09 00:14:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         37,
                         1,
                         1,
                         '2021-01-03 12:28:48',
                         '2021-01-04 18:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         38,
                         8,
                         9,
                         '2021-01-02 09:21:36',
                         '2021-01-05 01:12:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         39,
                         5,
                         3,
                         '2021-01-09 09:50:24',
                         '2021-01-11 15:50:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         40,
                         5,
                         5,
                         '2021-01-07 22:33:36',
                         '2021-01-10 04:33:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         41,
                         7,
                         5,
                         '2021-01-09 23:45:36',
                         '2021-01-11 05:31:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         42,
                         4,
                         2,
                         '2021-01-08 07:26:24',
                         '2021-01-09 08:38:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         43,
                         8,
                         1,
                         '2021-01-07 05:16:48',
                         '2021-01-10 00:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         44,
                         4,
                         6,
                         '2021-01-08 23:45:36',
                         '2021-01-10 15:36:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         45,
                         4,
                         6,
                         '2021-01-04 21:36:00',
                         '2021-01-07 08:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         46,
                         7,
                         3,
                         '2021-01-08 14:09:36',
                         '2021-01-10 21:50:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         47,
                         7,
                         5,
                         '2021-01-02 19:12:00',
                         '2021-01-04 10:33:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         48,
                         2,
                         3,
                         '2021-01-10 15:36:00',
                         '2021-01-12 23:02:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         49,
                         5,
                         3,
                         '2021-01-11 01:12:00',
                         '2021-01-12 14:52:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         50,
                         4,
                         10,
                         '2021-01-05 09:50:24',
                         '2021-01-06 22:19:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         51,
                         4,
                         7,
                         '2021-01-04 07:12:00',
                         '2021-01-06 02:52:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         52,
                         6,
                         4,
                         '2021-01-06 12:00:00',
                         '2021-01-08 02:52:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         53,
                         4,
                         10,
                         '2021-01-07 09:21:36',
                         '2021-01-09 15:36:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         54,
                         7,
                         3,
                         '2021-01-04 18:43:12',
                         '2021-01-06 18:00:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         55,
                         1,
                         2,
                         '2021-01-10 05:16:48',
                         '2021-01-12 00:14:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         56,
                         1,
                         1,
                         '2021-01-11 06:28:48',
                         '2021-01-13 18:00:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         57,
                         3,
                         10,
                         '2021-01-11 19:55:12',
                         '2021-01-13 12:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         58,
                         7,
                         1,
                         '2021-01-02 12:28:48',
                         '2021-01-04 09:21:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         59,
                         6,
                         1,
                         '2021-01-10 13:40:48',
                         '2021-01-12 15:50:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         60,
                         2,
                         4,
                         '2021-01-11 18:43:12',
                         '2021-01-14 15:50:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         61,
                         4,
                         5,
                         '2021-01-02 21:21:36',
                         '2021-01-04 08:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         62,
                         6,
                         5,
                         '2021-01-06 20:38:24',
                         '2021-01-08 00:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         63,
                         2,
                         5,
                         '2021-01-04 10:48:00',
                         '2021-01-05 17:16:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         64,
                         7,
                         4,
                         '2021-01-03 09:21:36',
                         '2021-01-04 11:02:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         65,
                         4,
                         8,
                         '2021-01-09 12:43:12',
                         '2021-01-11 06:00:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         66,
                         10,
                         10,
                         '2021-01-09 11:02:24',
                         '2021-01-12 06:28:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         67,
                         3,
                         8,
                         '2021-01-07 14:38:24',
                         '2021-01-08 16:19:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         68,
                         8,
                         8,
                         '2021-01-08 05:31:12',
                         '2021-01-09 06:28:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         69,
                         2,
                         5,
                         '2021-01-05 05:45:36',
                         '2021-01-07 02:52:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         70,
                         9,
                         5,
                         '2021-01-09 04:04:48',
                         '2021-01-10 15:07:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         71,
                         1,
                         7,
                         '2021-01-03 22:33:36',
                         '2021-01-06 18:57:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         72,
                         8,
                         1,
                         '2021-01-04 04:19:12',
                         '2021-01-06 15:21:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         73,
                         7,
                         5,
                         '2021-01-07 23:16:48',
                         '2021-01-10 19:12:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         74,
                         7,
                         9,
                         '2021-01-03 14:09:36',
                         '2021-01-05 09:50:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         75,
                         10,
                         6,
                         '2021-01-07 03:21:36',
                         '2021-01-09 01:40:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         76,
                         4,
                         1,
                         '2021-01-04 08:24:00',
                         '2021-01-05 09:36:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         77,
                         1,
                         9,
                         '2021-01-07 21:07:12',
                         '2021-01-09 04:19:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         78,
                         1,
                         5,
                         '2021-01-06 09:21:36',
                         '2021-01-08 06:14:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         79,
                         5,
                         3,
                         '2021-01-05 22:04:48',
                         '2021-01-07 03:07:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         80,
                         2,
                         6,
                         '2021-01-11 11:16:48',
                         '2021-01-13 13:40:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         81,
                         3,
                         6,
                         '2021-01-07 16:19:12',
                         '2021-01-09 03:21:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         82,
                         7,
                         6,
                         '2021-01-09 21:07:12',
                         '2021-01-11 08:52:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         83,
                         1,
                         2,
                         '2021-01-05 10:48:00',
                         '2021-01-06 18:28:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         84,
                         1,
                         2,
                         '2021-01-03 16:33:36',
                         '2021-01-05 12:00:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         85,
                         7,
                         10,
                         '2021-01-11 02:38:24',
                         '2021-01-13 07:55:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         86,
                         7,
                         7,
                         '2021-01-08 08:38:24',
                         '2021-01-11 01:55:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         87,
                         7,
                         1,
                         '2021-01-07 21:21:36',
                         '2021-01-09 02:09:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         88,
                         8,
                         5,
                         '2021-01-09 07:40:48',
                         '2021-01-11 15:07:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         89,
                         5,
                         3,
                         '2021-01-03 22:48:00',
                         '2021-01-05 06:43:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         90,
                         6,
                         10,
                         '2021-01-05 03:50:24',
                         '2021-01-06 10:04:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         91,
                         9,
                         4,
                         '2021-01-11 09:50:24',
                         '2021-01-13 03:50:24'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         92,
                         7,
                         9,
                         '2021-01-11 18:14:24',
                         '2021-01-14 15:07:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         93,
                         1,
                         9,
                         '2021-01-02 11:02:24',
                         '2021-01-05 09:36:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         94,
                         1,
                         10,
                         '2021-01-10 10:04:48',
                         '2021-01-11 11:45:36'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         95,
                         2,
                         4,
                         '2021-01-03 18:28:48',
                         '2021-01-04 20:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         96,
                         7,
                         1,
                         '2021-01-11 17:02:24',
                         '2021-01-13 04:04:48'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         97,
                         10,
                         7,
                         '2021-01-04 05:16:48',
                         '2021-01-06 11:31:12'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         98,
                         6,
                         7,
                         '2021-01-04 02:52:48',
                         '2021-01-06 08:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         99,
                         8,
                         3,
                         '2021-01-09 12:28:48',
                         '2021-01-10 20:24:00'
                     );

INSERT INTO sessions (
                         id,
                         user_id,
                         charger_id,
                         start_time,
                         end_time
                     )
                     VALUES (
                         100,
                         9,
                         3,
                         '2021-01-06 03:36:00',
                         '2021-01-08 19:55:12'
                     );


-- Table: users
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id      INTEGER       PRIMARY KEY AUTOINCREMENT,
    name    VARCHAR (128) NOT NULL,
    surname VARCHAR (128) NOT NULL
);

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      1,
                      'John',
                      'Peterson'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      2,
                      'Peter',
                      'Lars'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      3,
                      'Luca',
                      'Gates'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      4,
                      'Mery',
                      'Johnson'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      5,
                      'Jane',
                      'Streep'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      6,
                      'Louisa',
                      'Anderson'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      7,
                      'Alfred',
                      'Gollep'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      8,
                      'Mark',
                      'Ferguson'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      9,
                      'Monika',
                      'Laurence'
                  );

INSERT INTO users (
                      id,
                      name,
                      surname
                  )
                  VALUES (
                      10,
                      'Sheila',
                      'Thevis'
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
