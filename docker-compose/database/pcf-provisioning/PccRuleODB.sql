/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `PccRuleODB_RefQosMon`;

DROP TABLE IF EXISTS `PccRuleODB_RefUmN3gData`;

DROP TABLE IF EXISTS `PccRuleODB_RefUmData`;

DROP TABLE IF EXISTS `PccRuleODB_RefChgN3gData`;

DROP TABLE IF EXISTS `PccRuleODB_RefChgData`;

DROP TABLE IF EXISTS `PccRuleODB_RefTcData`;

DROP TABLE IF EXISTS `PccRuleODB_RefAltQosParams`;

DROP TABLE IF EXISTS `PccRuleODB_RefQosData`;

DROP TABLE IF EXISTS `PccRuleODB`;

CREATE TABLE `PccRuleODB` (
  `FlowInfos` TEXT NOT NULL,
  `FlowInfosIsSet` TINYINT(1) NOT NULL,
  `AppId` TEXT NOT NULL,
  `AppIdIsSet` TINYINT(1) NOT NULL,
  `AppDescriptor` TEXT NOT NULL,
  `AppDescriptorIsSet` TINYINT(1) NOT NULL,
  `ContVer` INT NOT NULL,
  `ContVerIsSet` TINYINT(1) NOT NULL,
  `PccRuleId` VARCHAR(128) NOT NULL PRIMARY KEY,
  `Precedence` INT NOT NULL,
  `PrecedenceIsSet` TINYINT(1) NOT NULL,
  `AfSigProtocol` TEXT NOT NULL,
  `AfSigProtocolIsSet` TINYINT(1) NOT NULL,
  `AppReloc` TINYINT(1) NOT NULL,
  `AppRelocIsSet` TINYINT(1) NOT NULL,
  `RefQosDataIsSet` TINYINT(1) NOT NULL,
  `RefAltQosParamsIsSet` TINYINT(1) NOT NULL,
  `RefTcDataIsSet` TINYINT(1) NOT NULL,
  `RefChgDataIsSet` TINYINT(1) NOT NULL,
  `RefChgN3gDataIsSet` TINYINT(1) NOT NULL,
  `RefUmDataIsSet` TINYINT(1) NOT NULL,
  `RefUmN3gDataIsSet` TINYINT(1) NOT NULL,
  `RefCondData` TEXT NOT NULL,
  `RefCondDataIsSet` TINYINT(1) NOT NULL,
  `RefQosMonIsSet` TINYINT(1) NOT NULL,
  `AddrPreserInd` TINYINT(1) NOT NULL,
  `AddrPreserIndIsSet` TINYINT(1) NOT NULL,
  `TscaiInputDl` TEXT NOT NULL,
  `TscaiInputDlIsSet` TINYINT(1) NOT NULL,
  `TscaiInputUl` TEXT NOT NULL,
  `TscaiInputUlIsSet` TINYINT(1) NOT NULL,
  `DdNotifCtrl` TEXT NOT NULL,
  `DdNotifCtrlIsSet` TINYINT(1) NOT NULL,
  `DdNotifCtrl2` TEXT NOT NULL,
  `DdNotifCtrl2IsSet` TINYINT(1) NOT NULL,
  `DisUeNotif` TINYINT(1) NOT NULL,
  `DisUeNotifIsSet` TINYINT(1) NOT NULL)
 ENGINE=InnoDB;

CREATE TABLE `PccRuleODB_RefQosData` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `PccRuleODB_RefQosData_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `PccRuleODB` (`PccRuleId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `PccRuleODB_RefQosData` (`object_id`);

CREATE INDEX `index_i`
  ON `PccRuleODB_RefQosData` (`index`);

CREATE TABLE `PccRuleODB_RefAltQosParams` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `PccRuleODB_RefAltQosParams_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `PccRuleODB` (`PccRuleId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `PccRuleODB_RefAltQosParams` (`object_id`);

CREATE INDEX `index_i`
  ON `PccRuleODB_RefAltQosParams` (`index`);

CREATE TABLE `PccRuleODB_RefTcData` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `PccRuleODB_RefTcData_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `PccRuleODB` (`PccRuleId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `PccRuleODB_RefTcData` (`object_id`);

CREATE INDEX `index_i`
  ON `PccRuleODB_RefTcData` (`index`);

CREATE TABLE `PccRuleODB_RefChgData` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `PccRuleODB_RefChgData_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `PccRuleODB` (`PccRuleId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `PccRuleODB_RefChgData` (`object_id`);

CREATE INDEX `index_i`
  ON `PccRuleODB_RefChgData` (`index`);

CREATE TABLE `PccRuleODB_RefChgN3gData` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `PccRuleODB_RefChgN3gData_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `PccRuleODB` (`PccRuleId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `PccRuleODB_RefChgN3gData` (`object_id`);

CREATE INDEX `index_i`
  ON `PccRuleODB_RefChgN3gData` (`index`);

CREATE TABLE `PccRuleODB_RefUmData` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `PccRuleODB_RefUmData_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `PccRuleODB` (`PccRuleId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `PccRuleODB_RefUmData` (`object_id`);

CREATE INDEX `index_i`
  ON `PccRuleODB_RefUmData` (`index`);

CREATE TABLE `PccRuleODB_RefUmN3gData` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `PccRuleODB_RefUmN3gData_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `PccRuleODB` (`PccRuleId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `PccRuleODB_RefUmN3gData` (`object_id`);

CREATE INDEX `index_i`
  ON `PccRuleODB_RefUmN3gData` (`index`);

CREATE TABLE `PccRuleODB_RefQosMon` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `PccRuleODB_RefQosMon_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `PccRuleODB` (`PccRuleId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `PccRuleODB_RefQosMon` (`object_id`);

CREATE INDEX `index_i`
  ON `PccRuleODB_RefQosMon` (`index`);

