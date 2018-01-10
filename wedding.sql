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
2	Shady Lee	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	Shu Tong Lee	\N	\N	Sofy Lee	\N	t	\N	\N	\N	\N	\N
4	Hady Hartanto	\N	\N	Wati Hartanto	\N	t	\N	\N	\N	\N	\N
10	Jim Fogleman	\N	\N	Mary-Edna Fogleman	\N	t	\N	\N	\N	\N	\N
11	Jon Spear	\N	\N	Lauren Spear	\N	t	\N	\N	\N	\N	\N
12	Brent Burgess	\N	\N	Barbara Burgess	\N	t	\N	\N	\N	\N	\N
14	Vickie Harp	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
16	Wendy Carter	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
18	Scott Steele	\N	\N	Jennifer Steele	\N	t	\N	\N	\N	\N	\N
21	Trista Balmer	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23	Dewey Weaver	\N	\N	Anne Weaver	\N	t	\N	\N	\N	\N	\N
27	Kevin Hong	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28	CJ Cruz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29	Eileen Lee	\N	\N	Arthur Chang	\N	t	\N	\N	\N	\N	\N
31	David Wayne	\N	\N	Sandy Enriquez	\N	t	\N	\N	\N	\N	\N
32	Jenna Nelson	\N	\N	James Aubrey	\N	t	\N	\N	\N	\N	\N
34	Lisa Chang	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41	Alex LaRosa	\N	\N	Paul Williams	\N	t	\N	\N	\N	\N	\N
48	Megan Hoewisch	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
50	Jonathan Kim	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
53	Nic Arnold	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
55	Aiden Lewis	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
56	Adi Tanojo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
58	Christopher Lee	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
60	Holly Goldingay	\N	\N	Jack	\N	t	\N	\N	\N	\N	\N
61	Teresa Monti	\N	\N	Jack	\N	t	\N	\N	\N	\N	\N
62	Emily Tran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
64	Bonnie Groat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
65	Nik Hasiuk	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
66	Jet Abdo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
67	Geoff Villacis	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
68	Joe Kerrigan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
69	James McCumiskey	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
70	Sam Beard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
71	Heather Martin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
72	Luke Currey	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
73	Kameel Andraos	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
74	Reyna Trimboli	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
75	Kevin Lau	\N	\N	Christine Ma Lau	\N	t	\N	\N	\N	\N	\N
76	Nathan Chan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
77	Hannah Chin	\N	\N	Joseph Lee	\N	t	\N	\N	\N	\N	\N
78	Tim Richardson	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
79	Jon Pettigrew	\N	\N	Rachel Pettigrew	\N	t	\N	\N	\N	\N	\N
80	Josh Pettigrew	\N	\N	Esther Pettigrew	\N	t	\N	\N	\N	\N	\N
81	Joy Pettigrew	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
83	Bjorn Li	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
84	Darren Wong	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
91	Grace Chuang	\N	\N	Kenny	\N	t	\N	\N	\N	\N	\N
97	Emily Yuan	\N	\N	Chris Lo	\N	t	\N	\N	\N	\N	\N
99	Philip Cros	\N	\N	Hwang Eban	\N	t	\N	\N	\N	\N	\N
101	Alyssa Montgomery	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
102	Rachel Garratt	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
105	Daniel Yelverton	\N	\N	Laney Yelverton	\N	t	\N	\N	\N	\N	\N
106	Carlton Satterwhite	\N	\N	Brandy Satterwhite	\N	t	\N	\N	\N	\N	\N
107	Kyle Gilley	\N	\N	Stephanie Gilley	\N	t	\N	\N	\N	\N	\N
108	Ryan Shank	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
109	Matt Benson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
110	David Perry	\N	\N	Kathy Perry	\N	t	\N	\N	\N	\N	\N
112	Kim Shaw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	Tom McFadyen	Yes	BeefWell	Mrs  Worthy McFadyen	BeefWell	t		none	No		mcfadyentw@aol.com
7	Edmund Waddill	Yes	\N	Mollie Waddill	\N	t	Beef Medium	Beef Medium	Yes	Motown, Temptations, My Girl	ewaddill@gmail.com
111	Lyston Peebles	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
100	Benjamin Farrell	Yes	BeefRare	\N		\N	all of them ;)	\N		Perfect Duet (with Beyonce) - Ed Sheeran	benfarrell01@gmail.com
1	James Hartanto	Yes	BeefRare	\N		\N	None	\N	No	Anything	jameshartanto1993@gmail.com
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
95	Oliver Sheu	Yes	BeefRare	\N	\N	\N		\N	No	some litty hip hop lol	oliver.sheu@gmail.com
45	Larissa Saco	Yes	Fish	\N	\N	\N	Nuts	\N	Yes		larissa.saco@gmail.com
33	Lisa Gilliland	Yes	BeefRare	Chris	BeefRare	t			No	Love Motown, all dance music!! College flashbacks? Can't Wait!!! <3	Lgilliland10@gmail.com
49	Ryan Hammill	Yes	BeefRare	Kathleen Hammill	-	t	None		No	Nah	ryan.hammill@gmail.com
90	Hannah Yung	Yes	BeefRare	Erik Wiest	BeefRare	t	Nope!	Nope!	No	GET LOW - LIL JON	hannahfyed@gmail.com
89	Frances Su	Yes	Fish	Vincent Pai	BeefRare	t	None	None	No		francesysu@gmail.com
88	Emily Lai	Yes	BeefRare	\N	\N	\N	N/A	\N	No		emi.lai0517@gmail.com
87	Joanne Soo	Yes	Fish	Lance Cotingkeh	BeefRare	t			No		lancecotingkeh@gmail.com
82	Boris Lau	Yes	BeefRare	\N	\N	\N	None	\N	Yes	Majesty - Here I am	borislau.hk@gmail.com
85	Hadrian Ho	Yes	Fish	Nikkie Sun	-	t	no beef		Yes		hadrian.ho@gmail.com
51	Sam Ovenshine	Yes	BeefRare	Melissa Mak	Vegetarian	t					sovenshinery@gmail.com
40	Megan Boaglio	Yes	BeefRare	Jessie Rayo	BeefWell	t	None	None	Yes	Despacito!	meganboaglio@gmail.com
47	David Huang	Yes	BeefRare	Tiffany Ha	Fish	t	No	No	No		huangd85@gmail.com
57	Joshua Park	Yes	BeefRare	\N	\N	\N	na	\N	No		josh.d.park@gmail.com
92	Irene Wang	Yes	BeefRare	Connor Shore	BeefRare	t		N/A	No		irenegnaw54@gmail.com
86	Hulbert Soh	Yes	BeefRare		-	t	Nope!		Yes		hulbert.soh@gmail.com
15	Elizabeth Merritt	No	\N	John Merritt	\N	t					
120	Ramesh Ramaswamy	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
114	Stacy Laue	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
115	Bahram Pourmand	\N	\N	\N	\N	t	\N	\N	\N	\N	\N
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

