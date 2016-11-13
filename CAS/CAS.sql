-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2016 at 08:35 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CAS`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add groups', 7, 'add_groups'),
(20, 'Can change groups', 7, 'change_groups'),
(21, 'Can delete groups', 7, 'delete_groups'),
(22, 'Can add subjects', 8, 'add_subjects'),
(23, 'Can change subjects', 8, 'change_subjects'),
(24, 'Can delete subjects', 8, 'delete_subjects'),
(25, 'Can add courses', 9, 'add_courses'),
(26, 'Can change courses', 9, 'change_courses'),
(27, 'Can delete courses', 9, 'delete_courses'),
(28, 'Can add clusters', 10, 'add_clusters'),
(29, 'Can change clusters', 10, 'change_clusters'),
(30, 'Can delete clusters', 10, 'delete_clusters'),
(31, 'Can add universities', 11, 'add_universities'),
(32, 'Can change universities', 11, 'change_universities'),
(33, 'Can delete universities', 11, 'delete_universities'),
(34, 'Can add course career', 12, 'add_coursecareer'),
(35, 'Can change course career', 12, 'change_coursecareer'),
(36, 'Can delete course career', 12, 'delete_coursecareer'),
(37, 'Can add careers', 13, 'add_careers'),
(38, 'Can change careers', 13, 'change_careers'),
(39, 'Can delete careers', 13, 'delete_careers'),
(40, 'Can add questions', 14, 'add_questions'),
(41, 'Can change questions', 14, 'change_questions'),
(42, 'Can delete questions', 14, 'delete_questions'),
(43, 'Can add choices', 15, 'add_choices'),
(44, 'Can change choices', 15, 'change_choices'),
(45, 'Can delete choices', 15, 'delete_choices'),
(46, 'Can add subject cluster', 16, 'add_subjectcluster'),
(47, 'Can change subject cluster', 16, 'change_subjectcluster'),
(48, 'Can delete subject cluster', 16, 'delete_subjectcluster'),
(49, 'Can add personalities', 17, 'add_personalities'),
(50, 'Can change personalities', 17, 'change_personalities'),
(51, 'Can delete personalities', 17, 'delete_personalities'),
(52, 'Can add recommended courses', 18, 'add_recommendedcourses'),
(53, 'Can change recommended courses', 18, 'change_recommendedcourses'),
(54, 'Can delete recommended courses', 18, 'delete_recommendedcourses'),
(55, 'Can add kcse results', 19, 'add_kcseresults'),
(56, 'Can change kcse results', 19, 'change_kcseresults'),
(57, 'Can delete kcse results', 19, 'delete_kcseresults'),
(58, 'Can add question answer', 20, 'add_questionanswer'),
(59, 'Can change question answer', 20, 'change_questionanswer'),
(60, 'Can delete question answer', 20, 'delete_questionanswer'),
(61, 'Can add personality career', 21, 'add_personalitycareer'),
(62, 'Can change personality career', 21, 'change_personalitycareer'),
(63, 'Can delete personality career', 21, 'delete_personalitycareer'),
(64, 'Can add explanations', 22, 'add_explanations'),
(65, 'Can change explanations', 22, 'change_explanations'),
(66, 'Can delete explanations', 22, 'delete_explanations'),
(67, 'Can add subject grade', 23, 'add_subjectgrade'),
(68, 'Can change subject grade', 23, 'change_subjectgrade'),
(69, 'Can delete subject grade', 23, 'delete_subjectgrade'),
(70, 'Can add grades', 24, 'add_grades'),
(71, 'Can change grades', 24, 'change_grades'),
(72, 'Can delete grades', 24, 'delete_grades');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$EfyW7y9qzYcM$uHCytjIuo6s6k7JymW5LceWhUHTX22c0Nc5nPgD/6RU=', '2016-09-22 08:32:11.352061', 0, 'jeytembu', 'jerono', 'tembu', 'jeytembu@gmail.com', 0, 1, '2016-09-21 15:11:21.624227'),
(2, 'pbkdf2_sha256$30000$cA8fzMH2EGaI$YVlPM4AA2YtACz5Gp2UJd7+1o53LCzgs3pQ5jrbxGi8=', NULL, 0, 'kig', 'kigen', 'tembu', 'kigtembu@gmail.com', 0, 1, '2016-09-21 15:13:21.313990'),
(3, 'pbkdf2_sha256$30000$0GmhVtnTDDf0$FgQ8hiGPt7+uUSHwyOITNFgQkJP+s9T1LboCOHjRvLA=', NULL, 0, 'sam', 'Sam', 'Mwangi', 'samnjihia@gmail.com', 0, 1, '2016-09-21 15:16:06.365747'),
(4, 'pbkdf2_sha256$30000$iCIcxR0B8IXh$LfA+u6snnqc9Vi/u9pP9sd2YqwW+YWRgTImfd2Iohck=', NULL, 0, 'gladwell', 'Gladys', 'Wangui', 'glado@gmail.com', 0, 1, '2016-09-21 15:22:11.363861'),
(5, 'pbkdf2_sha256$30000$C4aDoMps3DSF$cc677wzPd7D2Czaf3tC7mb+I+rvfetJ9TxrbA0NvQik=', NULL, 0, 'jes', 'Jesaina', 'tembu', 'jane@gmail.com', 0, 1, '2016-09-21 15:27:39.057870'),
(6, 'pbkdf2_sha256$30000$Oo5I0GSm7Rz1$jtQv83uklyGSOrck//Z3Z04gCBtBr14WF+3No/yCkwQ=', NULL, 0, 'christo', 'Chris', 'Lola', 'chris@gmail.com', 0, 1, '2016-09-22 08:20:20.465801'),
(7, 'pbkdf2_sha256$30000$bDBPjMiLKA7v$Wyn0DOk+k9SCbANny0NkihlMd5haU+3QrbIL5xCWa1s=', NULL, 0, 'tisha', 'Tisha', 'Maina', 'tisha@gmail.com', 0, 1, '2016-11-01 09:21:11.852725'),
(8, 'pbkdf2_sha256$30000$ymYkXPAXDXay$7m4OAqpZ623y+oETOwI7HaovEJYX539yYtItuyAsHE8=', '2016-11-07 02:29:23.409208', 0, 'katy', 'Kate', 'Nasimbwa', 'kate@gmail.com', 0, 1, '2016-11-01 09:23:24.206166');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `definition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `description`, `definition`) VALUES
(1, 'Graphic Designer', 'Creates images that identify a product or convey a message.\r\nDevelops graphics for product illustrations, logos, and websites.\r\nSelects colors, images, text style, and layout.', 'create visual concepts, by hand or using computer software, to communicate ideas that inspire, inform, or captivate consumers. They develop the overall layout and production design for advertisements, brochures, magazines, and corporate reports.'),
(2, 'Animator', 'Creates graphics and animation using computer programs and illustrations.\r\nResearch upcoming projects to help create realistic designs or animations.\r\nDevelops storyboards that map out key scenes in animations.\r\nEdits animations and effects on the basis of feedback from directors, other animators, game designers, or clients. ', 'create animation and visual effects for television, movies, video games, and other forms of media. They create two- and three-dimensional models and animation.'),
(3, 'Community Service Manager', 'Discuss with members of the community what types of programs and services are needed.\r\nDesign and oversee programs to meet the needs of the target audience or community.\r\nCreate methods to gather information, such as statistics, about the impact of their programs.\r\nSupervise staff, such as social workers, who provide services to clients.\r\nAnalyze data to determine the effectiveness of programs.\r\nSuggest and carry out improvements to programs and services.\r\nDevelop and manage budgets for programs and organizations.\r\nGet funding for programs though the agency’s budget process or fundraising.', 'coordinate and supervise social service programs and community organizations. They direct and lead staff who provide social services to the public.'),
(4, 'Social Worker', 'identify people who need help.Assess clients’ needs, situations, strengths, and support networks to determine their goals.\r\nDevelop plans to improve their clients’ well-being.Help clients adjust to changes and challenges in their lives, such as illness, divorce, or unemployment.Research and refer clients to community resources, such as food stamps, child care, and health care.Help clients work with government agencies to apply for and receive benefits such as Medicare.Respond to crisis situations such as child abuse.Advocate for and help clients get resources that would improve their well-being.Follow up with clients to ensure that their situations have improved.Evaluate services provided to ensure that they are effective. ', 'help people solve and cope with problems in their everyday lives'),
(5, 'Special Education Teacher', '\r\n    Assess students’ skills to determine their needs and to develop teaching plans.\r\n    Adapt lessons to meet the needs of students.\r\n    Develop Individualized Education Programs (IEPs) for each student.\r\n    Plan, organize, and assign activities that are specific to each student’s abilities.\r\n    Teach and mentor students as a class, in small groups, and one-on-one.\r\n    Implement IEPs, assess students’ performance, and track their progress.\r\n    Update IEPs throughout the school year to reflect students’ progress and goals.\r\n    Discuss student’s progress with parents, teachers, counselors, and administrators.\r\n    Supervise and mentor teacher assistants who work with students with disabilities.\r\n    Prepare and help students transition from grade to grade and after graduation.\r\n', 'work with students who have a wide range of learning, mental, emotional, and physical disabilities. They adapt general education lessons and teach various subjects, such as reading, writing, and math, to students with mild and moderate disabilities. They also teach basic skills, such as literacy and communication techniques, to students with severe disabilities.'),
(6, 'Preschool teacher', '\r\n    Prepare children for kindergarten by introducing concepts they will explore further in kindergarten and elementary school.\r\n    Work with children in groups or one on one, depending on the needs of children and the subject matter.\r\n    Plan and carry out a curriculum that targets different areas of child development, such as language, motor, and social skills.\r\n    Organize activities so children can learn about the world, explore interests, and develop talents.\r\n    Develop schedules and routines to ensure children have enough physical activity, rest, and playtime.\r\n    Watch for signs of emotional or developmental problems in children and bring problems to the attention of parents.\r\n    Keep records of the students’ progress, routines, and interests, and keep parents informed about their child’s development.\r\n ', 'educate and care for children, usually ages 3 to 5, who have not yet entered kindergarten. They teach reading, writing, science, and other subjects in a way that young children can understand.'),
(7, 'Nutritionist', '\r\n    Assess patients’ and clients’ health needs and diet.\r\n    Counsel patients on nutrition issues and healthy eating habits.\r\n    Develop meal plans, taking both cost and clients’ preferences into account.\r\n    Evaluate the effects of meal plans and change the plans as needed.\r\n    Promote better nutrition by speaking to groups about diet, nutrition, and the relationship between good eating habits and preventing or managing specific diseases.\r\n    Keep up with the latest nutritional science research.\r\n    Write reports to document patient progress.\r\n ', 'xperts in food and nutrition. They advise people on what to eat in order to lead a healthy lifestyle or achieve a specific health-related goal.'),
(8, 'Veterinarian', '\r\n    Examine animals to diagnose their health problems.\r\n    Diagnose and treat animals for medical conditions.\r\n    Treat and dress wounds.\r\n    Perform surgery on animals.\r\n    Test for and vaccinate against diseases.\r\n    Operate medical equipment, such as x-ray machines.\r\n    Advise animal owners about general care, medical conditions, and treatments.\r\n    Prescribe medication.\r\n    Euthanize animals.\r\n', ' care for the health of animals and work to improve public health. They diagnose, treat, and research medical conditions and diseases of pets, livestock, and other animals.'),
(9, 'Fundraiser', '\r\n    Research prospective donors.\r\n    Create a strong fundraising message that appeals to potential donors.\r\n    Conduct fundraising strategies for an organization.\r\n    Identify and contact potential donors.\r\n    Organize a campaign or event that will lead to soliciting donations.\r\n    Maintain records of donor information for future use.\r\n    Evaluate the success of previous fundraising events.\r\n    Train volunteers in fundraising procedures and practices.\r\n    Ensure that all legal reporting requirements are satisfied.\r\n', ' organize events and campaigns to raise money and other donations for an organization. They may design promotional materials and increase awareness of an organization’s work, goals, and financial needs'),
(10, 'Human Resource Specialist', '\r\n    Consult with employers to identify employment needs.\r\n    Interview applicants about their experience, education, and skills.\r\n    Contact references and perform background checks on job applicants.\r\n    Inform applicants about job details, such as duties, benefits, and working conditions.\r\n    Hire or refer qualified candidates for employers.\r\n    Conduct or help with new employee orientation.\r\n    Keep employment records and process paperwork.\r\n', ' recruit, screen, interview, and place workers. They often handle other human resources work, such as those related to employee relations, payroll and benefits, and training.'),
(11, 'Training/Development manager', '\r\n    Assess employees’ needs for training.\r\n    Align training with the organization’s strategic goals.\r\n    Create a training budget and keep operations within budget.\r\n    Develop training programs that make the best use of available resources.\r\n    Update training programs to ensure that they are current.\r\n    Oversee the creation of online learning modules and other educational materials for employees.\r\n    Review training materials from a variety of vendors and select materials with appropriate content.\r\n    Teach training methods and skills to instructors and supervisors.\r\n    Evaluate the effectiveness of training programs and instructors.\r\n', '  plan, direct, and coordinate programs to enhance the knowledge and skills of an organization’s employees. They also oversee a staff of training and development specialists.'),
(12, 'Anthropologist', '\r\n    Plan research projects to answer questions and test hypotheses about the interaction between nature and culture.\r\n    Develop data collection methods tailored to a particular specialty or project.\r\n    Collect information from observations, interviews, and documents.\r\n    Record and manage records of observations taken in the field.\r\n    Analyze data, laboratory samples, and other sources of information to uncover patterns about human life, culture, and origins.\r\n    Prepare reports and present research findings.\r\n    Advise organizations on the cultural impact of policies, programs, and products.\r\n', ' study the origin, development, and behavior of humans. They examine the cultures, languages, archeological remains, and physical characteristics of people in various parts of the world.'),
(13, 'Psychologist', '\r\n    Conduct scientific studies of behavior and brain function.\r\n    Collect information through observations, interviews, surveys, and other methods.\r\n    Research and identify behavioral or emotional patterns.\r\n    Test for patterns that will help them better understand and predict behavior.\r\n    Use their knowledge to increase understanding among individuals and groups.\r\n', ' study cognitive, emotional, and social processes and human behavior by observing, interpreting, and recording how people relate to one another and their environments.'),
(14, 'Zoologist', '\r\n    Develop and conduct experimental studies with animals in controlled or natural surroundings.\r\nCollect biological data and specimens for analysis.\r\nStudy the characteristics of animals, such as their interactions with other species, reproduction, population dynamics, diseases, and movement patterns.\r\nAnalyze the influence that human activity has on wildlife and their natural habitats.\r\nEstimate, monitor, and manage wildlife populations and invasive plants and animals.\r\nWrite research papers, reports, and scholarly articles that explain their findings.\r\nGive presentations on research findings to academics and the general public.\r\n', 'study animals and other wildlife, and how they interact with their ecosystems. They study the physical characteristics of animals, animal behaviors, and the impacts humans have on wildlife and natural habitats.'),
(15, 'Editor', '\r\n    Read content and correct for errors in spelling, punctuation, and grammar.\r\n    Rewrite copy to make it easier for readers to understand.\r\n    Verify facts using standard reference sources.\r\n    Evaluate submissions from writers to decide what to publish.\r\n    Work with writers to help their ideas and stories succeed.\r\n    Plan the content of digital media and publications according to the publication’s style and editorial policy.\r\n    Develop story and content ideas while being mindful of the audience.\r\n    Allocate space for the text, photos, and illustrations that make up a story\r\n    Approve final versions submitted by staff.\r\n', ' plan, review, and revise content for publication'),
(16, 'Film Editor', '\r\n    Shoot and record television programs, motion pictures, music videos, documentaries, or news and sporting events.\r\n    Organize raw film footage into a continuous whole.\r\n    Collaborate with a director to determine the overall vision of the production.\r\n    Discuss filming and editing techniques with a director to improve a scene.\r\n    Select the appropriate equipment, from the type of lens to the appropriate lighting.\r\n    Shoot or edit a scene based on the director’s vision\r\n policy.\r\n    Develop story and content ideas while being mindful of the audience.\r\n    Allocate space for the text, photos, and illustrations that make up a story.\r\n', '  manipulate images that entertain or inform an audience. Camera operators capture a wide range of material for TV shows, motion pictures, music videos, documentaries, or news and sporting events. Editors organize the final productions from the many different images that camera operators capture. They collaborate with producers and directors to create the final '),
(17, 'Interpreter', '\r\n    Convert concepts in the source language to equivalent concepts in the target language.\r\n    Compile information, such as technical terms used in legal settings, into glossaries and terminology databases to be used in translations.\r\n    Speak, read, and write fluently in at least two languages, including English and one or more others.\r\n    Relay the style and tone of the original language.\r\n    Manage work schedules to meet deadlines.\r\n    Render spoken messages accurately, quickly, and clearly.\r\n', '  convert information from one language into another language'),
(18, 'Public Relations Specialist', '\r\n    Write press releases and prepare information for the media.\r\n    Respond to information requests from the media.\r\n    Help clients communicate effectively with the public.\r\n    Help maintain their organization corporate image and identity.\r\n    Draft speeches and arrange interviews for an organization’s top executives.\r\n    Evaluate advertising and promotion programs to determine whether they are compatible with their organization’s public relations efforts.\r\n', 'create and maintain a favorable public image for the organization they represent. They design media releases to shape public perception of their organization and to increase awareness of its work and goals. '),
(19, 'Writer/Author', '\r\n    Choose subject matter that interests readers.\r\n    Write fiction or nonfiction through scripts, novels, and biographies.\r\n    Conduct research to obtain factual information and authentic detail.\r\n    Write advertising copy for use by newspapers, magazines, broadcasts, and the Internet.\r\n    Present drafts to editors and clients for feedback.\r\n    Work with editors and clients to shape the material so it can be published.\r\n', 'develop written content for advertisements, books, magazines, movie and television scripts, songs, and online publications. '),
(20, 'Fine Artist', '\r\n    Use techniques, such as knitting, weaving, glass blowing, painting, drawing, or  sculpting.\r\n    Develop creative ideas or new methods for making art.\r\n    Create sketches, templates, or models to guide their work.\r\n    Select which materials to use on the basis of color, texture, strength, and other qualities.\r\n    Process materials, often by shaping, joining, or cutting.\r\n    Use visual elements, such as composition, color, space, and perspective, to produce desired artistic effects.\r\n    Develop portfolios highlighting their artistic styles and abilities to show to gallery owners and others interested in their work.\r\n    Display their work at auctions, galleries, museums and online marketplaces.\r\n\r\n', 'create original works of art for their aesthetic value, rather than for a functional one.'),
(21, 'Fashion Designer', '\r\n    Study fashion trends and anticipate designs that will appeal to consumers.\r\n    Decide on a theme for a collection.\r\n    Use computer-aided design programs (CAD) to create designs.\r\n    Visit manufacturers or trade shows to get fabric samples.\r\n    Select fabrics, embellishments, colors, or style for each garment or accessory.\r\n    Work with other designers or team members to create a prototype design.\r\n    Present design ideas to the creative director or showcase them in fashion or trade shows.\r\n    Market designs to clothing retailers or directly to consumers.\r\n    Oversee the final production of their designs.\r\n', 'create original clothing, accessories, and footwear. They sketch designs, select fabrics and patterns, and give instructions on how to make the products they designed.'),
(22, 'Health Educator', '\r\n    Assess the needs of the people and communities they serve.\r\n    Develop programs and events to teach people about health topics.\r\n    Teach people how to cope with or manage existing health conditions.\r\n    Evaluate the effectiveness of programs and educational materials.\r\n    Help people find health services or information.\r\n    Provide training programs for other health professionals or community health workers.\r\n    Supervise staff who implement health education programs.\r\n    Collect and analyze data to learn about their audience and improve programs and services.\r\n    Advocate for improved health resources and policies that promote health.\r\n', 's teach people about behaviors that promote wellness. They develop and implement strategies to improve the health of individuals and communities.'),
(23, 'Physician/Surgeon', '\r\n    Take a patient medical history.\r\n    Update charts and patient information to show current findings and treatments.\r\n    Order tests for nurses or other healthcare staff to perform.\r\n    Review test results to identify any abnormal findings.\r\n    Recommend and design a plan of treatment.\r\n    Address concerns or answer questions that patients have about their health and well-being.\r\n    Help patients take care of their health by discussing topics such as proper nutrition and hygiene.\r\n', 'diagnose and treat injuries or illnesses'),
(24, 'Medical Scientist', '\r\n   \r\n    Conduct studies that investigate human diseases and methods of preventive care and treatment of diseases.\r\n    Develop instruments for medical applications.\r\n    Prepare and analyze medical samples and data to investigate causes and treatment of toxicity, pathogens, or chronic diseases.\r\n    Standardize drug potency, doses, and methods to allow for the mass manufacturing and distribution of drugs and medicinal compounds.\r\n    Work with health departments, industry personnel, and physicians to develop programs that improve health outcomes.\r\n    Apply for funding from government agencies and private funding sources, by writing research grant proposals.\r\n    Follow procedures to avoid contamination and maintain safety.\r\n', ' conduct research aimed at improving overall human health'),
(25, 'Agricultural/Food Scientist', '\r\n    Conduct research and experiments to improve the quantity and quality of field crops and farm animals.\r\n    Formulate new food products and develop new and better ways to process, package, and deliver them.\r\n    Study the composition of soil as it relates to plant growth.\r\n    Communicate research findings to the scientific community, food producers, and the public.\r\n    Travel between facilities to oversee the implementation of new projects.\r\n', 'ensure that agricultural establishments are productive and food is safe.'),
(26, 'Environmental Scientist', '\r\n   Clean up polluted areas.\r\n   Advise policymakers.\r\n   Work with industry to reduce waste.\r\n', 'use their knowledge of the natural sciences to protect the environment and human health'),
(27, 'Classical/Opera Musician', '\r\n  Perform music for live audiences and recordings.\r\n  Audition for positions in orchestras, choruses, bands, and other types of music groups.\r\n  Practice playing instruments or singing to improve their technique.\r\nRehearse to prepare for performances.\r\nFind locations for performances or concerts.\r\nTravel, sometimes great distances, to performance venues.\r\nPromote their careers by maintaining a website or social media presence or doing photo shoots and interviews.\r\n', 'play instruments or sing for live audiences and in recording studios'),
(28, 'Interior Designer', '\r\n \r\n    Search for and bid on new projects.\r\n    Determine the client’s goals and requirements of the project.\r\n    Consider how the space will be used and how people will move through the space.\r\n    Sketch preliminary design plans, including electrical layouts.\r\n    Specify materials and furnishings, such as lighting, furniture, wall finishes, flooring, and plumbing fixtures.\r\n    Prepare final plans, using computer applications.\r\n    Create a timeline for the interior design project and estimate project costs.\r\n    Place orders for materials and oversee installing the design elements.\r\n    Visit after the project to ensure that the client is satisfied.\r\n', ' make interior spaces functional, safe, and beautiful by determining space requirements and selecting decorative items, such as colors, lighting, and materials. They read blueprints and must be aware of building codes and inspection regulations.'),
(29, 'Journalist/Reporter', ' Research topics and stories that an editor or news director has assigned to them.\r\n    Interview people who have information, analysis, or opinions about a story or article.\r\n    Write articles for newspapers, blogs, and magazines and write scripts to be read on television or radio.\r\n    Review articles for accuracy and proper style and grammar.\r\n    Develop relationships with experts and contacts who provide tips and leads on stories.\r\n    Analyze and interpret information to increase their audiences’ understanding of the news.\r\n    Update stories as new information becomes available.\r\n', '\r\n   informs the public about news and events happening internationally, nationally, and locally'),
(30, 'High school Teacher', '\r\n    Plan lessons in the subjects they teach, such as biology or history.\r\n    Assess students to evaluate their abilities, strengths, and weaknesses.\r\n    Teach students as an entire class or in small groups.\r\n    Grade students’ assignments to monitor progress.\r\n    Communicate with parents about students’ progress.\r\n    Work with individual students to challenge them, to improve their abilities, and to work on their weaknesses.\r\n    Prepare students for standardized tests required by the state.\r\n    Develop and enforce classroom rules.\r\n    Supervise students outside of the classroom—for example, at lunchtime or during detention.', '\r\nteach academic lessons and various skills that students will need to attend college and to enter the job market.\r\n'),
(31, 'Human Resource Manager', '\r\n    Plan and coordinate an organization’s workforce to best use employees’ talents.\r\n    Link an organization’s management with its employees.\r\n    Administer employee services.\r\n    Advise managers on organizational policies, such as equal employment opportunity and sexual harassment.\r\n    Coordinate and supervise the work of specialists and support staff.\r\n    Oversee an organization’s recruitment, interview, selection, and hiring processes.\r\n    Handle staffing issues, such as mediating disputes and directing disciplinary procedures.\r\n', ' plan, direct, and coordinate the administrative functions of an organization. They oversee the recruiting, interviewing, and hiring of new staff; consult with top executives on strategic planning; and serve as a link between an organization’s management and its employees. '),
(32, 'Flight attendant', '\r\n    Attend preflight briefings on details of the flight.\r\n    Ensure that adequate supplies of refreshments and emergency equipment are on board.\r\n    Assist in cleaning the cabin between flights.\r\n    Demonstrate the use of safety and emergency equipment.\r\n    Ensure all passengers have seat belts fastened and ensure other safety requirements are met.\r\n    Serve, and sometimes sell, beverages, meals, or snacks.\r\n    Take care of passengers’ needs, particularly those with special needs.\r\n    Reassure passengers during flight, such as when the aircraft hits turbulence.\r\n    Administer first aid to passengers or coordinate first aid efforts, when needed.\r\n    Direct passengers in case of emergency.\r\n', 'provide personal services to ensure the safety and comfort of airline passengers.'),
(33, 'Market Research Analyst', '\r\n    Monitor and forecast marketing and sales trends.\r\n    Measure the effectiveness of marketing programs and strategies.\r\n    Devise and evaluate methods for collecting data, such as surveys, questionnaires, and opinion polls.\r\n    Gather data about consumers, competitors, and market conditions\r\n    Analyze data using statistical software.\r\n    Convert complex data and findings into understandable tables, graphs, and written reports.\r\n    Prepare reports and present results to clients and management.\r\n', 'study market conditions to examine potential sales of a product or service. They help companies understand what products people want, who will buy them, and at what price.'),
(34, 'Film Producer/Director', '\r\n    Select scripts.\r\n    Audition and select cast members and the film or stage crew.\r\n    Approve the design and financial aspects of a production.\r\n    Oversee the production process, including performances, lighting, and choreography.\r\n    Oversee the post-production process, including editing, special effects, music selection, and a performance’s overall tone.\r\n    Ensure that a project stays on schedule and within budget.\r\n    Approve new developments in the production.\r\n', 'create motion pictures, television shows, live theater, and other performing arts productions. They interpret a writer’s script to entertain or inform an audience.'),
(35, 'Landscape architecture', '\r\n    Confer with clients, engineers, and building architects to understand a project.\r\n    Prepare site plans, specifications, and cost estimates.\r\n    Coordinate the arrangement of existing and proposed land features and structures.\r\n    Prepare graphic representations of proposed plans using computer-aided design and drafting (CADD) software.\r\n    Select appropriate materials for use in landscape designs.\r\n    Analyze environmental reports on land conditions, such as drainage and energy usage.\r\n    Inspect landscape work to ensure that it adheres to original plans.\r\n    Seek new work through marketing or by giving presentations..\r\n', 'plan and design land areas for parks, recreational facilities, private homes, campuses, and other open spaces.'),
(36, 'Art Director', '\r\n    Determine how best to represent a concept visually.\r\n    Determine which photographs, art, or other design elements to use.\r\n    Develop the overall look or style of a publication, an advertising campaign, or a theater, television, or film set.\r\n    Supervise design staff.\r\n    Review and approve designs, artwork, photography, and graphics developed by other staff members. \r\n    Talk to clients to develop an artistic approach and style.\r\n    Coordinate activities with other artistic and creative departments.\r\n    Develop detailed budgets and time lines.\r\n    Present designs to clients for approval.\r\n', ' responsible for the visual style and images in magazines, newspapers, product packaging, and movie and television productions. They create the overall design and direct others who develop artwork or layouts.'),
(37, 'Industrial Designer', '\r\n    Consult with clients to determine requirements for designs.\r\n    Research who will use a particular product, and the various ways it might be used.\r\n    Sketch out ideas or create renderings, which are images on paper or on a computer that provide a better visual of design ideas.\r\n    Use computer software to develop virtual models of different designs\r\n    Create physical prototypes of their designs.\r\n    Examine materials and production costs to determine manufacturing requirements.\r\n    Work with other specialists such as mechanical engineers or manufacturers to evaluate whether their design concepts will fill a need at a reasonable cost.\r\n    Evaluate product safety, appearance, and function to determine if a design is practical.\r\n    Present designs and demonstrate prototypes to clients for approval.\r\n', 'develop the concepts for manufactured products, such as cars, home appliances, and toys. They combine art, business, and engineering to make products that people use every day. Industrial designers focus on the user experience in creating style and function for a particular gadget or appliance.'),
(38, 'Conservation Scientist', 'Monitor forestry and conservation activities to assure compliance with government regulations and habitat protection.\r\nNegotiate terms and conditions for forest harvesting and land-use contracts.\r\nEstablish plans for managing forest lands and resources.\r\nMonitor forest-cleared lands to ensure that they are suitable for future use.\r\nWork with private landowners, governments, farmers, and others to improve land for forestry purposes, while at the same time protecting the environment.', 'manage overall land quality of forests, parks, rangelands, and other natural resources.'),
(39, 'Lawyer', '\r\n    Advise and represent clients in courts, before government agencies, and in private legal matters.\r\n    Communicate with their clients and others.\r\n    Conduct research and analysis of legal problems.\r\n    Interpret laws, rulings, and regulations for individuals and businesses.\r\n    Present facts in writing and verbally to their clients or others and argue on their behalf.\r\n    Prepare and file legal documents, such as lawsuits, appeals, wills, contracts, and deeds.\r\n', 'advise and represent individuals, businesses, and government agencies on legal issues and disputes. '),
(40, 'Music Director', '\r\n    Select musical arrangements and compositions to be performed for live audiences or recordings.\r\n    Prepare for performances by reviewing and interpreting musical scores.\r\n    Direct rehearsals to prepare for performances and recordings.\r\n    Choose guest performers and soloists.\r\n    Audition new performers or assist section leaders with auditions.\r\n    Practice conducting to improve technique.\r\n    Meet with potential donors and attend fundraisers.\r\n', 'lead orchestras and other musical groups during performances and recording sessions'),
(41, 'Composer', 'Write original music that orchestras, bands, and other musical groups perform.\r\nArrange existing music into new compositions.\r\nWrite lyrics for music or work with a lyricist.\r\nMeet with companies, orchestras, or other musical groups that are interested in commissioning a piece of music.\r\nStudy and listen to music of various styles for inspiration.\r\nWork with musicians to record their music. ', ' write and arrange original music in a variety of musical styles.'),
(42, 'Accountant', 'Examine financial statements to be sure that they are accurate and comply with laws and regulations.\r\nCompute taxes owed, prepare tax returns, and ensure that taxes are paid properly and on time.\r\nInspect account books and accounting systems for efficiency and use of accepted accounting procedures.\r\nOrganize and maintain financial records.\r\nAssess financial operations and make best-practices recommendations to management.\r\nSuggest ways to reduce costs, enhance revenues, and improve profits. ', 'prepare and examine financial records. They ensure that financial records are accurate and that taxes are paid properly and on time.'),
(43, 'Budget Analyst', '\r\n    Work with program and project managers to develop the organization''s budget.\r\n    Review managers'' budget proposals for completeness, accuracy, and compliance with laws and other regulations.\r\n    Combine all the program and department budgets together into a consolidated organizational budget and review all funding requests for merit.\r\n    Explain their recommendations for funding requests to others in the organization, legislators, and the public.\r\n    Help the chief operations officer, agency head, or other top managers analyze proposed plans and find alternatives if the projected results are unsatisfactory.\r\n    Monitor organizational spending to ensure that it is within budget.\r\n    Inform program managers of the status and availability of funds.\r\n    Estimate future financial needs.\r\n', ' help public and private institutions organize their finances. They prepare budget reports and monitor institutional spending.'),
(44, 'Financial Analyst', '\r\n    Recommend individual investments and collections of investments, which are known as portfolios.\r\n    Evaluate current and historical data.\r\n    Study economic and business trends.\r\n    Study a company’s financial statements to determine its value.\r\n    Meet with company officials to gain better insight into the company’s prospects and management.\r\n    Prepare written reports.\r\n    Meet with investors to explain recommendations.\r\n', 'provide guidance to businesses and individuals making investment decisions. They assess the performance of stocks, bonds, and other types of investments.'),
(45, 'Logistician', '\r\n    Direct the allocation of materials, supplies, and finished products.\r\n    Develop business relationships with suppliers and customers.\r\n    Work to understand customers’ needs and how to meet them.\r\n    Design strategies to minimize the cost or time required to move goods.\r\n    Review the success of logistical functions and identify areas for improvement.\r\n    Propose improvements to management and customers.\r\n', 'analyze and coordinate an organization’s supply chain—the system that moves a product from supplier to consumer. They manage the entire life cycle of a product, which includes how a product is acquired, distributed, allocated, and delivered.'),
(46, 'Actuary', 'Compile statistical data and other pertinent information for further analysis.\r\nEstimate the probability and likely economic cost of an event such as death, sickness, an accident, or a natural disaster.\r\nDesign, test, and administer insurance policies, investments, pension plans, and other business strategies to minimize risk and maximize profitability.\r\nProduce charts, tables, and reports that explain their calculations and proposals.\r\nExplain their findings and proposals to company executives, government officials, shareholders, and clients. ', 'analyze the financial costs of risk and uncertainty. They use mathematics, statistics, and financial theory to assess the risk that an event will occur and help businesses and clients develop policies that minimize the cost of that risk.'),
(47, 'Mathematician', 'Expand knowledge in mathematical areas, such as algebra or geometry, by developing new rules, theories, and concepts.\r\nUse mathematical formulas and models to prove or disprove theories.\r\nApply mathematical theories and techniques to solve practical problems in business, engineering, the sciences, or other fields.\r\nDevelop mathematical or statistical models to analyze data.\r\nInterpret data and report conclusions from their analyses.\r\nUse data analysis to support and improve business decisions.\r\nRead professional journals, talk with other mathematicians, and attend. .professional conferences to maintain knowledge of current trends. ', 'use advanced mathematics to develop and understand mathematical principles, analyze data, and solve real-world problems.'),
(48, 'Operational Research Analyst', '\r\n    Identify and define business problems, such as those in production, logistics, or sales.\r\n    Collect and organize information from a variety of sources, such as computer databases.\r\n    Gather input from workers involved in all aspects of the problem or from others who have specialized knowledge, so that they can help solve the problem.\r\n    Examine information to figure out what is relevant to the problem and what methods should be used to analyze it.\r\n    Use statistical analysis or simulations to analyze information and develop practical solutions to business problems.\r\n    Advise managers and other decision makers on the impacts of various courses of action to take in order to address a problem.\r\n    Write memos, reports, and other documents, outlining their findings and recommendations for managers, executives, and other officials.\r\n', 'use advanced mathematical and analytical methods to help organizations solve problems and make better decisions.\r\n'),
(49, 'Statistician', '\r\n    Apply statistical theories and methods to solve practical problems in business, engineering, the sciences, or other fields.\r\n    Decide what data are needed to answer specific questions or problems.\r\n    Determine methods for finding or collecting data.\r\n    Design surveys or experiments or opinion polls to collect data. \r\n    Collect data or train others to do so.\r\n    Analyze and interpret data.\r\n    Report conclusions from their analyses.\r\n', 'use statistical methods to collect and analyze data and help solve real-world problems in business, engineering, the sciences, or other fields.'),
(50, 'Aerospace Engineer', 'Direct and coordinate the design, manufacture, and testing of aircraft and aerospace products.\r\n    Assess proposals for projects to determine if they are technically and financially feasible.\r\n    Determine if proposed projects will result in safe aircraft and parts.\r\n    Evaluate designs to see that the products meet engineering principles, customer requirements, and environmental challenges.\r\n    Develop acceptance criteria for design methods, quality standards, sustainment after delivery, and completion dates.\r\n    Ensure that projects meet quality standards.\r\n    Inspect malfunctioning or damaged products to identify sources of problems and possible solutions.\r\n', 'design aircraft, spacecraft, satellites, and missiles. In addition, they test prototypes to make sure that they function according to design.'),
(51, 'Agricultural Engineer', '\r\n    Design agricultural machinery components and equipment, using computer-aided design (CAD) technology.\r\n    Test agricultural machinery and equipment to ensure that they perform properly.\r\n    Design food-processing plants and supervise manufacturing operations.\r\n    Plan and direct construction of rural electric-power distribution systems\r\n    Design structures to store and process crops.\r\n    Design housing and environments to maximize animals’ comfort, health, and productivity.\r\n    Provide advice on water quality and issues related to managing pollution, controlling rivers, and protecting and using other water resources.\r\n    Design and supervise environmental and land reclamation projects in agriculture and related industries.\r\n    Discuss plans with clients, contractors, consultants, and other engineers so that the plans can be evaluated and any necessary changes made.\r\n', 'work on a variety of activities. These activities range from aquaculture (raising food, such as fish, that thrive in water) to land farming to forestry; from developing biofuels to improving conservation; from planning animal environments to finding better ways to process food.'),
(52, 'Architect', '\r\n    Meet with clients to determine objectives and requirements for structures.\r\n    Estimate the amount of required materials, equipment, and construction time\r\n    Prepare structure specifications.\r\n    Direct workers who prepare drawings and documents.\r\n    Prepare scaled drawings with computer software and by hand.\r\n    Prepare contract documents for building contractors.\r\n    Manage construction contracts.\r\n    Visit worksites to ensure that construction adheres to architectural plans.\r\n    Seek new work by marketing and giving presentations.\r\n', ' plan and design houses, office buildings, and other structures.'),
(53, 'Biomedical Engineer', '\r\n    Design systems and products, such as artificial internal organs, artificial devices that replace body parts, and machines for diagnosing medical problems.\r\n    Install, adjust, maintain, repair, or provide technical support for biomedical equipment.\r\n    Evaluate the safety, efficiency, and effectiveness of biomedical equipment.\r\n    Train clinicians and other personnel on the proper use of equipment.\r\n    Work with life scientists, chemists, and medical scientists to research the engineering aspects of biological systems of humans and animals.\r\n', 'analyze and design solutions to problems in biology and medicine, with the goal of improving the quality and effectiveness of patient care.'),
(54, 'Chemical Engineer', '\r\n    Conduct research to develop new and improved manufacturing processes.\r\n    Develop safety procedures for those working with potentially dangerous chemicals.\r\n    Develop processes to separate components of liquids and gases or to generate electrical currents using controlled chemical processes.\r\n    Design and plan the layout of equipment.\r\n    Do tests and monitor performance of processes throughout production.\r\n    Troubleshoot problems with manufacturing processes.\r\n    Evaluate equipment and processes to ensure compliance with safety and environmental regulations.\r\n    Estimate production costs for management.\r\n', 'apply the principles of chemistry, biology, physics, and mathematics to solve problems that involve the production or use of chemicals, fuel, drugs, food, and many other products. They design processes and equipment for large-scale manufacturing, plan and test methods of manufacturing products and treating byproducts, and supervise production.'),
(55, 'Civil Engineer', '\r\n    Analyze survey reports, maps, and other data to plan projects.\r\n    Consider construction costs, government regulations, potential environmental hazards, and other factors in planning stages and risk analysis.\r\n    Compile and submit permit applications to local, state, and federal agencies verifying that projects comply with various regulations.\r\n    Perform or oversee soil testing to determine the adequacy and strength of foundations.\r\n    Test building materials, such as concrete, asphalt, or steel, for use in particular projects.\r\n    Provide cost estimates for materials, equipment, or labor to determine a project’s economic feasibility.\r\n    Use design software to plan and design transportation systems, hydraulic systems, and structures in line with industry and government standards.\r\n    Perform or oversee, surveying operations to establish reference points, grades, and elevations to guide construction.\r\n    Present their findings to the public on topics such as bid proposals, environmental impact statements, or property descriptions.\r\n    Manage the repair, maintenance, and replacement of public and private infrastructure.\r\n', ' design, construct, supervise, operate, and maintain large construction projects and systems, including roads, buildings, airports, tunnels, dams, bridges, and systems for water supply and sewage treatment. Many civil engineers work in design, construction, research, and education.'),
(56, 'Computer Hardware Engineer', '\r\n    Design new computer hardware, creating blueprints of computer equipment to be built.\r\n    Test the completed models of the computer hardware they design.\r\n    Analyze the test results and modify the design as needed.\r\n    Update existing computer equipment so that it will work with new software.\r\n    Oversee the manufacturing process for computer hardware.\r\n    Maintain knowledge of computer engineering trends and new technology.\r\n', 'research, design, develop, and test computer systems and components such as processors, circuit boards, memory devices, networks, and routers. By creating new directions in computer hardware, these engineers create rapid advances in '),
(57, 'Electrical engineer', '\r\n    Design new ways to use electrical power to develop or improve products.\r\n    Do detailed calculations to develop manufacturing, construction, and installation standards and specifications.\r\n    Direct manufacturing, installing, and testing of electrical equipment to ensure that products meet specifications and codes.\r\n    Investigate complaints from customers or the public, evaluate problems, and recommend solutions.\r\n    Work with project managers on production efforts to ensure that projects are completed satisfactorily, on time, and within budget.\r\n', 'design, develop, test, and supervise the manufacturing of electrical equipment, such as electric motors, radar and navigation systems, communications systems, or power generation equipment. '),
(58, 'Electronic Engineer', '\r\n    Design electronic components, software, products, or systems for commercial, industrial, medical, military, or scientific applications.\r\n    Analyze customer needs and determine electrical system requirements, capacity, and cost to develop a system plan.\r\n    Develop maintenance and testing procedures for electronic components and equipment.\r\n    Evaluate systems and recommend design modifications or equipment repair.\r\n    Inspect electronic equipment, instruments, and systems to make sure they meet safety standards and applicable regulations.\r\n    Plan and develop applications and modifications for electronic properties used in parts and systems to improve technical performance.\r\n', 'design and develop electronic equipment, such as broadcast and communications systems, from portable music players to global positioning systems (GPS).'),
(59, 'Industrial Engineer', '\r\n    Review production schedules, engineering specifications, process flows, and other information to understand methods and activities in manufacturing and services.\r\n    Figure out how to manufacture parts or products, or deliver services, with maximum efficiency.\r\n    Develop management control systems to make financial planning and cost analysis more efficient.\r\n    Enact quality control procedures to resolve production problems or minimize costs.\r\n    Work with customers and management to develop standards for design and production.\r\n    Design control systems to coordinate activities and production planning to ensure that products meet quality standards.\r\n    Confer with clients about product specifications, vendors about purchases, management personnel about manufacturing capabilities, and staff about the status of projects.\r\n', 'find ways to eliminate wastefulness in production processes. They devise efficient ways to use workers, machines, materials, information, and energy to make a product or provide a service.'),
(60, 'Mechanical Engineer', '\r\n    Analyze problems to see how mechanical and thermal devices might help solve the problem.\r\n    Design or redesign mechanical and thermal devices using analysis and computer-aided design.\r\n    Develop and test prototypes of devices they design.\r\n    Analyze the test results and change the design as needed.\r\n    Oversee the manufacturing process for the device.\r\n', 'research, design, develop, build, and test mechanical and thermal devices, including tools, engines, and machines.'),
(61, 'Petroleum Engineer', '\r\n    Design equipment to extract oil and gas in the most profitable way.\r\n    Develop ways to inject water, chemicals, gases, or steam into an oil reserve to force out more of the oil.\r\n    Develop plans to drill in oil and gas fields, and then to recover the oil and gas.\r\n    Make sure that wells, well testing, and well surveys are completed and evaluated.\r\n    Use computer-controlled drilling or fracturing to connect a larger area of an oil and gas deposit to a single well.\r\n    Make sure that oil field equipment is installed, operated, and maintained properly.\r\n', ' design and develop methods for extracting oil and gas from deposits below the earth’s surface. Petroleum engineers also find new ways to extract oil and gas from older wells.'),
(62, 'Surveyor', '\r\n    Measure distances and angles between points on, above, and below the Earth’s surface.\r\n    Travel to locations and select known reference points to determine the exact location of important features.\r\n    Establish stake sites and official land and water boundaries.\r\n    Research land records, survey records, and land titles.\r\n    Look for evidence of previous boundaries to determine where boundary lines are located.\r\n    Record the results of surveying and verify the accuracy of data.\r\n    Prepare plots, maps, and reports.\r\n    Present findings to clients, government agencies, and others.\r\n    Take notes of land for deeds, leases, and other legal documents.\r\n    Provide expert testimony in court regarding survey work.\r\n', 'make precise measurements to determine property boundaries. They provide data relevant to the shape and contour of the Earth’s surface for engineering, map making, and construction projects.');
INSERT INTO `careers` (`id`, `name`, `description`, `definition`) VALUES
(63, 'Meteorologist', '\r\n    Measure temperature, pressure, humidity, wind speed, dew point, and other properties of the atmosphere.\r\n    Use computer models that analyze data about the atmosphere (also called meteorological data).\r\n    Write computer programs to support their modeling efforts.\r\n    Produce weather maps and graphics.\r\n    Report current weather conditions.\r\n    Prepare long- and short-term weather forecasts using sophisticated computers, mathematical models, satellites, radar, and local station data.\r\n    Plan, organize, and participate in outreach programs aimed at educating the public about weather.\r\n    Issue warnings to protect life and property when threatened by severe weather, such as hurricanes, tornadoes, and flash floods.\r\n', ' study the weather and climate and how it affects human activity and the earth in general. They may develop forecasts, collect and compile data from the field, assist in the development of new data collection instruments, or advise clients on risks or opportunities caused by weather events and climate change.\r\n'),
(64, 'Biochemist', '\r\n    Plan and conduct complex projects in basic and applied research\r\n    Manage laboratory teams and monitor the quality of their work\r\n    Isolate, analyze, and synthesize proteins, enzymes, DNA, and other molecules\r\n    Research the effects of substances, such as drugs, hormones, and food on tissues and biological processes\r\n    Prepare technical reports, research papers, and recommendations based on their research\r\n    Present research findings to scientists, engineers, and other colleagues\r\n', ' study the chemical and physical principles of living things and of biological processes, such as cell development, growth, and heredity.'),
(65, 'Chemist', '\r\n    Plan and carry out complex research projects, such as the development of new products and testing methods.\r\n    Direct technicians and other workers in testing and  analyzing components and the physical properties of materials.\r\n    Instruct scientists and technicians on proper chemical processing and testing procedures, such as ingredients, mixing times, and operating temperatures.\r\n    Prepare solutions, compounds, and reagents used in laboratory procedures.\r\n    Analyze substances to determine their composition and concentration of elements. \r\n    Conduct tests on materials and other substances, to ensure that safety and quality standards are met.\r\n    Write technical reports that detail methods and findings.\r\n    Present research findings to scientists, engineers, and other colleagues.\r\n', 'study substances at the atomic and molecular levels and the ways in which substances react with each other. They use their knowledge to develop new and improved products and to test the quality of manufactured goods.'),
(66, 'Environmental Scientist', '\r\n    Determine data collection methods for research projects, investigations, and surveys.\r\n    Collect and compile environmental data from samples of air, soil, water, food, and other materials for scientific analysis.\r\n    Analyze samples, surveys, and other information to identify and assess threats to the environment.\r\n    Develop plans to prevent, control, or fix environmental problems, such as land or water pollution.\r\n    Provide information and guidance to government officials, businesses, and the general public on possible environmental hazards and health risks.\r\n    Prepare technical reports and presentations that explain their research and findings.\r\n', ' protect the environment and human health. They may clean up polluted areas, advise policy makers, or work with industry to reduce waste.'),
(67, 'Microbiologist', '\r\n    Plan and conduct complex research projects, such as developing new drugs to combat infectious diseases.\r\n    Supervise the work of biological technicians and other workers and evaluate the accuracy of their results.\r\n    Isolate and maintain cultures of bacteria or other microorganisms for study.\r\n    Identify and classify microorganisms found in specimens collected from humans, plants, animals, or the environment.\r\n    Monitor the effect of microorganisms on plants, animals, other microorganisms, or the environment.\r\n    Keep up with current knowledge by reviewing the findings of other researchers and by attending conferences.\r\n    Prepare technical reports, publish research papers, and make recommendations based on their research findings.\r\n    Present research findings to scientists, non-scientist executives, engineers, other colleagues, and the public.\r\n', 'study microorganisms such as bacteria, viruses, algae, fungi, and some types of parasites. They try to understand how these organisms live, grow, and interact with their environments.'),
(68, 'Political Scientist', '\r\n    Research political subjects, such as the U.S. political system, relations between the United States and foreign countries, and political ideologies.\r\n    Collect and analyze data from sources such as public opinion surveys and election results.\r\n    Use qualitative sources, such as historical documents, to develop theories.\r\n    Use quantitative methods, such as statistical analysis, to test theories.\r\n    Evaluate the effects of policies and laws on government, businesses, and people.\r\n    Monitor current events, policy decisions, and other issues relevant to their work.\r\n    Forecast political, economic, and social trends.\r\n    Present research results by writing reports, giving presentations, and publishing articles.\r\n', 'study the origin, development, and operation of political systems. They research political ideas and analyze governments, policies, political trends, and related issues.'),
(69, 'Pharmacist', '\r\n    Fill prescriptions, verifying instructions from physicians on the proper amounts of medication to give to patients.\r\n    Check whether the prescription will interact negatively with other drugs that a patient is taking or any medical conditions the patient has.\r\n    Instruct patients on how and when to take a prescribed medicine and inform them about potential side effects they may experience from taking the medicine.\r\n    Advise patients about general health topics, such as diet, exercise, and managing stress, and on other issues, such as what equipment or supplies would be best to treat a health problem.\r\n    Give flu shots and, in most states, other vaccinations.\r\n    Complete insurance forms and work with insurance companies to ensure that patients get the medicines they need.\r\n    Oversee the work of pharmacy technicians and pharmacists in training (interns)\r\n    Keep records and do other administrative tasks.\r\n    Teach other health care practitioners about proper medication therapies for patients.\r\n', ' dispense prescription medications to patients and offer expertise in the safe use of prescriptions. They also may provide advice on how to lead a healthy lifestyle, conduct health and wellness screenings, provide immunizations, and oversee the medications given to patients.'),
(70, 'Computer Programmer', '\r\n    Write programs in a variety of computer languages, such as C++ and Java.\r\n    Update and expand existing programs.\r\n    Debug programs by testing for and fixing errors.\r\n    Build and use computer-assisted software engineering (CASE) tools to automate the writing of some code.\r\n    Use code libraries, which are collections of independent lines of code, to simplify the writing.\r\n', 'write code to create software programs. They turn the program designs created by software developers and engineers into instructions that a computer can follow. Programmers must debug the programs—that is, test them to ensure that they produce the expected results. If a program does not work correctly, they check the code for mistakes and fix them.'),
(71, 'Computer Support Specialist', '\r\n    Pay attention to customers when they describe their computer problems.\r\n    Ask customers questions to properly diagnose the problem.\r\n    Walk customers through the recommended problem-solving steps.\r\n    Set up or repair computer equipment and related devices.\r\n    Train users to work with new computer hardware or software, such as printers, word-processing software, and email.\r\n    Assist users in installing software.\r\n    Provide others in the organization with information about what gives customers the most trouble and about other concerns customers have.\r\n', 'provide help and advice to people and organizations using computer software or equipment. Some, called computer network support specialists, support information technology (IT) employees within their organization. Others, called computer user support specialists, assist non-IT users who are having computer problems.'),
(72, 'Computer System Analyst', '\r\n    Consult with managers to determine the role of the IT system in an organization.\r\n    Research emerging technologies to decide if installing them can increase the organization’s efficiency and effectiveness.\r\n    Prepare an analysis of costs and benefits so that management can decide if information systems and computing infrastructure upgrades are financially worthwhile.\r\n    Devise ways to add new functionality to existing computer systems.\r\n    Design and develop new systems by choosing and configuring hardware and software.\r\n    Oversee the installation and configuration of new systems to customize them for the organization.\r\n    Conduct testing to ensure that the systems work as expected.\r\n    Train the system’s end users and write instruction manuals.\r\n', 'study an organization’s current computer systems and procedures and design information systems solutions to help the organization operate more efficiently and effectively. They bring business and information technology (IT) together by understanding the needs and limitations of both.'),
(73, 'Database administrator', '\r\n    Identify user needs to create and administer databases.\r\n    Ensure that the database operates efficiently and without error.\r\n    Make and test modifications to the database structure when needed.\r\n    Maintain the database and update permissions.\r\n    Merge old databases into new ones.\r\n    Backup and restore data to prevent data loss.\r\n    Ensure that organizational data is secure.\r\n', 'use specialized software to store and organize data, such as financial information and customer shipping records. They make sure that data are available to users and are secure from unauthorized access.'),
(74, 'Information Security Analyst', '\r\n    Monitor their organization’s networks for security breaches and investigate a violation when one occurs.\r\n    Install and use software, such as firewalls and data encryption programs, to protect sensitive information.\r\n    Prepare reports that document security breaches and the extent of the damage caused by the breaches.\r\n    Conduct penetration testing, which is when analysts simulate attacks to look for vulnerabilities in their systems before they can be exploited.\r\n    Research the latest information technology (IT) security trends.\r\n    Help plan and carry out an organization’s way of handling security.\r\n    Develop security standards and best practices for their organization.\r\n    Recommend security enhancements to management or senior IT staff.\r\n    Help computer users when they need to install or learn about new security products and procedures.\r\n', 'plan and carry out security measures to protect an organization''s computer networks and systems. Their responsibilities are continually expanding as the number of cyber attacks increase.'),
(75, 'Network Administrator', '\r\n    Determine what the organization needs in a network and computer system before it is set up.\r\n    Install all network hardware and software and make needed upgrades and repairs.\r\n    Maintain network and computer system security and ensure that all systems are operating correctly.\r\n    Collect data in order to evaluate the network’s or system’s performance and help make the system work better and faster.\r\n    Add users to a network and assign and update security permissions on the network.\r\n    Train users on the proper use of hardware and software.\r\n    Solve problems when a user or an automated monitoring system informs them that a problem exists.\r\n', 'organize, install, and support an organization’s computer systems, including local area networks (LANs), wide area networks (WANs), network segments, intranets, and other data communication systems.'),
(76, 'Software Developer', 'Analyze users’ needs, then design, test, and develop software to meet those needs.\r\nRecommend software upgrades for customers’ existing programs and systems.\r\nDesign each piece of the application or system and plan how the pieces will work together.\r\nCreate a variety of models and diagrams (such as flowcharts) that instruct programmers how to write the software code.\r\nEnsure that the software continues to function normally through software maintenance and testing.\r\nDocument every aspect of the application or system as a reference for future maintenance and upgrades.\r\nCollaborate with other computer specialists to create optimum soft.', 'the creative minds behind computer programs. Some develop the applications that allow people to do specific tasks on a computer or other device. Others develop the underlying systems that run the devices or control networks.'),
(77, 'Web Developer', '\r\n    Meet with their clients or management to discuss the needs of the website and the expected needs of the website’s audience and plan how it should look.\r\n    Create and debug applications for a website.\r\n    Write code for the site, using programming languages such as HTML or XML.\r\n    Work with other team members to determine what information the site will contain.\r\n    Work with graphics and other designers to determine the website’s layout.\r\n    Integrate graphics, audio, and video into the website.\r\n    Monitor website traffic.\r\n', 'design and create websites. They are responsible for the look of the site. They are also responsible for the site’s technical aspects, such as performance and capacity, which are measures of a website’s speed and how much traffic the site can handle. They also may create content for the site.'),
(78, 'Computer Network Architecture', '\r\n    Create a plan and layout for a data communication network.\r\n    Present the plan to management and explain why it is in the organization’s best interest to pursue it.\r\n    Consider information security when designing a network.\r\n    Decide what hardware, such as routers or adaptors, and software, such as network drivers, are needed to support the network.\r\n    Determine how cables will be laid out in the building and where other hardware will go.\r\n    Research new technology to determine what would best support their organization in the future.\r\n', 'design and build data communication networks, including local area networks (LANs), wide area networks (WANs), and intranets. These networks range from a small connection between two offices to a multinational series of globally distributed communications systems. Network architects must have extensive knowledge of an organization’s business plan to design a network that can help the organization achieve its goals.'),
(79, 'Construction Manager', '\r\n    Prepare cost estimates, budgets, and work timetables.\r\n    Interpret and explain contracts and technical information to other professionals.\r\n    Report work progress and budget matters to clients.\r\n    Collaborate with architects, engineers, and other construction specialists.\r\n    Select, schedule, and coordinate subcontractor activities.\r\n    Respond to work delays, emergencies, and other problems.\r\n    Comply with legal requirements, building and safety codes, and other regulations.\r\n', 'plan, coordinate, budget, and supervise construction projects from development to completion.'),
(80, 'Dentist', '\r\n    Remove decay from teeth and fill cavities.\r\n    Repair cracked or fractured teeth and remove teeth.\r\n    Straighten teeth to correct bite issues.\r\n    Place sealants or whitening agents on teeth\r\n    Administer anesthetics to keep patients from feeling pain during procedures.\r\n    Write prescriptions for antibiotics or other medications.\r\n    Examine x rays of teeth, gums, the jaw, and nearby areas for problems.\r\n    Make models and measurements for dental appliances, such as dentures, to fit patients.\r\n    Teach patients about diet, flossing, use of fluoride, and other aspects of dental care.\r\n', 'diagnose and treat problems with a patient’s teeth, gums, and related parts of the mouth. They provide advice and instruction on taking care of teeth and gums and on diet choices that affect oral health.\r\n'),
(81, 'Industrial Production Manager', '\r\n    Decide how best to use a plant’s workers and equipment to meet production goals.\r\n    Ensure that production stays on schedule and within budget.\r\n    Hire, train, and evaluate workers.\r\n    Analyze production data.\r\n    Write production reports.\r\n    Monitor a plant’s workers to ensure they meet performance and safety requirements.\r\n    Create ways to make the production process more efficient.\r\n    Determine whether new machines are needed or whether overtime work is necessary.\r\n    Fix any production problems.\r\n', 'oversee the daily operations of manufacturing and related plants. They coordinate, plan, and direct the activities used to create a wide range of goods, such as cars, computer equipment, or paper products.'),
(82, 'Astronomer', '\r\n    Develop scientific theories and models that attempt to explain the properties of the natural world, such as atom formation or the force of gravity.\r\n    Plan and conduct scientific experiments and studies to test theories and discover properties of matter and energy.\r\n    Write proposals and apply for research grants.\r\n    Do complex mathematical calculations to analyze physical and astronomical data, such as data that may indicate the existence of planets in distant solar systems.\r\n    Design new scientific equipment, such as telescopes and lasers.\r\n    Develop computer software to analyze and model data.\r\n    Write scientific papers that may be published in scholarly journals.\r\n    Present research findings at scientific conferences and lectures.\r\n', ' study the ways in which various forms of matter and energy interact. Theoretical physicists and astronomers may study the nature of time or the origin of the universe. Physicists and astronomers in applied fields may develop new military technologies or new sources of energy, or monitor space debris that could endanger satellites.'),
(83, 'Hotel Manager', '\r\n    Inspect guest rooms, public areas, and grounds for cleanliness and appearance\r\n    Greet and register guests.\r\n    Ensure that company standards for guest services, décor, and housekeeping are met.\r\n    Answer questions from guests about hotel policies and services.\r\n    Keep track of how much money the hotel or lodging facility is making\r\n    Interview, hire, train, and sometimes fire staff members.\r\n    Monitor staff performance to ensure that guests are happy and that the hotel is well run.\r\n    Coordinate office activities of hotels or motels and resolve problems.\r\n    Set room rates and budgets, approve expenditures, and allocate funds to various departments.\r\n', 'ensure that guests on vacation or business travel have a pleasant experience at a hotel, motel, or other types of establishment with accommodations. They also ensure that the establishment is run efficiently and profitab'),
(84, 'Economist', '\r\n    Research and analyze economic issues.\r\n    Conduct surveys and collect data.\r\n    Analyze data using mathematical models and statistical techniques.\r\n    Prepare reports, tables, and charts that present research results.\r\n    Interpret and forecast market trends.\r\n    Advise businesses, governments, and individuals on economic topics.\r\n    Design policies or make recommendations for solving economic problems.\r\n    Write articles for publication in academic journals and other media sources.\r\n', 'study the production and distribution of resources, goods, and services by collecting and analyzing data, researching trends, and evaluating economic issues. ');

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `text` varchar(70) NOT NULL,
  `question_id` int(11) NOT NULL,
  `personality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `text`, `question_id`, `personality`) VALUES
(1, 'wide circle of friends and acquaintances', 1, 'E'),
(2, 'wide circle of acquaintances but few friends', 1, 'I'),
(3, 'narrow circle of friends and acquaintances', 1, 'I'),
(4, 'Wide circle of friends but few acquaintances', 1, 'E'),
(5, 'imaginative', 2, 'N'),
(6, 'realistic', 2, 'S'),
(7, 'confront the accusers and give them a piece of my mind.', 3, 'T'),
(8, 'walk away since they are wrong and it is also not worth the argument.', 3, 'F'),
(9, 'decide quickly.', 4, 'J'),
(10, 'take time to decide.', 4, 'P'),
(11, 'spending time alone doing my stuff', 5, 'I'),
(12, 'hanging out with friends', 5, 'E'),
(13, 'theoritical', 6, 'N'),
(14, 'practical', 6, 'S'),
(15, 'people''s emotions ad what makes them tick', 7, 'F'),
(16, 'computers and what makes them run', 7, 'T'),
(17, 'kept opened for options', 8, 'P'),
(18, 'planned out.', 8, 'J'),
(19, 'think first then act then think further ', 9, 'I'),
(20, 'act first then think then act further.', 9, 'E'),
(22, 'energetic bursts', 10, 'N'),
(23, 'steady pace', 10, 'S'),
(24, 'the same  level of intellect that I have', 11, 'T'),
(25, 'the same level of sincerity that I have', 11, 'F'),
(26, 'usually made schedules for assignments and followed them ', 12, 'J'),
(27, 'never had assignments and reading schedules', 12, 'P'),
(29, 'talking', 13, 'E'),
(30, 'writing', 13, 'I'),
(31, 'present situations.', 14, 'S'),
(32, 'future possibilities.', 14, 'N'),
(33, 'telling the plain truth is more important than being tactful', 15, 'T'),
(34, 'being tactful is more important than telling the "cold" truth', 15, 'F'),
(35, 'way before their deadlines', 16, 'J'),
(36, 'when their deadlines start approaching ', 16, 'P'),
(37, 'on the day of their deadlines', 16, 'P'),
(38, 'working in teams', 17, 'E'),
(39, 'working as individuals', 17, 'I'),
(40, 'only once', 18, 'N'),
(41, 'twice or more times', 18, 'S'),
(42, 'empathize with him/her', 19, 'F'),
(43, 'help her out by suggesting solutions where applicable', 19, 'T'),
(44, 'do nothing', 19, 'T'),
(45, 'messy', 20, 'P'),
(46, 'tidy', 20, 'J');

-- --------------------------------------------------------

--
-- Table structure for table `clusters`
--

CREATE TABLE `clusters` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clusters`
--

