--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.3

-- Started on 2021-12-30 18:22:26 MSK

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
-- TOC entry 205 (class 1259 OID 50152)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    name character varying NOT NULL,
    avatar character varying,
    banned boolean DEFAULT false NOT NULL,
    "banReason" character varying,
    "isActive" boolean DEFAULT false NOT NULL,
    "resetLink" character varying,
    "confirmLink" character varying
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 50150)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 204
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 3144 (class 2604 OID 50155)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 3282 (class 0 OID 50152)
-- Dependencies: 205
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (7, 'vital1.pereg@mail.ru', '$2b$04$YbxrwGlKK1jFa0H.H6hMPOzITZRipMeFrT2NxXRi4AiOlfxRJ2D8m', 'Vitalik', NULL, false, NULL, false, NULL, NULL);
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (8, 'vital2.pereg@mail.ru', '$2b$04$b9xIUcwvXiLwG00jY7y5feJdDjQoSd/SoI4gfIm5yr4Fg4lUWZKxy', 'Vitalik', NULL, false, NULL, false, NULL, NULL);
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (9, 'vital5.pereg@mail.ru', '$2b$04$k9hGslVDbxeLTiIUQboF4uNH4/omx1JCBg48M0ZT6XSXDI191ccb.', 'Vitalik', NULL, false, NULL, false, NULL, NULL);
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (12, 'vital10.pereg@mail.ru', '$2b$04$vJCjMESJd.IHii5Zvd.cPeTeD9Xy7ZiyKrM5/nK95dQhOkvYZPm0e', 'Vitalik', NULL, false, NULL, false, '680ba4e6-c037-4655-84cd-1ff311875ba9', 'ef379d82-79f4-4fdd-9b3f-1fc0fa7d68dc');
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (10, 'vital7.pereg@mail.ru', '$2b$04$oW5D7b.CyStKFWUlkldlAOHAJLnvC2cQbucKRz9toYBqGmRDLFIh.', 'Vitalik', NULL, false, NULL, false, '123', NULL);
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (13, '1', '$2b$04$xez.SBnnitg4dHlbTdrtm.4I9qNZcvJLuTu98mxIsYnvcHoKev7bu', '1', NULL, false, NULL, false, NULL, NULL);
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (1, 'vital.pereg@mail.ru', '$2b$04$BY0adkkXaSfLEaoRCgCXleErmWZzyOWdePMv4ii.MPSZffpuv.t92', 'Vitalik', NULL, false, NULL, false, '1234', '55320036-6f58-4f78-9b71-d0e1920936fd');
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (14, '2', '$2b$04$q4/HHT2GXY0ZfTi/B2qLGOm9ijqiLDCincJNdM2y/LKH7VKAOkqdO', '1', NULL, false, NULL, false, NULL, NULL);
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (16, '3', '$2b$04$3tp9u2VuGyinURZDj5165eT6e9vg4BsiDU0My8.pMgzi7IqbfDQaK', '1', NULL, false, NULL, false, NULL, NULL);
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (17, 'test@mail.ru', '$2b$04$WrfueSOhL7/Rdb8kI7Y.Ku6iXt5Tm1JjBaduB.bUaZm00UsWxdgEK', 'test', NULL, false, NULL, false, NULL, NULL);
INSERT INTO public."user" (id, email, password, name, avatar, banned, "banReason", "isActive", "resetLink", "confirmLink") VALUES (19, 'testers@mail.ru', '$2b$04$tWgFWNifOQwNgeojMOQdLuIIu13ltfLBNfvje.wntvF/t6fpWIvGW', 'test', NULL, false, NULL, false, NULL, NULL);


--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 204
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 19, true);


--
-- TOC entry 3148 (class 2606 OID 50162)
-- Name: user PK_cace4a159ff9f2512dd42373760; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);


--
-- TOC entry 3150 (class 2606 OID 50164)
-- Name: user UQ_e12875dfb3b1d92d7d7c5377e22; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_e12875dfb3b1d92d7d7c5377e22" UNIQUE (email);


-- Completed on 2021-12-30 18:22:26 MSK

--
-- PostgreSQL database dump complete
--

