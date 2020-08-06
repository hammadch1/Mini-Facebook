SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `facebook` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `facebook`;

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `aid` int(10) NOT NULL,
  `url` text,
  `data` text,
  `posted_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `fid` int(10) NOT NULL,
  `ans_text` text,
  `rate` int(2) DEFAULT '0',
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `city_country`
--

CREATE TABLE `city_country` (
  `cid` int(10) NOT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `c_landmark` tinytext,
  `CountryID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `uid` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `data` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `code` char(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `language` varchar(30) DEFAULT 'ENGLISH'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `fb_group`
--

CREATE TABLE `fb_group` (
  `gid` int(10) NOT NULL,
  `name` varchar(30) DEFAULT 'Facebook Group',
  `privacy` varchar(20) DEFAULT 'Open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `fb_like`
--

CREATE TABLE `fb_like` (
  `uid` int(10) NOT NULL,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `fb_page`
--

CREATE TABLE `fb_page` (
  `pgid` int(10) NOT NULL,
  `name` varchar(30) DEFAULT 'Facebook Page',
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `fid` int(10) NOT NULL,
  `topic` varchar(50) DEFAULT 'General',
  `question` varchar(200) NOT NULL,
  `initiated_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `per_id` int(10) NOT NULL,
  `frie_id` int(10) NOT NULL,
  `relation` varchar(30) DEFAULT 'Friends'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `group_admin`
--

CREATE TABLE `group_admin` (
  `gid` int(10) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `group_post`
--

CREATE TABLE `group_post` (
  `gpid` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `gid` int(10) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(10) NOT NULL,
  `User_To` int(10) NOT NULL,
  `User_from` int(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `data` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `nid` int(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `data` varchar(150) DEFAULT 'New Post',
  `post_id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `uname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `notif_to`
--

CREATE TABLE `notif_to` (
  `noti_id` int(10) NOT NULL,
  `userid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `page_admin`
--

CREATE TABLE `page_admin` (
  `pageid` int(10) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `page_liked_by`
--

CREATE TABLE `page_liked_by` (
  `pageid` int(10) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `page_post`
--

CREATE TABLE `page_post` (
  `ppid` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `page_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(10) NOT NULL,
  `url` text,
  `Data` tinytext,
  `date_time` datetime NOT NULL,
  `privacy` varchar(20) NOT NULL DEFAULT 'Public'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `aid` int(10) NOT NULL,
  `Region` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `sid` int(10) NOT NULL,
  `url` text,
  `post_by` int(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `views` int(30) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `story_shown_to`
--

CREATE TABLE `story_shown_to` (
  `story_id` int(10) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `fname` varchar(15) DEFAULT NULL,
  `lname` varchar(15) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(15) DEFAULT 'Offline',
  `dp_url` varchar(255) DEFAULT 'https://drive.google.com/file/d/15UTgj3CFboxCwmwUsDszgty5AKl1WzHd/view',
  `dob` date DEFAULT NULL,
  `ccid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `upid` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `AD_FK` (`posted_by`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `city_country`
--
ALTER TABLE `city_country`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `City_FK` (`CountryID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`uid`,`post_id`),
  ADD KEY `COMMENTS_FK2` (`post_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_group`
--
ALTER TABLE `fb_group`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `fb_like`
--
ALTER TABLE `fb_like`
  ADD PRIMARY KEY (`uid`,`post_id`),
  ADD KEY `FBLIKE_FK2` (`post_id`);

--
-- Indexes for table `fb_page`
--
ALTER TABLE `fb_page`
  ADD PRIMARY KEY (`pgid`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`per_id`,`frie_id`),
  ADD KEY `F_FK2` (`frie_id`);

--
-- Indexes for table `group_admin`
--
ALTER TABLE `group_admin`
  ADD PRIMARY KEY (`gid`,`uid`),
  ADD KEY `GA_FK2` (`uid`);

--
-- Indexes for table `group_post`
--
ALTER TABLE `group_post`
  ADD PRIMARY KEY (`gpid`),
  ADD KEY `GP_FK1` (`group_id`),
  ADD KEY `GP_FK2` (`user_id`),
  ADD KEY `GP_FK3` (`post_id`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`gid`,`uid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `Message_FK1` (`User_To`),
  ADD KEY `Message_Fk2` (`User_from`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `NOTI_FK` (`post_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `notif_to`
--
ALTER TABLE `notif_to`
  ADD PRIMARY KEY (`noti_id`,`userid`),
  ADD KEY `NT_FK2` (`userid`);

--
-- Indexes for table `page_admin`
--
ALTER TABLE `page_admin`
  ADD PRIMARY KEY (`pageid`,`uid`),
  ADD KEY `PA_FK1` (`uid`);

--
-- Indexes for table `page_liked_by`
--
ALTER TABLE `page_liked_by`
  ADD PRIMARY KEY (`pageid`,`uid`),
  ADD KEY `PLB_FK1` (`uid`);

--
-- Indexes for table `page_post`
--
ALTER TABLE `page_post`
  ADD PRIMARY KEY (`ppid`),
  ADD KEY `PGP_FK1` (`post_id`),
  ADD KEY `PGP_FK2` (`page_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `Story_FK` (`post_by`);

--
-- Indexes for table `story_shown_to`
--
ALTER TABLE `story_shown_to`
  ADD PRIMARY KEY (`story_id`,`uid`),
  ADD KEY `SST_FK1` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `User_FK` (`ccid`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`upid`),
  ADD KEY `UP_FK1` (`uid`),
  ADD KEY `UP_FK2` (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `city_country`
--
ALTER TABLE `city_country`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `fb_group`
--
ALTER TABLE `fb_group`
  MODIFY `gid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `fb_page`
--
ALTER TABLE `fb_page`
  MODIFY `pgid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `group_post`
--
ALTER TABLE `group_post`
  MODIFY `gpid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `nid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `page_post`
--
ALTER TABLE `page_post`
  MODIFY `ppid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_post`
--
ALTER TABLE `user_post`
  MODIFY `upid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `AD_FK` FOREIGN KEY (`posted_by`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `ANSWER_FK` FOREIGN KEY (`fid`) REFERENCES `forum` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city_country`
--
ALTER TABLE `city_country`
  ADD CONSTRAINT `City_FK` FOREIGN KEY (`CountryID`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `COMMENTS_FK1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `COMMENTS_FK2` FOREIGN KEY (`post_id`) REFERENCES `post` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fb_like`
--
ALTER TABLE `fb_like`
  ADD CONSTRAINT `FBLIKE_FK1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FBLIKE_FK2` FOREIGN KEY (`post_id`) REFERENCES `post` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
  
--
-- Constraints for table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `USER_FK_IN_FORUM` FOREIGN KEY (`initiated_by`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `F_FK1` FOREIGN KEY (`per_id`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F_FK2` FOREIGN KEY (`frie_id`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `group_admin`
--
ALTER TABLE `group_admin`
  ADD CONSTRAINT `GA_FK1` FOREIGN KEY (`gid`) REFERENCES `fb_group` (`gid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `GA_FK2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `group_post`
--
ALTER TABLE `group_post`
  ADD CONSTRAINT `GP_FK1` FOREIGN KEY (`group_id`) REFERENCES `fb_group` (`gid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `GP_FK2` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `GP_FK3` FOREIGN KEY (`post_id`) REFERENCES `post` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `group_user`
--
ALTER TABLE `group_user`
  ADD CONSTRAINT `GU_FK1` FOREIGN KEY (`gid`) REFERENCES `fb_group` (`gid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `GU_FK2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `Message_FK1` FOREIGN KEY (`User_To`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Message_Fk2` FOREIGN KEY (`User_from`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `NOTI_FK` FOREIGN KEY (`post_id`) REFERENCES `post` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notif_to`
--
ALTER TABLE `notif_to`
  ADD CONSTRAINT `NT_FK1` FOREIGN KEY (`noti_id`) REFERENCES `notification` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `NT_FK2` FOREIGN KEY (`userid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_admin`
--
ALTER TABLE `page_admin`
  ADD CONSTRAINT `PA_FK1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PA_FK2` FOREIGN KEY (`pageid`) REFERENCES `fb_page` (`pgid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_liked_by`
--
ALTER TABLE `page_liked_by`
  ADD CONSTRAINT `PLB_FK1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PLB_FK2` FOREIGN KEY (`pageid`) REFERENCES `fb_page` (`pgid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_post`
--
ALTER TABLE `page_post`
  ADD CONSTRAINT `PGP_FK1` FOREIGN KEY (`post_id`) REFERENCES `post` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PGP_FK2` FOREIGN KEY (`page_id`) REFERENCES `fb_page` (`pgid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `R_FK` FOREIGN KEY (`aid`) REFERENCES `ad` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `story`
--
ALTER TABLE `story`
  ADD CONSTRAINT `Story_FK` FOREIGN KEY (`post_by`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `story_shown_to`
--
ALTER TABLE `story_shown_to`
  ADD CONSTRAINT `SST_FK1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SST_FK2` FOREIGN KEY (`story_id`) REFERENCES `story` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `User_FK` FOREIGN KEY (`ccid`) REFERENCES `city_country` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `UP_FK1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UP_FK2` FOREIGN KEY (`post_id`) REFERENCES `post` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;