INSERT INTO `clusters` (`id`, `name`, `description`) VALUES
(1, '1', 'This cluster contains four subject,for subject 1:English,subject 2:Maths/II,subject 3:III,subject 4:Kiswahili/II/III/IV/V'),
(2, '2', 'This cluster contains four subject,for subject 1:English/Kiswahili,subject 2:Maths,subject 3:II/III,subject 4:II/III/IV/V'),
(3, '3', 'This cluster contains four subject,for subject 1:English/Kiswahili,subject 2:Maths/II,subject 3:III,subject 4:II/III/IV/V'),
(4, '4', 'This cluster contains four subject,for subject 1:Maths,subject 2:Physics,subject 3:Biology/Chemistry,subject 4:II/III/IV/V'),
(5, '5', 'This cluster contains four subject,for subject 1:English/Kiswahili,subject 2:Biology,subject 3:III,subject 4:Maths/II/III/IV/V'),
(6, '7', 'This cluster contains four subject,for subject 1:English/Kiswahili,subject 2:Maths/II,subject 3:III,subject 4:II/III/IV/V'),
(7, '8', 'This cluster contains four subject,for subject 1:Maths,subject 2:Physics,subject 3:Geography,subject 4:II/III/IV/V'),
(8, '9', 'This cluster contains four subject,for subject 1:Maths,subject 2:Physics,subject 3:Chemistry,subject 4:Biology/III/IV/V'),
(9, '10', 'This cluster contains four subject,for subject 1:Maths,subject 2:Physics,subject 3:III,subject 4:II/III/IV/V'),
(10, '11', 'This cluster contains four subject,for subject 1:Maths,subject 2:Physics,subject 3:II/III,subject 4:II/III/IV/V'),
(11, '12', 'This cluster contains four subject,for subject 1:Maths,subject 2:Biology,subject 3:Physics/Chemistry,subject 4:II/III/IV/V'),
(12, '13', 'This cluster contains four subject,for subject 1:Maths,subject 2:II,subject 3:II,subject 4:II/III/IV/V'),
(13, '14', 'This cluster contains four subject,for subject 1:Maths,subject 2:II,subject 3:III,subject 4:II/III/IV/V'),
(14, '15', 'This cluster contains four subject,for subject 1:Chemistry,subject 2:Maths/Physics,subject 3:Biology,subject 4:English/Kiswahili/III/IV/V'),
(15, '16', 'This cluster contains four subject,for subject 1:Biology,subject 2:Maths,subject 3:II/III,subject 4:II/III/IV/V'),
(16, '18', 'This cluster contains four subject,for subject 1:Biology,subject 2:Chemistry,subject 3:Maths/Physics,subject 4:English/kiswahili/II/III/IV/V'),
(17, '20', 'This cluster contains four subject,for subject 1:Biology,subject 2:Chemistry,subject 3:Maths/Physics/Geography,subject 4:English/Kiswahili/II/III/IV/V'),
(18, '21', 'This cluster contains four subject,for subject 1:Geography,subject 2:Maths,subject 3:II,subject 4:II/III/IV/V'),
(19, '22', 'This cluster contains four subject,for subject 1:French,subject 2:English/Kiswahili,subject 3:Maths/II/III,subject 4:II/III/IV/V'),
(20, '23', 'This cluster contains four subject,for subject 1:German,subject 2:English/Kiswahili,subject 3:Maths/II/III,subject 4:II/III/IV/V'),
(21, '24', 'This cluster contains four subject,for subject 1:Music,subject 2:English/Kiswahili,subject 3:Maths/II/III,subject 4:II/III/IV/V');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `code` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `duration` int(11) NOT NULL,
  `cutoff` double NOT NULL,
  `cluster_id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`code`, `name`, `duration`, `cutoff`, `cluster_id`, `university_id`) VALUES
('1111101', 'Bachelor of Arts', 4, 29.97, 3, 3),
('1111102', 'Bachelor of Architecture', 4, 44.129, 9, 3),
('1111107', 'Bachelor of Science (Actuarial Science)', 4, 44.352, 6, 3),
('1111111', 'Bachelor of Science (Biology)', 4, 36.199, 16, 3),
('1111112', 'Bachelor of Science (Biochemistry)', 4, 42.284, 16, 3),
('1111114', 'Bachelor of Science (Analytical Chemistry With Management)', 4, 39.513, 8, 3),
('1111115', 'Bachelor of Science (Computer Science)', 4, 44.268, 10, 3),
('1111116', 'Bachelor of Science (Civil Engineering)', 4, 44.437, 8, 3),
('1111117', 'Bachelor of Science (Electrical & Electronics Engineering)', 4, 43.852, 8, 3),
('1111120', 'Bachelor of Science (B.sc)', 4, 33.022, 12, 3),
('1111122', 'Bachelor of Science (Agriculture)', 4, 33.914, 17, 3),
('1111129', 'Bachelor of Pharmacy', 4, 45.003, 16, 3),
('1111131', 'Bachelor of Medicine & Bachelor of Surgery (M.b.ch.b.)', 4, 45.211, 16, 3),
('1111133', 'Bachelor of Commerce (B.com)', 4, 41.29, 6, 3),
('1111134', 'Bachelor of Laws (LLB)', 4, 43.212, 1, 3),
('1111135', 'Bachelor of Education (Arts)', 4, 36.795, 3, 3),
('1111137', 'Bachelor of Education (Science)', 4, 39.058, 12, 3),
('1111146', 'Bachelor of Economics', 4, 42.233, 6, 3),
('1111148', 'Bachelor of Science (Records Management and Information Technology)', 4, 37.271, 3, 3),
('1111156', 'Bachelor of Education (Special Needs Education)', 4, 38.43, 5, 3),
('1111160', 'Bachelor of Music', 4, 28.975, 21, 3),
('1111162', 'Bachelor of Education (Arts) Music', 4, 35.779, 21, 3),
('1111163', 'Bachelor of Science (Statistics & Programming)', 4, 42.439, 6, 3),
('1111169', 'Bachelor of Education (Arts) German', 4, 23, 20, 3),
('1111179', 'Bachelor of Arts (Theater Arts & Film Technology)', 4, 38.854, 3, 3),
('1111180', 'Bachelor of Education (Early Childhood Education)', 4, 30.182, 3, 3),
('1111188', 'Bachelor of Science (Environmental Health)', 4, 41.037, 16, 3),
('1111190', 'Bachelor of Science (Food, Nutrition & Dietetics)', 4, 40.962, 17, 3),
('1111194', 'Bachelor of Science (Medical Laboratory Science)', 4, 43.149, 16, 3),
('1111196', 'Bachelor of Science (Occupational Health & Safety)', 4, 36.062, 16, 3),
('1111197', 'Bachelor of Science (Telecommunication & Inform. Tech)', 4, 43.357, 8, 3),
('1111199', 'Bachelor of Economics & Statistics', 4, 43.227, 6, 3),
('1111213', 'Bachelor of Environmental Science', 4, 39.685, 17, 3),
('1111215', 'Bachelor of Science (Agricultural Resource Management)', 4, 36.773, 11, 3),
('1111217', 'Bachelor of Science (Fashion Design & Marketing)', 4, 36.801, 14, 3),
('1111221', 'Bachelor of Science (Hospitality & Tourism Management)', 4, 39.475, 2, 3),
('1111226', 'Bachelor of Science (Biotechnology)', 4, 39.101, 16, 3),
('1111228', 'Bachelor of Environmental Studies and Community Development', 4, 31.325, 18, 3),
('1111232', 'Bachelor of Information Technology', 4, 42.344, 8, 3),
('1111233', 'Bachelor of Library & Information Science', 4, 31.434, 2, 3),
('1111237', 'Bachelor of Arts (Psychology)', 4, 36.289, 3, 3),
('1111279', 'Bachelor of Science (Microbiology)', 4, 40.13, 16, 3),
('1111282', 'Bachelor of Education (Arts) French', 4, 35.382, 19, 3),
('1111294', 'Bachelor of Science (Animal Health & Production)', 4, 38.261, 17, 3),
('1111300', 'Bachelor of Science (Real Estate)', 4, 43.273, 13, 3),
('1111302', 'Bachelor of Arts (Gender and Development)', 4, 33.958, 3, 3),
('1111309', 'Bachelor of Science (Mathematics & Computer Science)', 4, 42.061, 10, 3),
('1111310', 'Bachelor of Education Arts (Home Economics)', 4, 33.413, 3, 3),
('1111312', 'Bachelor of Environmental Planning & Management', 4, 34.673, 18, 3),
('1111315', 'Bachelor of Education (Physical Education)', 4, 23, 15, 3),
('1111337', 'Bachelor of Arts (Counselling Psychology)', 4, 35.69, 3, 3),
('1111402', 'Bachelor of Science (Dry Land, Agriculture & Enterprise Development)', 4, 31.986, 17, 3),
('1111422', 'Bachelor of Science (Crop Improvement & Protection)', 4, 27.949, 17, 3),
('1111434', 'Bachelor of Science (Exercise & Sport Science)', 4, 28.69, 15, 3),
('1111438', 'Bachelor of Science (Molecular & Cellular Biology)', 4, 39.549, 16, 3),
('1111449', 'Bachelor of Communication and Media Studies', 4, 39.743, 3, 3),
('1111485', 'Bachelor of Science (Spatial Management)', 4, 34.128, 17, 3),
('1111508', 'Bachelor of Science (Industrial Chemistry With Management)', 4, 41.66, 8, 3),
('1111509', 'Bachelor of Arts (Fine Arts)', 4, 36.613, 3, 3),
('1111540', 'Bachelor of Economics & Finance', 4, 42.842, 6, 3),
('1111543', 'Bachelor of Science (Health Records & Information Mgt)', 4, 39.058, 3, 3),
('1111565', 'Bachelor of Science (Coastal & Marine Resource Management', 4, 32.462, 17, 3),
('1111566', 'Bachelor of Science (Population Health)', 4, 37.136, 16, 3),
('1111568', 'Bachelor of Science (Forensic Science)', 4, 42.294, 16, 3),
('1111569', 'Bachelor of Education (Arts) Fine Art', 4, 35.483, 3, 3),
('1111570', 'Bachelor of Environmental Education', 4, 27.347, 17, 3),
('1111571', 'Bachelor of Science (Recreation and Sports Management)', 4, 29.123, 15, 3),
('1111572', 'Bachelor of Science (Petroleum Engineering)', 4, 43.809, 8, 3),
('1111573', 'Bachelor of Science (Aerospace Engineering)', 4, 43.141, 8, 3),
('1111587', 'Bachelor of Science (Agribusiness Management)', 4, 39.999, 11, 3),
('1111611', 'Bachelor of Science (Conservation Biology)', 4, 32.061, 16, 3),
('1111618', 'Bachelor of Sciences (Mechanical & Manufacturing Engineering)', 4, 44.069, 8, 3),
('1111621', 'Bachelor of Science (Agricultural & Bio-systems Engineering)', 4, 41.182, 8, 3),
('1111625', 'Bachelor of Science (Energy Technology)', 4, 40.365, 8, 3),
('1111632', 'Bachelor of Science (Nursing)', 4, 44.179, 16, 3),
('1111633', 'Bachelor of Education (Library Science)', 4, 29.264, 2, 3),
('1111643', 'Bachelor of Health Services Management', 4, 40.434, 3, 3),
('1111659', 'Bachelor of Public Policy and Administration', 4, 37.609, 3, 3),
('1111661', 'Bachelor of Music (Technology)', 4, 23, 21, 3),
('1111686', 'Bachelor of Environmental Studies (Environmental Resource Conservation)', 4, 35.879, 17, 3),
('1111694', 'Bachelor of Science (Biomedical Engineering)', 4, 43.433, 8, 3),
('1111776', 'Bachelor of Science (Construction Management)', 4, 42.252, 9, 3),
('1111986', 'Bachelor of Science (Community Resource Management)', 4, 28.86, 3, 3),
('1249103', 'Bachelor of Quantity Surveying', 4, 44.5, 9, 2),
('1249107', 'Bachelor of Science (Actuarial Science)', 4, 43.073, 6, 2),
('1249108', 'Bachelor of Science (Industrial Chemistry)', 4, 41.346, 8, 2),
('1249111', 'Bachelor of Science (Biological Sciences)', 4, 28.357, 16, 2),
('1249114', 'Bachelor of Science (Analytical Chemistry)', 4, 37.654, 8, 2),
('1249115', 'Bachelor of Science (Computer Science)', 4, 44.595, 10, 2),
('1249116', 'Bachelor of Science Civil Engineering', 4, 44.625, 8, 2),
('1249117', 'Bachelor of Science (Electrical and Electronic Engineering)', 4, 44.361, 8, 2),
('1249118', 'Bachelor of Science (Mechanical Engineering)', 4, 44.317, 8, 2),
('1249120', 'Bachelor of Science (B.sc)', 4, 31.647, 12, 2),
('1249121', 'Bachelor of Science (Agricultural and Biosystems Engineering)', 4, 40.834, 8, 2),
('1249122', 'Bachelor of Science (Agriculture)', 4, 34.328, 17, 2),
('1249124', 'Bachelor of Science (Food Science and Technology)', 4, 40.052, 17, 2),
('1249129', 'Bachelor of Pharmacy', 4, 44.669, 16, 2),
('1249131', 'Bachelor of Medicine and Bachelor of Surgery', 5, 44.986, 16, 2),
('1249132', 'Bachelor of Science (Nursing)', 4, 43.382, 16, 2),
('1249133', 'Bachelor of Commerce', 4, 41.373, 6, 2),
('1249134', 'Bachelor of Laws (LLB)', 4, 42.429, 1, 2),
('1249140', 'Bachelor of Science (Marine Engineering)', 4, 42.236, 8, 2),
('1249146', 'Bachelor of Economic', 4, 42.098, 6, 2),
('1249147', 'Bachelor of Science (Genomic Sciences)', 4, 36.177, 16, 2),
('1249149', 'Bachelor of Science (Public Administration and Leadership)', 4, 29.331, 6, 2),
('1249163', 'Bachelor of Science Statistics', 4, 41.944, 6, 2),
('1249176', 'Bachelor of Construction Management', 4, 42.437, 9, 2),
('1249183', 'Bachelor of Journalism', 4, 39.913, 3, 2),
('1249185', 'Bachelor of Science Horticulture', 4, 34.045, 17, 2),
('1249189', 'Bachelor of Human Resource Management', 4, 39.782, 3, 2),
('1249194', 'Bachelor of Science (Medical Laboratory Sciences)', 4, 41.649, 16, 2),
('1249197', 'Bachelor of Science (Telecommunication and Information Engineering)', 4, 44.475, 8, 2),
('1249208', 'Bachelor of Science (Computer Technology)', 4, 42.074, 10, 2),
('1249213', 'Bachelor of Environmental Science', 4, 39.088, 17, 2),
('1249226', 'Bachelor of Science (Biotechnology)', 4, 37.849, 16, 2),
('1249231', 'Bachelor of Science (Control and Instrumentation)', 4, 40.419, 8, 2),
('1249232', 'Bachelor of Science (Information Technology)', 4, 42.126, 8, 2),
('1249240', 'Bachelor of Science (Mechatronic Engineering)', 4, 43.334, 8, 2),
('1249242', 'Bachelor of Mass Communication', 4, 38.952, 3, 2),
('1249243', 'Bachelor of Science (Community Development and Environment)', 4, 32.511, 3, 2),
('1249244', 'Bachelor of Business Information Technology', 4, 40.799, 10, 2),
('1249245', 'Bachelor of Procurement and Contract Management', 4, 40.812, 6, 2),
('1249246', 'Bachelor of Supply Chain Management', 4, 39.144, 6, 2),
('1249247', 'Bachelor of Science (Innovation Technology Management)', 4, 36.324, 6, 2),
('1249259', 'Bachelor of Science (Public Management and Development)', 4, 32.874, 3, 2),
('1249274', 'Bachelor of Science (Food Science and Nutrition)', 4, 40.195, 17, 2),
('1249279', 'Bachelor of Science (Microbiology)', 4, 39.644, 16, 2),
('1249281', 'Bachelor of Science (Medical Microbiology)', 4, 39.535, 16, 2),
('1249290', 'Bachelor of Science (Animal Health, Production & Processing)', 4, 37.448, 17, 2),
('1249298', 'Bachelor of Entrepreneurship', 4, 37.66, 3, 2),
('1249300', 'Bachelor of Real Estate', 4, 43.712, 13, 2),
('1249303', 'Bachelor of Development Studies', 4, 32.749, 3, 2),
('1249309', 'Bachelor of Science (Mathematics and Computer Science)', 4, 41.661, 10, 2),
('1249311', 'Bachelor of Science (Industrial Mathematics)', 4, 36.55, 10, 2),
('1249328', 'Bachelor of Science (Project Planning Management)', 4, 39.403, 3, 2),
('1249349', 'Bachelor of Science (Mining & Mineral Processing Engineering)', 4, 39.274, 8, 2),
('1249350', 'Bachelor of Science (Electronic and Computer Engineering)', 4, 43.342, 8, 2),
('1249351', 'Bachelor of Science (Land Resource Planning & Management)', 4, 34.48, 17, 2),
('1249352', 'Bachelor of Science (Financial Engineering)', 4, 42.207, 6, 2),
('1249353', 'Bachelor of Landscape Architecture', 4, 41.118, 9, 2),
('1249354', 'Bachelor of Science (Environmental Horticulture & Landscaping Technology)', 4, 29.006, 17, 2),
('1249377', 'Bachelor of Science (Geophysics)', 4, 31.35, 8, 2),
('1249405', 'Bachelor of Science (Human Nutrition and Dietetics)', 4, 38.697, 17, 2),
('1249423', 'Bachelor of Science (Community Health and Development)', 4, 34.775, 17, 2),
('1249437', 'Bachelor of Science (Biochemistry and Molecular Biology)', 4, 39.54, 16, 2),
('1249440', 'Bachelor of Science (Agribusiness Economics and Food Industry Management)', 4, 37.693, 11, 2),
('1249452', 'Bachelor of Science (Corporate Communication and Management)', 4, 34.936, 3, 2),
('1249464', 'Bachelor of Science (Zoology)', 4, 30.963, 16, 2),
('1249477', 'Bachelor of Science (Applied Biology)', 4, 35.484, 16, 2),
('1249489', 'Bachelor of Science (Water and Environment Management)', 4, 32.341, 17, 2),
('1249493', 'Bachelor of Science (Strategic Management)', 4, 34.58, 3, 2),
('1249505', 'Bachelor of Science (Nutraceutical Science and Technology)', 4, 30.428, 17, 2),
('1249512', 'Bachelor of Science (Renewable Energy and Environmental Physics)', 4, 28.193, 8, 2),
('1249519', 'Bachelor of Science in Fisheries and Aquaculture', 4, 29.503, 17, 2),
('1249533', 'Bachelor of Science (Operations Research)', 4, 33.192, 6, 2),
('1249536', 'Bachelor of Science (Business Computing)', 4, 37.447, 8, 2),
('1249543', 'Bachelor of Science (Health Records and Informatics)', 4, 39.047, 3, 2),
('1249560', 'Bachelor of Science Clinical Medicine', 4, 43.747, 16, 2),
('1249561', 'Bachelor of Physiotherapy', 4, 42.321, 16, 2),
('1249562', 'Bachelor of Radiography', 4, 43.287, 16, 2),
('1249563', 'Bachelor of Science (Applied Bioengineering)', 4, 38.976, 16, 2),
('1249564', 'Bachelor of Architectural Technology', 4, 44.094, 9, 2),
('1249580', 'Bachelor of Science (Medical Biochemistry)', 4, 34.385, 16, 2),
('1249615', 'Bachelor of Science (Agricultural Economics and Rural Development)', 4, 36.633, 11, 2),
('1249619', 'Bachelor of Science (Geomatic Engineering and Geospatial Information Systems)', 4, 41.26, 8, 2),
('1249638', 'Bachelor of Science (Biostatistics)', 4, 35.484, 8, 2),
('1249639', 'Bachelor of Science (Food Service and Hospitality Management)', 4, 32.871, 17, 2),
('1249719', 'Bachelor of Science (Geospatial Information Science)', 4, 39.77, 8, 2),
('1249728', 'Bachelor of Science Industrial Biotechnology', 4, 39.578, 16, 2),
('1249732', 'Bachelor of Science in Public Health', 4, 42.179, 16, 2),
('1249787', 'Bachelor of Science Agribusiness Management and Enterprise Development', 4, 39.623, 11, 2),
('1263101', 'Bachelor of Arts', 4, 28.547, 3, 1),
('1263102', 'Bachelor of Architectural Studies/bachelor of Architecture', 6, 45.341, 9, 1),
('1263103', 'Bachelor of Quantity Surveying', 4, 44.861, 9, 1),
('1263105', 'Bachelor of Arts (Design)', 4, 40.876, 13, 1),
('1263106', 'Bachelor of Arts (Anthropology)', 4, 23, 3, 1),
('1263107', 'Bachelor of Science (Actuarial Science)', 4, 44.88, 6, 1),
('1263108', 'Bachelor of Science (Industrial Chemistry)', 4, 41.916, 8, 1),
('1263109', 'Bachelor of Science (Mathematics)', 4, 40.922, 10, 1),
('1263110', 'Bachelor of Science (Meteorology)', 4, 31.016, 7, 1),
('1263111', 'Bachelor of Science (Biology)', 4, 36.747, 16, 1),
('1263112', 'Bachelor of Science (Biochemistry)', 4, 42.966, 16, 1),
('1263113', 'Bachelor of Science (Geology)', 4, 34.972, 7, 1),
('1263115', 'Bachelor of Science (Computer Science)', 4, 44.824, 10, 1),
('1263116', 'Bachelor of Science (Civil Engineering)', 4, 45.214, 8, 1),
('1263117', 'Bachelor of Science (Electrical and Electronic Engineering)', 5, 45.006, 8, 1),
('1263118', 'Bachelor of Science (Mechanical Engineering)', 4, 44.51, 8, 1),
('1263119', 'Bachelor of Science (Geospatial Engineering)', 4, 43.896, 8, 1),
('1263120', 'Bachelor of Science (B.sc)', 4, 33.529, 12, 1),
('1263121', 'Bachelor of Science (Biosystems Engineering)', 4, 41.776, 8, 1),
('1263122', 'Bachelor of Science (Agriculture)', 4, 33.719, 17, 1),
('1263124', 'Bachelor of Science (Food Science and Technology)', 4, 40.504, 17, 1),
('1263125', 'Bachelor of Science (Range Management)', 4, 28.399, 17, 1),
('1263126', 'Bachelor of Science (Microprocessor Technology and Instrumentation)', 4, 41.802, 4, 1),
('1263127', 'Bachelor of Science (Astronomy and Astrophysics)', 4, 37.585, 4, 1),
('1263128', 'Bachelor of Dental Surgery ', 5, 45.465, 16, 1),
('1263129', 'Bachelor of Pharmacy', 4, 45.158, 16, 1),
('1263130', 'Bachelor of Veterinary Medicine ', 4, 41.814, 16, 1),
('1263131', 'Bachelor of Medicine and Bachelor of Surgery', 6, 45.358, 16, 1),
('1263132', 'Bachelor of Science (Nursing)', 4, 44.407, 16, 1),
('1263133', 'Bachelor of Commerce (B.com)', 4, 42.043, 6, 1),
('1263134', 'Bachelor of Laws (LLB)', 4, 43.481, 1, 1),
('1263135', 'Bachelor of Education (Arts)', 4, 37.159, 3, 1),
('1263137', 'Bachelor of Education (Science)', 4, 39.343, 12, 1),
('1263143', 'Bachelor of Science (Wildlife Management)', 4, 33.549, 17, 1),
('1263146', 'Bachelor of Economics', 4, 42.598, 6, 1),
('1263163', 'Bachelor of Science (Statistics)', 4, 43.135, 6, 1),
('1263165', 'Bachelor of Arts (Planning)', 4, 42.026, 13, 1),
('1263176', 'Bachelor of Construction Management', 4, 43.381, 9, 1),
('1263180', 'Bachelor of Education (Early Childhood Education)', 4, 28.868, 3, 1),
('1263184', 'Bachelor of Science (Management of Agro-ecosystem and Environment)', 4, 28.536, 17, 1),
('1263185', 'Bachelor of Science (Horticulture)', 4, 35.131, 17, 1),
('1263186', 'Bachelor of Science (Environmental Conservation and Natural Resources Management)', 4, 36.657, 17, 1),
('1263187', 'Bachelor of Science (Agribusiness Management)', 4, 39.364, 11, 1),
('1263190', 'Bachelor of Science (Food Nutrition and Dietetics)', 4, 41.209, 17, 1),
('1263194', 'Bachelor of Science (Medical Laboratory Science & Technology)', 4, 43.65, 16, 1),
('1263199', 'Bachelor of Economics and Statistics', 4, 43.698, 6, 1),
('1263278', 'Bachelor of Science (Microbiology and Biotechnology)', 4, 40.132, 16, 1),
('1263300', 'Bachelor of Real Estate', 4, 44.111, 13, 1),
('1263316', 'Bachelor of Education (Physical Education and Sports)', 4, 30.073, 15, 1),
('1263417', 'Bachelor of Science (Agricultural Education and Extension)', 4, 37.685, 17, 1),
('1263440', 'Bachelor of Education (Ict)', 4, 35.807, 10, 1),
('1263460', 'Bachelor of Science (Leather Technology)', 4, 28.717, 17, 1),
('1263513', 'Bachelor of Science (Chemistry)', 4, 30.238, 8, 1),
('1263515', 'Bachelor of Science (Fisheries and Aquaculture Management)', 4, 32.965, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_career`
--

