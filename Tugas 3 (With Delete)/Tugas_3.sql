PGDMP     1                
    z            siakad    15.1    15.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16418    siakad    DATABASE     ?   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16428 	   mahasiswa    TABLE     ?   CREATE TABLE public.mahasiswa (
    nama character varying,
    alamat character varying(50),
    program_studi character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16420    transkip    TABLE     ?   CREATE TABLE public.transkip (
    nama character varying,
    nim integer NOT NULL,
    kelas character varying(50),
    program_study character varying(50)
);
    DROP TABLE public.transkip;
       public         heap    postgres    false            ?            1259    16419    transkip_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.transkip_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.transkip_nim_seq;
       public          postgres    false    215                       0    0    transkip_nim_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.transkip_nim_seq OWNED BY public.transkip.nim;
          public          postgres    false    214            i           2604    16423    transkip nim    DEFAULT     l   ALTER TABLE ONLY public.transkip ALTER COLUMN nim SET DEFAULT nextval('public.transkip_nim_seq'::regclass);
 ;   ALTER TABLE public.transkip ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    215    214    215            ?          0    16428 	   mahasiswa 
   TABLE DATA           @   COPY public.mahasiswa (nama, alamat, program_studi) FROM stdin;
    public          postgres    false    216   ?       ?          0    16420    transkip 
   TABLE DATA           C   COPY public.transkip (nama, nim, kelas, program_study) FROM stdin;
    public          postgres    false    215                     0    0    transkip_nim_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.transkip_nim_seq', 1, false);
          public          postgres    false    214            k           2606    16427    transkip transkip_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.transkip
    ADD CONSTRAINT transkip_pkey PRIMARY KEY (nim);
 @   ALTER TABLE ONLY public.transkip DROP CONSTRAINT transkip_pkey;
       public            postgres    false    215            ?   Z   x?sM)????M??N,)I?I????V??K?/?M,??N??-?P?L?S?+-*O?+?L??tN?Mª??,)?+)????*?Ħ(F??? |5*?      ?   H   x??-?P?L?S?+-*O?+?L??4224600???I????V??K?/?M,??N?rM)?̃*1Ʈ$F??? ?KY     