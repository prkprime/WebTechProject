-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: miniproject
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `problemstatement`
--

LOCK TABLES `problemstatement` WRITE;
/*!40000 ALTER TABLE `problemstatement` DISABLE KEYS */;
INSERT INTO `problemstatement` VALUES (1,2,'One Click Digital Payments','You are supposed to come up with a One Click Digital Payment for MSME’s (Not only organized retail).\n\nYour solution should provide Frictionless Single Click Payment, Which does not involve any new app and behaves like cash; the solution can be on decentralized Blockchain network, Social digital payments, wearable payments or any such technologies! (Most payment services today require an app to control transactions. Build a solution which does not require any app)','AGS01'),(2,2,'Data reconciliation and Dispute management','What happens in the back office of any payment processing operation is as important as the customer-facing transaction. Behind the scenes, there is significant potential for delays and costly mistakes if payments are not processed efficiently and seamlessly. For many institutions, this tedious process is made more difficult by the diverse types of payments they handle.\n\nIn addition, when account holders request supplemental information from their issuer about the details of a transaction appearing on their statement, the availability of accurate and timely information is key to preventing unnecessary chargebacks and the potential for customer dissatisfaction. Regardless of whether the transaction took place online, on a mobile device, at an ATM or at a POS device, consumers expect their financial services provider to be responsive to complaints and queries.\n\nYou are expected to come up with a solution for data reconciliation and dispute management using AI and Robotics.','AGS02'),(3,2,'Open innovation','Come up with a solution for Payment POS / ATM of the future., One - Click payments, UPI, etc. Ideate and build on how Payment POS / ATM will change as per the ecosystem trends and consumer behavior\n\n','AGS03'),(4,3,'Create a ChatOps bot for Mattermost that improves DevOps lifecycle.','CI/CD bots that enable you to execute build jobs and report back statistics of the build job','MBH01'),(5,3,'Create a generic chatbot via scripts or frameworks for Mattermost that enable faster team collaboration.','Workflow chatbots that automate processes such as incident response management or HR onboarding.\nSocial chatbots for fun.','MBH02'),(6,3,'Create a sophisticated ML or AI bot for Mattermost.','Suggestor bot that recommends new channels or people to interact with based on past activity in Mattermost','MBH03'),(7,4,'Develop ideas to digitalize rural education.','methodes to improve quality of eduacation, transport, importancde of education.\nMethods for assessing examinatons.','NEC01'),(8,5,'Aircraft turnarounds in real-time','Analyze aircraft turnarounds in real-time and build a predictive model that helps to run operations efficiently.','AIR01'),(9,5,'User experience','Futuristic user experience and interaction through self-service kiosks that are installed for various purposes across touch points at airports','AIR02'),(10,6,'Primary Production','With the increasing rates of food wastage in India, NEC is looking for innovative solutions to control inefficient food production at its source.','NEC01'),(11,6,'Handling & Storage','A lot of food in India is wasted due to mismanagement and low quality of storage. NEC is seeking solutions to improve post-harvest processes that affect the food supply chain.','NEC02'),(12,7,'Predict the Price','Based on the population and labour distribution for the state of Uttar Pradesh, determine the ideal price bucket for the regularly used household products. You will need to bucket similar brands and prices, remove any outliers from the data, and determine the appropriate price range and discounts that should be tagged to each product category.','HCL01'),(13,7,'Open Innovation','Using Artificial Intelligence and/or Data Analytics on open-source data sets, build any solution that can help derive premium value from data at hand.','HCL02'),(14,8,'TV viewership data in India','TRAI is seeking views and solutions in this hackathon with regard to the following:\n\n1. Expanding the Sample size to make viewership data more accurate and representative, especially for smaller viewership channels, at all India and regional market levels\n2. Improved/Optimal technological solution to collect the viewership data and its transfer to a server location, without human intervention, while ensuring the privacy of households, and secrecy of the measurement process','TRA01');
/*!40000 ALTER TABLE `problemstatement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-16 14:30:20
