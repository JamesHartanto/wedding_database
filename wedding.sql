--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: guestinfo; Type: TABLE; Schema: public; Owner: JamesHartanto
--

CREATE TABLE guestinfo (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    attending character varying(5),
    food character varying(100),
    guestname character varying(50),
    guestfood character varying(100),
    guestallow boolean,
    allergies character varying(100),
    guestallergies character varying(100),
    roomblock character varying(5),
    song character varying(100),
    email character varying(50)
);


ALTER TABLE guestinfo OWNER TO "JamesHartanto";

--
-- Name: guestinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: JamesHartanto
--

CREATE SEQUENCE guestinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guestinfo_id_seq OWNER TO "JamesHartanto";

--
-- Name: guestinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: JamesHartanto
--

ALTER SEQUENCE guestinfo_id_seq OWNED BY guestinfo.id;


--
-- Name: guestinfo id; Type: DEFAULT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY guestinfo ALTER COLUMN id SET DEFAULT nextval('guestinfo_id_seq'::regclass);


--
-- Data for Name: guestinfo; Type: TABLE DATA; Schema: public; Owner: JamesHartanto
--

COPY guestinfo (id, name, attending, food, guestname, guestfood, guestallow, allergies, guestallergies, roomblock, song, email) FROM stdin;
3	Shu Tong Lee	\N	\N	Sofy Lee	\N	t	\N	\N	\N	\N	\N
4	Hady Hartanto	\N	\N	Wati Hartanto	\N	t	\N	\N	\N	\N	\N
18	Scott Steele	\N	\N	Jennifer Steele	\N	t	\N	\N	\N	\N	\N
23	Dewey Weaver	\N	\N	Anne Weaver	\N	t	\N	\N	\N	\N	\N
41	Alex LaRosa	\N	\N	Paul Williams	\N	t	\N	\N	\N	\N	\N
56	Adi Tanojo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
58	Christopher Lee	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
64	Bonnie Groat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
101	Alyssa Montgomery	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
105	Daniel Yelverton	\N	\N	Laney Yelverton	\N	t	\N	\N	\N	\N	\N
13	Tom McFadyen	Yes	BeefWell	Mrs  Worthy McFadyen	BeefWell	t		none	No		mcfadyentw@aol.com
7	Edmund Waddill	Yes	\N	Mollie Waddill	\N	t	Beef Medium	Beef Medium	Yes	Motown, Temptations, My Girl	ewaddill@gmail.com
111	Lyston Peebles	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
100	Benjamin Farrell	Yes	BeefRare	\N		\N	all of them ;)	\N		Perfect Duet (with Beyonce) - Ed Sheeran	benfarrell01@gmail.com
8	JT Vaughn	Yes	BeefWell	Gracey Vaughn	Fish	t			Yes		vaughn.gracey@gmail.com
104	Cody Mackvick	Yes	BeefRare	Kara Jongkind	BeefWell	t	No	Gluten	No	Boogie shoes	crmackvick@gmail.com
63	Jessica Phan	Yes	Fish	\N	\N	\N	n/a	\N	Yes	Ed Sheeran obvs	jessica.phan@hotmail.com
46	Riley Hathaway	Yes	BeefRare	Season Hathaway	Fish	t			No		hathaway.riley@gmail.com
26	Chelsea Yin	Yes	Fish	\N	\N	\N		\N	No	December, 1963 (Oh What a Night) - The Four Seasons	ehchelsea@gmail.com
52	Esther Cajahuaringa	Yes	BeefWell	\N	\N	\N		\N	Yes	"From the Ground Up"—Dan + Shay	esther.caja@gmail.com
44	Lauren Gunderson	Yes	Fish	\N	\N	\N	no	\N	No	uptown funk	lauren.b.gunderson@gmail.com
113	Stuart Frantz	No	\N		\N	t					
42	Annika Skye	Yes	BeefWell	Annika John	BeefWell	t		gluten, dairy, soy, eggs, beans :( I just eat meat and veggies and rice. 	No	lecrae	annika.awbrey@gmail.com
38	Naomi Choi	Yes	BeefRare	Jason Lee	BeefRare	t			No		naomicchoi@gmail.com
30	Jane Ha	Yes	BeefRare	\N	\N	\N	Nope!	\N	Yes	Some good ol' Bruno Mars!	janeham39@gmail.com
36	Rebeca Lopez	Yes	BeefWell	Benjamin Chung	BeefRare	t			No	September! :D 	s.rebecalopez@gmail.com
96	Daniel Cheng	Yes	BeefWell	\N	\N	\N	None	\N	No	What Lovers Do - Maroon 5	danmcheng@gmail.com
94	Gary Liou	Yes	BeefRare	\N	\N	\N		\N	No		uoilyrag@gmail.com
98	Ernest Wang	Yes	BeefRare	May Ting	Fish	t				Perfect - Ed Sheeran	ernestywang@gmail.com
54	Lauren Masopust	Yes	BeefRare	Jeremiah Masopust	BeefRare	t			No	Prince of Peace (LOL JK...kind of)	laurenmasopust@gmail.com
17	Amy Biggers	No	\N	Shan Biggers	\N	t					
37	Gloria Mayorga	Yes	BeefWell	\N	\N	\N	Nope	\N	No	You make my dreams by Daryl Hall & John Oates	g.mayorgagarcia@gmail.com
5	Thomas Darden	Yes	Vegetarian	Jody Darden	-	t			Yes	Pachelbel Canon in D	tfdarden@yahoo.com
19	Bret Batchelder	Yes	Fish	Virginia Batchelder	-	t			Yes		bbatchelder1@gmail.com
43	Leslie Koh	Yes	BeefRare	Joshua Koh	\N	t	Peanuts		No		lesandjosh1023@gmail.com
59	Eric Kim	Yes	Fish	\N	\N	\N	No	\N			kimkwe@gmail.com
103	John Lovato	No	\N	Hayden Lovato	\N	t					
20	Andrea Meli	No	\N	Rick Germain	\N	t					
35	Lili Rodriguez	Yes	BeefWell	\N	\N	\N		\N	No	Perfect - Ed Sheeran	lilimrod@gmail.com
24	Jeany Kim	Yes	BeefWell	\N	\N	\N		\N	No	evanescence (kidding). anything motown era. spice girls. nancy knows.	jeanykimm@gmail.com
9	John Linger	Yes	Fish		-	t	none		Yes		lingerjs@gmail.com
39	Andrea Wong	Yes	Fish	Matthew Lim	BeefRare	t			No		andi.noelle@gmail.com
25	Rima Barylskiy	Yes	Fish	Alex Barylskiy	\N	t	No 		No	Yeah by Usher	alexandrima2017@gmail.com
93	Timothy Chang	Yes	Fish	Taylor Yang	\N	t			No	Thinking Out Loud - Ed Sheeran	timdchang@gmail.com
22	Oliver Pau	Yes	Fish	Penny Pau	BeefRare	t			Yes		opau@cherokeefund.com
6	John Mazzarino	Yes	BeefWell	Linda Storm Mazzarino	-	t	None.  Looking forward to having fun!		Yes		jmazzarino@cherokeefund.com
108	Ryan Shank	No	\N	\N	\N	\N		\N			
95	Oliver Sheu	Yes	BeefRare	\N	\N	\N		\N	No	some litty hip hop lol	oliver.sheu@gmail.com
45	Larissa Saco	Yes	Fish	\N	\N	\N	Nuts	\N	Yes		larissa.saco@gmail.com
33	Lisa Gilliland	Yes	BeefRare	Chris	BeefRare	t			No	Love Motown, all dance music!! College flashbacks? Can't Wait!!! <3	Lgilliland10@gmail.com
49	Ryan Hammill	Yes	BeefRare	Kathleen Hammill	-	t	None		No	Nah	ryan.hammill@gmail.com
90	Hannah Yung	Yes	BeefRare	Erik Wiest	BeefRare	t	Nope!	Nope!	No	GET LOW - LIL JON	hannahfyed@gmail.com
89	Frances Su	Yes	Fish	Vincent Pai	BeefRare	t	None	None	No		francesysu@gmail.com
88	Emily Lai	Yes	BeefRare	\N	\N	\N	N/A	\N	No		emi.lai0517@gmail.com
87	Joanne Soo	Yes	Fish	Lance Cotingkeh	BeefRare	t			No		lancecotingkeh@gmail.com
85	Hadrian Ho	Yes	Fish	Nikkie Sun	-	t	no beef		Yes		hadrian.ho@gmail.com
51	Sam Ovenshine	Yes	BeefRare	Melissa Mak	Vegetarian	t					sovenshinery@gmail.com
40	Megan Boaglio	Yes	BeefRare	Jessie Rayo	BeefWell	t	None	None	Yes	Despacito!	meganboaglio@gmail.com
14	Vickie Harp	No	\N		\N	t					
47	David Huang	Yes	BeefRare	Tiffany Ha	Fish	t	No	No	No		huangd85@gmail.com
57	Joshua Park	Yes	BeefRare	\N	\N	\N	na	\N	No		josh.d.park@gmail.com
92	Irene Wang	Yes	BeefRare	Connor Shore	BeefRare	t		N/A	No		irenegnaw54@gmail.com
86	Hulbert Soh	Yes	BeefRare		-	t	Nope!		Yes		hulbert.soh@gmail.com
15	Elizabeth Merritt	No	\N	John Merritt	\N	t					
120	Ramesh Ramaswamy	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
115	Bahram Pourmand	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
102	Rachel Garratt	Yes	BeefRare	\N	\N	\N		\N	Yes		rachelgarratt78@gmail.com
32	Jenna Nelson	Yes	BeefRare	James Aubrey	BeefRare	t	None	None	No		nelso.jenna@gmail.com
91	Grace Chuang	Yes	BeefWell	Kenny	BeefWell	t	Cilantro, Shellfish (Lobster, Shrimp, Crabs)		No		gtc8wb@gmail.com
31	David Wayne	Yes	BeefRare	Sandy Enriquez	BeefWell	t	Lactose		No	Latino/Spanish/Reggaeton :)	dwwdavid29@gmail.com
106	Carlton Satterwhite	No	\N	Brandy Satterwhite	\N	t					
81	Joy Pettigrew	No	\N	\N	\N	\N		\N			
34	Lisa Chang	No	\N	\N	\N	\N		\N			
80	Josh Pettigrew	No	\N	Esther Pettigrew	\N	t					
11	Jon Spear	No	\N	Lauren Spear	\N	t					
109	Matt Benson	No	\N	\N	\N	\N		\N			
107	Kyle Gilley	No	\N	Stephanie Gilley	\N	t					
78	Tim Richardson	No	\N		\N	t					
75	Kevin Lau	No	\N	Christine Ma Lau	\N	t					
66	Jet Abdo	No	\N	\N	\N	\N		\N			
53	Nic Arnold	Yes	Fish		-	t	No		No	Six - All That Remains	nicarnold7@gmail.com
71	Heather Martin	No	\N	\N	\N	\N		\N			
50	Jonathan Kim	Yes	BeefRare	\N	\N	\N	no	\N	No		kimhjona@gmail.com
83	Bjorn Li	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
82	Boris Lau	Yes	BeefRare	\N	\N	t	None	\N	Yes	Majesty - Here I am	borislau.hk@gmail.com
2	Shady Lee	Yes	BeefRare	Lily Taufiq-Bailey	Fish	t	None	None	No	Darude sandstorm 	shady.lee.1997@gmail.com
97	Emily Yuan	Yes	BeefRare	Chris Lo	BeefRare	t			No	Perfect - Ed Sheeran	a10emily@gmail.com
84	Darren Wong	Yes	BeefRare	Martina Long	Fish	t	no		No	you'll be in my heart -tarzan	darrenwong23@gmail.com
10	Jim Fogleman	Yes	Fish	Mary-Edna Fogleman	Fish	t	Scallops (no other shell fish)	None	No		jfoglema@bellsouth.net
16	Wendy Carter	No	\N		\N	t					
21	Trista Balmer	No	\N	\N	\N	\N		\N			
77	Hannah Chin	No	\N	Joseph Lee	\N	t					
99	Philip Cros	No	\N	Hwang Eban	\N	t					
76	Nathan Chan	No	\N	\N	\N	\N		\N			
55	Aidan Lewis	Yes	BeefRare	\N	\N	\N		\N	No		aidan.m.lewis@gmail.com
79	Jon Pettigrew	No	\N	Rachel Pettigrew	\N	t					
110	David Perry	No	\N	Kathy Perry	\N	t					
112	Kim Shaw	No	\N	\N	\N	\N		\N			
114	Stacy Laue	No	\N		\N	t					
12	Brent Burgess	Yes	BeefRare	Barbara Burgess	-	t	no		Yes		Bbpwburgess@gmail.com
29	Eileen Lee	Yes	BeefRare	Arthur Chang	-	t	none		No		eileenjaylee@gmail.com
1	James Hartanto	Yes	Fish	\N	\N	\N	None	\N	No	Anything	jameshartanto1993@gmail.com
48	Megan Hoewisch	Yes	Fish		-	t			No		megan.hoewisch@gmail.com
28	CJ Cruz	No	\N	\N	\N	\N		\N			
60	Holly Goldingay	No	\N	Jack	\N	t					
61	Teresa Monti	No	\N	Jack	\N	t					
65	Nik Hasiuk	No	\N	\N	\N	\N		\N			
67	Geoff Villacis	No	\N	\N	\N	\N		\N			
62	Emily Tran	No	\N	\N	\N	\N		\N			
68	Joe Kerrigan	No	\N	\N	\N	\N		\N			
70	Sam Beard	No	\N	\N	\N	\N		\N			
69	James McCumiskey	No	\N		\N	t					
72	Luke Currey	No	\N		\N	t					
73	Kameel Andraos	No	\N		\N	t					
74	Reyna Trimboli	No	\N	\N	\N	\N		\N			
27	Kevin Hong	No	\N	\N	\N	\N		\N			
121	Alfonsus Edward	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
\.


--
-- Name: guestinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('guestinfo_id_seq', 14, true);


--
-- Name: guestinfo guestinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: JamesHartanto
--

ALTER TABLE ONLY guestinfo
    ADD CONSTRAINT guestinfo_pkey PRIMARY KEY (id);


--
-- Name: guestInfo_id_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX "guestInfo_id_uindex" ON guestinfo USING btree (id);


--
-- Name: guestInfo_name_uindex; Type: INDEX; Schema: public; Owner: JamesHartanto
--

CREATE UNIQUE INDEX "guestInfo_name_uindex" ON guestinfo USING btree (name);


--
-- PostgreSQL database dump complete
--

