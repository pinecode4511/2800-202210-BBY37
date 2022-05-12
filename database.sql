CREATE DATABASE IF NOT EXISTS `COMP2800` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `COMP2800`;

CREATE TABLE IF NOT EXISTS `BBY_37_user` (
  `user_id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image_profile` varchar(1024),
  `role_id` int(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `BBY_37_user` (`user_id`, `username`, `first_name`, `last_name`, `email_address`, `password`, `role_id`) VALUES (1, 'sam_a', 'Sam', 'A', 'sam@email.com', 'password1', 0);
INSERT INTO `BBY_37_user` (`user_id`, `username`, `first_name`, `last_name`, `email_address`, `password`, `role_id`) VALUES (2, 'eric_d', 'Eric', 'D', 'eric_d@email.com', 'password2', 1);
INSERT INTO `BBY_37_user` (`user_id`, `username`, `first_name`, `last_name`, `email_address`, `password`, `role_id`) VALUES (3, 'eric_h', 'Eric', 'H', 'eric@email.com', 'password3', 0);
INSERT INTO `BBY_37_user` (`user_id`, `username`, `first_name`, `last_name`, `email_address`, `password`, `role_id`) VALUES (4, 'kiefer_t', 'Kiefer', 'T', 'keifer@email.com', 'password4', 1);
INSERT INTO `BBY_37_user` (`user_id`, `username`, `first_name`, `last_name`, `email_address`, `password`, `role_id`) VALUES (5, 'will_w', 'Will', 'W', 'will@email.com', 'password5', 0);


CREATE TABLE IF NOT EXISTS `BBY_37_location` (
  `location_id` int(16) NOT NULL AUTO_INCREMENT,
  `address` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `BBY_37_location` (`location_id`, `address`, `street`, `city`, `postal_code`, `type`) VALUES (1, '920', 'W 14th Ave', 'Vancouver', 'V5Z 1R4', 'apartment');
INSERT INTO `BBY_37_location` (`location_id`, `address`, `street`, `city`, `postal_code`, `type`) VALUES (2, '125', 'W 10th Ave', 'Vancouver', 'V5Y 1R7', 'apartment');
INSERT INTO `BBY_37_location` (`location_id`, `address`, `street`, `city`, `postal_code`, `type`) VALUES (3, '2200', 'Douglas Rd', 'Burnaby', 'V5C 5A7', 'apartment');
INSERT INTO `BBY_37_location` (`location_id`, `address`, `street`, `city`, `postal_code`, `type`) VALUES (4, '16686', '31 Ave', 'Surrey', 'V3S 9V1', 'condo');
INSERT INTO `BBY_37_location` (`location_id`, `address`, `street`, `city`, `postal_code`, `type`) VALUES (5, '9566', 'Tomicki Ave', 'Richmond', 'V6X 2M4', 'house');


CREATE TABLE IF NOT EXISTS `BBY_37_post` (
  `post_id` int(16) NOT NULL AUTO_INCREMENT,
  `user_id` int(16) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` DATE NOT NULL,
  `time` TIME NOT NULL,
  `content` TEXT NOT NULL,
  `location_id` int(16) NOT NULL,
  PRIMARY KEY (`post_id`),
  FOREIGN KEY(user_id) REFERENCES BBY_37_user(user_id),
  FOREIGN KEY(location_id) REFERENCES BBY_37_location(location_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `BBY_37_post` (`post_id`, `user_id`, `title`, `date`, `time`, `content`, `location_id`) VALUES (1, 1, '14th Ave', '2022-05-10', '16:53:55', 'Great property the landlord was always nice and very responsive.', 1);
INSERT INTO `BBY_37_post` (`post_id`, `user_id`, `title`, `date`, `time`, `content`, `location_id`) VALUES (2, 1, '10th Ave', '2022-05-10', '14:25:51', 'I lived there for 2 years, the neighbors were terrible and always loud. Other than that the landlord was great and everything worked.', 2);
INSERT INTO `BBY_37_post` (`post_id`, `user_id`, `title`, `date`, `time`, `content`, `location_id`) VALUES (3, 2, 'Douglas Rd', '2022-05-10', '11:21:03', 'The location is great, a little close the the Skytrain so there is some background noise from the trains when they pass by.', 3);
INSERT INTO `BBY_37_post` (`post_id`, `user_id`, `title`, `date`, `time`, `content`, `location_id`) VALUES (4, 3, '14th Ave', '2022-05-10', '16:53:55', 'Awesome place, very peaceful and quiet.', 4);
INSERT INTO `BBY_37_post` (`post_id`, `user_id`, `title`, `date`, `time`, `content`, `location_id`) VALUES (5, 1, 'Terrible Landlord', '2022-05-10', '17:16:23', 'I enjoyed the house, but the landlord was unresponsive and never fixed anything, then they tried to increase my rent at the end of the year. Had to move out because I could not deal with them', 5);