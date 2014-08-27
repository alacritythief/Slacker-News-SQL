--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: articles; Type: TABLE; Schema: public; Owner: alacritythief; Tablespace:
--

CREATE TABLE articles (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.articles OWNER TO alacritythief;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: alacritythief
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO alacritythief;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alacritythief
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alacritythief
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: alacritythief
--

COPY articles (id, url, title, description, created_at) FROM stdin;
1	www.alacritystudios.com	Alacrity Studios	Some dude who draws comics and writes code	2014-08-27 10:51:49.072116
2	www.strikemefancy.com	Lord Fancy	Lord Fancy: The #1 fanciest cat evar	2014-08-27 10:54:10.582672
3	www.slackattack.com	Space Bandito Slackers 3	A movie about space bandits who slack off and end up having their spaceship stolen.	2014-08-27 10:55:20.449326
4	www.justtestinghere.com	This is a Test	AMAZIN	2014-08-27 11:12:57.310572
5	www.supertest.com	Testing 2	BLAH BLIDDY BLAH.	2014-08-27 11:13:36.771612
6	www.testytest.com	Test3 	{using quotes yo'}	2014-08-27 11:24:38.871108
7	www.testing.com	Test!	testing "with" some 'quotes'	2014-08-27 11:25:13.840899
8	www.testy123.com	"TEST"	test	2014-08-27 11:25:39.232951
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alacritythief
--

SELECT pg_catalog.setval('articles_id_seq', 8, true);


--
-- Name: public; Type: ACL; Schema: -; Owner: alacritythief
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM alacritythief;
GRANT ALL ON SCHEMA public TO alacritythief;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

