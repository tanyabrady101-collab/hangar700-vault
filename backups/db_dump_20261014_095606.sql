--
-- PostgreSQL database dump
--

\restrict n9df80p8sHrMFIrKmQfdwQUvB8ajwk2QGpAcTCHl8d4FkRZVR4jWxRvqWLhtMpk

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: catalog_ledger; Type: TABLE; Schema: public; Owner: u0_a547
--

CREATE TABLE public.catalog_ledger (
    id integer NOT NULL,
    song_title character varying(255) NOT NULL,
    ascap_id character varying(50) DEFAULT '938682392'::character varying,
    isrc_code character varying(50),
    tuning_protocol character varying(50) DEFAULT '432Hz Tactical'::character varying,
    air_protocol character varying(50) DEFAULT '12kHz Air Protocol'::character varying,
    lock_status character varying(20) DEFAULT '10.0 LOCK'::character varying,
    prompt_matrix_path text,
    stem_vault_path text,
    vocal_pass_path text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.catalog_ledger OWNER TO u0_a547;

--
-- Name: catalog_ledger_id_seq; Type: SEQUENCE; Schema: public; Owner: u0_a547
--

CREATE SEQUENCE public.catalog_ledger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.catalog_ledger_id_seq OWNER TO u0_a547;

--
-- Name: catalog_ledger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u0_a547
--

ALTER SEQUENCE public.catalog_ledger_id_seq OWNED BY public.catalog_ledger.id;


--
-- Name: catalog_ledger id; Type: DEFAULT; Schema: public; Owner: u0_a547
--

ALTER TABLE ONLY public.catalog_ledger ALTER COLUMN id SET DEFAULT nextval('public.catalog_ledger_id_seq'::regclass);


--
-- Data for Name: catalog_ledger; Type: TABLE DATA; Schema: public; Owner: u0_a547
--

COPY public.catalog_ledger (id, song_title, ascap_id, isrc_code, tuning_protocol, air_protocol, lock_status, prompt_matrix_path, stem_vault_path, vocal_pass_path, created_at) FROM stdin;
1	Soul of the Machine	938682392	\N	432Hz Tactical	12kHz Air Protocol	10.0 LOCK	/sdcard/Hangar700_Records/prompt_matrices/10.0_LOCK_MASTER_TEMPLATE.txt	\N	\N	2026-10-14 09:54:35.462146
\.


--
-- Name: catalog_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u0_a547
--

SELECT pg_catalog.setval('public.catalog_ledger_id_seq', 1, true);


--
-- Name: catalog_ledger catalog_ledger_pkey; Type: CONSTRAINT; Schema: public; Owner: u0_a547
--

ALTER TABLE ONLY public.catalog_ledger
    ADD CONSTRAINT catalog_ledger_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict n9df80p8sHrMFIrKmQfdwQUvB8ajwk2QGpAcTCHl8d4FkRZVR4jWxRvqWLhtMpk

