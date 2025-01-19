-- BEGIN TRANSACTION;
INSERT INTO users (id, name, email, password, created_at)
    VALUES (1, 'John Doe', 'johndoe@example.com', 'hashed_password', NOW())
    ON CONFLICT (id) DO NOTHING;  -- if user_id already exists
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (1, 1, '2024-01-01', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (2, 1, '2024-01-01', 16.33, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (3, 1, '2024-01-02', 5.48, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (4, 1, '2024-01-03', 27.31, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (5, 1, '2024-01-04', 23.5, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (6, 1, '2024-01-05', 46.36, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (7, 1, '2024-01-06', 21.44, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (8, 1, '2024-01-07', 27.94, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (9, 1, '2024-01-08', 60.0, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (10, 1, '2024-01-09', 11.87, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (11, 1, '2024-01-10', 11.54, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (12, 1, '2024-01-11', 20.87, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (13, 1, '2024-01-12', 819.64, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (14, 1, '2024-01-13', 32.79, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (15, 1, '2024-01-14', 12.26, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (16, 1, '2024-01-15', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (17, 1, '2024-01-15', 61.91, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (18, 1, '2024-01-16', 62.5, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (19, 1, '2024-01-17', 10.62, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (20, 1, '2024-01-18', 7.42, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (21, 1, '2024-01-19', 16.81, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (22, 1, '2024-01-20', 5.09, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (23, 1, '2024-01-21', 70.65, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (24, 1, '2024-01-22', 19.57, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (25, 1, '2024-01-23', 50.45, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (26, 1, '2024-01-24', 3.96, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (27, 1, '2024-01-25', 9.73, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (28, 1, '2024-01-26', 56.43, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (29, 1, '2024-01-27', 41.77, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (30, 1, '2024-01-28', 1002.45, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (31, 1, '2024-01-29', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (32, 1, '2024-01-29', 13.32, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (33, 1, '2024-01-30', 29.71, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (34, 1, '2024-01-31', 45.37, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (35, 1, '2024-02-01', 20.73, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (36, 1, '2024-02-02', 16.56, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (37, 1, '2024-02-03', 18.11, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (38, 1, '2024-02-04', 29.73, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (39, 1, '2024-02-05', 13.14, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (40, 1, '2024-02-06', 16.38, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (41, 1, '2024-02-07', 12.45, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (42, 1, '2024-02-08', 867.5, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (43, 1, '2024-02-09', 84.72, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (44, 1, '2024-02-10', 12.76, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (45, 1, '2024-02-11', 26.69, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (46, 1, '2024-02-12', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (47, 1, '2024-02-12', 14.34, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (48, 1, '2024-02-13', 13.86, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (49, 1, '2024-02-14', 18.45, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (50, 1, '2024-02-15', 64.62, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (51, 1, '2024-02-16', 7.28, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (52, 1, '2024-02-17', 29.63, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (53, 1, '2024-02-18', 11.17, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (54, 1, '2024-02-19', 13.42, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (55, 1, '2024-02-20', 11.28, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (56, 1, '2024-02-21', 29.64, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (57, 1, '2024-02-22', 18.54, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (58, 1, '2024-02-23', 97.01, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (59, 1, '2024-02-24', 12.14, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (60, 1, '2024-02-25', 6.72, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (61, 1, '2024-02-26', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (62, 1, '2024-02-26', 34.7, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (63, 1, '2024-02-27', 22.2, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (64, 1, '2024-02-28', 749.06, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (65, 1, '2024-02-29', 49.96, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (66, 1, '2024-03-01', 43.27, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (67, 1, '2024-03-02', 88.81, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (68, 1, '2024-03-03', 14.79, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (69, 1, '2024-03-04', 3.43, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (70, 1, '2024-03-05', 13.14, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (71, 1, '2024-03-06', 68.1, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (72, 1, '2024-03-07', 24.55, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (73, 1, '2024-03-08', 115.18, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (74, 1, '2024-03-09', 22.49, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (75, 1, '2024-03-10', 9.12, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (76, 1, '2024-03-11', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (77, 1, '2024-03-11', 17.39, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (78, 1, '2024-03-12', 21.7, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (79, 1, '2024-03-13', 28.92, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (80, 1, '2024-03-14', 11.99, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (81, 1, '2024-03-15', 12.36, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (82, 1, '2024-03-16', 900.28, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (83, 1, '2024-03-17', 26.88, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (84, 1, '2024-03-18', 2.44, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (85, 1, '2024-03-19', 43.05, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (86, 1, '2024-03-20', 10.09, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (87, 1, '2024-03-21', 29.48, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (88, 1, '2024-03-22', 5.07, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (89, 1, '2024-03-23', 1076.52, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (90, 1, '2024-03-24', 16.99, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (91, 1, '2024-03-25', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (92, 1, '2024-03-25', 51.44, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (93, 1, '2024-03-26', 4.76, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (94, 1, '2024-03-27', 59.57, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (95, 1, '2024-03-28', 886.37, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (96, 1, '2024-03-29', 8.65, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (97, 1, '2024-03-30', 12.74, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (98, 1, '2024-03-31', 41.93, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (99, 1, '2024-04-01', 5.2, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (100, 1, '2024-04-02', 60.51, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (101, 1, '2024-04-03', 13.79, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (102, 1, '2024-04-04', 53.13, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (103, 1, '2024-04-05', 5.77, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (104, 1, '2024-04-06', 4.35, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (105, 1, '2024-04-07', 25.48, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (106, 1, '2024-04-08', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (107, 1, '2024-04-08', 880.4, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (108, 1, '2024-04-09', 71.34, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (109, 1, '2024-04-10', 72.41, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (110, 1, '2024-04-11', 17.96, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (111, 1, '2024-04-12', 17.19, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (112, 1, '2024-04-13', 55.04, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (113, 1, '2024-04-14', 48.77, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (114, 1, '2024-04-15', 43.72, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (115, 1, '2024-04-16', 22.31, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (116, 1, '2024-04-17', 5.66, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (117, 1, '2024-04-18', 141.69, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (118, 1, '2024-04-19', 13.29, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (119, 1, '2024-04-20', 11.16, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (120, 1, '2024-04-21', 25.73, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (121, 1, '2024-04-22', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (122, 1, '2024-04-22', 21.12, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (123, 1, '2024-04-23', 920.24, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (124, 1, '2024-04-24', 18.58, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (125, 1, '2024-04-25', 15.02, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (126, 1, '2024-04-26', 61.53, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (127, 1, '2024-04-27', 7.34, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (128, 1, '2024-04-28', 22.76, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (129, 1, '2024-04-29', 52.67, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (130, 1, '2024-04-30', 20.91, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (131, 1, '2024-05-01', 24.68, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (132, 1, '2024-05-02', 124.28, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (133, 1, '2024-05-03', 55.31, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (134, 1, '2024-05-04', 25.62, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (135, 1, '2024-05-05', 24.14, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (136, 1, '2024-05-06', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (137, 1, '2024-05-06', 24.78, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (138, 1, '2024-05-07', 19.48, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (139, 1, '2024-05-08', 9.28, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (140, 1, '2024-05-09', 7.87, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (141, 1, '2024-05-10', 19.9, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (142, 1, '2024-05-11', 874.54, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (143, 1, '2024-05-12', 63.46, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (144, 1, '2024-05-13', 50.78, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (145, 1, '2024-05-14', 29.68, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (146, 1, '2024-05-15', 21.86, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (147, 1, '2024-05-16', 42.2, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (148, 1, '2024-05-17', 8.48, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (149, 1, '2024-05-18', 69.23, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (150, 1, '2024-05-19', 15.19, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (151, 1, '2024-05-20', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (152, 1, '2024-05-20', 21.73, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (153, 1, '2024-05-21', 8.58, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (154, 1, '2024-05-22', 17.7, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (155, 1, '2024-05-23', 72.35, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (156, 1, '2024-05-24', 25.1, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (157, 1, '2024-05-25', 12.45, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (158, 1, '2024-05-26', 8.55, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (159, 1, '2024-05-27', 17.64, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (160, 1, '2024-05-28', 63.79, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (161, 1, '2024-05-29', 6.68, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (162, 1, '2024-05-30', 15.46, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (163, 1, '2024-05-31', 27.06, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (164, 1, '2024-06-01', 22.45, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (165, 1, '2024-06-02', 29.64, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (166, 1, '2024-06-03', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (167, 1, '2024-06-03', 12.26, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (168, 1, '2024-06-04', 23.33, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (169, 1, '2024-06-05', 23.56, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (170, 1, '2024-06-06', 20.16, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (171, 1, '2024-06-07', 66.6, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (172, 1, '2024-06-08', 74.68, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (173, 1, '2024-06-09', 5.63, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (174, 1, '2024-06-10', 28.48, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (175, 1, '2024-06-11', 26.6, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (176, 1, '2024-06-12', 25.7, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (177, 1, '2024-06-13', 113.05, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (178, 1, '2024-06-14', 16.56, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (179, 1, '2024-06-15', 35.83, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (180, 1, '2024-06-16', 7.71, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (181, 1, '2024-06-17', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (182, 1, '2024-06-17', 14.47, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (183, 1, '2024-06-18', 25.19, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (184, 1, '2024-06-19', 21.89, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (185, 1, '2024-06-20', 9.43, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (186, 1, '2024-06-21', 16.94, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (187, 1, '2024-06-22', 119.69, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (188, 1, '2024-06-23', 35.48, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (189, 1, '2024-06-24', 1190.87, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (190, 1, '2024-06-25', 22.5, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (191, 1, '2024-06-26', 848.93, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (192, 1, '2024-06-27', 23.6, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (193, 1, '2024-06-28', 11.43, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (194, 1, '2024-06-29', 24.64, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (195, 1, '2024-06-30', 10.49, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (196, 1, '2024-07-01', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (197, 1, '2024-07-01', 49.22, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (198, 1, '2024-07-02', 16.33, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (199, 1, '2024-07-03', 34.7, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (200, 1, '2024-07-04', 14.77, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (201, 1, '2024-07-05', 67.75, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (202, 1, '2024-07-06', 13.75, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (203, 1, '2024-07-07', 816.3, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (204, 1, '2024-07-08', 76.55, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (205, 1, '2024-07-09', 85.4, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (206, 1, '2024-07-10', 23.91, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (207, 1, '2024-07-11', 15.9, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (208, 1, '2024-07-12', 80.24, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (209, 1, '2024-07-13', 24.18, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (210, 1, '2024-07-14', 10.54, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (211, 1, '2024-07-15', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (212, 1, '2024-07-15', 13.88, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (213, 1, '2024-07-16', 4.18, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (214, 1, '2024-07-17', 20.87, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (215, 1, '2024-07-18', 22.73, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (216, 1, '2024-07-19', 855.18, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (217, 1, '2024-07-20', 861.4, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (218, 1, '2024-07-21', 10.8, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (219, 1, '2024-07-22', 29.26, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (220, 1, '2024-07-23', 10.11, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (221, 1, '2024-07-24', 29.37, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (222, 1, '2024-07-25', 23.19, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (223, 1, '2024-07-26', 99.12, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (224, 1, '2024-07-27', 9.83, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (225, 1, '2024-07-28', 9.7, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (226, 1, '2024-07-29', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (227, 1, '2024-07-29', 753.94, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (228, 1, '2024-07-30', 20.62, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (229, 1, '2024-07-31', 25.68, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (230, 1, '2024-08-01', 1185.64, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (231, 1, '2024-08-02', 55.75, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (232, 1, '2024-08-03', 52.33, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (233, 1, '2024-08-04', 144.53, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (234, 1, '2024-08-05', 14.38, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (235, 1, '2024-08-06', 59.01, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (236, 1, '2024-08-07', 20.51, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (237, 1, '2024-08-08', 13.28, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (238, 1, '2024-08-09', 28.7, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (239, 1, '2024-08-10', 25.49, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (240, 1, '2024-08-11', 18.89, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (241, 1, '2024-08-12', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (242, 1, '2024-08-12', 24.68, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (243, 1, '2024-08-13', 13.04, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (244, 1, '2024-08-14', 18.58, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (245, 1, '2024-08-15', 14.39, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (246, 1, '2024-08-16', 17.43, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (247, 1, '2024-08-17', 12.54, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (248, 1, '2024-08-18', 707.84, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (249, 1, '2024-08-19', 82.49, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (250, 1, '2024-08-20', 6.44, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (251, 1, '2024-08-21', 1193.63, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (252, 1, '2024-08-22', 55.49, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (253, 1, '2024-08-23', 834.89, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (254, 1, '2024-08-24', 6.64, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (255, 1, '2024-08-25', 20.97, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (256, 1, '2024-08-26', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (257, 1, '2024-08-26', 10.46, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (258, 1, '2024-08-27', 6.93, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (259, 1, '2024-08-28', 14.37, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (260, 1, '2024-08-29', 15.46, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (261, 1, '2024-08-30', 10.47, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (262, 1, '2024-08-31', 15.7, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (263, 1, '2024-09-01', 23.52, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (264, 1, '2024-09-02', 28.52, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (265, 1, '2024-09-03', 8.18, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (266, 1, '2024-09-04', 63.2, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (267, 1, '2024-09-05', 4.65, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (268, 1, '2024-09-06', 44.62, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (269, 1, '2024-09-07', 7.05, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (270, 1, '2024-09-08', 94.7, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (271, 1, '2024-09-09', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (272, 1, '2024-09-09', 819.25, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (273, 1, '2024-09-10', 5.01, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (274, 1, '2024-09-11', 23.12, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (275, 1, '2024-09-12', 6.6, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (276, 1, '2024-09-13', 112.41, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (277, 1, '2024-09-14', 49.64, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (278, 1, '2024-09-15', 53.65, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (279, 1, '2024-09-16', 1112.03, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (280, 1, '2024-09-17', 104.3, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (281, 1, '2024-09-18', 9.68, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (282, 1, '2024-09-19', 18.73, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (283, 1, '2024-09-20', 13.77, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (284, 1, '2024-09-21', 23.64, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (285, 1, '2024-09-22', 15.11, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (286, 1, '2024-09-23', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (287, 1, '2024-09-23', 13.67, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (288, 1, '2024-09-24', 7.0, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (289, 1, '2024-09-25', 34.55, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (290, 1, '2024-09-26', 15.34, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (291, 1, '2024-09-27', 725.17, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (292, 1, '2024-09-28', 56.54, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (293, 1, '2024-09-29', 31.18, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (294, 1, '2024-09-30', 1193.06, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (295, 1, '2024-10-01', 9.04, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (296, 1, '2024-10-02', 14.36, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (297, 1, '2024-10-03', 20.71, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (298, 1, '2024-10-04', 63.8, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (299, 1, '2024-10-05', 13.86, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (300, 1, '2024-10-06', 17.89, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (301, 1, '2024-10-07', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (302, 1, '2024-10-07', 39.43, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (303, 1, '2024-10-08', 40.24, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (304, 1, '2024-10-09', 29.74, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (305, 1, '2024-10-10', 41.93, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (306, 1, '2024-10-11', 16.35, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (307, 1, '2024-10-12', 29.76, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (308, 1, '2024-10-13', 21.66, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (309, 1, '2024-10-14', 17.08, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (310, 1, '2024-10-15', 18.9, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (311, 1, '2024-10-16', 15.69, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (312, 1, '2024-10-17', 86.02, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (313, 1, '2024-10-18', 8.04, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (314, 1, '2024-10-19', 17.61, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (315, 1, '2024-10-20', 858.81, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (316, 1, '2024-10-21', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (317, 1, '2024-10-21', 28.2, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (318, 1, '2024-10-22', 28.67, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (319, 1, '2024-10-23', 18.33, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (320, 1, '2024-10-24', 28.4, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (321, 1, '2024-10-25', 42.92, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (322, 1, '2024-10-26', 32.85, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (323, 1, '2024-10-27', 9.06, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (324, 1, '2024-10-28', 705.88, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (325, 1, '2024-10-29', 9.83, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (326, 1, '2024-10-30', 28.45, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (327, 1, '2024-10-31', 21.44, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (328, 1, '2024-11-01', 12.73, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (329, 1, '2024-11-02', 50.22, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (330, 1, '2024-11-03', 5.18, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (331, 1, '2024-11-04', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (332, 1, '2024-11-04', 9.46, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (333, 1, '2024-11-05', 1158.96, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (334, 1, '2024-11-06', 93.41, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (335, 1, '2024-11-07', 753.98, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (336, 1, '2024-11-08', 5.89, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (337, 1, '2024-11-09', 27.05, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (338, 1, '2024-11-10', 67.21, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (339, 1, '2024-11-11', 24.99, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (340, 1, '2024-11-12', 12.71, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (341, 1, '2024-11-13', 776.61, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (342, 1, '2024-11-14', 3.86, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (343, 1, '2024-11-15', 974.34, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (344, 1, '2024-11-16', 129.43, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (345, 1, '2024-11-17', 15.12, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (346, 1, '2024-11-18', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (347, 1, '2024-11-18', 2.81, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (348, 1, '2024-11-19', 7.64, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (349, 1, '2024-11-20', 6.04, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (350, 1, '2024-11-21', 27.76, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (351, 1, '2024-11-22', 1112.69, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (352, 1, '2024-11-23', 8.85, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (353, 1, '2024-11-24', 44.85, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (354, 1, '2024-11-25', 10.45, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (355, 1, '2024-11-26', 52.41, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (356, 1, '2024-11-27', 35.97, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (357, 1, '2024-11-28', 17.77, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (358, 1, '2024-11-29', 20.02, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (359, 1, '2024-11-30', 90.57, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (360, 1, '2024-12-01', 9.54, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (361, 1, '2024-12-02', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (362, 1, '2024-12-02', 14.23, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (363, 1, '2024-12-03', 45.54, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (364, 1, '2024-12-04', 27.59, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (365, 1, '2024-12-05', 51.5, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (366, 1, '2024-12-06', 7.74, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (367, 1, '2024-12-07', 83.86, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (368, 1, '2024-12-08', 43.53, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (369, 1, '2024-12-09', 9.97, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (370, 1, '2024-12-10', 87.55, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (371, 1, '2024-12-11', 24.12, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (372, 1, '2024-12-12', 23.26, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (373, 1, '2024-12-13', 16.41, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (374, 1, '2024-12-14', 15.19, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (375, 1, '2024-12-15', 17.07, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (376, 1, '2024-12-16', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (377, 1, '2024-12-16', 1111.98, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (378, 1, '2024-12-17', 21.92, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (379, 1, '2024-12-18', 14.91, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (380, 1, '2024-12-19', 33.25, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (381, 1, '2024-12-20', 7.89, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (382, 1, '2024-12-21', 23.48, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (383, 1, '2024-12-22', 98.78, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (384, 1, '2024-12-23', 24.02, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (385, 1, '2024-12-24', 27.02, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (386, 1, '2024-12-25', 61.23, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (387, 1, '2024-12-26', 27.23, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (388, 1, '2024-12-27', 14.52, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (389, 1, '2024-12-28', 13.32, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (390, 1, '2024-12-29', 52.78, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (391, 1, '2024-12-30', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (392, 1, '2024-12-30', 783.34, 'rent', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (393, 1, '2024-12-31', 18.5, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (394, 1, '2025-01-01', 27.72, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (395, 1, '2025-01-02', 54.98, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (396, 1, '2025-01-03', 17.87, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (397, 1, '2025-01-04', 70.8, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (398, 1, '2025-01-05', 18.51, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (399, 1, '2025-01-06', 21.16, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (400, 1, '2025-01-07', 5.23, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (401, 1, '2025-01-08', 8.33, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (402, 1, '2025-01-09', 38.15, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (403, 1, '2025-01-10', 142.26, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (404, 1, '2025-01-11', 2.33, 'transport', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (405, 1, '2025-01-12', 78.97, 'entertainment', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (406, 1, '2025-01-13', 5000.00, 'income', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (407, 1, '2025-01-13', 23.2, 'clothes', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (408, 1, '2025-01-14', 21.52, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (409, 1, '2025-01-15', 15.6, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (410, 1, '2025-01-16', 50.87, 'misc', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (411, 1, '2025-01-17', 13.93, 'food', NOW());
INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)
VALUES (412, 1, '2025-01-18', 112.92, 'clothes', NOW());
-- COMMIT;
