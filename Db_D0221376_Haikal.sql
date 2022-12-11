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
    kualitas character varying,
    order_id integer,
    produk_id integer
);


ALTER TABLE public.item OWNER TO postgres;

--
-- Name: nama_produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nama_produk (
    no integer NOT NULL,
    nama_barang character varying,
    harga integer,
    kategori character varying
);


ALTER TABLE public.nama_produk OWNER TO postgres;

--
-- Name: nama_produk_no_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nama_produk_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nama_produk_no_seq OWNER TO postgres;

--
-- Name: nama_produk_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nama_produk_no_seq OWNED BY public.nama_produk.no;


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
-- Name: nama_produk no; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nama_produk ALTER COLUMN no SET DEFAULT nextval('public.nama_produk_no_seq'::regclass);


--
-- Name: pengguna id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pengguna ALTER COLUMN id SET DEFAULT nextval('public.pengguna_id_seq'::regclass);


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item (kualitas, order_id, produk_id) FROM stdin;
baik	1	201
baik	2	342
Baik	3	532
Baik	4	821
Baik	5	210
Baik	6	721
Baik	7	123
Baik	8	932
Baik	9	956
Baik	10	753
Baik	11	742
Baik	12	742
Baik	13	765
Baik	14	345
Baik	15	534
\.


--
-- Data for Name: nama_produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nama_produk (no, nama_barang, harga, kategori) FROM stdin;
2	Kipas Angin	500000	Elektronik
3	lampu	100000	Elektronik
4	sakral listrik	8000	Elektronik
5	mesin cuci	2500000	Elektronik
6	Motor	20000000	Elektronik
7	Mobil	200000000	Elektronik
8	Pompa Air	300000	Elektronik
9	kompor listrik	100000	Elektronik
1	Televisis	1000000	Elektronik
10	Baju	50000	Ekonomi
11	Sepeda	750000	Ekonomi
12	Sepatu	100000	Ekonomi
13	Sendal	20000	Ekonomi
14	Laptop	9700000	Elektronik
15	Handphone	2000000	Elektronik
\.


--
-- Data for Name: pengguna; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pengguna (id, username, password) FROM stdin;
1	Haikal	tubopassword
2	Edwin	salusalu
3	Muh. Ryan Nurwansyah	ryan123
4	Efortuntrio	efor123
5	Muh. Muayyat Sabir	yayat123
6	Muh. Fadhil	padil123
7	Muh.Ansar	ansar123
8	Mulham	mulham123
9	Sahrul Gunawan	sahrul123
10	Francescus Malindo Hersa	frans123
11	Nina	nina123
12	Amelia	amel123
13	Noprianty	nopi123
14	Putri Sopia	sopi123
15	Mutiara	muti123
\.


--
-- Name: nama_produk_no_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nama_produk_no_seq', 1, false);


--
-- Name: pengguna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pengguna_id_seq', 1, false);


--
-- Name: nama_produk nama_produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nama_produk
    ADD CONSTRAINT nama_produk_pkey PRIMARY KEY (no);


--
-- Name: pengguna pengguna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pengguna
    ADD CONSTRAINT pengguna_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

