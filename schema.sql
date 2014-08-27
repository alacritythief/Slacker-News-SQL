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
-- Name: public; Type: ACL; Schema: -; Owner: alacritythief
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM alacritythief;
GRANT ALL ON SCHEMA public TO alacritythief;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