CREATE TABLE `course_career` (
  `id` int(11) NOT NULL,
  `career_id` int(11) NOT NULL,
  `course_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_career`
--

INSERT INTO `course_career` (`id`, `career_id`, `course_id`) VALUES
(1, 2, '1249115'),
(2, 2, '1249208'),
(3, 2, '1263115'),
(4, 2, '1111115'),
(5, 2, '1111569'),
(6, 2, '1111509'),
(7, 3, '1249149'),
(8, 3, '1249243'),
(9, 4, '1111337'),
(10, 5, '1111156'),
(11, 5, '1263135'),
(12, 5, '1263137'),
(13, 5, '1263440'),
(14, 5, '1263316'),
(15, 5, '1111135'),
(16, 5, '1111137'),
(17, 5, '1111156'),
(18, 5, '1111315'),
(19, 6, '1263180'),
(20, 6, '1111180'),
(21, 7, '1263190'),
(22, 7, '1249274'),
(23, 8, '1263130'),
(24, 10, '1249189'),
(25, 11, '1249189'),
(26, 12, '1263106'),
(27, 13, '1111237'),
(28, 14, '1249464'),
(29, 15, '1111449'),
(30, 15, '1249242'),
(31, 15, '1249183'),
(32, 16, '1111179'),
(33, 17, '1111282'),
(34, 17, '1111169'),
(35, 18, '1111449'),
(36, 18, '1249183'),
(37, 18, '1249242'),
(38, 19, '1111449'),
(39, 19, '1249183'),
(40, 20, '1111569'),
(41, 20, '1111509'),
(42, 21, '1111217'),
(43, 22, '1111188'),
(44, 22, '1249423'),
(45, 22, '1249732'),
(46, 23, '1263131'),
(47, 23, '1111131'),
(48, 23, '1249131'),
(49, 24, '1263194'),
(50, 24, '1111194'),
(51, 24, '1249580'),
(52, 24, '1249194'),
(53, 24, '1249281'),
(54, 25, '1263124'),
(55, 25, '1249124'),
(56, 26, '1111213'),
(57, 26, '1249213'),
(58, 29, '1111449'),
(59, 29, '1249242'),
(60, 30, '1263137'),
(61, 30, '1263135'),
(62, 30, '1111135'),
(63, 30, '1111137'),
(64, 31, '1249189'),
(65, 32, '1111221'),
(66, 32, '1249639'),
(67, 33, '1263199'),
(68, 33, '1263163'),
(69, 33, '1263109'),
(70, 33, '1263146'),
(71, 33, '1111163'),
(72, 33, '1111199'),
(73, 33, '1111146'),
(74, 33, '1249146'),
(75, 34, '1111179'),
(76, 35, '1249353'),
(77, 36, '1263101'),
(78, 36, '1111509'),
(79, 36, '1111101'),
(80, 37, '1263102'),
(81, 37, '1111102'),
(82, 37, '1249564'),
(83, 38, '1263186'),
(84, 38, '1111686'),
(85, 38, '1111611'),
(86, 38, '1263417'),
(87, 38, '1111215'),
(88, 38, '1111402'),
(89, 38, '1263184'),
(90, 38, '1111570'),
(91, 38, '1111213'),
(92, 38, '1111686'),
(93, 38, '1249213'),
(94, 38, '1263125'),
(95, 39, '1263134'),
(96, 39, '1111134'),
(97, 39, '1249134'),
(98, 40, '1111160'),
(99, 40, '1111661'),
(100, 82, '1263127'),
(101, 41, '1111160'),
(102, 41, '1111160'),
(103, 43, '1111540'),
(104, 43, '1263146'),
(105, 43, '1263199'),
(106, 43, '1263163'),
(107, 43, '1111146'),
(108, 43, '1111540'),
(109, 43, '1111199'),
(110, 43, '1249146'),
(111, 43, '1249163'),
(112, 44, '1263146'),
(113, 44, '1263199'),
(114, 44, '1263163'),
(115, 44, '1263109'),
(116, 44, '1111146'),
(117, 44, '1111540'),
(118, 44, '1111199'),
(119, 44, '1249146 '),
(120, 44, '1249163'),
(121, 45, '1249246'),
(122, 46, '1263107'),
(123, 46, '1263109'),
(124, 46, '1263163'),
(125, 46, '1111107'),
(126, 46, '1249107'),
(127, 46, '1249163'),
(128, 47, '1263109'),
(129, 49, '1263163'),
(130, 49, '1249163'),
(131, 50, '1111573'),
(132, 52, '1263102'),
(133, 52, '1111102'),
(134, 52, '1249564'),
(135, 53, '1111694'),
(136, 55, '1263116'),
(137, 55, '1111116'),
(138, 55, '1249116'),
(139, 56, '1263115'),
(140, 56, '1263117'),
(141, 56, '1111115'),
(142, 56, '1111117'),
(143, 56, '1249115'),
(144, 56, '1249117'),
(145, 56, '1249350'),
(146, 57, '1249350'),
(147, 57, '1111117'),
(148, 57, '1249117'),
(149, 58, '1249350'),
(150, 58, '1111117'),
(151, 58, '1249350'),
(152, 60, '1263118'),
(153, 60, '1111618'),
(154, 60, '1249118'),
(155, 61, '1111572'),
(156, 62, '1263103'),
(157, 62, '1249103'),
(158, 63, '1263110'),
(159, 64, '1263112'),
(160, 64, '1111112'),
(161, 64, '1249437'),
(162, 64, '1249580'),
(163, 65, '1263116'),
(164, 66, '1111213'),
(165, 66, '1249213'),
(166, 67, '1263278'),
(167, 67, '1111279'),
(168, 67, '1249279'),
(169, 69, '1263129'),
(170, 69, '1111129'),
(171, 69, '1249129'),
(172, 70, '1263115'),
(173, 70, '1111115'),
(174, 70, '1249115'),
(175, 70, '1249208'),
(176, 70, '1249350'),
(177, 70, '1249309'),
(178, 71, '1263115'),
(179, 71, '1111115'),
(180, 80, '1263128'),
(181, 71, '1249115'),
(182, 71, '1249208'),
(183, 71, '1249350'),
(184, 71, '1249309'),
(185, 72, '1111197'),
(186, 72, '1111232'),
(187, 72, '1249232'),
(188, 72, '1263115'),
(189, 72, '1111115'),
(190, 72, '1249115'),
(191, 73, '1249115'),
(192, 73, '1111115'),
(193, 73, '1263115'),
(194, 74, '1263115'),
(195, 74, '1111115'),
(196, 74, '1249115'),
(197, 75, '1249115'),
(198, 75, '1111115'),
(199, 75, '1263115'),
(200, 73, '1111148'),
(201, 76, '1249115'),
(202, 76, '1111115'),
(203, 76, '1263115'),
(204, 77, '1249115'),
(205, 77, '1111115'),
(206, 77, '1263115'),
(207, 77, '1249309'),
(208, 77, '1249350'),
(209, 76, '1249309'),
(210, 76, '1249350'),
(211, 78, '1249115'),
(212, 78, '1111115'),
(213, 78, '1263115'),
(214, 78, '1249197'),
(215, 78, '1111197'),
(216, 79, '1263176'),
(217, 79, '1263102'),
(218, 79, '1111776'),
(219, 79, '1111102'),
(220, 79, '1249176'),
(221, 48, '1249533'),
(222, 83, '1111221'),
(223, 83, '1249639'),
(224, 48, '1249533'),
(225, 84, '1263146'),
(226, 84, '1263199'),
(227, 84, '1111146'),
(228, 84, '1111540'),
(229, 84, '1111199'),
(230, 84, '1249146');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(13, 'CAS', 'careers'),
(15, 'CAS', 'choices'),
(10, 'CAS', 'clusters'),
(12, 'CAS', 'coursecareer'),
(9, 'CAS', 'courses'),
(22, 'CAS', 'explanations'),
(24, 'CAS', 'grades'),
(7, 'CAS', 'groups'),
(19, 'CAS', 'kcseresults'),
(17, 'CAS', 'personalities'),
(21, 'CAS', 'personalitycareer'),
(20, 'CAS', 'questionanswer'),
(14, 'CAS', 'questions'),
(18, 'CAS', 'recommendedcourses'),
(16, 'CAS', 'subjectcluster'),
(23, 'CAS', 'subjectgrade'),
(8, 'CAS', 'subjects'),
(11, 'CAS', 'universities'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-09-19 15:11:00.473095'),
(2, 'auth', '0001_initial', '2016-09-19 15:11:06.623918'),
(3, 'admin', '0001_initial', '2016-09-19 15:11:08.158554'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-09-19 15:11:08.198880'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-09-19 15:11:09.081347'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-09-19 15:11:09.586120'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-09-19 15:11:10.573060'),
(8, 'auth', '0004_alter_user_username_opts', '2016-09-19 15:11:10.620003'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-09-19 15:11:10.994505'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-09-19 15:11:11.028022'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-09-19 15:11:11.063032'),
(12, 'auth', '0008_alter_user_username_max_length', '2016-09-19 15:11:11.656228'),
(13, 'sessions', '0001_initial', '2016-09-19 15:11:12.143655'),
(14, 'CAS', '0001_initial', '2016-09-19 15:44:28.640893'),
(15, 'CAS', '0002_auto_20160919_1528', '2016-09-19 15:44:31.668596'),
(16, 'CAS', '0003_auto_20160919_1543', '2016-09-19 15:44:32.423356'),
(17, 'CAS', '0004_auto_20160920_1654', '2016-09-20 16:55:14.279045'),
(18, 'CAS', '0005_auto_20160920_1821', '2016-09-20 18:22:03.599004'),
(19, 'CAS', '0006_subjectcluster', '2016-09-20 21:17:33.529873'),
(20, 'CAS', '0007_auto_20160920_2120', '2016-09-20 21:20:38.141703'),
(21, 'CAS', '0008_auto_20160920_2133', '2016-09-20 21:33:13.680402'),
(22, 'CAS', '0009_auto_20160924_0906', '2016-09-24 09:06:32.749819'),
(23, 'CAS', '0010_auto_20160924_0908', '2016-09-24 09:11:07.891100'),
(24, 'CAS', '0011_auto_20160924_0910', '2016-09-24 09:11:09.327256'),
(25, 'CAS', '0012_careers_definition', '2016-09-25 12:53:12.243657'),
(26, 'CAS', '0013_grades_subjectgrade', '2016-09-28 14:09:24.035199'),
(27, 'CAS', '0014_grades_points', '2016-09-28 16:13:30.822520'),
(28, 'CAS', '0015_auto_20161008_0430', '2016-10-08 04:30:40.592912'),
(29, 'CAS', '0016_auto_20161016_0916', '2016-10-16 09:16:35.665993'),
(30, 'CAS', '0017_auto_20161016_0917', '2016-10-16 09:17:21.486982');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ukxuym77kas3y3dsrp9p6glnkzo9hs9l', 'ZDFmZWRkNGMyMDliOTkzNzg4YjU2N2Y0NmIwNGQzYmE2Y2M0MGQ4OTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2MzVmYTg1Yjk2NmQ3NDdiYzQ5MDBmYzQ3NjFiMDM4ODA5YTQ3MTIiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-11-21 02:29:23.436516');

-- --------------------------------------------------------

--
-- Table structure for table `explanations`
--

CREATE TABLE `explanations` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `explanations`
--

INSERT INTO `explanations` (`id`, `description`, `user_id`) VALUES
(3, 'your personality type is INFP meaning you are Idealistic, loyal to their values and to people who are important to them. Want an external life that is congruent with their values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.INFPexcel in occupations such as Fashion Designer Animator Preschool teacher Special Education Teacher Human Resource Specialist Editor Interpreter Public Relations Specialist Writer/Author Anthropologist Psychologist Zoologist Community Service Manager Veterinarian', 1),
(4, 'your personality type is INFP meaning you are Idealistic, loyal to their values and to people who are important to them. Want an external life that is congruent with their values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.INFP excel in occupations such as Fashion Designer,Animator,Preschool teacher,Special Education Teacher,Human Resource Specialist,Editor,Interpreter,Public Relations Specialist,Writer/Author,Anthropologist,Psychologist,Zoologist,Community Service Manager,Veterinarian among others.Courses recommended by the system for are in inline with your personality type and also KCSE score.', 1),
(5, 'your personality type is INFP meaning you are idealistic, loyal to your values and to people who are important to you. Want an external life that is congruent with your values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.INFP excel in occupations such as Fashion Designer,Animator,Preschool teacher,Special Education Teacher,Human Resource Specialist,Editor,Interpreter,Public Relations Specialist,Writer/Author,Anthropologist,Psychologist,Zoologist,Community Service Manager,Veterinarian among others.Courses recommended for you are in inline with your personality type and also KCSE score.', 1),
(6, 'your personality type is ENTP meaning you are quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.ENTP excel in occupations such as Public Relations Specialist,Interior Designer,Art Director,Film Producer/Director,Market Research Analyst,Architect,Industrial Designer,Art Director,Aerospace Engineer among others.Courses recommended for you are in inline with your personality type and also KCSE score.', 1),
(7, 'your personality type is ENTP meaning you are quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.ENTP excel in occupations such as Public Relations Specialist,Interior Designer,Art Director,Film Producer/Director,Market Research Analyst,Architect,Industrial Designer,Art Director,Aerospace Engineer among others.Courses recommended for you are in inline with your personality type and also KCSE score.', 1),
(8, 'your personality type is ENTP meaning you are quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.ENTP excel in occupations such as Public Relations Specialist,Interior Designer,Art Director,Film Producer/Director,Market Research Analyst,Architect,Industrial Designer,Art Director,Aerospace Engineer among others.Courses recommended for you are in inline with your personality type and also KCSE score.', 1),
(9, 'your personality type is ENTP meaning you are quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.ENTP excel in occupations such as Public Relations Specialist,Interior Designer,Art Director,Film Producer/Director,Market Research Analyst,Architect,Industrial Designer,Art Director,Aerospace Engineer among others.Courses recommended for you are in inline with your personality type and also KCSE score.', 1),
(10, 'your personality type is ENTP meaning you are quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.ENTP excel in occupations such as Public Relations Specialist,Interior Designer,Art Director,Film Producer/Director,Market Research Analyst,Architect,Industrial Designer,Art Director,Aerospace Engineer among others.Courses recommended for you are in inline with your personality type and also KCSE score.', 1),
(11, 'your personality type is INTP meaning you are seek to develop logical explanations for everything that interests them. Theoretical and abstract, interested more in ideas than in social interaction. Quiet, contained, flexible, and adaptable. Have unusual ability to focus in depth to solve problems in their area of interest. Skeptical, sometimes critical, always analytical.INTP excel in occupations such as Computer Network Architecture,Computer Programmer,Computer System Analyst,Database administrator,Information Security Analyst,Network Administrator,Software Developer,Web Developer,Aerospace Engineer,Biomedical Engineer,Civil Engineer,Computer Hardware Engineer,Electrical engineer,Mechanical Engineer,Anthropologist,Meteorologist,Biochemist,Environmental Scientist,Microbiologist,Astronomer,Psychologist,Zoologist,Financial Analyst,Market Research Analyst,Industrial Designer,Animator,Composer,Editor,Writer/Author among others.Courses recommended for you are in inline with your personality type and also KCSE score.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `points`) VALUES
(1, 'A', 12),
(2, 'A-', 11),
(3, 'B+', 10),
(4, 'B', 9),
(5, 'B-', 8),
(6, 'C+', 7),
(7, 'C', 6),
(8, 'C-', 5),
(9, 'D+', 4),
(10, 'D', 3),
(11, 'D-', 2),
(12, 'E', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V');

-- --------------------------------------------------------

--
-- Table structure for table `KCSE_results`
--

CREATE TABLE `KCSE_results` (
  `id` int(11) NOT NULL,
  `score` varchar(10) NOT NULL,
  `subject_id` varchar(70) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personalities`
--

CREATE TABLE `personalities` (
  `id` int(11) NOT NULL,
  `typology` varchar(20) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalities`
--

INSERT INTO `personalities` (`id`, `typology`, `description`) VALUES
(1, 'ISTJ', 'quiet, serious, earn success by thoroughness and dependability. Practical, matter-of-fact, realistic, and responsible. You decide logically what should be done and work toward it steadily, regardless of distractions.You take pleasure in making everything orderly and organized - be it at work,home,life. You value traditions and loyalty.'),
(2, 'ISFJ', 'quiet, friendly, responsible, and conscientious. Committed and steady in meeting your obligations. Thorough, painstaking, and accurate. Loyal, considerate, notice and remember specifics about people who are important to you, concerned with how others feel. Strive to create an orderly and harmonious environment at work and at home.'),
(3, 'INFJ', 'seek meaning and connection in ideas, relationships, and material possessions. Want to understand what motivates people and are insightful about others. Conscientious and committed to your firm values. Develop a clear vision about how best to serve the common good. Organized and decisive in implementing your vision.'),
(4, 'INTJ', 'original minds and great drive for implementing your ideas and achieving your goals. Quickly see patterns in external events and develop long-range explanatory perspectives. When committed, organize a job and carry it through. Skeptical and independent, have high standards of competence and performance - for themselves and others.'),
(5, 'ISTP', 'tolerant and flexible, quiet observer until a problem appears, then act quickly to find workable solutions. Analyze what makes things work and readily get through large amounts of data to isolate the core of practical problems. Interested in cause and effect, organize facts using logical principles, value efficiency'),
(6, 'ISFP', 'quiet, friendly, sensitive, and kind. Enjoy the present moment, what is going on around them. Like to have your own space and to work within your own time frame. Loyal and committed to your values and to people who are important to you. Dislike disagreements and conflicts, do not force your opinions or values on others.'),
(7, 'INFP', 'idealistic, loyal to your values and to people who are important to you. Want an external life that is congruent with your values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.'),
(8, 'INTP', 'seek to develop logical explanations for everything that interests them. Theoretical and abstract, interested more in ideas than in social interaction. Quiet, contained, flexible, and adaptable. Have unusual ability to focus in depth to solve problems in their area of interest. Skeptical, sometimes critical, always analytical.'),
(9, 'ESTP', 'flexible and tolerant,you take a pragmatic approach focused on immediate results. Theories and conceptual explanations bore them - they want to act energetically to solve the problem. Focus on the here-and-now, spontaneous, enjoy each moment that they can be active with others. Enjoy material comforts and style. Learn best through doing.'),
(10, 'ESFP', 'outgoing, friendly, and accepting. Exuberant lovers of life, people, and material comforts. Enjoy working with others to make things happen. Bring common sense and a realistic approach to their work, and make work fun. Flexible and spontaneous, adapt readily to new people and environments. Learn best by trying a new skill with other people.'),
(11, 'ENFP', 'warmly enthusiastic and imaginative. See life as full of possibilities. Make connections between events and information very quickly, and confidently proceed based on the patterns they see. Want a lot of affirmation from others, and readily give appreciation and support. Spontaneous and flexible, often rely on your ability to improvise and their verbal fluency.'),
(12, 'ENTP', 'quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.'),
(13, 'ESTJ', 'practical, realistic, matter-of-fact. Decisive, quickly move to implement decisions. Organize projects and people to get things done, focus on getting results in the most efficient way possible. Take care of routine details. Have a clear set of logical standards, systematically follow them and want others to also. Forceful in implementing their plans.'),
(14, 'ESFJ', 'warmhearted, conscientious, and cooperative. Want harmony in your environment, work with determination to establish it. Like to work with others to complete tasks accurately and on time. Loyal, follow through even in small matters. Notice what others need in their day-by-day lives and try to provide it. Want to be appreciated for who you are and for what you contribute.'),
(15, 'ENFJ', 'Warm, empathetic, responsive, and responsible. Highly attuned to the emotions, needs, and motivations of others. Find potential in everyone, want to help others fulfill their potential. May act as catalysts for individual and group growth. Loyal, responsive to praise and criticism. Sociable, facilitate others in a group, and provide inspiring leadership.'),
(16, 'ENTJ', 'frank, decisive, assume leadership readily. Quickly see illogical and inefficient procedures and policies, develop and implement comprehensive systems to solve organizational problems. Enjoy long-term planning and goal setting. Usually well informed, well read, enjoy expanding their knowledge and passing it on to others. Forceful in presenting their ideas.');

-- --------------------------------------------------------

--
-- Table structure for table `personality_career`
--

CREATE TABLE `personality_career` (
  `id` int(11) NOT NULL,
  `career_id` int(11) NOT NULL,
  `personality_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personality_career`
--

INSERT INTO `personality_career` (`id`, `career_id`, `personality_id`) VALUES
(1, 46, 1),
(2, 43, 1),
(3, 49, 1),
(4, 84, 1),
(5, 70, 1),
(6, 73, 1),
(7, 55, 1),
(8, 80, 1),
(9, 69, 1),
(10, 23, 1),
(11, 80, 2),
(12, 8, 2),
(13, 7, 2),
(14, 6, 2),
(15, 4, 2),
(16, 25, 2),
(17, 24, 2),
(18, 38, 2),
(19, 83, 2),
(20, 22, 3),
(21, 23, 3),
(22, 7, 3),
(23, 24, 3),
(24, 13, 3),
(25, 4, 3),
(26, 25, 3),
(27, 38, 3),
(28, 10, 3),
(29, 5, 3),
(30, 17, 3),
(31, 15, 3),
(32, 19, 3),
(33, 2, 3),
(34, 41, 3),
(35, 43, 4),
(36, 44, 4),
(37, 45, 4),
(38, 33, 4),
(39, 46, 4),
(40, 47, 4),
(41, 48, 4),
(42, 49, 4),
(43, 61, 4),
(44, 50, 4),
(45, 53, 4),
(46, 55, 4),
(47, 56, 4),
(48, 57, 4),
(49, 58, 4),
(50, 60, 4),
(51, 62, 4),
(52, 52, 4),
(53, 63, 4),
(54, 64, 4),
(55, 38, 4),
(56, 67, 4),
(57, 36, 4),
(58, 37, 4),
(59, 15, 4),
(60, 29, 4),
(61, 19, 4),
(62, 69, 4),
(63, 23, 4),
(64, 70, 4),
(65, 71, 4),
(66, 72, 4),
(67, 76, 4),
(68, 73, 4),
(69, 74, 4),
(70, 75, 4),
(71, 77, 4),
(72, 39, 4),
(73, 62, 5),
(74, 35, 5),
(75, 38, 5),
(76, 76, 5),
(77, 72, 5),
(78, 73, 5),
(79, 43, 5),
(80, 84, 5),
(81, 55, 5),
(82, 60, 5),
(83, 57, 5),
(84, 21, 6),
(85, 35, 6),
(86, 62, 6),
(87, 38, 6),
(88, 7, 6),
(89, 69, 6),
(90, 6, 6),
(91, 4, 6),
(92, 17, 6),
(93, 5, 6),
(94, 21, 7),
(95, 2, 7),
(96, 6, 7),
(97, 5, 7),
(98, 10, 7),
(99, 15, 7),
(100, 17, 7),
(101, 18, 7),
(102, 19, 7),
(103, 12, 7),
(104, 13, 7),
(105, 14, 7),
(106, 3, 7),
(107, 8, 7),
(108, 78, 8),
(109, 70, 8),
(110, 72, 8),
(111, 73, 8),
(112, 74, 8),
(113, 75, 8),
(114, 76, 8),
(115, 77, 8),
(116, 50, 8),
(117, 53, 8),
(118, 55, 8),
(119, 56, 8),
(120, 57, 8),
(121, 60, 8),
(122, 12, 8),
(123, 63, 8),
(124, 64, 8),
(125, 26, 8),
(126, 67, 8),
(127, 82, 8),
(128, 13, 8),
(129, 14, 8),
(130, 44, 8),
(131, 33, 8),
(132, 37, 8),
(133, 2, 8),
(134, 41, 8),
(135, 15, 8),
(136, 19, 8),
(137, 62, 9),
(138, 38, 9),
(139, 35, 9),
(140, 83, 9),
(141, 43, 9),
(142, 55, 9),
(143, 60, 9),
(144, 32, 9),
(145, 5, 10),
(146, 4, 10),
(147, 7, 10),
(148, 18, 10),
(149, 32, 10),
(150, 35, 10),
(151, 41, 10),
(152, 40, 11),
(153, 41, 11),
(154, 34, 11),
(155, 36, 11),
(156, 20, 11),
(157, 21, 11),
(158, 2, 11),
(159, 15, 11),
(160, 29, 11),
(161, 17, 11),
(162, 19, 11),
(163, 18, 11),
(164, 12, 11),
(165, 38, 11),
(166, 13, 11),
(167, 5, 11),
(168, 30, 11),
(169, 6, 11),
(170, 7, 11),
(171, 8, 11),
(172, 10, 11),
(173, 22, 11),
(174, 4, 11),
(175, 18, 12),
(176, 28, 12),
(177, 36, 12),
(178, 34, 12),
(179, 33, 12),
(180, 52, 12),
(181, 37, 12),
(182, 36, 12),
(183, 50, 12),
(184, 83, 13),
(185, 69, 13),
(186, 80, 13),
(187, 55, 13),
(188, 60, 13),
(189, 73, 13),
(190, 43, 13),
(191, 5, 14),
(192, 4, 14),
(193, 83, 14),
(194, 80, 14),
(195, 23, 14),
(196, 7, 14),
(197, 18, 14),
(198, 22, 15),
(199, 4, 15),
(200, 3, 15),
(201, 15, 15),
(202, 17, 15),
(203, 18, 15),
(204, 29, 15),
(205, 19, 15),
(206, 30, 15),
(207, 6, 15),
(208, 5, 15),
(209, 10, 15),
(210, 32, 15),
(211, 33, 15),
(212, 34, 15),
(213, 35, 15),
(214, 36, 15),
(215, 37, 15),
(216, 12, 15),
(217, 38, 15),
(218, 13, 15),
(219, 39, 15),
(220, 7, 15),
(221, 44, 16),
(222, 45, 16),
(223, 33, 16),
(224, 50, 16),
(225, 53, 16),
(226, 55, 16),
(227, 57, 16),
(228, 58, 16),
(229, 60, 16),
(230, 61, 16),
(231, 62, 16),
(232, 52, 16),
(233, 49, 16),
(234, 63, 16),
(235, 64, 16),
(236, 38, 16),
(237, 54, 16),
(238, 67, 16),
(239, 26, 16),
(240, 37, 16),
(241, 29, 16),
(242, 40, 16),
(243, 34, 16),
(244, 80, 16),
(245, 23, 16),
(246, 69, 16),
(247, 78, 16),
(248, 73, 16),
(249, 75, 16),
(250, 76, 16),
(251, 72, 16),
(252, 79, 16),
(253, 39, 16);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `text`) VALUES
(1, 'Currently, I have a'),
(2, 'I am usually'),
(3, 'In situations where I have being falsely aaccused,I often tend to'),
(4, 'When making a decision I often'),
(5, 'In my spare time I prefer'),
(6, 'I prefer courses that are'),
(7, 'Of these two,I am more fascinated by'),
(8, 'I prefer having my day'),
(9, 'In a situation requiring immediate action,I tend to'),
(10, 'When tackling tasks I usually do them at'),
(11, 'I like hanging out with people that have'),
(12, 'In highschool I'),
(13, 'I prefer communicating my views on a certain subject through'),
(14, 'I often tend to think about'),
(15, 'I believe '),
(16, 'I usually complete class assignments '),
(17, 'I enjoy'),
(18, 'During a test,before answering a question I usually read the question'),
(19, 'When a friend is undergoing an emotional breakdown I tend to'),
(20, 'My room is often');

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE `question_answer` (
  `id` int(11) NOT NULL,
  `choice_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_courses`
--

CREATE TABLE `recommended_courses` (
  `id` int(11) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `code` varchar(70) NOT NULL,
  `name` varchar(60) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`code`, `name`, `group_id`) VALUES
('001', 'Maths', 1),
('002', 'English', 1),
('003', 'Kiswahili', 1),
('004', 'Biology', 2),
('005', 'Chemistry', 2),
('006', 'Physics', 2),
('007', 'History', 3),
('008', 'Geography', 3),
('009', 'CRE', 3),
('010', 'IRE', 3),
('011', 'HRE', 3),
('012', 'Home Science', 4),
('013', 'Art and Craft', 4),
('014', 'Agriculture', 4),
('015', 'Computer Studies', 4),
('016', 'Business Studies', 5),
('017', 'Music', 5),
('018', 'Arabic', 5),
('019', 'French', 5),
('020', 'German', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subject_cluster`
--

CREATE TABLE `subject_cluster` (
  `id` int(11) NOT NULL,
  `cluster_id` int(11) NOT NULL,
  `subject_id` varchar(70) NOT NULL,
  `subject_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_grade`
--

CREATE TABLE `subject_grade` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_grade`
--

INSERT INTO `subject_grade` (`id`, `grade_id`, `subject_id`) VALUES
(1, 1, '001'),
(2, 2, '001'),
(3, 3, '001'),
(4, 4, '001'),
(5, 5, '001'),
(6, 6, '001'),
(7, 7, '001'),
(8, 8, '001'),
(9, 9, '001'),
(10, 10, '001'),
(11, 11, '001'),
(12, 12, '001'),
(13, 1, '002'),
(14, 2, '002'),
(15, 3, '002'),
(16, 4, '002'),
(17, 5, '002'),
(18, 6, '002'),
(19, 7, '002'),
(20, 8, '002'),
(21, 9, '002'),
(22, 10, '002'),
(23, 11, '002'),
(24, 12, '002'),
(25, 1, '003'),
(26, 2, '003'),
(27, 3, '003'),
(28, 4, '003'),
(29, 5, '003'),
(30, 6, '003'),
(31, 7, '003'),
(32, 8, '003'),
(33, 9, '003'),
(34, 10, '003'),
(35, 11, '003'),
(36, 12, '003'),
(37, 1, '004'),
(38, 2, '004'),
(39, 3, '004'),
(40, 4, '004'),
(41, 5, '004'),
(42, 6, '004'),
(43, 7, '004'),
(44, 8, '004'),
(45, 9, '004'),
(46, 10, '004'),
(47, 11, '004'),
(48, 12, '004'),
(49, 1, '005'),
(50, 2, '005'),
(51, 3, '005'),
(52, 4, '005'),
(53, 5, '005'),
(54, 6, '005'),
(55, 7, '005'),
(56, 8, '005'),
(57, 9, '005'),
(58, 10, '005'),
(59, 11, '005'),
(60, 12, '005'),
(61, 1, '006'),
(62, 2, '006'),
(63, 3, '006'),
(64, 4, '006'),
(65, 5, '006'),
(66, 6, '006'),
(67, 7, '006'),
(68, 8, '006'),
(69, 9, '006'),
(70, 10, '006'),
(71, 11, '006'),
(72, 12, '006'),
(73, 1, '007'),
(74, 2, '007'),
(75, 3, '007'),
(76, 4, '007'),
(77, 5, '007'),
(78, 6, '007'),
(79, 7, '007'),
(80, 8, '007'),
(81, 9, '007'),
(82, 10, '007'),
(83, 11, '007'),
(84, 12, '007'),
(85, 1, '008'),
(86, 2, '008'),
(87, 3, '008'),
(88, 4, '008'),
(89, 5, '008'),
(90, 6, '008'),
(91, 7, '008'),
(92, 8, '008'),
(93, 9, '008'),
(94, 10, '008'),
(95, 11, '008'),
(96, 12, '008'),
(97, 1, '009'),
(98, 2, '009'),
(99, 3, '009'),
(100, 4, '009'),
(101, 5, '009'),
(102, 6, '009'),
(103, 7, '009'),
(104, 8, '009'),
(105, 9, '009'),
(106, 10, '009'),
(107, 11, '009'),
(108, 12, '009'),
(109, 1, '010'),
(110, 2, '010'),
(111, 3, '010'),
(112, 4, '010'),
(113, 5, '010'),
(114, 6, '010'),
(115, 7, '010'),
(116, 8, '010'),
(117, 9, '010'),
(118, 10, '010'),
(119, 11, '010'),
(120, 12, '010'),
(121, 1, '011'),
(122, 2, '011'),
(123, 3, '011'),
(124, 4, '011'),
(125, 5, '011'),
(126, 6, '011'),
(127, 7, '011'),
(128, 8, '011'),
(129, 9, '011'),
(130, 10, '011'),
(131, 11, '011'),
(132, 12, '011'),
(133, 1, '012'),
(134, 2, '012'),
(135, 3, '012'),
(136, 4, '012'),
(137, 5, '012'),
(138, 6, '012'),
(139, 7, '012'),
(140, 8, '012'),
(141, 9, '012'),
(142, 10, '012'),
(143, 11, '012'),
(144, 12, '012'),
(145, 1, '013'),
(146, 2, '013'),
(147, 3, '013'),
(148, 4, '013'),
(149, 5, '013'),
(150, 6, '013'),
(151, 7, '013'),
(152, 8, '013'),
(153, 9, '013'),
(154, 10, '013'),
(155, 11, '013'),
(156, 12, '013'),
(157, 1, '014'),
(158, 2, '014'),
(159, 3, '014'),
(160, 4, '014'),
(161, 5, '014'),
(162, 6, '014'),
(163, 7, '014'),
(164, 8, '014'),
(165, 9, '014'),
(166, 10, '014'),
(167, 11, '014'),
(168, 12, '014'),
(169, 1, '015'),
(170, 2, '015'),
(171, 3, '015'),
(172, 4, '015'),
(173, 5, '015'),
(174, 6, '015'),
(175, 7, '015'),
(176, 8, '015'),
(177, 9, '015'),
(178, 10, '015'),
(179, 11, '015'),
(180, 12, '015'),
(181, 1, '016'),
(182, 2, '016'),
(183, 3, '016'),
(184, 4, '016'),
(185, 5, '016'),
(186, 6, '016'),
(187, 7, '016'),
(188, 8, '016'),
(189, 9, '016'),
(190, 10, '016'),
(191, 11, '016'),
(192, 12, '016'),
(193, 1, '017'),
(194, 2, '017'),
(195, 3, '017'),
(196, 4, '017'),
(197, 5, '017'),
(198, 6, '017'),
(199, 7, '017'),
(200, 8, '017'),
(201, 9, '017'),
(202, 10, '017'),
(203, 11, '017'),
(204, 12, '017'),
(205, 1, '018'),
(206, 2, '018'),
(207, 3, '018'),
(208, 4, '018'),
(209, 5, '018'),
(210, 6, '018'),
(211, 7, '018'),
(212, 8, '018'),
(213, 9, '018'),
(214, 10, '018'),
(215, 11, '018'),
(216, 12, '018'),
(217, 1, '019'),
(218, 2, '019'),
(219, 3, '019'),
(220, 4, '019'),
(221, 5, '019'),
(222, 6, '019'),
(223, 7, '019'),
(224, 8, '019'),
(225, 9, '019'),
(226, 10, '019'),
(227, 11, '019'),
(228, 12, '019'),
(229, 1, '020'),
(230, 2, '020'),
(231, 3, '020'),
(232, 4, '020'),
(233, 5, '020'),
(234, 6, '020'),
(235, 7, '020'),
(236, 8, '020'),
(237, 9, '020'),
(238, 10, '020'),
(239, 11, '020'),
(240, 12, '020');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `ranking` int(11) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `ranking`, `description`) VALUES
(1, 'University Of Nairobi', 0, ''),
(2, 'Jomo Kenyatta University of Agiculture and Technology', 0, ''),
(3, 'Kenyatta University', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CAS_choices_7aa0f6ee` (`question_id`);

--
-- Indexes for table `clusters`
--
ALTER TABLE `clusters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`code`),
  ADD KEY `CAS_courses_6add2aff` (`university_id`),
  ADD KEY `CAS_courses_cluster_id_8f63937a_fk_CAS_clusters_id` (`cluster_id`);

--
-- Indexes for table `course_career`
--
ALTER TABLE `course_career`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CAS_coursecareer_1a2240dc` (`course_id`),
  ADD KEY `CAS_coursecareer_career_id_333d5b1f_fk_CAS_careers_id` (`career_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `explanations`
--
ALTER TABLE `explanations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `explanations_user_id_3dd59855_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `KCSE_results`
--
ALTER TABLE `KCSE_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `KCSE_results_subject_id_4c80516e_fk_subjects_code` (`subject_id`),
  ADD KEY `KCSE_results_user_id_5efa24d7_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `personalities`
--
ALTER TABLE `personalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_career`
--
ALTER TABLE `personality_career`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personality_career_14936337` (`career_id`),
  ADD KEY `personality_career_bf241556` (`personality_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answer_e86ecbcf` (`choice_id`),
  ADD KEY `question_answer_e26d386a` (`question_id`),
  ADD KEY `question_answer_18624dd3` (`user_id`);

--
-- Indexes for table `recommended_courses`
--
ALTER TABLE `recommended_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recommended_courses_course_id_5137070f_fk_courses_code` (`course_id`),
  ADD KEY `recommended_courses_user_id_aabacecc_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`code`),
  ADD KEY `CAS_subjects_group_id_bef2d8a9_fk_CAS_groups_id` (`group_id`);

--
-- Indexes for table `subject_cluster`
--
ALTER TABLE `subject_cluster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_cluster_cluster_id_68d24a8e_fk_clusters_id` (`cluster_id`),
  ADD KEY `subject_cluster_subject_id_40f9b84e_fk_subjects_code` (`subject_id`);

--
-- Indexes for table `subject_grade`
--
ALTER TABLE `subject_grade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_grade_grade_id_cea6aae9_fk_grades_id` (`grade_id`),
  ADD KEY `subject_grade_subject_id_659b81d4_fk_subjects_code` (`subject_id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `clusters`
--
ALTER TABLE `clusters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `course_career`
--
ALTER TABLE `course_career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `explanations`
--
ALTER TABLE `explanations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `KCSE_results`
--
ALTER TABLE `KCSE_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `personalities`
--
ALTER TABLE `personalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `personality_career`
--
ALTER TABLE `personality_career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `question_answer`
--
ALTER TABLE `question_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recommended_courses`
--
ALTER TABLE `recommended_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject_cluster`
--
ALTER TABLE `subject_cluster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject_grade`
--
ALTER TABLE `subject_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `CAS_choices_question_id_3eeb3ecb_fk_questions_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `CAS_courses_cluster_id_8f63937a_fk_CAS_clusters_id` FOREIGN KEY (`cluster_id`) REFERENCES `clusters` (`id`),
  ADD CONSTRAINT `CAS_courses_university_id_704325a4_fk_CAS_universities_id` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

--
-- Constraints for table `course_career`
--
ALTER TABLE `course_career`
  ADD CONSTRAINT `CAS_coursecareer_career_id_333d5b1f_fk_CAS_careers_id` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`),
  ADD CONSTRAINT `course_career_course_id_4adf4c8a_fk_courses_code` FOREIGN KEY (`course_id`) REFERENCES `courses` (`code`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `explanations`
--
ALTER TABLE `explanations`
  ADD CONSTRAINT `explanations_user_id_3dd59855_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `KCSE_results`
--
ALTER TABLE `KCSE_results`
  ADD CONSTRAINT `KCSE_results_subject_id_4c80516e_fk_subjects_code` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`code`),
  ADD CONSTRAINT `KCSE_results_user_id_5efa24d7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `personality_career`
--
ALTER TABLE `personality_career`
  ADD CONSTRAINT `personality_career_career_id_505d3fea_fk_careers_id` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`),
  ADD CONSTRAINT `personality_career_personality_id_37eec7b9_fk_personalities_id` FOREIGN KEY (`personality_id`) REFERENCES `personalities` (`id`);

--
-- Constraints for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD CONSTRAINT `question_answer_choice_id_da17bd3f_fk_choices_id` FOREIGN KEY (`choice_id`) REFERENCES `choices` (`id`),
  ADD CONSTRAINT `question_answer_question_id_2220065b_fk_questions_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `question_answer_user_id_1e93b02f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `recommended_courses`
--
ALTER TABLE `recommended_courses`
  ADD CONSTRAINT `recommended_courses_course_id_5137070f_fk_courses_code` FOREIGN KEY (`course_id`) REFERENCES `courses` (`code`),
  ADD CONSTRAINT `recommended_courses_user_id_aabacecc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `CAS_subjects_group_id_bef2d8a9_fk_CAS_groups_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `subject_cluster`
--
ALTER TABLE `subject_cluster`
  ADD CONSTRAINT `subject_cluster_cluster_id_68d24a8e_fk_clusters_id` FOREIGN KEY (`cluster_id`) REFERENCES `clusters` (`id`),
  ADD CONSTRAINT `subject_cluster_subject_id_40f9b84e_fk_subjects_code` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`code`);

--
-- Constraints for table `subject_grade`
--
ALTER TABLE `subject_grade`
  ADD CONSTRAINT `subject_grade_grade_id_cea6aae9_fk_grades_id` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  ADD CONSTRAINT `subject_grade_subject_id_659b81d4_fk_subjects_code` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
