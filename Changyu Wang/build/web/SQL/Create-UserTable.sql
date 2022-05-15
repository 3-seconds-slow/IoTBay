/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Changyu Wang
 * Created: 2022-5-10
 */

CREATE TABLE USER_TABLE (
    FULLNAME VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    PHONENUMBER VARCHAR(100) NOT NULL,
    PASSWORD VARCHAR(100) NOT NULL,
    STAFFORCUSTOMER VARCHAR(100) NOT NULL,
    CONSTRAINT USER_TABLE PRIMARY KEY (EMAIL)
);