-- Table structure for table 'active'
CREATE TABLE active (
    id SERIAL PRIMARY KEY,
    uid VARCHAR(1000) NOT NULL,
    prodid VARCHAR(1000) NOT NULL,
    license VARCHAR(1000) NOT NULL,
    created_at DATE NOT NULL,
    end_date DATE NOT NULL,
    public_key VARCHAR(1000) NOT NULL
);

-- Inserting data for table 'active'
INSERT INTO active (uid, prodid, license, created_at, end_date, public_key) VALUES
('146a0073-3359-4bbb-85c8-527b3d22750b', 'vpn001', '3982348-23267', '2024-02-08', '2024-03-08', ''),
('146a0073-3359-4bbb-85c8-527b3d22750b', 'vpn001', '3982348-23267', '2024-02-08', '2024-03-08', '');

-- Table structure for table 'expired'
CREATE TABLE expired (
    id SERIAL PRIMARY KEY,
    uid VARCHAR(1000) NOT NULL,
    secret_key VARCHAR(1000) NOT NULL,
    expired_date DATE NOT NULL
);

-- Table structure for table 'new'
CREATE TABLE new (
    license VARCHAR(10000) NOT NULL,
    prodid VARCHAR(1000) NOT NULL
);

-- Inserting data for table 'new'
INSERT INTO new (license, prodid) VALUES
('ede12-672ed-2321\r\n', 'vpn001'),
('OMJQD98K4PPH', 'siem_0002_nisr'),
('TGVKVN2SD146', 'siem_0002_nisr');

-- Table structure for table 'pending'
CREATE TABLE pending (
    id SERIAL PRIMARY KEY,
    prodid VARCHAR(1000) NOT NULL,
    license VARCHAR(1000) NOT NULL,
    end_date DATE NOT NULL
);

-- Inserting data for table 'pending'
INSERT INTO pending (prodid, license, end_date) VALUES
('vpn001', '3359-4bbb', '2024-03-08'),
('siem_0002_nisr', 'TGVKVN2SD146', '2024-05-05');

-- Table structure for table 'product'
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    prodid VARCHAR(1000) NOT NULL,
    product_name VARCHAR(1000) NOT NULL
);

-- Inserting data for table 'product'
INSERT INTO product (prodid, product_name) VALUES
('vpn_001_nisr', 'VPN'),
('siem_0002_nisr', 'SIEM');