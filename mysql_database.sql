CREATE TABLE `cgmonitor__actions` (`id` int(11) NOT NULL AUTO_INCREMENT, `idrigs` varchar(20) NOT NULL, `name` varchar(200) NOT NULL,  `command` text NOT NULL, `time` varchar(100) NOT NULL,  `timeclosed` varchar(100) NOT NULL, `status` varchar(100) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE TABLE `cgmonitor__alerts` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `idrigs` varchar(20) NOT NULL,  `idevs` varchar(20) NOT NULL,  `tempactiveemail` varchar(20) NOT NULL,  `tempmin` varchar(20) NOT NULL,  `tempmax` varchar(20) NOT NULL,  `hashactiveemail` varchar(20) NOT NULL,  `hashmin` varchar(20) NOT NULL,  `deadactiveemail` varchar(20) NOT NULL,  `deadactivereboot` varchar(20) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;
INSERT INTO `cgmonitor__alerts` VALUES(1, '0', '0', 'no', '50', '95', 'no', '100', 'no', 'no');
CREATE TABLE `cgmonitor__algorithm` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` varchar(200) NOT NULL,  `multiname` varchar(200) NOT NULL,  `number` varchar(20) NOT NULL,  `rentpool` varchar(20) DEFAULT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;
INSERT INTO `cgmonitor__algorithm` VALUES(1, 'multialgo', '', '', 'no');
INSERT INTO `cgmonitor__algorithm` VALUES(2, 'Nscrypt', 'nscrypt', '2', 'no');
INSERT INTO `cgmonitor__algorithm` VALUES(3, 'Scrypt', 'scrypt', '1', 'no');
INSERT INTO `cgmonitor__algorithm` VALUES(6, 'Keccak', '', '3', 'no');
CREATE TABLE `cgmonitor__devs` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `idrigs` varchar(100) DEFAULT NULL,  `number` int(11) DEFAULT NULL,  `last` int(11) DEFAULT NULL,  `maxtemp` varchar(10) NOT NULL,  `lowtemp` varchar(10) NOT NULL,  `maxfan` varchar(10) NOT NULL,  `lowfan` varchar(10) NOT NULL,  `minint` varchar(10) NOT NULL,  `maxint` varchar(10) NOT NULL,  `autointensity` varchar(10) NOT NULL,  `device` varchar(100) NOT NULL,  `lastemailsend` varchar(20) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE TABLE `cgmonitor__groupsvspools` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `idgroups` int(11) NOT NULL,  `idpools` int(11) NOT NULL,  `sortorder` int(11) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE TABLE `cgmonitor__pools` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` varchar(100) NOT NULL,  `address` varchar(300) NOT NULL,  `user` varchar(100) NOT NULL,  `password` varchar(100) NOT NULL,  `format` varchar(100) NOT NULL,  `idalgorithms` varchar(20) NOT NULL,  `statspage` varchar(400) DEFAULT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;
INSERT INTO `cgmonitor__pools` VALUES(1, 'HashCows', 'stratum%2Btcp%3A%2F%2Fstratum01.hashco.ws%3A8888', 'youruser', 'x', 'user.worker', '3', '');
CREATE TABLE `cgmonitor__rigs` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` varchar(200) DEFAULT NULL,  `uniqueid` text,  `privatekey` text,  `lastkey` text,  `worker` text NOT NULL,  `os` varchar(20) NOT NULL,  `poollasturl` varchar(200) NOT NULL,  `poolcount` varchar(20) NOT NULL,  `poollast` varchar(20) NOT NULL,  `changealgorithm` varchar(20) NOT NULL,  `autosync` varchar(200) NOT NULL,  `multialgominer` varchar(20) DEFAULT NULL,  `lastsyncpoolid` varchar(20) NOT NULL,  `lasthashpools` varchar(200) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;
INSERT INTO `cgmonitor__rigs` VALUES(1, 'MyRig', 'AEQ0v2F84vtr2Go1JuwC0CBVCPvlQmvuN8tNgc8s', '07grchGY7xikNXJ6zLGS2QM9GFXuQZzCqqt9d5Uv', '', 'pc0001', 'linux1', '', '', '', 'no', 'no', 'no', '', '');
CREATE TABLE `cgmonitor__settings` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` varchar(200) NOT NULL,  `value1` text NOT NULL,  `value2` text NOT NULL,  `value3` text NOT NULL,  PRIMARY KEY (`id`),  UNIQUE KEY `name` (`name`)) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;
INSERT INTO `cgmonitor__settings` VALUES(1, 'lastupdate', '20140401000000', '', '');
INSERT INTO `cgmonitor__settings` VALUES(4, 'autoupdate', 'false', '', '');
INSERT INTO `cgmonitor__settings` VALUES(6, 'user', '', '', '');
INSERT INTO `cgmonitor__settings` VALUES(7, 'lastcron', '20140401000000', '', '');