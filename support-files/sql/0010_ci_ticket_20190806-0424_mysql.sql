USE devops_ci_ticket;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for T_CERT
-- ----------------------------
DROP TABLE IF EXISTS `T_CERT`;
CREATE TABLE `T_CERT` (
  `PROJECT_ID` varchar(64) NOT NULL,
  `CERT_ID` varchar(32) NOT NULL,
  `CERT_USER_ID` varchar(64) NOT NULL,
  `CERT_TYPE` varchar(32) NOT NULL,
  `CERT_REMARK` varchar(128) NOT NULL,
  `CERT_P12_FILE_NAME` varchar(128) NOT NULL,
  `CERT_P12_FILE_CONTENT` blob NOT NULL,
  `CERT_MP_FILE_NAME` varchar(128) NOT NULL,
  `CERT_MP_FILE_CONTENT` blob NOT NULL,
  `CERT_JKS_FILE_NAME` varchar(128) NOT NULL,
  `CERT_JKS_FILE_CONTENT` blob NOT NULL,
  `CERT_JKS_ALIAS` varchar(128) DEFAULT NULL,
  `CERT_JKS_ALIAS_CREDENTIAL_ID` varchar(64) DEFAULT NULL,
  `CERT_DEVELOPER_NAME` varchar(128) NOT NULL,
  `CERT_TEAM_NAME` varchar(128) NOT NULL,
  `CERT_UUID` varchar(64) NOT NULL,
  `CERT_EXPIRE_DATE` datetime DEFAULT NULL,
  `CERT_CREATE_TIME` datetime DEFAULT NULL,
  `CERT_UPDATE_TIME` datetime DEFAULT NULL,
  `CREDENTIAL_ID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`PROJECT_ID`,`CERT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for T_CERT_ENTERPRISE
-- ----------------------------
DROP TABLE IF EXISTS `T_CERT_ENTERPRISE`;
CREATE TABLE `T_CERT_ENTERPRISE` (
  `PROJECT_ID` varchar(64) NOT NULL,
  `CERT_ID` varchar(32) NOT NULL,
  `CERT_MP_FILE_NAME` varchar(128) NOT NULL,
  `CERT_MP_FILE_CONTENT` blob NOT NULL,
  `CERT_DEVELOPER_NAME` varchar(128) NOT NULL,
  `CERT_TEAM_NAME` varchar(128) NOT NULL,
  `CERT_UUID` varchar(64) NOT NULL,
  `CERT_UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CERT_EXPIRE_DATE` datetime NOT NULL DEFAULT '2019-06-28 00:00:00',
  `CERT_CREATE_TIME` datetime NOT NULL DEFAULT '2019-06-28 00:00:00',
  PRIMARY KEY (`PROJECT_ID`,`CERT_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for T_CERT_TLS
-- ----------------------------
DROP TABLE IF EXISTS `T_CERT_TLS`;
CREATE TABLE `T_CERT_TLS` (
  `PROJECT_ID` varchar(64) NOT NULL,
  `CERT_ID` varchar(32) NOT NULL,
  `CERT_SERVER_CRT_FILE_NAME` varchar(128) NOT NULL,
  `CERT_SERVER_CRT_FILE` blob NOT NULL,
  `CERT_SERVER_KEY_FILE_NAME` varchar(128) NOT NULL,
  `CERT_SERVER_KEY_FILE` blob NOT NULL,
  `CERT_CLIENT_CRT_FILE_NAME` varchar(128) DEFAULT NULL,
  `CERT_CLIENT_CRT_FILE` blob,
  `CERT_CLIENT_KEY_FILE_NAME` varchar(128) DEFAULT NULL,
  `CERT_CLIENT_KEY_FILE` blob,
  `CERT_CREATE_TIME` timestamp NOT NULL DEFAULT '2019-06-28 00:00:00',
  `CERT_UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PROJECT_ID`,`CERT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for T_CREDENTIAL
-- ----------------------------
DROP TABLE IF EXISTS `T_CREDENTIAL`;
CREATE TABLE `T_CREDENTIAL` (
  `PROJECT_ID` varchar(64) NOT NULL,
  `CREDENTIAL_ID` varchar(64) NOT NULL,
  `CREDENTIAL_USER_ID` varchar(64) NOT NULL DEFAULT '',
  `CREDENTIAL_TYPE` varchar(64) NOT NULL,
  `CREDENTIAL_REMARK` text,
  `CREDENTIAL_V1` text NOT NULL,
  `CREDENTIAL_V2` text,
  `CREDENTIAL_V3` text,
  `CREDENTIAL_V4` text,
  `CREATED_TIME` datetime NOT NULL,
  `UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`PROJECT_ID`,`CREDENTIAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
