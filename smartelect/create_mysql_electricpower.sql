CREATE TABLE `electricpower` (
  `outlet_id` int(6) NOT NULL,
  `outlet_name` varchar(20) NOT NULL,
  `elec_power` int(6) NOT NULL,
  `elec_limit` int(6) NOT NULL,
  PRIMARY KEY (`outlet_id`)
) ENGINE=InnoDB;

CREATE TABLE `electricdata` (
  `id` int(255) NOT NULL,
  `outlet_id` int(6) NOT NULL,
  `date_time` datetime NOT NULL,
  `watt` double NOT NULL,
  `unit` double NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`outlet_id`)REFERENCES electricpower(`outlet_id`)
) ENGINE=InnoDB;


SELECT time, date
FROM electricpower, electricdata
WHERE electricpower.outlet_id = electricdata.outlet_id