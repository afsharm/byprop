--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ostan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ostan (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    amar_code character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.ostan OWNER TO postgres;

--
-- Name: ostan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ostan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ostan_id_seq OWNER TO postgres;

--
-- Name: ostan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ostan_id_seq OWNED BY public.ostan.id;


--
-- Name: ostan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ostan ALTER COLUMN id SET DEFAULT nextval('public.ostan_id_seq'::regclass);


--
-- Data for Name: ostan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ostan (id, name, amar_code) FROM stdin;
1	آذربایجان شرقی	3
2	آذربایجان غربی	4
3	اردبیل	24
4	اصفهان	10
5	البرز	30
6	ایلام	16
7	بوشهر	18
8	تهران	23
9	چهارمحال وبختیاری	14
10	خراسان جنوبی	29
11	خراسان رضوی	9
12	خراسان شمالی	28
13	خوزستان	6
14	زنجان	19
15	سمنان	20
16	سیستان وبلوچستان	11
17	فارس	7
18	قزوین	26
19	قم	25
20	کردستان	12
21	کرمان	8
22	کرمانشاه	5
23	کهگیلویه وبویراحمد	17
24	گلستان	27
25	گیلان	1
26	لرستان	15
27	مازندران	2
28	مرکزی	0
29	هرمزگان	22
30	همدان	13
31	یزد	21
\.


--
-- Name: ostan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ostan_id_seq', 1, false);


--
-- Name: ostan ostan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ostan
    ADD CONSTRAINT ostan_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

