--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


--
-- Name: car; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.car AS ENUM (
    'parked',
    'moving'
);


ALTER TYPE public.car OWNER TO postgres;

--
-- Name: draft_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.draft_status AS ENUM (
    'one',
    'two',
    'three'
);


ALTER TYPE public.draft_status OWNER TO postgres;

--
-- Name: mood; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.mood AS ENUM (
    'sad',
    'ok',
    'happy'
);


ALTER TYPE public.mood OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: apar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.apar (
    id integer NOT NULL,
    firstname character(200),
    lastname character(200)
);


ALTER TABLE public.apar OWNER TO postgres;

--
-- Name: apar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.apar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apar_id_seq OWNER TO postgres;

--
-- Name: apar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.apar_id_seq OWNED BY public.apar.id;


--
-- Name: drafts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drafts (
    id uuid NOT NULL,
    code character varying(50),
    document_number integer,
    status public.draft_status
);


ALTER TABLE public.drafts OWNER TO postgres;

--
-- Name: load; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.load (
    "Id" uuid NOT NULL
);


ALTER TABLE public.load OWNER TO postgres;

--
-- Name: apar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apar ALTER COLUMN id SET DEFAULT nextval('public.apar_id_seq'::regclass);


--
-- Name: load Load_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.load
    ADD CONSTRAINT "Load_pkey" PRIMARY KEY ("Id");


--
-- Name: drafts drafts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drafts
    ADD CONSTRAINT drafts_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

