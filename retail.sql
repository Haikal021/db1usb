--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item (
    kualitas integer,
    order_id integer,
    produk_id integer
);


ALTER TABLE public.item OWNER TO postgres;

--
-- Name: pengguna; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pengguna (
    id integer NOT NULL,
    username character varying(30),
    password text
);


ALTER TABLE public.pengguna OWNER TO postgres;

--
-- Name: pengguna_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pengguna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pengguna_id_seq OWNER TO postgres;

--
-- Name: pengguna_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pengguna_id_seq OWNED BY public.pengguna.id;


--
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    id integer NOT NULL,
    nama character varying,
    harga numeric,
    kategori integer
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- Name: produk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produk_id_seq OWNER TO postgres;

--
-- Name: produk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_id_seq OWNED BY public.produk.id;


--
-- Name: pengguna id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pengguna ALTER COLUMN id SET DEFAULT nextval('public.pengguna_id_seq'::regclass);


--
-- Name: produk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk ALTER COLUMN id SET DEFAULT nextval('public.produk_id_seq'::regclass);


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item (kualitas, order_id, produk_id) FROM stdin;
10	1	20
8	2	15
5	3	12
\.


--
-- Data for Name: pengguna; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pengguna (id, username, password) FROM stdin;
1	Haikal	tubopassword
2	Edwin	salusalu
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (id, nama, harga, kategori) FROM stdin;
1	Laptop MSI	9999999	1
2	HP Samsung	3500000	1
\.


--
-- Name: pengguna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pengguna_id_seq', 1, false);


--
-- Name: produk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_id_seq', 1, false);


--
-- Name: pengguna pengguna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pengguna
    ADD CONSTRAINT pengguna_pkey PRIMARY KEY (id);


--
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

