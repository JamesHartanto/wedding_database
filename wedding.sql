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
    attending boolean,
    food character varying(100),
    guestname character varying(50),
    guestfood character varying(100),
    guestallow boolean,
    allergies character varying(100),
    guestallergies character varying(100),
    roomblock boolean,
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
2	Nancy Lee	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: guestinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: JamesHartanto
--

SELECT pg_catalog.setval('guestinfo_id_seq', 2, true);


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

