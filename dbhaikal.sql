--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Ubuntu 15.0-1.pgdg22.04+1)
-- Dumped by pg_dump version 15.0 (Ubuntu 15.0-1.pgdg22.04+1)

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
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.mahasiswa (
    nama character varying,
    alamat character varying(50),
    perogram_studi character varying(50)
);


ALTER TABLE public.mahasiswa OWNER TO ezerinz;

--
-- Name: transkip; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.transkip (
    nama character varying,
    nim integer NOT NULL,
    kelas character varying(50),
    program_studi character varying(50)
);


ALTER TABLE public.transkip OWNER TO ezerinz;

--
-- Name: transkip_nim_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public.transkip_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transkip_nim_seq OWNER TO ezerinz;

--
-- Name: transkip_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public.transkip_nim_seq OWNED BY public.transkip.nim;


--
-- Name: transkip nim; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.transkip ALTER COLUMN nim SET DEFAULT nextval('public.transkip_nim_seq'::regclass);


--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.mahasiswa (nama, alamat, perogram_studi) FROM stdin;
Haikal	Tubo Poang	Teknik Informatika
Muh.Ryan Nurwansyah	Camba Utara	Teknik Informatika
Edwin	Mekkatta	Teknik Informatika
Efortuntrio	Mambi	Teknik Informatika
\.


--
-- Data for Name: transkip; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.transkip (nama, nim, kelas, program_studi) FROM stdin;
Haikal	221376	H	Teknik Informatika
Muh. Ryan Nurwansyah	221302	H	Teknik Informatika
Edwin	221371	H	Teknik Informatika
\.


--
-- Name: transkip_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public.transkip_nim_seq', 1, false);


--
-- Name: transkip transkip_pkey; Type: CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.transkip
    ADD CONSTRAINT transkip_pkey PRIMARY KEY (nim);


--
-- PostgreSQL database dump complete
--

