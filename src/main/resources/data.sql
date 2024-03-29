INSERT INTO public.t_customer (customer_id, customer_name, customer_code, customer_address, customer_amount, customer_type) 
VALUES 
(1, 'John Doe', 'JD001', '123 Main St', 500, 1),
(2, 'Jane Smith', 'JS002', '456 Elm St', 700, 2),
(3, 'Michael Johnson', 'MJ003', '789 Oak St', 300, 1),
(4, 'Emily Davis', 'ED004', '101 Pine St', 600, 2),
(5, 'Chris Wilson', 'CW005', '202 Maple St', 400, 1),
(6, 'Sarah Taylor', 'ST006', '303 Birch St', 800, 2),
(7, 'Matthew Brown', 'MB007', '404 Cedar St', 350, 1),
(8, 'Emma Martinez', 'EM008', '505 Cherry St', 550, 2),
(9, 'Daniel Anderson', 'DA009', '606 Walnut St', 450, 1),
(10, 'Olivia Lopez', 'OL010', '707 Sycamore St', 750, 2),
(11, 'William Thomas', 'WT011', '808 Oakwood St', 650, 1),
(12, 'Ava Garcia', 'AG012', '909 Elmwood St', 900, 2),
(13, 'James Hernandez', 'JH013', '1010 Maplewood St', 700, 1),
(14, 'Sophia Adams', 'SA014', '1111 Cedarwood St', 850, 2),
(15, 'Alexander Perez', 'AP015', '1212 Cherrywood St', 950, 1),
(16, 'Mia Collins', 'MC016', '1313 Walnutwood St', 550, 2),
(17, 'Ethan Lee', 'EL017', '1414 Piney St', 800, 1),
(18, 'Amelia Torres', 'AT018', '1515 Spruce St', 650, 2),
(19, 'Michael Moore', 'MM019', '1616 Cedarlane St', 750, 1),
(20, 'Isabella Rogers', 'IR020', '1717 Maplelane St', 700, 2) ON CONFLICT DO NOTHING;


