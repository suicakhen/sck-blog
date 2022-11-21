-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 07:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sck_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_cats`
--

CREATE TABLE `blog_cats` (
  `catID` int(11) UNSIGNED NOT NULL,
  `catTitle` varchar(255) DEFAULT NULL,
  `catSlug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_cats`
--

INSERT INTO `blog_cats` (`catID`, `catTitle`, `catSlug`) VALUES
(1, 'General', 'general'),
(2, 'Development', 'development'),
(4, 'Misc', 'misc'),
(3, 'Knowledge', 'knowledge');

-- --------------------------------------------------------

--
-- Table structure for table `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'Demo', '$2a$12$TF8u1maUr5kADc42g1FB0ONJDEtt24ue.UTIuP13gij5AHsg5f5s2', 'demo@demo.com'),
(3, 'sui', NULL, '20056201@tafe.wa.edu.au');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts_seo`
--

CREATE TABLE `blog_posts_seo` (
  `postID` int(11) UNSIGNED NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postSlug` varchar(255) DEFAULT NULL,
  `postDesc` text DEFAULT NULL,
  `postCont` text DEFAULT NULL,
  `postDate` datetime DEFAULT current_timestamp(),
  `postTags` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts_seo`
--

INSERT INTO `blog_posts_seo` (`postID`, `postTitle`, `postSlug`, `postDesc`, `postCont`, `postDate`, `postTags`) VALUES
(1, 'Bendless Love', 'bendless-love', '<p>That\'s right, baby. I ain\'t your loverboy Flexo, the guy you love so much. You even love anyone pretending to be him! Interesting. No, wait, the other thing: tedious. Hey, guess what you\'re accessories to. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate.</p>', '<h2>The Mutants Are Revolting</h2>\r\n<p>We don\'t have a brig. And until then, I can never die? We need rest. The spirit is willing, but the flesh is spongy and bruised. And yet you haven\'t said what I told you to say! How can any of us trust you?</p>\r\n<ul>\r\n<li>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat.</li>\r\n<li>Bender?! You stole the atom.</li>\r\n<li>I was having the most wonderful dream. Except you were there, and you were there, and you were there!</li>\r\n</ul>\r\n<h3>The Series Has Landed</h3>\r\n<p>Fry! Stay back! He\'s too powerful! No. We\'re on the top. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<h4>Future Stock</h4>\r\n<p>Does anybody else feel jealous and aroused and worried? We\'re also Santa Claus! You\'re going back for the Countess, aren\'t you? Well, let\'s just dump it in the sewer and say we delivered it.</p>\r\n<ol>\r\n<li>Spare me your space age technobabble, Attila the Hun!</li>\r\n<li>You guys realize you live in a sewer, right?</li>\r\n<li>I guess if you want children beaten, you have to do it yourself.</li>\r\n<li>Yeah. Give a little credit to our public schools.</li>\r\n</ol>\r\n<h5>The Why of Fry</h5>\r\n<p>Who are you, my warranty?! Shinier than yours, meatbag. Dr. Zoidberg, that doesn\'t make sense. But, okay! Yes, except the Dave Matthews Band doesn\'t rock.</p>', '2013-05-29 00:00:00', ''),
(2, 'Yummy Fresh Fruit Tart', 'yummy-fresh-fruit-tart', '<p>&nbsp;</p>\r\n<p>Fruit tart is one of my favorite savory foods. It is delicious and healthy if you eat in moderation. &nbsp;Fruit tarts are generally filled with pastry cream made from milk, eggs, vanilla, sugar corn starch, and butter. You can use almost any type of fruit to make a fruit tart. Blueberries, strawberries and kiwi are excellent choices and can be a super source for antioxidants and vitamins.</p>\r\n<p>&nbsp;</p>', '<h3><span style=\"color: rgb(132, 63, 161);\">FRUIT TART RECIPE</span></h3>\r\n<p><span style=\"color: rgb(132, 63, 161);\"><strong>&nbsp;Ingredients</strong></span><br>1) Milk<br>2) Eggs<br>3) Vanilla<br>4) Sugar<br>5) Corn Starch<br>6) Butter<br>7) Assorted Fruit<br><br><strong><span style=\"color: rgb(132, 63, 161);\">How to make tart shell.</span></strong></p>\r\n<p>&gt; Add the cubed butter, sugar, salt and vanilla to a stand mixer fitted with a paddle attachment. Mix for about 2 minutes or until it&rsquo;s homogeneous.<br>&gt; Add your egg yolks and mix until combined.<br>&gt; Add the flour and mix for about 45 seconds or until it&rsquo;s a shaggy mixture.<br>&gt; Roll dough out between two sheets of lightly floured parchment paper and chill for an hour to overnight.<br>&gt; Peel off the layers of paper and cut your tart bottoms out. Cut a strip for the side.<br>&gt; Place the strip for the side in your tart ring<br>&gt; Press the side into the ring and trim the excess.<br>&gt; Trim the top so it&rsquo;s flush to the ring.<br>&gt;Bake at 320F for about 12 minutes.<br><br></p>\r\n<p><strong><span style=\"color: rgb(132, 63, 161);\">How to make a fruit tart.</span></strong><br><br>1) Heat 1/2 cup of apricot preserves, 1 tbsp brandy and 1 tbsp water in a bowl. Mix together and strain.<br>2) Whip up your chipped pastry cream until it&rsquo;s smooth. Transfer to a piping bag and fill your cooled tart shell.<br>3) Place your fruit in the tart. Try and make a fun grouping with lots of colors.<br>4) Brush the fruit with the apricot jam mixture. This will help preserve the fruit and give it a beautiful glossy shine.<br><br></p>\r\n<p>Reference<br>https://preppykitchen.com/fruit-tart/</p>', '2013-06-05 23:10:35', 'fruit-tart,food,recipe'),
(8, 'About me', 'about-me', '<p>Hello, Welcome. My name is Sui, living in Perth with my family. I am current studying Diploma of Web Development at NorthmatroTAFE.</p>', '<p>My name is Sui, living in Perth with my family. I am current studying Diploma of Web Development at NorthmatroTAFE. I am hoping to finish the course mid next year and hopefully get a career in web development. Website designing and developing has always been my passion. In addition to that I love fashion, listening to music and watching movie in my pastime. I would like to see a round the world but afraid to flying ?.</p>', '2022-08-18 15:55:44', 'Author, About me'),
(9, 'Serverless Architecture', 'serverless-architecture', '<p>Serverless is basically Cloud-computing execution model. Serverless computing began with the launch of AWS Lambda, a platform based on Amazon\'s cloud service, in 2014. Serverless computing is an effective method of providing backend services to the end users.</p>', '<h3>What is serverless?</h3>\r\n<p>Serverless Architecture is basically Cloud-computing execution model. Serverless computing began with the launch of AWS Lambda, a platform based on Amazon\'s cloud service, in 2014. Serverless computing is an effective method of providing backend services to the end users.</p>\r\n<h3>What is serverless Architecture??</h3>\r\n<ul>\r\n<ul>\r\n<li>Serverless Architecture is basically Cloud-computing execution model. Serverless computing began with the launch of AWS Lambda, a platform based on Amazon\'s cloud service, in 2014. Serverless computing is an effective method of providing backend services to the end users.</li>\r\n<li>Backend as a Service(BaaS): Applications such as SPAs or mobile apps. The client handles most of the business logic such as authentication, database, user management etc.</li>\r\n<li>A way to build and run applications and services without having to manage infrastructure.</li>\r\n<li>The server in a Serverless Architecture is managed by the supplier, not the consumer</li>\r\n</ul>\r\n</ul>\r\n<h4>Two main types of services in Serverless Architecture:-</h4>\r\n<p>Function as a Service(FaaS): Stateless functions containing server-side business logic and event-triggered and executed in separate containers and Backend as a Service(BaaS): Applications such as SPAs or mobile apps. The client handles most of the business logic such as authentication, database, user management etc.</p>\r\n<h4>Benefits for developers</h4>\r\n<p>The aim of serverless architecture is to reduce efforts by developers in publishing, maintaining and scaling application servers. So they can really focus on coding. The benefits for the developers: .</p>\r\n<ul>\r\n<ul>\r\n<ol>\r\n<li>The coding of the application as a single function hosted by the server is simple to grasp. .</li>\r\n<li>Easy to introduce new features as functions.</li>\r\n<li>No need to handle infrastructure issues</li>\r\n<li>No need to run a server 24/7</li>\r\n<li>Focus on core development</li>\r\n<li>Less efforts in maintaining project infrastructure</li>\r\n</ol>\r\n</ul>\r\n</ul>\r\n<h5>Benefits for businesses</h5>\r\n<p>Enterprises and startups can save a lot of money by using the Serverless FaaS strategy.</p>\r\n<ul>\r\n<ul>\r\n<ul>\r\n<li>Pay only for what you use helps businesses</li>\r\n<li>Quick development, as businesses can launch individual functions in production, so shorter time to market.</li>\r\n<li>Event driven project scaling</li>\r\n<li>Less costs on running a server.</li>\r\n</ul>\r\n</ul>\r\n</ul>\r\n<h3>References</h3>\r\n<p>https://martinfowler.com/articles/serverless.html</p>\r\n<p>https://www.redhat.com/en/topics/cloud-native-apps/what-is-serverless</p>\r\n<p>https://newrelic.com/blog/best-practices/what-is-serverless-architecture</p>', '2022-08-19 06:20:42', 'Serverless, Serverless Architecture, SaaS, FaaS'),
(10, 'No-code & low-code Development', 'no-code-low-code-development', '<p>Reading time - 3mins</p>\r\n<p>Low-code/no-code development platforms are types of visual software development environments that allow enterprise developers and citizen developers to drag and drop application components, connect them together and create mobile or web apps.</p>', '<h3>Introduction</h3>\r\n<p>Low-code/no-code development platforms are types of visual software development environments that allow enterprise developers and citizen developers to drag and drop application components, connect them together and create mobile or web apps.</p>\r\n<h3>What is low-code?</h3>\r\n<p>Low-code requires some level of coding, mostly used by&nbsp;professional&nbsp;developers and programmers.Low code application examples include <strong>&nbsp;Wix,&nbsp;Squarespace,&nbsp;WordPress&nbsp;and&nbsp;Weebly</strong>.</p>\r\n<h3>What is no-code?</h3>\r\n<ul>\r\n<ul>\r\n<li>Truly a drag and drop process&nbsp;mostly used by non-technical&nbsp;users.</li>\r\n<li>Commonly used to create&nbsp;apps that run critical&nbsp;business&nbsp;processes.</li>\r\n<li>Used for apps in portals that&nbsp;likely require integration with&nbsp;other systems and data&nbsp;sources.</li>\r\n<li>Also used for&nbsp;typically front-end apps&nbsp;that handle simple&nbsp;functions.</li>\r\n</ul>\r\n</ul>\r\n<h4>Benefits of low-code &amp; no-code in&nbsp;digital transformation</h4>\r\n<ul>\r\n<ul>\r\n<ol>\r\n<li>Accelerate requirements&nbsp;gathering</li>\r\n<li>Improved agility. Operating at&nbsp;digital speed means creating the app&nbsp;capabilities users require to function&nbsp;smoothly across multiple devices.</li>\r\n&nbsp;\r\n<li>Reduce costs.&nbsp;</li>\r\n<li>Higher productivity.</li>\r\n<li>Better Customer Experience</li>\r\n<li>Effective Risk Management</li>\r\n&nbsp;\r\n<li>More flexible</li>\r\n<li>Innovative project can be assembled by non-technical audience</li>\r\n</ol>\r\n</ul>\r\n</ul>\r\n<h3>The Future of Low-Code&nbsp;Development</h3>\r\n<p>Low-code app builders are game-changers. The need for experienced coders is reduced as this type of tool provides the necessary components and building blocks for non-technical audiences to be involved in full-cycle app development.?Another recent Gartner report said that 80% of technology products and services will be created by people outside of tech-driven fields by 2024.</p>\r\n<h3>References</h3>\r\n<p>https://en.yeeply.com/blog/pros-cons-low-code-development/? https://www.techtarget.com/searchsoftwarequality/tip/How-low-code-development-accelerates-digital-transformation?? https://www.youtube.com/watch?v=m5mLiSnX8wk? https://digital.com/best-no-code-development-platforms/? https://www.cuelogic.com/blog/low-code-platform? https://devops.com/the-future-of-low-code-development/? ?</p>', '2022-08-19 07:51:20', 'no-code, low-code');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_cats`
--

CREATE TABLE `blog_post_cats` (
  `id` int(11) UNSIGNED NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_post_cats`
--

INSERT INTO `blog_post_cats` (`id`, `postID`, `catID`) VALUES
(82, 0, 1),
(76, 9, 0),
(81, 10, 0),
(75, 9, 0),
(98, 1, 0),
(84, 0, 1),
(83, 0, 4),
(52, 8, 0),
(80, 10, 0),
(85, 0, 4),
(86, 0, 1),
(87, 0, 4),
(88, 0, 1),
(89, 0, 4),
(90, 0, 1),
(91, 0, 4),
(92, 0, 1),
(93, 0, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `blog_posts_seo`
--
ALTER TABLE `blog_posts_seo`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `catID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_posts_seo`
--
ALTER TABLE `blog_posts_seo`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