-- t_inventory tablosuna örnek veri ekleme
INSERT INTO public.t_inventory (inventory_id, inventory_name, inventory_code, inventory_amount, inventory_type, inventory_price, customer_id) 
VALUES 
(1, 'Laptop', 'INV001', 10, 1, 999.99, 1),
(2, 'Printer', 'INV002', 5, 2, 299.99, 1),
(3, 'Desktop', 'INV003', 8, 1, 1499.99, 2),
(4, 'Monitor', 'INV004', 15, 2, 199.99, 2),
(5, 'Mouse', 'INV005', 20, 1, 19.99, 3),
(6, 'Keyboard', 'INV006', 12, 2, 49.99, 3),
(7, 'Headset', 'INV007', 18, 1, 79.99, 4),
(8, 'Router', 'INV008', 25, 2, 89.99, 4),
(9, 'Smartphone', 'INV009', 30, 1, 699.99, 5),
(10, 'Tablet', 'INV010', 8, 2, 399.99, 5),
(11, 'Chair', 'INV011', 20, 1, 129.99, 6),
(12, 'Desk', 'INV012', 15, 2, 299.99, 6),
(13, 'Printer', 'INV013', 10, 1, 199.99, 7),
(14, 'Scanner', 'INV014', 6, 2, 149.99, 7),
(15, 'Projector', 'INV015', 5, 1, 499.99, 8),
(16, 'Speaker', 'INV016', 8, 2, 79.99, 8),
(17, 'Camera', 'INV017', 12, 1, 299.99, 9),
(18, 'TV', 'INV018', 7, 2, 799.99, 9),
(19, 'Bookshelf', 'INV019', 15, 1, 99.99, 10),
(20, 'Lamp', 'INV020', 20, 2, 29.99, 10),
(21, 'Chair', 'INV021', 15, 1, 59.99, 11),
(22, 'Table', 'INV022', 18, 2, 179.99, 11),
(23, 'Headphones', 'INV023', 22, 1, 39.99, 12),
(24, 'Router', 'INV024', 28, 2, 69.99, 12),
(25, 'Smartwatch', 'INV025', 5, 1, 349.99, 13),
(26, 'Webcam', 'INV026', 8, 2, 49.99, 13),
(27, 'Printer', 'INV027', 12, 1, 179.99, 14),
(28, 'Scanner', 'INV028', 7, 2, 129.99, 14),
(29, 'Smartphone', 'INV029', 14, 1, 899.99, 15),
(30, 'Tablet', 'INV030', 10, 2, 499.99, 15),
(31, 'Desk', 'INV031', 20, 1, 199.99, 16),
(32, 'Chair', 'INV032', 15, 2, 79.99, 16),
(33, 'Speaker', 'INV033', 10, 1, 59.99, 17),
(34, 'Monitor', 'INV034', 20, 2, 249.99, 17),
(35, 'Camera', 'INV035', 8, 1, 449.99, 18),
(36, 'TV', 'INV036', 6, 2, 699.99, 18),
(37, 'Bookshelf', 'INV037', 18, 1, 129.99, 19),
(38, 'Lamp', 'INV038', 25, 2, 19.99, 19),
(39, 'Printer', 'INV039', 11, 1, 149.99, 20),
(40, 'Scanner', 'INV040', 9, 2, 99.99, 20),
(81, 'Chair', 'INV081', 12, 1, 89.99, 1),
(82, 'Desk', 'INV082', 10, 2, 199.99, 2),
(83, 'Speaker', 'INV083', 15, 1, 129.99, 3),
(84, 'Monitor', 'INV084', 10, 2, 299.99, 4),
(85, 'Camera', 'INV085', 20, 1, 399.99, 5),
(86, 'TV', 'INV086', 8, 2, 599.99, 6),
(87, 'Bookshelf', 'INV087', 25, 1, 79.99, 7),
(88, 'Lamp', 'INV088', 18, 2, 24.99, 8),
(89, 'Printer', 'INV089', 16, 1, 119.99, 9),
(90, 'Scanner', 'INV090', 11, 2, 89.99, 10),
(91, 'Smartphone', 'INV091', 18, 1, 749.99, 11),
(92, 'Tablet', 'INV092', 12, 2, 449.99, 12),
(93, 'Desk', 'INV093', 22, 1, 179.99, 13),
(94, 'Chair', 'INV094', 17, 2, 69.99, 14),
(95, 'Speaker', 'INV095', 10, 1, 49.99, 15),
(96, 'Monitor', 'INV096', 18, 2, 199.99, 16),
(97, 'Camera', 'INV097', 15, 1, 349.99, 17),
(98, 'TV', 'INV098', 6, 2, 799.99, 18),
(99, 'Bookshelf', 'INV099', 22, 1, 109.99, 19),
(100, 'Lamp', 'INV100', 30, 2, 29.99, 20),
(101, 'Printer', 'INV101', 14, 1, 169.99, 1),
(102, 'Scanner', 'INV102', 9, 2, 109.99, 2),
(103, 'Smartphone', 'INV103', 20, 1, 699.99, 3),
(104, 'Tablet', 'INV104', 16, 2, 399.99, 4),
(105, 'Desk', 'INV105', 25, 1, 249.99, 5),
(106, 'Chair', 'INV106', 20, 2, 99.99, 6),
(107, 'Speaker', 'INV107', 8, 1, 69.99, 7),
(108, 'Monitor', 'INV108', 15, 2, 249.99, 8),
(109, 'Camera', 'INV109', 12, 1, 449.99, 9),
(110, 'TV', 'INV110', 10, 2, 699.99, 10),
(111, 'Bookshelf', 'INV111', 30, 1, 149.99, 11),
(112, 'Lamp', 'INV112', 35, 2, 19.99, 12),
(113, 'Printer', 'INV113', 13, 1, 139.99, 13),
(114, 'Scanner', 'INV114', 8, 2, 79.99, 14),
(115, 'Smartphone', 'INV115', 25, 1, 849.99, 15),
(116, 'Tablet', 'INV116', 20, 2, 499.99, 16),
(117, 'Desk', 'INV117', 18, 1, 199.99, 17),
(118, 'Chair', 'INV118', 14, 2, 89.99, 18),
(119, 'Speaker', 'INV119', 10, 1, 59.99, 19),
(120, 'Monitor', 'INV120', 18, 2, 229.99, 20)ON CONFLICT DO NOTHING;
