--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-10-24 09:37:25 MSK

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
-- TOC entry 249 (class 1259 OID 25847)
-- Name: CustomUsers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CustomUsers" (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255) NOT NULL,
    "secondName" character varying(255),
    blocked boolean,
    confirmed boolean,
    users_permissions_role integer,
    password character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."CustomUsers" OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 25845)
-- Name: CustomUsers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."CustomUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CustomUsers_id_seq" OWNER TO postgres;

--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 248
-- Name: CustomUsers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CustomUsers_id_seq" OWNED BY public."CustomUsers".id;


--
-- TOC entry 245 (class 1259 OID 25780)
-- Name: blogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blogs (
    id integer NOT NULL,
    title character varying(255),
    date timestamp with time zone,
    text text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "mainText" text,
    "BlogPageTitle" text
);


ALTER TABLE public.blogs OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 25778)
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blogs_id_seq OWNER TO postgres;

--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 244
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- TOC entry 200 (class 1259 OID 25499)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 25507)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 201
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 202 (class 1259 OID 25509)
-- Name: categories_products__products_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_products__products_categories (
    id integer NOT NULL,
    category_id integer,
    product_id integer
);


ALTER TABLE public.categories_products__products_categories OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 25512)
-- Name: categories_products__products_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_products__products_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_products__products_categories_id_seq OWNER TO postgres;

--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 203
-- Name: categories_products__products_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_products__products_categories_id_seq OWNED BY public.categories_products__products_categories.id;


--
-- TOC entry 204 (class 1259 OID 25514)
-- Name: categories_videos__videos_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_videos__videos_categories (
    id integer NOT NULL,
    video_id integer,
    category_id integer
);


ALTER TABLE public.categories_videos__videos_categories OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 25517)
-- Name: categories_videos__videos_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_videos__videos_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_videos__videos_categories_id_seq OWNER TO postgres;

--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 205
-- Name: categories_videos__videos_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_videos__videos_categories_id_seq OWNED BY public.categories_videos__videos_categories.id;


--
-- TOC entry 206 (class 1259 OID 25519)
-- Name: components_custom_custom_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_custom_custom_fields (
    id integer NOT NULL,
    title character varying(255),
    required boolean,
    options character varying(255)
);


ALTER TABLE public.components_custom_custom_fields OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 25525)
-- Name: components_custom_custom_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_custom_custom_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_custom_custom_fields_id_seq OWNER TO postgres;

--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 207
-- Name: components_custom_custom_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_custom_custom_fields_id_seq OWNED BY public.components_custom_custom_fields.id;


--
-- TOC entry 208 (class 1259 OID 25527)
-- Name: core_store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 25533)
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO postgres;

--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 209
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- TOC entry 210 (class 1259 OID 25535)
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 25543)
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO postgres;

--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 211
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- TOC entry 212 (class 1259 OID 25545)
-- Name: leveles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.leveles (
    id integer NOT NULL,
    level character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.leveles OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 25550)
-- Name: leveles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.leveles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.leveles_id_seq OWNER TO postgres;

--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 213
-- Name: leveles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.leveles_id_seq OWNED BY public.leveles.id;


--
-- TOC entry 247 (class 1259 OID 25808)
-- Name: live_streams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.live_streams (
    id integer NOT NULL,
    title character varying(255),
    price integer,
    date timestamp with time zone,
    description text,
    duration integer,
    levele integer,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.live_streams OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 25806)
-- Name: live_streams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.live_streams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.live_streams_id_seq OWNER TO postgres;

--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 246
-- Name: live_streams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.live_streams_id_seq OWNED BY public.live_streams.id;


--
-- TOC entry 214 (class 1259 OID 25552)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    price double precision,
    slug character varying(255),
    status character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25560)
-- Name: products_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.products_components OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25566)
-- Name: products_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_components_id_seq OWNER TO postgres;

--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_components_id_seq OWNED BY public.products_components.id;


--
-- TOC entry 217 (class 1259 OID 25568)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 217
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 218 (class 1259 OID 25570)
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25576)
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO postgres;

--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- TOC entry 220 (class 1259 OID 25578)
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25586)
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- TOC entry 222 (class 1259 OID 25588)
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25596)
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO postgres;

--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 223
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- TOC entry 224 (class 1259 OID 25598)
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25601)
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO postgres;

--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 225
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- TOC entry 226 (class 1259 OID 25603)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25609)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 227
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 228 (class 1259 OID 25611)
-- Name: upload_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 25619)
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO postgres;

--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 229
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- TOC entry 230 (class 1259 OID 25621)
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 25627)
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO postgres;

--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 231
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- TOC entry 232 (class 1259 OID 25629)
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 25635)
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO postgres;

--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 233
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- TOC entry 234 (class 1259 OID 25637)
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 25643)
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO postgres;

--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 235
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- TOC entry 236 (class 1259 OID 25645)
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    lastname character varying(255)
);


ALTER TABLE public."users-permissions_user" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 25653)
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO postgres;

--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 237
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- TOC entry 238 (class 1259 OID 25655)
-- Name: video; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    price double precision,
    slug character varying(255),
    status character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.video OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 25663)
-- Name: video_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    video_id integer NOT NULL
);


ALTER TABLE public.video_components OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 25669)
-- Name: video_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.video_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_components_id_seq OWNER TO postgres;

--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 240
-- Name: video_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.video_components_id_seq OWNED BY public.video_components.id;


--
-- TOC entry 241 (class 1259 OID 25671)
-- Name: video_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_id_seq OWNER TO postgres;

--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 241
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.video_id_seq OWNED BY public.video.id;


--
-- TOC entry 242 (class 1259 OID 25673)
-- Name: videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videos (
    id integer NOT NULL,
    title character varying(255),
    description text,
    price integer,
    admin_user integer,
    "time" integer,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    levele integer,
    level integer
);


ALTER TABLE public.videos OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 25681)
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_id_seq OWNER TO postgres;

--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 243
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;


--
-- TOC entry 3328 (class 2604 OID 25850)
-- Name: CustomUsers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CustomUsers" ALTER COLUMN id SET DEFAULT nextval('public."CustomUsers_id_seq"'::regclass);


--
-- TOC entry 3322 (class 2604 OID 25783)
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- TOC entry 3282 (class 2604 OID 25683)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3283 (class 2604 OID 25684)
-- Name: categories_products__products_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_products__products_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_products__products_categories_id_seq'::regclass);


--
-- TOC entry 3284 (class 2604 OID 25685)
-- Name: categories_videos__videos_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_videos__videos_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_videos__videos_categories_id_seq'::regclass);


--
-- TOC entry 3285 (class 2604 OID 25686)
-- Name: components_custom_custom_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_custom_custom_fields ALTER COLUMN id SET DEFAULT nextval('public.components_custom_custom_fields_id_seq'::regclass);


--
-- TOC entry 3286 (class 2604 OID 25687)
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- TOC entry 3289 (class 2604 OID 25688)
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- TOC entry 3292 (class 2604 OID 25689)
-- Name: leveles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leveles ALTER COLUMN id SET DEFAULT nextval('public.leveles_id_seq'::regclass);


--
-- TOC entry 3325 (class 2604 OID 25811)
-- Name: live_streams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.live_streams ALTER COLUMN id SET DEFAULT nextval('public.live_streams_id_seq'::regclass);


--
-- TOC entry 3295 (class 2604 OID 25690)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 3296 (class 2604 OID 25691)
-- Name: products_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_components ALTER COLUMN id SET DEFAULT nextval('public.products_components_id_seq'::regclass);


--
-- TOC entry 3297 (class 2604 OID 25692)
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- TOC entry 3300 (class 2604 OID 25693)
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 25694)
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- TOC entry 3304 (class 2604 OID 25695)
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- TOC entry 3305 (class 2604 OID 25696)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 3308 (class 2604 OID 25697)
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- TOC entry 3309 (class 2604 OID 25698)
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- TOC entry 3310 (class 2604 OID 25699)
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- TOC entry 3311 (class 2604 OID 25700)
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- TOC entry 3314 (class 2604 OID 25701)
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- TOC entry 3317 (class 2604 OID 25702)
-- Name: video id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public.video_id_seq'::regclass);


--
-- TOC entry 3318 (class 2604 OID 25703)
-- Name: video_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_components ALTER COLUMN id SET DEFAULT nextval('public.video_components_id_seq'::regclass);


--
-- TOC entry 3321 (class 2604 OID 25704)
-- Name: videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);


--
-- TOC entry 3582 (class 0 OID 25847)
-- Dependencies: 249
-- Data for Name: CustomUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."CustomUsers" (id, name, email, "secondName", blocked, confirmed, users_permissions_role, password, created_by, updated_by, created_at, updated_at) VALUES (1, 'test', 'sergei@mail.ru', 'test', false, false, 1, '12345678', 1, 1, '2021-10-23 12:37:16.709+03', '2021-10-23 12:37:16.75+03');


--
-- TOC entry 3578 (class 0 OID 25780)
-- Dependencies: 245
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.blogs (id, title, date, text, published_at, created_by, updated_by, created_at, updated_at, "mainText", "BlogPageTitle") VALUES (1, 'Up-hold and down-hold basic variations', '2021-10-23 13:00:00+03', 'As with everything associated with Amazon, the numbers defy the imagination. Here are a few: Just over a million third-party sellers have joined the platform since Jan. 1, putting the total global number of them north of 3.3 million. ', '2021-10-16 02:18:44.677+03', 1, 1, '2021-10-16 02:16:43.598+03', '2021-10-16 20:54:51.286+03', '##**Nicole Wang on German and American aggregators working with Chinese manufacturers**

```code block adasfas```

![Rectangle 57.jpg](/uploads/Rectangle_57_8546841072.jpg)

Having assembled deep domain expertise in e-commerce, our strategy is to scale microbrands around various market segments. As part of this approach, we continuously grow the strong relationships we have built with a trusted group of Chinese suppliers. Our Investment and Integration team member, Nicole Wang has played a unique role in shaping these: Hailing from China, and now based in Berlin but often on-site, she lets us in on the best practices and learnings of working with our overseas partners.

Our suppliers are an essential asset to building and scaling brands in the unybrands ecosystem. We have over 20 trusted manufacturers currently providing us with juvenile and household goods; think water filtration and bottles, shower filters, mugs, and more. In fact, most of them rely on exports to Europe and the USA, allowing them to be very familiar with our main target audience’s demands and tastes as well as international trends.
', NULL);


--
-- TOC entry 3533 (class 0 OID 25499)
-- Dependencies: 200
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, name, slug, created_by, updated_by, created_at, updated_at) VALUES (7, 'Suggested', 'suggested', 1, 1, '2021-10-06 18:56:18.841+03', '2021-10-06 18:56:18.853+03');
INSERT INTO public.categories (id, name, slug, created_by, updated_by, created_at, updated_at) VALUES (8, 'Highlighed of the week', 'highlighed-of-the-week', 1, 1, '2021-10-06 18:56:35.346+03', '2021-10-06 18:56:35.354+03');
INSERT INTO public.categories (id, name, slug, created_by, updated_by, created_at, updated_at) VALUES (9, 'Special packages', 'special-packages', 1, 1, '2021-10-06 18:56:51.146+03', '2021-10-06 18:56:51.155+03');


--
-- TOC entry 3535 (class 0 OID 25509)
-- Dependencies: 202
-- Data for Name: categories_products__products_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories_products__products_categories (id, category_id, product_id) VALUES (34, 7, 1);


--
-- TOC entry 3537 (class 0 OID 25514)
-- Dependencies: 204
-- Data for Name: categories_videos__videos_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories_videos__videos_categories (id, video_id, category_id) VALUES (1, 1, 8);
INSERT INTO public.categories_videos__videos_categories (id, video_id, category_id) VALUES (2, 2, 8);
INSERT INTO public.categories_videos__videos_categories (id, video_id, category_id) VALUES (3, 3, 8);
INSERT INTO public.categories_videos__videos_categories (id, video_id, category_id) VALUES (4, 4, 8);
INSERT INTO public.categories_videos__videos_categories (id, video_id, category_id) VALUES (5, 5, 8);
INSERT INTO public.categories_videos__videos_categories (id, video_id, category_id) VALUES (6, 6, 8);
INSERT INTO public.categories_videos__videos_categories (id, video_id, category_id) VALUES (7, 7, 8);


--
-- TOC entry 3539 (class 0 OID 25519)
-- Dependencies: 206
-- Data for Name: components_custom_custom_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3541 (class 0 OID 25527)
-- Dependencies: 208
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (14, 'plugin_upload_settings', '{"sizeOptimization":true,"responsiveDimensions":true}', 'object', 'development', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (15, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (12, 'model_def_plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (1, 'model_def_strapi::core-store', '{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (5, 'model_def_strapi::webhooks', '{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (9, 'model_def_plugins::i18n.locale', '{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (17, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\n\n<p>But don’t worry! You can use the following link to reset your password:</p>\n<p><%= URL %>?code=<%= TOKEN %></p>\n\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\n\n<p>You have to confirm your email address. Please click on the link below.</p>\n\n<p><%= URL %>?confirmation=<%= CODE %></p>\n\n<p>Thanks.</p>"}}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (2, 'model_def_custom.custom-field', '{"uid":"custom.custom-field","collectionName":"components_custom_custom_fields","info":{"name":"Custom_field","icon":"archway"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"required":{"type":"boolean"},"options":{"type":"string"}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (7, 'model_def_strapi::role', '{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (16, 'plugin_content_manager_configuration_components::custom.custom-field', '{"uid":"custom.custom-field","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"required":{"edit":{"label":"Required","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Required","searchable":true,"sortable":true}},"options":{"edit":{"label":"Options","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Options","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","required","options"],"edit":[[{"name":"title","size":6},{"name":"required","size":4}],[{"name":"options","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (18, 'plugin_content_manager_configuration_content_types::strapi::role', '{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (28, 'plugin_i18n_default_locale', '"ru-RU"', 'string', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (21, 'plugin_content_manager_configuration_content_types::strapi::permission', '{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (34, 'model_def_application::user-action.user-action', '{"uid":"application::user-action.user-action","collectionName":"user_actions","kind":"singleType","info":{"name":"UserAction"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (31, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (22, 'plugin_content_manager_configuration_content_types::plugins::i18n.locale', '{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (23, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (24, 'plugin_content_manager_configuration_content_types::strapi::user', '{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (26, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"Avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Avatar","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"avatar","size":6}]],"editRelations":["role"]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (25, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (38, 'plugin_content_manager_configuration_content_types::application::leveles.leveles', '{"uid":"application::leveles.leveles","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"level","defaultSortBy":"level","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"level":{"edit":{"label":"Level","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Level","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","level","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"level","size":6}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (29, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":true,"email_reset_password":"http://localhost:3000/reset","email_confirmation_redirection":"http://localhost:3000","default_role":"authenticated"}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (27, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (30, 'type_setup_initHasRun', 'true', 'boolean', 'development', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (20, 'plugin_content_manager_configuration_content_types::application::category.category', '{"uid":"application::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"videos":{"edit":{"label":"Videos","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Videos","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","videos"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}]],"editRelations":["videos"]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (4, 'model_def_application::product.product', '{"uid":"application::product.product","collectionName":"video","kind":"collectionType","info":{"name":"video","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"description":{"type":"text","required":true},"price":{"type":"float"},"image":{"model":"file","via":"related","allowedTypes":["files","images","videos"],"plugin":"upload","required":true,"pluginOptions":{}},"slug":{"type":"uid","targetField":"title"},"categories":{"collection":"category","via":"products","attribute":"category","column":"id","isVirtual":true},"Custom_field":{"type":"component","repeatable":true,"component":"custom.custom-field"},"status":{"type":"enumeration","enum":["draft","published"],"default":"published","required":true},"bigImage":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"video":{"collection":"file","via":"related","allowedTypes":["videos"],"plugin":"upload","required":false,"pluginOptions":{}},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (33, 'plugin_content_manager_configuration_content_types::application::videos.videos', '{"uid":"application::videos.videos","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"bigImage":{"edit":{"label":"BigImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BigImage","searchable":false,"sortable":false}},"video":{"edit":{"label":"Video","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Video","searchable":false,"sortable":false}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}},"categories":{"edit":{"label":"Categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Categories","searchable":false,"sortable":false}},"admin_user":{"edit":{"label":"Admin_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Admin_user","searchable":true,"sortable":true}},"time":{"edit":{"label":"Time","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Time","searchable":true,"sortable":true}},"level":{"edit":{"label":"Level","description":"","placeholder":"","visible":true,"editable":true,"mainField":"level"},"list":{"label":"Level","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","image"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"image","size":6},{"name":"bigImage","size":6}],[{"name":"video","size":6},{"name":"price","size":4}],[{"name":"time","size":4}]],"editRelations":["categories","admin_user","level"]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (36, 'model_def_application::leveles.leveles', '{"uid":"application::leveles.leveles","collectionName":"leveles","kind":"collectionType","info":{"name":"Leveles"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"level":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (6, 'model_def_strapi::permission', '{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (11, 'model_def_plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (39, 'model_def_application::blogs.blogs', '{"uid":"application::blogs.blogs","collectionName":"blogs","kind":"collectionType","info":{"name":"Blogs","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"date":{"type":"datetime"},"image":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"text":{"type":"text"},"mainText":{"type":"richtext"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (40, 'plugin_content_manager_configuration_content_types::application::blogs.blogs', '{"uid":"application::blogs.blogs","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"mainText":{"edit":{"label":"MainText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainText","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","date","image"],"edit":[[{"name":"title","size":6},{"name":"date","size":6}],[{"name":"image","size":6},{"name":"text","size":6}],[{"name":"mainText","size":12}]],"editRelations":[]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (3, 'model_def_application::category.category', '{"uid":"application::category.category","collectionName":"categories","kind":"collectionType","info":{"name":"category"},"options":{"increments":true,"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string"},"slug":{"type":"uid","targetField":"name"},"videos":{"via":"categories","collection":"videos","attribute":"video","column":"id","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (43, 'model_def_application::custom-users.custom-users', '{"uid":"application::custom-users.custom-users","collectionName":"CustomUsers","kind":"collectionType","info":{"name":"CustomUsers","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"email":{"type":"email","required":true,"unique":true},"secondName":{"type":"string"},"blocked":{"type":"boolean","default":false},"confirmed":{"type":"boolean","default":false},"users_permissions_role":{"plugin":"users-permissions","model":"role"},"avatar":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"password":{"type":"password"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (45, 'plugin_content_manager_configuration_content_types::application::custom-users.custom-users', '{"uid":"application::custom-users.custom-users","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"secondName":{"edit":{"label":"SecondName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SecondName","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"users_permissions_role":{"edit":{"label":"Users_permissions_role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Users_permissions_role","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"Avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Avatar","searchable":false,"sortable":false}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","email","secondName"],"editRelations":["users_permissions_role"],"edit":[[{"name":"name","size":6},{"name":"email","size":6}],[{"name":"secondName","size":6},{"name":"blocked","size":4}],[{"name":"confirmed","size":4},{"name":"avatar","size":6}],[{"name":"password","size":6}]]}}', 'object', '', '');
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (8, 'model_def_strapi::user', '{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (32, 'model_def_application::videos.videos', '{"uid":"application::videos.videos","collectionName":"videos","kind":"collectionType","info":{"name":"Videos","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"image":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"bigImage":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"video":{"collection":"file","via":"related","allowedTypes":["videos"],"plugin":"upload","required":false,"pluginOptions":{}},"price":{"type":"integer","default":5},"categories":{"collection":"category","via":"videos","dominant":true,"attribute":"category","column":"id","isVirtual":true},"admin_user":{"plugin":"admin","model":"user"},"time":{"type":"integer"},"level":{"model":"leveles"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (41, 'model_def_application::live-stream.live-stream', '{"uid":"application::live-stream.live-stream","collectionName":"live_streams","kind":"collectionType","info":{"name":"LiveStream","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"price":{"type":"integer"},"date":{"type":"datetime"},"description":{"type":"richtext"},"image":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"bigImg":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"duration":{"type":"integer"},"levele":{"model":"leveles"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (10, 'model_def_plugins::upload.file', '{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO public.core_store (id, key, value, type, environment, tag) VALUES (13, 'model_def_plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"avatar":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL);


--
-- TOC entry 3543 (class 0 OID 25535)
-- Dependencies: 210
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) VALUES (1, 'English (en)', 'en', NULL, NULL, '2021-10-06 17:15:37.365+03', '2021-10-06 17:15:37.365+03');
INSERT INTO public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) VALUES (2, 'Russian (Russia) (ru-RU)', 'ru-RU', 1, 1, '2021-10-06 20:45:36.173+03', '2021-10-06 20:45:50.974+03');


--
-- TOC entry 3545 (class 0 OID 25545)
-- Dependencies: 212
-- Data for Name: leveles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.leveles (id, level, published_at, created_by, updated_by, created_at, updated_at) VALUES (1, 'Advance', '2021-10-09 12:44:25.426+03', 1, 1, '2021-10-09 12:44:19.18+03', '2021-10-09 12:44:25.437+03');
INSERT INTO public.leveles (id, level, published_at, created_by, updated_by, created_at, updated_at) VALUES (2, 'Beginner', '2021-10-09 12:45:10.38+03', 1, 1, '2021-10-09 12:45:09.063+03', '2021-10-09 12:45:10.392+03');


--
-- TOC entry 3580 (class 0 OID 25808)
-- Dependencies: 247
-- Data for Name: live_streams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.live_streams (id, title, price, date, description, duration, levele, published_at, created_by, updated_by, created_at, updated_at) VALUES (2, 'Up-hold and down-hold basic variations', 15, '2021-10-31 12:00:00+03', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 60, 2, '2021-10-19 18:51:39.635+03', 1, 1, '2021-10-19 18:51:34.228+03', '2021-10-19 18:51:39.664+03');
INSERT INTO public.live_streams (id, title, price, date, description, duration, levele, published_at, created_by, updated_by, created_at, updated_at) VALUES (3, 'Up-hold and down-hold basic variations', 15, '2021-10-31 12:00:00+03', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 60, 2, '2021-10-19 18:51:49.276+03', 1, 1, '2021-10-19 18:51:44.901+03', '2021-10-19 18:51:49.326+03');
INSERT INTO public.live_streams (id, title, price, date, description, duration, levele, published_at, created_by, updated_by, created_at, updated_at) VALUES (4, 'Up-hold and down-hold basic variations', 15, '2021-10-31 12:00:00+03', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 60, 2, '2021-10-19 18:51:55.684+03', 1, 1, '2021-10-19 18:51:53.671+03', '2021-10-19 18:51:55.775+03');
INSERT INTO public.live_streams (id, title, price, date, description, duration, levele, published_at, created_by, updated_by, created_at, updated_at) VALUES (1, 'Up-hold and down-hold basic variations', 15, '2021-10-31 12:00:00+03', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 60, 2, '2021-10-19 18:51:27.676+03', 1, 1, '2021-10-19 18:51:25.749+03', '2021-10-19 19:20:40.545+03');


--
-- TOC entry 3547 (class 0 OID 25552)
-- Dependencies: 214
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, title, description, price, slug, status, created_by, updated_by, created_at, updated_at) VALUES (28, 'Up-hold and down-hold basic variations', 'Andreas Ollson Andreas Ollson Andreas', 30, 'up-hold-and-down-hold-basic-variations', 'published', 1, 1, '2021-10-06 19:03:48.526+03', '2021-10-06 19:03:48.554+03');


--
-- TOC entry 3548 (class 0 OID 25560)
-- Dependencies: 215
-- Data for Name: products_components; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3551 (class 0 OID 25570)
-- Dependencies: 218
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") VALUES (1, 'Sergei', 'Nikitin', NULL, 'sergei_nikitin00@mail.ru', '$2a$10$tMp2DNPApA5cL8Jthq/uu.offKsI9NfJcRTG66NnAF8JG6rpgTrA.', NULL, NULL, true, NULL, NULL);
INSERT INTO public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") VALUES (2, 'Sofia', 'Sofievna', 'sofia', 'sofia@mail.ru', '$2a$10$Kfh9z65nBKH8zNA4.j1bnuM1/n8/BNfGKTxvDCglrdNNp5aaz3vBu', NULL, '097009a467d49b4d0e400b404d993f73f897bcab', true, NULL, NULL);


--
-- TOC entry 3553 (class 0 OID 25578)
-- Dependencies: 220
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (298, 'plugins::content-manager.explorer.create', 'application::videos.videos', '{"fields": ["admin_user", "bigImage", "categories", "description", "image", "price", "time", "title", "video"]}', '[]', 2, '2021-10-08 15:48:30.509+03', '2021-10-08 15:48:30.521+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (10, 'plugins::upload.assets.create', NULL, '{}', '[]', 2, '2021-10-06 17:15:40.182+03', '2021-10-06 17:15:40.198+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1103, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "avatar"]}', '[]', 1, '2021-10-22 17:28:10.355+03', '2021-10-22 17:28:10.396+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (7, 'plugins::content-manager.explorer.delete', 'application::category.category', '{}', '[]', 2, '2021-10-06 17:15:40.178+03', '2021-10-06 17:15:40.198+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (9, 'plugins::upload.read', NULL, '{}', '[]', 2, '2021-10-06 17:15:40.178+03', '2021-10-06 17:15:40.198+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (11, 'plugins::upload.assets.update', NULL, '{}', '[]', 2, '2021-10-06 17:15:40.22+03', '2021-10-06 17:15:40.227+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (13, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 2, '2021-10-06 17:15:40.222+03', '2021-10-06 17:15:40.228+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (12, 'plugins::upload.assets.download', NULL, '{}', '[]', 2, '2021-10-06 17:15:40.222+03', '2021-10-06 17:15:40.229+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (22, 'plugins::upload.read', NULL, '{}', '["admin::is-creator"]', 3, '2021-10-06 17:15:40.249+03', '2021-10-06 17:15:40.268+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (23, 'plugins::upload.assets.create', NULL, '{}', '[]', 3, '2021-10-06 17:15:40.25+03', '2021-10-06 17:15:40.268+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (24, 'plugins::upload.assets.update', NULL, '{}', '["admin::is-creator"]', 3, '2021-10-06 17:15:40.295+03', '2021-10-06 17:15:40.304+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (25, 'plugins::upload.assets.download', NULL, '{}', '[]', 3, '2021-10-06 17:15:40.295+03', '2021-10-06 17:15:40.304+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (26, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 3, '2021-10-06 17:15:40.298+03', '2021-10-06 17:15:40.305+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (5, 'plugins::content-manager.explorer.update', 'application::category.category', '{"fields": ["name", "slug"]}', '[]', 2, '2021-10-06 17:15:40.178+03', '2021-10-06 19:12:17.324+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (3, 'plugins::content-manager.explorer.read', 'application::category.category', '{"fields": ["name", "slug"]}', '[]', 2, '2021-10-06 17:15:40.177+03', '2021-10-06 19:12:17.324+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (16, 'plugins::content-manager.explorer.read', 'application::category.category', '{"fields": ["name", "slug"]}', '["admin::is-creator"]', 3, '2021-10-06 17:15:40.242+03', '2021-10-06 19:12:17.332+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1, 'plugins::content-manager.explorer.create', 'application::category.category', '{"fields": ["name", "slug"]}', '[]', 2, '2021-10-06 17:15:40.177+03', '2021-10-06 19:12:17.333+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (14, 'plugins::content-manager.explorer.create', 'application::category.category', '{"fields": ["name", "slug"]}', '["admin::is-creator"]', 3, '2021-10-06 17:15:40.242+03', '2021-10-06 19:12:17.333+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (41, 'plugins::upload.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.408+03', '2021-10-06 17:15:40.423+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (44, 'plugins::upload.assets.download', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.408+03', '2021-10-06 17:15:40.433+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (47, 'plugins::content-manager.single-types.configure-view', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.454+03', '2021-10-06 17:15:40.476+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (51, 'plugins::i18n.locale.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.461+03', '2021-10-06 17:15:40.486+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (54, 'plugins::users-permissions.roles.create', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.471+03', '2021-10-06 17:15:40.49+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (59, 'plugins::users-permissions.providers.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.515+03', '2021-10-06 17:15:40.53+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (62, 'plugins::users-permissions.advanced-settings.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.518+03', '2021-10-06 17:15:40.534+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (64, 'admin::marketplace.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.519+03', '2021-10-06 17:15:40.535+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (69, 'admin::webhooks.delete', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.578+03', '2021-10-06 17:15:40.595+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (71, 'admin::users.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.578+03', '2021-10-06 17:15:40.596+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (74, 'admin::users.delete', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.582+03', '2021-10-06 17:15:40.6+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (299, 'plugins::content-manager.explorer.update', 'application::videos.videos', '{"fields": ["admin_user", "bigImage", "categories", "description", "image", "price", "time", "title", "video"]}', '[]', 2, '2021-10-08 15:48:30.51+03', '2021-10-08 15:48:30.521+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (40, 'plugins::email.settings.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.406+03', '2021-10-06 17:15:40.423+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (49, 'plugins::content-manager.components.configure-layout', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.461+03', '2021-10-06 17:15:40.481+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (57, 'plugins::users-permissions.roles.delete', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.512+03', '2021-10-06 17:15:40.53+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (66, 'admin::webhooks.create', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.577+03', '2021-10-06 17:15:40.595+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (77, 'admin::roles.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.623+03', '2021-10-06 17:15:40.633+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1165, 'plugins::content-manager.explorer.create', 'application::custom-users.custom-users', '{"fields": ["name", "email", "secondName", "blocked", "confirmed", "users_permissions_role", "avatar", "password"]}', '[]', 1, '2021-10-23 12:35:32.469+03', '2021-10-23 12:35:32.488+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (343, 'plugins::content-manager.explorer.create', 'application::videos.videos', '{"fields": ["title", "description", "image", "bigImage", "video", "price", "categories", "admin_user", "time", "level"]}', '[]', 1, '2021-10-09 12:47:25.084+03', '2021-10-09 12:47:25.108+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (21, 'plugins::content-manager.explorer.delete', 'application::category.category', '{}', '["admin::is-creator"]', 3, '2021-10-06 17:15:40.243+03', '2021-10-06 17:15:40.268+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (300, 'plugins::content-manager.explorer.read', 'application::videos.videos', '{"fields": ["admin_user", "bigImage", "categories", "description", "image", "price", "time", "title", "video"]}', '[]', 2, '2021-10-08 15:48:30.509+03', '2021-10-08 15:48:30.522+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (43, 'plugins::upload.assets.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.408+03', '2021-10-06 17:15:40.428+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (52, 'plugins::i18n.locale.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.465+03', '2021-10-06 17:15:40.486+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (58, 'plugins::users-permissions.providers.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.514+03', '2021-10-06 17:15:40.53+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (67, 'admin::webhooks.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.577+03', '2021-10-06 17:15:40.595+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (76, 'admin::roles.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.622+03', '2021-10-06 17:15:40.631+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (344, 'plugins::content-manager.explorer.read', 'application::videos.videos', '{"fields": ["title", "description", "image", "bigImage", "video", "price", "categories", "admin_user", "time", "level"]}', '[]', 1, '2021-10-09 12:47:25.085+03', '2021-10-09 12:47:25.108+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (106, 'plugins::content-manager.explorer.update', 'application::category.category', '{"fields": ["name", "slug", "videos"]}', '[]', 1, '2021-10-06 19:17:04.85+03', '2021-10-06 19:17:04.876+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (301, 'plugins::content-manager.explorer.delete', 'application::videos.videos', '{}', '[]', 2, '2021-10-08 15:48:30.513+03', '2021-10-08 15:48:30.524+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (45, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.437+03', '2021-10-06 17:15:40.457+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (55, 'plugins::users-permissions.roles.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.491+03', '2021-10-06 17:15:40.509+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (65, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.577+03', '2021-10-06 17:15:40.595+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (75, 'admin::roles.create', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.622+03', '2021-10-06 17:15:40.63+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (18, 'plugins::content-manager.explorer.update', 'application::category.category', '{"fields": ["name", "slug"]}', '["admin::is-creator"]', 3, '2021-10-06 17:15:40.243+03', '2021-10-06 19:12:17.347+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (345, 'plugins::content-manager.explorer.update', 'application::videos.videos', '{"fields": ["title", "description", "image", "bigImage", "video", "price", "categories", "admin_user", "time", "level"]}', '[]', 1, '2021-10-09 12:47:25.085+03', '2021-10-09 12:47:25.108+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (325, 'plugins::content-manager.explorer.create', 'application::leveles.leveles', '{"fields": ["level"]}', '[]', 1, '2021-10-09 12:44:06.757+03', '2021-10-09 12:44:06.779+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (302, 'plugins::content-manager.explorer.publish', 'application::videos.videos', '{}', '[]', 2, '2021-10-08 15:48:30.513+03', '2021-10-08 15:48:30.528+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1100, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "avatar"]}', '[]', 1, '2021-10-22 17:28:10.355+03', '2021-10-22 17:28:10.398+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1429, 'plugins::content-manager.explorer.delete', 'application::blogs.blogs', '{}', '[]', 1, '2021-10-23 13:55:59.658+03', '2021-10-23 13:55:59.677+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (46, 'plugins::upload.settings.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.437+03', '2021-10-06 17:15:40.457+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (56, 'plugins::users-permissions.roles.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.491+03', '2021-10-06 17:15:40.509+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (73, 'admin::marketplace.plugins.install', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.579+03', '2021-10-06 17:15:40.6+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (326, 'plugins::content-manager.explorer.read', 'application::leveles.leveles', '{"fields": ["level"]}', '[]', 1, '2021-10-09 12:44:06.757+03', '2021-10-09 12:44:06.78+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (50, 'plugins::i18n.locale.create', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.461+03', '2021-10-06 17:15:40.486+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (63, 'plugins::users-permissions.advanced-settings.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.518+03', '2021-10-06 17:15:40.534+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (70, 'admin::users.create', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.578+03', '2021-10-06 17:15:40.596+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (78, 'admin::roles.delete', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.625+03', '2021-10-06 17:15:40.631+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (102, 'plugins::content-manager.explorer.create', 'application::category.category', '{"fields": ["name", "slug", "videos"]}', '[]', 1, '2021-10-06 19:17:04.848+03', '2021-10-06 19:17:04.874+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (327, 'plugins::content-manager.explorer.update', 'application::leveles.leveles', '{"fields": ["level"]}', '[]', 1, '2021-10-09 12:44:06.757+03', '2021-10-09 12:44:06.78+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (39, 'plugins::content-type-builder.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.406+03', '2021-10-06 17:15:40.423+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (48, 'plugins::content-manager.collection-types.configure-view', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.461+03', '2021-10-06 17:15:40.48+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (61, 'plugins::users-permissions.email-templates.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.515+03', '2021-10-06 17:15:40.535+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (72, 'admin::users.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.578+03', '2021-10-06 17:15:40.6+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1166, 'plugins::content-manager.explorer.read', 'application::custom-users.custom-users', '{"fields": ["name", "email", "secondName", "blocked", "confirmed", "users_permissions_role", "avatar", "password"]}', '[]', 1, '2021-10-23 12:35:32.469+03', '2021-10-23 12:35:32.488+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (42, 'plugins::upload.assets.create', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.408+03', '2021-10-06 17:15:40.428+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (53, 'plugins::i18n.locale.delete', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.465+03', '2021-10-06 17:15:40.486+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (60, 'plugins::users-permissions.email-templates.read', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.515+03', '2021-10-06 17:15:40.53+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (68, 'admin::webhooks.update', NULL, '{}', '[]', 1, '2021-10-06 17:15:40.578+03', '2021-10-06 17:15:40.595+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (104, 'plugins::content-manager.explorer.read', 'application::category.category', '{"fields": ["name", "slug", "videos"]}', '[]', 1, '2021-10-06 19:17:04.849+03', '2021-10-06 19:17:04.875+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1430, 'plugins::content-manager.explorer.delete', 'application::category.category', '{}', '[]', 1, '2021-10-23 13:55:59.658+03', '2021-10-23 13:55:59.677+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1167, 'plugins::content-manager.explorer.update', 'application::custom-users.custom-users', '{"fields": ["name", "email", "secondName", "blocked", "confirmed", "users_permissions_role", "avatar", "password"]}', '[]', 1, '2021-10-23 12:35:32.469+03', '2021-10-23 12:35:32.488+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1431, 'plugins::content-manager.explorer.delete', 'application::custom-users.custom-users', '{}', '[]', 1, '2021-10-23 13:55:59.659+03', '2021-10-23 13:55:59.678+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1102, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "avatar"]}', '[]', 1, '2021-10-22 17:28:10.355+03', '2021-10-22 17:28:10.397+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1432, 'plugins::content-manager.explorer.delete', 'application::leveles.leveles', '{}', '[]', 1, '2021-10-23 13:55:59.659+03', '2021-10-23 13:55:59.678+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1434, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', '{}', '[]', 1, '2021-10-23 13:55:59.66+03', '2021-10-23 13:55:59.683+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1433, 'plugins::content-manager.explorer.delete', 'application::videos.videos', '{}', '[]', 1, '2021-10-23 13:55:59.66+03', '2021-10-23 13:55:59.684+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (415, 'plugins::content-manager.explorer.create', 'application::blogs.blogs', '{"fields": ["title", "date", "image", "text", "mainText"]}', '[]', 1, '2021-10-16 20:41:41.39+03', '2021-10-16 20:41:41.42+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1436, 'plugins::content-manager.explorer.publish', 'application::leveles.leveles', '{}', '[]', 1, '2021-10-23 13:55:59.66+03', '2021-10-23 13:55:59.684+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1435, 'plugins::content-manager.explorer.publish', 'application::blogs.blogs', '{}', '[]', 1, '2021-10-23 13:55:59.66+03', '2021-10-23 13:55:59.684+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (416, 'plugins::content-manager.explorer.read', 'application::blogs.blogs', '{"fields": ["title", "date", "image", "text", "mainText"]}', '[]', 1, '2021-10-16 20:41:41.39+03', '2021-10-16 20:41:41.42+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (1437, 'plugins::content-manager.explorer.publish', 'application::videos.videos', '{}', '[]', 1, '2021-10-23 13:55:59.66+03', '2021-10-23 13:55:59.684+03');
INSERT INTO public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) VALUES (419, 'plugins::content-manager.explorer.update', 'application::blogs.blogs', '{"fields": ["title", "date", "image", "text", "mainText"]}', '[]', 1, '2021-10-16 20:41:41.391+03', '2021-10-16 20:41:41.42+03');


--
-- TOC entry 3555 (class 0 OID 25588)
-- Dependencies: 222
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.strapi_role (id, name, code, description, created_at, updated_at) VALUES (1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-10-06 17:15:40.134+03', '2021-10-06 17:15:40.134+03');
INSERT INTO public.strapi_role (id, name, code, description, created_at, updated_at) VALUES (3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-10-06 17:15:40.161+03', '2021-10-06 17:15:40.161+03');
INSERT INTO public.strapi_role (id, name, code, description, created_at, updated_at) VALUES (2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-10-06 17:15:40.15+03', '2021-10-06 17:15:40.15+03');


--
-- TOC entry 3557 (class 0 OID 25598)
-- Dependencies: 224
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.strapi_users_roles (id, user_id, role_id) VALUES (1, 1, 1);
INSERT INTO public.strapi_users_roles (id, user_id, role_id) VALUES (3, 2, 2);


--
-- TOC entry 3559 (class 0 OID 25603)
-- Dependencies: 226
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3561 (class 0 OID 25611)
-- Dependencies: 228
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (2, 'react.png', NULL, NULL, 400, 400, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_react_36736c159b.png", "hash": "thumbnail_react_36736c159b", "mime": "image/.png", "name": "thumbnail_react.png", "path": null, "size": 17.65, "width": 156, "height": 156}}', 'react_36736c159b', '.png', 'image/.png', 13.06, '/uploads/react_36736c159b.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.834+03', '2021-10-06 17:15:39.834+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (4, 'c-plus-plus.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_c_plus_plus_f3eb965de2.png", "hash": "thumbnail_c_plus_plus_f3eb965de2", "mime": "image/.png", "name": "thumbnail_c-plus-plus.png", "path": null, "size": 14.7, "width": 156, "height": 156}}', 'c_plus_plus_f3eb965de2', '.png', 'image/.png', 5.63, '/uploads/c_plus_plus_f3eb965de2.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.834+03', '2021-10-06 17:15:39.834+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (5, 'postgre-sql.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_postgre_sql_5d2fbfca17.png", "hash": "thumbnail_postgre_sql_5d2fbfca17", "mime": "image/.png", "name": "thumbnail_postgre-sql.png", "path": null, "size": 21.05, "width": 156, "height": 156}}', 'postgre_sql_5d2fbfca17', '.png', 'image/.png', 12.93, '/uploads/postgre_sql_5d2fbfca17.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.84+03', '2021-10-06 17:15:39.84+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (6, 'graph-ql.png', NULL, NULL, 400, 400, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_graph_ql_8a1d68e465.png", "hash": "thumbnail_graph_ql_8a1d68e465", "mime": "image/.png", "name": "thumbnail_graph-ql.png", "path": null, "size": 14.84, "width": 156, "height": 156}}', 'graph_ql_8a1d68e465', '.png', 'image/.png', 8.96, '/uploads/graph_ql_8a1d68e465.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.84+03', '2021-10-06 17:15:39.84+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (7, 'rust.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_rust_199f1b7d44.png", "hash": "thumbnail_rust_199f1b7d44", "mime": "image/.png", "name": "thumbnail_rust.png", "path": null, "size": 15.83, "width": 156, "height": 156}}', 'rust_199f1b7d44', '.png', 'image/.png', 12.18, '/uploads/rust_199f1b7d44.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.833+03', '2021-10-06 17:15:39.833+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (8, 'vue-js.png', NULL, NULL, 400, 400, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_vue_js_221a084333.png", "hash": "thumbnail_vue_js_221a084333", "mime": "image/.png", "name": "thumbnail_vue-js.png", "path": null, "size": 11, "width": 156, "height": 156}}', 'vue_js_221a084333', '.png', 'image/.png', 4.56, '/uploads/vue_js_221a084333.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.793+03', '2021-10-06 17:15:39.793+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (9, 'swift.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_swift_7eef1bdebe.png", "hash": "thumbnail_swift_7eef1bdebe", "mime": "image/.png", "name": "thumbnail_swift.png", "path": null, "size": 20.6, "width": 156, "height": 156}}', 'swift_7eef1bdebe', '.png', 'image/.png', 10.96, '/uploads/swift_7eef1bdebe.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.834+03', '2021-10-06 17:15:39.834+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (10, 'mongo-db.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_mongo_db_96a2d21ba6.png", "hash": "thumbnail_mongo_db_96a2d21ba6", "mime": "image/.png", "name": "thumbnail_mongo-db.png", "path": null, "size": 14.75, "width": 156, "height": 156}}', 'mongo_db_96a2d21ba6', '.png', 'image/.png', 6.93, '/uploads/mongo_db_96a2d21ba6.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.841+03', '2021-10-06 17:15:39.841+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (11, 'kotlin.png', NULL, NULL, 400, 400, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_kotlin_f4593a75f2.png", "hash": "thumbnail_kotlin_f4593a75f2", "mime": "image/.png", "name": "thumbnail_kotlin.png", "path": null, "size": 12.64, "width": 156, "height": 156}}', 'kotlin_f4593a75f2', '.png', 'image/.png', 7.98, '/uploads/kotlin_f4593a75f2.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.96+03', '2021-10-06 17:15:39.96+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (13, 'ruby-on-rails.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_ruby_on_rails_952032eed5.png", "hash": "thumbnail_ruby_on_rails_952032eed5", "mime": "image/.png", "name": "thumbnail_ruby-on-rails.png", "path": null, "size": 8.82, "width": 156, "height": 156}}', 'ruby_on_rails_952032eed5', '.png', 'image/.png', 6.67, '/uploads/ruby_on_rails_952032eed5.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.96+03', '2021-10-06 17:15:39.96+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (14, 'ruby-1.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_ruby_1_58ca3ba3f8.png", "hash": "thumbnail_ruby_1_58ca3ba3f8", "mime": "image/.png", "name": "thumbnail_ruby-1.png", "path": null, "size": 31, "width": 156, "height": 156}}', 'ruby_1_58ca3ba3f8', '.png', 'image/.png', 17.56, '/uploads/ruby_1_58ca3ba3f8.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.96+03', '2021-10-06 17:15:39.96+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (15, 'php.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_php_07b5ebd6ba.png", "hash": "thumbnail_php_07b5ebd6ba", "mime": "image/.png", "name": "thumbnail_php.png", "path": null, "size": 23.32, "width": 156, "height": 156}}', 'php_07b5ebd6ba', '.png', 'image/.png', 17.49, '/uploads/php_07b5ebd6ba.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.961+03', '2021-10-06 17:15:39.961+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (16, 'google-cloud.png', NULL, NULL, 400, 400, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_google_cloud_d7cc5a5f97.png", "hash": "thumbnail_google_cloud_d7cc5a5f97", "mime": "image/.png", "name": "thumbnail_google-cloud.png", "path": null, "size": 12.52, "width": 156, "height": 156}}', 'google_cloud_d7cc5a5f97', '.png', 'image/.png', 9.11, '/uploads/google_cloud_d7cc5a5f97.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.961+03', '2021-10-06 17:15:39.961+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (17, 'next-js.png', NULL, NULL, 600, 600, '{"small": {"ext": ".png", "url": "/uploads/small_next_js_804d9f918e.png", "hash": "small_next_js_804d9f918e", "mime": "image/.png", "name": "small_next-js.png", "path": null, "size": 46.1, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_next_js_804d9f918e.png", "hash": "thumbnail_next_js_804d9f918e", "mime": "image/.png", "name": "thumbnail_next-js.png", "path": null, "size": 9.26, "width": 156, "height": 156}}', 'next_js_804d9f918e', '.png', 'image/.png', 38.64, '/uploads/next_js_804d9f918e.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.961+03', '2021-10-06 17:15:39.961+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (18, 'gatsby.png', NULL, NULL, 600, 600, '{"small": {"ext": ".png", "url": "/uploads/small_gatsby_924379aa04.png", "hash": "small_gatsby_924379aa04", "mime": "image/.png", "name": "small_gatsby.png", "path": null, "size": 161.12, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_gatsby_924379aa04.png", "hash": "thumbnail_gatsby_924379aa04", "mime": "image/.png", "name": "thumbnail_gatsby.png", "path": null, "size": 23.07, "width": 156, "height": 156}}', 'gatsby_924379aa04', '.png', 'image/.png', 152.91, '/uploads/gatsby_924379aa04.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.961+03', '2021-10-06 17:15:39.961+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (19, 'nuxt-js.png', NULL, NULL, 600, 600, '{"small": {"ext": ".png", "url": "/uploads/small_nuxt_js_f69d640519.png", "hash": "small_nuxt_js_f69d640519", "mime": "image/.png", "name": "small_nuxt-js.png", "path": null, "size": 117.55, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_nuxt_js_f69d640519.png", "hash": "thumbnail_nuxt_js_f69d640519", "mime": "image/.png", "name": "thumbnail_nuxt-js.png", "path": null, "size": 16.68, "width": 156, "height": 156}}', 'nuxt_js_f69d640519', '.png', 'image/.png', 118.61, '/uploads/nuxt_js_f69d640519.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.961+03', '2021-10-06 17:15:39.961+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (23, 'linux.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_linux_77ef0913ea.png", "hash": "thumbnail_linux_77ef0913ea", "mime": "image/.png", "name": "thumbnail_linux.png", "path": null, "size": 19.94, "width": 156, "height": 156}}', 'linux_77ef0913ea', '.png', 'image/.png', 16.28, '/uploads/linux_77ef0913ea.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:40.052+03', '2021-10-06 17:15:40.052+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (1, 'sq-lite.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_sq_lite_3f12270407.png", "hash": "thumbnail_sq_lite_3f12270407", "mime": "image/.png", "name": "thumbnail_sq-lite.png", "path": null, "size": 12.58, "width": 156, "height": 156}}', 'sq_lite_3f12270407', '.png', 'image/.png', 7.10, '/uploads/sq_lite_3f12270407.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.814+03', '2021-10-06 17:15:39.814+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (20, 'python.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_python_e12d5fc3d5.png", "hash": "thumbnail_python_e12d5fc3d5", "mime": "image/.png", "name": "thumbnail_python.png", "path": null, "size": 14.59, "width": 156, "height": 156}}', 'python_e12d5fc3d5', '.png', 'image/.png', 7.17, '/uploads/python_e12d5fc3d5.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.97+03', '2021-10-06 17:15:39.97+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (21, 'kubernetes.png', NULL, NULL, 600, 600, '{"small": {"ext": ".png", "url": "/uploads/small_kubernetes_b23c704802.png", "hash": "small_kubernetes_b23c704802", "mime": "image/.png", "name": "small_kubernetes.png", "path": null, "size": 163.04, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_kubernetes_b23c704802.png", "hash": "thumbnail_kubernetes_b23c704802", "mime": "image/.png", "name": "thumbnail_kubernetes.png", "path": null, "size": 23.13, "width": 156, "height": 156}}', 'kubernetes_b23c704802', '.png', 'image/.png', 163.30, '/uploads/kubernetes_b23c704802.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:40.047+03', '2021-10-06 17:15:40.047+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (24, 'java.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_java_81acebca14.png", "hash": "thumbnail_java_81acebca14", "mime": "image/.png", "name": "thumbnail_java.png", "path": null, "size": 16.5, "width": 156, "height": 156}}', 'java_81acebca14', '.png', 'image/.png', 8.19, '/uploads/java_81acebca14.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:40.052+03', '2021-10-06 17:15:40.052+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (25, 'angular.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_angular_b63d4d52cf.png", "hash": "thumbnail_angular_b63d4d52cf", "mime": "image/.png", "name": "thumbnail_angular.png", "path": null, "size": 15.84, "width": 156, "height": 156}}', 'angular_b63d4d52cf', '.png', 'image/.png', 9.75, '/uploads/angular_b63d4d52cf.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:40.052+03', '2021-10-06 17:15:40.052+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (26, 'docker.png', NULL, NULL, 600, 600, '{"small": {"ext": ".png", "url": "/uploads/small_docker_c4bd63e5ee.png", "hash": "small_docker_c4bd63e5ee", "mime": "image/.png", "name": "small_docker.png", "path": null, "size": 182.48, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_docker_c4bd63e5ee.png", "hash": "thumbnail_docker_c4bd63e5ee", "mime": "image/.png", "name": "thumbnail_docker.png", "path": null, "size": 27.2, "width": 156, "height": 156}}', 'docker_c4bd63e5ee', '.png', 'image/.png', 185.87, '/uploads/docker_c4bd63e5ee.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:40.052+03', '2021-10-06 17:15:40.052+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (27, 'strapi.png', NULL, NULL, 600, 600, '{"small": {"ext": ".png", "url": "/uploads/small_strapi_1d5e8f1823.png", "hash": "small_strapi_1d5e8f1823", "mime": "image/.png", "name": "small_strapi.png", "path": null, "size": 31.49, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_strapi_1d5e8f1823.png", "hash": "thumbnail_strapi_1d5e8f1823", "mime": "image/.png", "name": "thumbnail_strapi.png", "path": null, "size": 8.4, "width": 156, "height": 156}}', 'strapi_1d5e8f1823', '.png', 'image/.png', 19.11, '/uploads/strapi_1d5e8f1823.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:40.057+03', '2021-10-06 17:15:40.057+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (30, '2.mp4', '', '', NULL, NULL, NULL, '2_3c23c829a7', '.mp4', 'video/mp4', 18184.82, '/uploads/2_3c23c829a7.mp4', NULL, 'local', NULL, 1, 1, '2021-10-06 19:03:35.568+03', '2021-10-06 19:03:35.579+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (31, 'Group 36.png', '', '', 1094, 357, '{"large": {"ext": ".png", "url": "/uploads/large_Group_36_612200d7a1.png", "hash": "large_Group_36_612200d7a1", "mime": "image/png", "name": "large_Group 36.png", "path": null, "size": 889.63, "width": 1000, "height": 326}, "small": {"ext": ".png", "url": "/uploads/small_Group_36_612200d7a1.png", "hash": "small_Group_36_612200d7a1", "mime": "image/png", "name": "small_Group 36.png", "path": null, "size": 230.57, "width": 500, "height": 163}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_36_612200d7a1.png", "hash": "medium_Group_36_612200d7a1", "mime": "image/png", "name": "medium_Group 36.png", "path": null, "size": 507.55, "width": 750, "height": 245}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_36_612200d7a1.png", "hash": "thumbnail_Group_36_612200d7a1", "mime": "image/png", "name": "thumbnail_Group 36.png", "path": null, "size": 61.11, "width": 245, "height": 80}}', 'Group_36_612200d7a1', '.png', 'image/png', 688.65, '/uploads/Group_36_612200d7a1.png', NULL, 'local', NULL, 1, 1, '2021-10-08 15:27:05.496+03', '2021-10-08 15:27:05.553+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (32, 'Rectangle 137.jpg', '', '', 1004, 1588, '{"large": {"ext": ".jpg", "url": "/uploads/large_Rectangle_137_3434532714.jpg", "hash": "large_Rectangle_137_3434532714", "mime": "image/jpeg", "name": "large_Rectangle 137.jpg", "path": null, "size": 65.91, "width": 632, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Rectangle_137_3434532714.jpg", "hash": "small_Rectangle_137_3434532714", "mime": "image/jpeg", "name": "small_Rectangle 137.jpg", "path": null, "size": 21.26, "width": 316, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Rectangle_137_3434532714.jpg", "hash": "medium_Rectangle_137_3434532714", "mime": "image/jpeg", "name": "medium_Rectangle 137.jpg", "path": null, "size": 40.34, "width": 474, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Rectangle_137_3434532714.jpg", "hash": "thumbnail_Rectangle_137_3434532714", "mime": "image/jpeg", "name": "thumbnail_Rectangle 137.jpg", "path": null, "size": 3.82, "width": 99, "height": 156}}', 'Rectangle_137_3434532714', '.jpg', 'image/jpeg', 134.24, '/uploads/Rectangle_137_3434532714.jpg', NULL, 'local', NULL, 1, 1, '2021-10-08 15:27:35.381+03', '2021-10-08 15:27:35.392+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (33, 'photo_2021-10-08 15.40.31.jpeg', '', '', 640, 640, '{"small": {"ext": ".jpeg", "url": "/uploads/small_photo_2021_10_08_15_40_31_a9d7f2dc7e.jpeg", "hash": "small_photo_2021_10_08_15_40_31_a9d7f2dc7e", "mime": "image/jpeg", "name": "small_photo_2021-10-08 15.40.31.jpeg", "path": null, "size": 37.19, "width": 500, "height": 500}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_photo_2021_10_08_15_40_31_a9d7f2dc7e.jpeg", "hash": "thumbnail_photo_2021_10_08_15_40_31_a9d7f2dc7e", "mime": "image/jpeg", "name": "thumbnail_photo_2021-10-08 15.40.31.jpeg", "path": null, "size": 6.29, "width": 156, "height": 156}}', 'photo_2021_10_08_15_40_31_a9d7f2dc7e', '.jpeg', 'image/jpeg', 57.21, '/uploads/photo_2021_10_08_15_40_31_a9d7f2dc7e.jpeg', NULL, 'local', NULL, 1, 1, '2021-10-08 15:40:42.94+03', '2021-10-08 15:40:42.95+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (34, 'photo_2021-10-08 18.18.16.jpeg', '', '', 640, 640, '{"small": {"ext": ".jpeg", "url": "/uploads/small_photo_2021_10_08_18_18_16_dfa38daadc.jpeg", "hash": "small_photo_2021_10_08_18_18_16_dfa38daadc", "mime": "image/jpeg", "name": "small_photo_2021-10-08 18.18.16.jpeg", "path": null, "size": 43.26, "width": 500, "height": 500}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_photo_2021_10_08_18_18_16_dfa38daadc.jpeg", "hash": "thumbnail_photo_2021_10_08_18_18_16_dfa38daadc", "mime": "image/jpeg", "name": "thumbnail_photo_2021-10-08 18.18.16.jpeg", "path": null, "size": 6.7, "width": 156, "height": 156}}', 'photo_2021_10_08_18_18_16_dfa38daadc', '.jpeg', 'image/jpeg', 61.70, '/uploads/photo_2021_10_08_18_18_16_dfa38daadc.jpeg', NULL, 'local', NULL, 1, 1, '2021-10-08 18:18:47.589+03', '2021-10-08 18:18:47.601+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (3, 'laravel.png', NULL, NULL, 400, 400, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_laravel_c795ac5365.png", "hash": "thumbnail_laravel_c795ac5365", "mime": "image/.png", "name": "thumbnail_laravel.png", "path": null, "size": 13.93, "width": 156, "height": 156}}', 'laravel_c795ac5365', '.png', 'image/.png', 7.85, '/uploads/laravel_c795ac5365.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.84+03', '2021-10-06 17:15:39.84+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (12, 'golang.png', NULL, NULL, 375, 375, '{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_golang_e8b3d5afc5.png", "hash": "thumbnail_golang_e8b3d5afc5", "mime": "image/.png", "name": "thumbnail_golang.png", "path": null, "size": 17.49, "width": 156, "height": 156}}', 'golang_e8b3d5afc5', '.png', 'image/.png', 14.20, '/uploads/golang_e8b3d5afc5.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:39.96+03', '2021-10-06 17:15:39.96+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (22, 'npm.png', NULL, NULL, 600, 600, '{"small": {"ext": ".png", "url": "/uploads/small_npm_d16f5411b9.png", "hash": "small_npm_d16f5411b9", "mime": "image/.png", "name": "small_npm.png", "path": null, "size": 32.14, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_npm_d16f5411b9.png", "hash": "thumbnail_npm_d16f5411b9", "mime": "image/.png", "name": "thumbnail_npm.png", "path": null, "size": 5.58, "width": 156, "height": 156}}', 'npm_d16f5411b9', '.png', 'image/.png', 30.66, '/uploads/npm_d16f5411b9.png', NULL, 'local', NULL, NULL, NULL, '2021-10-06 17:15:40.047+03', '2021-10-06 17:15:40.047+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (35, 'Rectangle 56.jpg', '', '', 992, 870, '{"small": {"ext": ".jpg", "url": "/uploads/small_Rectangle_56_d3d1b69759.jpg", "hash": "small_Rectangle_56_d3d1b69759", "mime": "image/jpeg", "name": "small_Rectangle 56.jpg", "path": null, "size": 17.52, "width": 500, "height": 439}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Rectangle_56_d3d1b69759.jpg", "hash": "medium_Rectangle_56_d3d1b69759", "mime": "image/jpeg", "name": "medium_Rectangle 56.jpg", "path": null, "size": 31.5, "width": 750, "height": 658}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Rectangle_56_d3d1b69759.jpg", "hash": "thumbnail_Rectangle_56_d3d1b69759", "mime": "image/jpeg", "name": "thumbnail_Rectangle 56.jpg", "path": null, "size": 4.26, "width": 178, "height": 156}}', 'Rectangle_56_d3d1b69759', '.jpg', 'image/jpeg', 49.54, '/uploads/Rectangle_56_d3d1b69759.jpg', NULL, 'local', NULL, 1, 1, '2021-10-16 02:16:15.937+03', '2021-10-16 02:16:16.064+03');
INSERT INTO public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) VALUES (36, 'Rectangle 57.jpg', '', '', 1111, 434, '{"large": {"ext": ".jpg", "url": "/uploads/large_Rectangle_57_8546841072.jpg", "hash": "large_Rectangle_57_8546841072", "mime": "image/jpeg", "name": "large_Rectangle 57.jpg", "path": null, "size": 63.53, "width": 1000, "height": 391}, "small": {"ext": ".jpg", "url": "/uploads/small_Rectangle_57_8546841072.jpg", "hash": "small_Rectangle_57_8546841072", "mime": "image/jpeg", "name": "small_Rectangle 57.jpg", "path": null, "size": 21.85, "width": 500, "height": 195}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Rectangle_57_8546841072.jpg", "hash": "medium_Rectangle_57_8546841072", "mime": "image/jpeg", "name": "medium_Rectangle 57.jpg", "path": null, "size": 41.02, "width": 750, "height": 293}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Rectangle_57_8546841072.jpg", "hash": "thumbnail_Rectangle_57_8546841072", "mime": "image/jpeg", "name": "thumbnail_Rectangle 57.jpg", "path": null, "size": 7.09, "width": 245, "height": 96}}', 'Rectangle_57_8546841072', '.jpg', 'image/jpeg', 77.12, '/uploads/Rectangle_57_8546841072.jpg', NULL, 'local', NULL, 1, 1, '2021-10-16 20:21:52.079+03', '2021-10-16 20:21:52.183+03');


--
-- TOC entry 3563 (class 0 OID 25621)
-- Dependencies: 230
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (84, 32, 4, 'videos', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (85, 31, 4, 'videos', 'bigImage', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (86, 30, 4, 'videos', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (93, 33, 7, 'videos', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (94, 31, 7, 'videos', 'bigImage', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (95, 30, 7, 'videos', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (96, 32, 1, 'videos', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (97, 31, 1, 'videos', 'bigImage', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (98, 30, 1, 'videos', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (99, 32, 3, 'videos', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (100, 31, 3, 'videos', 'bigImage', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (101, 30, 3, 'videos', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (102, 33, 5, 'videos', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (103, 31, 5, 'videos', 'bigImage', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (104, 30, 5, 'videos', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (105, 34, 6, 'videos', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (106, 31, 6, 'videos', 'bigImage', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (107, 30, 6, 'videos', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (108, 34, 2, 'videos', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (109, 31, 2, 'videos', 'bigImage', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (110, 30, 2, 'videos', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (30, 30, 28, 'products', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (33, 30, 1, 'video', 'video', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (58, 33, 1, 'users-permissions_user', 'avatar', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (118, 36, 1, 'blogs', 'bigImage', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (123, 35, 1, 'blogs', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (124, 33, 2, 'users-permissions_user', 'avatar', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (125, 33, 1, 'live_streams', 'preview', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (127, 33, 2, 'live_streams', 'preview', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (128, 31, 2, 'live_streams', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (129, 33, 3, 'live_streams', 'preview', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (130, 31, 3, 'live_streams', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (131, 33, 4, 'live_streams', 'preview', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (132, 31, 4, 'live_streams', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (133, 33, 5, 'live_streams', 'preview', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (135, 33, 1, 'live_streams', 'image', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (136, 31, 1, 'live_streams', 'bigImg', 1);
INSERT INTO public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") VALUES (137, 34, 1, 'CustomUsers', 'avatar', 1);


--
-- TOC entry 3565 (class 0 OID 25629)
-- Dependencies: 232
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (201, 'application', 'videos', 'delete', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (7, 'application', 'category', 'find', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (3, 'application', 'category', 'create', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (200, 'application', 'videos', 'create', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (5, 'application', 'category', 'delete', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (4, 'application', 'category', 'create', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (9, 'application', 'category', 'findone', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (1, 'application', 'category', 'count', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (10, 'application', 'category', 'findone', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (319, 'application', 'users', 'logged', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (8, 'application', 'category', 'find', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (6, 'application', 'category', 'delete', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (2, 'application', 'category', 'count', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (12, 'application', 'category', 'update', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (11, 'application', 'category', 'update', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (26, 'content-manager', 'collection-types', 'create', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (27, 'content-manager', 'collection-types', 'create', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (28, 'content-manager', 'collection-types', 'delete', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (29, 'content-manager', 'collection-types', 'delete', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (30, 'content-manager', 'collection-types', 'bulkdelete', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (25, 'content-manager', 'collection-types', 'bulkdelete', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (31, 'content-manager', 'collection-types', 'find', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (32, 'content-manager', 'collection-types', 'find', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (34, 'content-manager', 'collection-types', 'findone', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (35, 'content-manager', 'collection-types', 'previewmanyrelations', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (36, 'content-manager', 'collection-types', 'previewmanyrelations', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (37, 'content-manager', 'collection-types', 'publish', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (38, 'content-manager', 'collection-types', 'publish', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (33, 'content-manager', 'collection-types', 'findone', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (39, 'content-manager', 'collection-types', 'unpublish', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (40, 'content-manager', 'collection-types', 'unpublish', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (42, 'content-manager', 'collection-types', 'update', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (43, 'content-manager', 'components', 'findcomponentconfiguration', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (44, 'content-manager', 'components', 'findcomponentconfiguration', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (45, 'content-manager', 'components', 'findcomponents', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (46, 'content-manager', 'components', 'findcomponents', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (41, 'content-manager', 'collection-types', 'update', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (48, 'content-manager', 'components', 'updatecomponentconfiguration', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (49, 'content-manager', 'content-types', 'findcontenttypeconfiguration', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (50, 'content-manager', 'content-types', 'findcontenttypeconfiguration', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (47, 'content-manager', 'components', 'updatecomponentconfiguration', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (51, 'content-manager', 'content-types', 'findcontenttypes', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (52, 'content-manager', 'content-types', 'findcontenttypes', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (54, 'content-manager', 'content-types', 'findcontenttypessettings', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (55, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (56, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (57, 'content-manager', 'relations', 'find', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (58, 'content-manager', 'relations', 'find', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (53, 'content-manager', 'content-types', 'findcontenttypessettings', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (59, 'content-manager', 'single-types', 'createorupdate', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (60, 'content-manager', 'single-types', 'createorupdate', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (61, 'content-manager', 'single-types', 'delete', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (62, 'content-manager', 'single-types', 'delete', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (63, 'content-manager', 'single-types', 'find', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (64, 'content-manager', 'single-types', 'find', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (65, 'content-manager', 'single-types', 'publish', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (67, 'content-manager', 'single-types', 'unpublish', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (68, 'content-manager', 'uid', 'checkuidavailability', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (69, 'content-manager', 'single-types', 'unpublish', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (66, 'content-manager', 'single-types', 'publish', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (70, 'content-manager', 'uid', 'checkuidavailability', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (71, 'content-manager', 'uid', 'generateuid', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (72, 'content-manager', 'uid', 'generateuid', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (74, 'content-type-builder', 'builder', 'getreservednames', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (75, 'content-type-builder', 'componentcategories', 'deletecategory', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (76, 'content-type-builder', 'componentcategories', 'deletecategory', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (77, 'content-type-builder', 'componentcategories', 'editcategory', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (78, 'content-type-builder', 'componentcategories', 'editcategory', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (73, 'content-type-builder', 'builder', 'getreservednames', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (80, 'content-type-builder', 'components', 'createcomponent', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (90, 'content-type-builder', 'connections', 'getconnections', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (100, 'content-type-builder', 'contenttypes', 'updatecontenttype', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (110, 'i18n', 'iso-locales', 'listisolocales', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (119, 'upload', 'upload', 'count', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (130, 'upload', 'upload', 'search', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (139, 'users-permissions', 'auth', 'emailconfirmation', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (149, 'users-permissions', 'user', 'count', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (160, 'users-permissions', 'user', 'findone', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (170, 'users-permissions', 'userspermissions', 'getadvancedsettings', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (179, 'users-permissions', 'userspermissions', 'getrole', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (189, 'users-permissions', 'userspermissions', 'updateadvancedsettings', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (198, 'application', 'videos', 'count', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (320, 'application', 'users', 'logged', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (81, 'content-type-builder', 'components', 'deletecomponent', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (91, 'content-type-builder', 'contenttypes', 'createcontenttype', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (105, 'email', 'email', 'test', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (112, 'i18n', 'locales', 'createlocale', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (124, 'upload', 'upload', 'find', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (136, 'users-permissions', 'auth', 'callback', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (144, 'users-permissions', 'auth', 'register', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (153, 'users-permissions', 'user', 'destroy', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (161, 'users-permissions', 'user', 'me', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (171, 'users-permissions', 'userspermissions', 'getemailtemplate', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (181, 'users-permissions', 'userspermissions', 'getroles', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (194, 'users-permissions', 'userspermissions', 'updateproviders', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (208, 'application', 'videos', 'update', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (203, 'application', 'videos', 'find', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (82, 'content-type-builder', 'components', 'deletecomponent', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (93, 'content-type-builder', 'contenttypes', 'deletecontenttype', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (102, 'email', 'email', 'getsettings', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (113, 'i18n', 'locales', 'deletelocale', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (122, 'upload', 'upload', 'destroy', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (131, 'upload', 'upload', 'updatesettings', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (141, 'users-permissions', 'auth', 'forgotpassword', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (151, 'users-permissions', 'user', 'create', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (166, 'users-permissions', 'userspermissions', 'createrole', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (178, 'users-permissions', 'userspermissions', 'getproviders', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (185, 'users-permissions', 'userspermissions', 'index', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (197, 'application', 'videos', 'count', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (83, 'content-type-builder', 'components', 'getcomponent', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (92, 'content-type-builder', 'contenttypes', 'createcontenttype', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (101, 'email', 'email', 'getsettings', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (114, 'i18n', 'locales', 'deletelocale', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (126, 'upload', 'upload', 'findone', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (133, 'upload', 'upload', 'upload', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (142, 'users-permissions', 'auth', 'forgotpassword', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (152, 'users-permissions', 'user', 'create', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (164, 'users-permissions', 'user', 'update', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (173, 'users-permissions', 'userspermissions', 'getpermissions', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (183, 'users-permissions', 'userspermissions', 'getroutes', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (192, 'users-permissions', 'userspermissions', 'updateemailtemplate', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (199, 'application', 'videos', 'create', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (207, 'application', 'videos', 'update', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (84, 'content-type-builder', 'components', 'getcomponent', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (96, 'content-type-builder', 'contenttypes', 'getcontenttype', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (107, 'i18n', 'content-types', 'getnonlocalizedattributes', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (117, 'i18n', 'locales', 'updatelocale', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (127, 'upload', 'upload', 'getsettings', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (134, 'upload', 'upload', 'upload', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (147, 'users-permissions', 'auth', 'sendemailconfirmation', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (156, 'users-permissions', 'user', 'destroyall', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (162, 'users-permissions', 'user', 'me', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (174, 'users-permissions', 'userspermissions', 'getpermissions', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (184, 'users-permissions', 'userspermissions', 'getroutes', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (193, 'users-permissions', 'userspermissions', 'updateproviders', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (202, 'application', 'videos', 'delete', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (328, 'application', 'leveles', 'create', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (338, 'application', 'leveles', 'update', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (85, 'content-type-builder', 'components', 'getcomponents', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (98, 'content-type-builder', 'contenttypes', 'getcontenttypes', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (108, 'i18n', 'content-types', 'getnonlocalizedattributes', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (118, 'i18n', 'locales', 'updatelocale', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (128, 'upload', 'upload', 'getsettings', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (138, 'users-permissions', 'auth', 'connect', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (148, 'users-permissions', 'auth', 'sendemailconfirmation', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (158, 'users-permissions', 'user', 'find', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (168, 'users-permissions', 'userspermissions', 'deleterole', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (177, 'users-permissions', 'userspermissions', 'getproviders', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (188, 'users-permissions', 'userspermissions', 'searchusers', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (195, 'users-permissions', 'userspermissions', 'updaterole', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (204, 'application', 'videos', 'find', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (329, 'application', 'leveles', 'count', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (339, 'application', 'leveles', 'update', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (86, 'content-type-builder', 'components', 'getcomponents', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (94, 'content-type-builder', 'contenttypes', 'deletecontenttype', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (103, 'email', 'email', 'send', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (111, 'i18n', 'locales', 'createlocale', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (125, 'upload', 'upload', 'findone', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (132, 'upload', 'upload', 'updatesettings', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (143, 'users-permissions', 'auth', 'register', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (157, 'users-permissions', 'user', 'find', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (163, 'users-permissions', 'user', 'update', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (175, 'users-permissions', 'userspermissions', 'getpolicies', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (187, 'users-permissions', 'userspermissions', 'searchusers', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (196, 'users-permissions', 'userspermissions', 'updaterole', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (205, 'application', 'videos', 'findone', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (330, 'application', 'leveles', 'count', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (87, 'content-type-builder', 'components', 'updatecomponent', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (95, 'content-type-builder', 'contenttypes', 'getcontenttype', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (104, 'email', 'email', 'send', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (116, 'i18n', 'locales', 'listlocales', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (121, 'upload', 'upload', 'destroy', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (137, 'users-permissions', 'auth', 'connect', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (145, 'users-permissions', 'auth', 'resetpassword', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (154, 'users-permissions', 'user', 'destroy', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (165, 'users-permissions', 'userspermissions', 'createrole', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (176, 'users-permissions', 'userspermissions', 'getpolicies', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (186, 'users-permissions', 'userspermissions', 'index', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (206, 'application', 'videos', 'findone', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (331, 'application', 'leveles', 'create', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (332, 'application', 'leveles', 'delete', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (88, 'content-type-builder', 'components', 'updatecomponent', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (97, 'content-type-builder', 'contenttypes', 'getcontenttypes', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (106, 'email', 'email', 'test', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (115, 'i18n', 'locales', 'listlocales', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (123, 'upload', 'upload', 'find', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (135, 'users-permissions', 'auth', 'callback', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (146, 'users-permissions', 'auth', 'resetpassword', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (155, 'users-permissions', 'user', 'destroyall', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (167, 'users-permissions', 'userspermissions', 'deleterole', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (172, 'users-permissions', 'userspermissions', 'getemailtemplate', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (182, 'users-permissions', 'userspermissions', 'getroles', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (191, 'users-permissions', 'userspermissions', 'updateemailtemplate', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (333, 'application', 'leveles', 'delete', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (79, 'content-type-builder', 'components', 'createcomponent', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (89, 'content-type-builder', 'connections', 'getconnections', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (99, 'content-type-builder', 'contenttypes', 'updatecontenttype', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (109, 'i18n', 'iso-locales', 'listisolocales', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (120, 'upload', 'upload', 'count', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (129, 'upload', 'upload', 'search', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (140, 'users-permissions', 'auth', 'emailconfirmation', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (150, 'users-permissions', 'user', 'count', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (159, 'users-permissions', 'user', 'findone', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (169, 'users-permissions', 'userspermissions', 'getadvancedsettings', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (180, 'users-permissions', 'userspermissions', 'getrole', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (190, 'users-permissions', 'userspermissions', 'updateadvancedsettings', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (341, 'application', 'blogs', 'count', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (340, 'application', 'blogs', 'count', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (342, 'application', 'blogs', 'create', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (343, 'application', 'blogs', 'create', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (344, 'application', 'blogs', 'delete', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (345, 'application', 'blogs', 'delete', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (393, 'application', 'custom-users', 'update', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (384, 'application', 'custom-users', 'count', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (385, 'application', 'custom-users', 'create', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (350, 'application', 'blogs', 'update', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (351, 'application', 'blogs', 'update', false, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (347, 'application', 'blogs', 'find', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (348, 'application', 'blogs', 'findone', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (349, 'application', 'blogs', 'findone', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (346, 'application', 'blogs', 'find', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (334, 'application', 'leveles', 'find', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (336, 'application', 'leveles', 'findone', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (337, 'application', 'leveles', 'findone', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (335, 'application', 'leveles', 'find', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (387, 'application', 'custom-users', 'delete', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (391, 'application', 'custom-users', 'findone', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (389, 'application', 'custom-users', 'find', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (382, 'application', 'custom-users', 'create', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (388, 'application', 'custom-users', 'find', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (383, 'application', 'custom-users', 'count', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (386, 'application', 'custom-users', 'delete', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (390, 'application', 'custom-users', 'findone', false, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (369, 'application', 'users', 'change', true, '', 2, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (368, 'application', 'users', 'change', true, '', 1, NULL, NULL);
INSERT INTO public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) VALUES (392, 'application', 'custom-users', 'update', false, '', 1, NULL, NULL);


--
-- TOC entry 3567 (class 0 OID 25637)
-- Dependencies: 234
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."users-permissions_role" (id, name, description, type, created_by, updated_by) VALUES (1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL);
INSERT INTO public."users-permissions_role" (id, name, description, type, created_by, updated_by) VALUES (2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);


--
-- TOC entry 3569 (class 0 OID 25645)
-- Dependencies: 236
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at, lastname) VALUES (1, 'test', '1@mail.ru', 'local', '$2a$10$FgoJRTrzcJO0ftveU2QhuuQ3G9Qn9xaj33bLon50CDjofwXpP.mI2', NULL, NULL, false, false, 1, 1, 1, '2021-10-06 17:21:15.668+03', '2021-10-08 15:40:45.917+03', NULL);
INSERT INTO public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at, lastname) VALUES (3, 'testimg', 'sergei1@mail.ru', 'local', '$2a$10$NjDK4cSbFEfmI4vzndBWq.MNuue7YkDUhO.7KT1KFl.LNn0lL9DzK', NULL, NULL, true, NULL, 1, NULL, NULL, '2021-10-17 09:23:46.314+03', '2021-10-17 09:23:46.393+03', NULL);
INSERT INTO public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at, lastname) VALUES (5, 'testiht', 'sergei17@mail.ru', 'local', '$2a$10$VyBPV1R/2/0uZltdlAkSP.IkCnPjqrngfwyc3AHzmAMxF2RlHJqRK', NULL, '481d2d3d4e9783ec0f76d38eebe75e9782e7badf', NULL, NULL, 1, NULL, NULL, '2021-10-17 11:25:28.462+03', '2021-10-17 11:25:28.553+03', NULL);
INSERT INTO public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at, lastname) VALUES (2, 'hello', 'sergei@mail.ru', 'local', '$2a$10$iT9wXyDaH5bLcyWnh.wyh.evrvJ7L9CTSW7xR9SuRhar.yl5kGv3u', NULL, NULL, true, false, 1, 1, 1, '2021-10-08 15:43:30.568+03', '2021-10-19 16:49:08.792+03', 'test');


--
-- TOC entry 3571 (class 0 OID 25655)
-- Dependencies: 238
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.video (id, title, description, price, slug, status, created_by, updated_by, created_at, updated_at) VALUES (1, 'Down-hold basic', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 30, 'down-hold-basic', 'published', 1, 1, '2021-10-06 19:05:39.067+03', '2021-10-06 19:05:39.09+03');


--
-- TOC entry 3572 (class 0 OID 25663)
-- Dependencies: 239
-- Data for Name: video_components; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3575 (class 0 OID 25673)
-- Dependencies: 242
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.videos (id, title, description, price, admin_user, "time", published_at, created_by, updated_by, created_at, updated_at, levele, level) VALUES (7, 'Down-hold basic7', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 10, 1, 15, '2021-10-08 15:29:39.408+03', 1, 1, '2021-10-08 15:29:38.208+03', '2021-10-12 16:49:04.042+03', NULL, NULL);
INSERT INTO public.videos (id, title, description, price, admin_user, "time", published_at, created_by, updated_by, created_at, updated_at, levele, level) VALUES (1, 'Down-hold basic1', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 10, 1, 15, '2021-10-06 19:23:17.202+03', 1, 1, '2021-10-06 19:17:58.99+03', '2021-10-12 16:49:09.678+03', NULL, 2);
INSERT INTO public.videos (id, title, description, price, admin_user, "time", published_at, created_by, updated_by, created_at, updated_at, levele, level) VALUES (3, 'Down-hold basic3', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 10, 1, 15, '2021-10-08 15:28:50.515+03', 1, 1, '2021-10-08 15:28:45.99+03', '2021-10-12 16:49:14.133+03', NULL, NULL);
INSERT INTO public.videos (id, title, description, price, admin_user, "time", published_at, created_by, updated_by, created_at, updated_at, levele, level) VALUES (4, 'Down-hold basic1', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 10, 1, 15, '2021-10-08 15:29:07.484+03', 1, 1, '2021-10-08 15:29:05.236+03', '2021-10-12 16:48:49.894+03', NULL, 2);
INSERT INTO public.videos (id, title, description, price, admin_user, "time", published_at, created_by, updated_by, created_at, updated_at, levele, level) VALUES (5, 'Down-hold basic5', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 10, 1, 15, '2021-10-08 15:29:16.849+03', 1, 1, '2021-10-08 15:29:15.381+03', '2021-10-12 16:49:19.375+03', NULL, NULL);
INSERT INTO public.videos (id, title, description, price, admin_user, "time", published_at, created_by, updated_by, created_at, updated_at, levele, level) VALUES (6, 'Down-hold basic6', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 10, 1, 15, '2021-10-08 15:29:34.277+03', 1, 1, '2021-10-08 15:29:32.648+03', '2021-10-12 16:49:24.061+03', NULL, 1);
INSERT INTO public.videos (id, title, description, price, admin_user, "time", published_at, created_by, updated_by, created_at, updated_at, levele, level) VALUES (2, 'Down-hold basic2', 'Andreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson Andreas OllsonAndreas OllsonAndreas Ollson Andreas Ollson Andreas Ollson', 10, 1, 15, '2021-10-08 15:28:54.114+03', 1, 1, '2021-10-08 15:28:38.385+03', '2021-10-12 16:49:29.398+03', NULL, 1);


--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 248
-- Name: CustomUsers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CustomUsers_id_seq"', 1, true);


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 244
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blogs_id_seq', 6, true);


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 201
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 9, true);


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 203
-- Name: categories_products__products_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_products__products_categories_id_seq', 34, true);


--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 205
-- Name: categories_videos__videos_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_videos__videos_categories_id_seq', 7, true);


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 207
-- Name: components_custom_custom_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_custom_custom_fields_id_seq', 27, true);


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 209
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 45, true);


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 211
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 2, true);


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 213
-- Name: leveles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.leveles_id_seq', 2, true);


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 246
-- Name: live_streams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.live_streams_id_seq', 5, true);


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_components_id_seq', 27, true);


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 217
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 28, true);


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 2, true);


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 1437, true);


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 223
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 225
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 3, true);


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 227
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 229
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 36, true);


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 231
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 137, true);


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 233
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 395, true);


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 235
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 3, true);


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 237
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 8, true);


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 240
-- Name: video_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.video_components_id_seq', 1, false);


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 241
-- Name: video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.video_id_seq', 1, true);


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 243
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.videos_id_seq', 7, true);


--
-- TOC entry 3398 (class 2606 OID 25860)
-- Name: CustomUsers CustomUsers_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CustomUsers"
    ADD CONSTRAINT "CustomUsers_email_unique" UNIQUE (email);


--
-- TOC entry 3400 (class 2606 OID 25857)
-- Name: CustomUsers CustomUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CustomUsers"
    ADD CONSTRAINT "CustomUsers_pkey" PRIMARY KEY (id);


--
-- TOC entry 3394 (class 2606 OID 25790)
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 25706)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 25708)
-- Name: categories_products__products_categories categories_products__products_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_products__products_categories
    ADD CONSTRAINT categories_products__products_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 25710)
-- Name: categories categories_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);


--
-- TOC entry 3338 (class 2606 OID 25712)
-- Name: categories_videos__videos_categories categories_videos__videos_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_videos__videos_categories
    ADD CONSTRAINT categories_videos__videos_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3340 (class 2606 OID 25714)
-- Name: components_custom_custom_fields components_custom_custom_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_custom_custom_fields
    ADD CONSTRAINT components_custom_custom_fields_pkey PRIMARY KEY (id);


--
-- TOC entry 3342 (class 2606 OID 25716)
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- TOC entry 3344 (class 2606 OID 25718)
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- TOC entry 3346 (class 2606 OID 25720)
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 25722)
-- Name: leveles leveles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leveles
    ADD CONSTRAINT leveles_pkey PRIMARY KEY (id);


--
-- TOC entry 3396 (class 2606 OID 25818)
-- Name: live_streams live_streams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.live_streams
    ADD CONSTRAINT live_streams_pkey PRIMARY KEY (id);


--
-- TOC entry 3354 (class 2606 OID 25724)
-- Name: products_components products_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_components_pkey PRIMARY KEY (id);


--
-- TOC entry 3350 (class 2606 OID 25726)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3352 (class 2606 OID 25728)
-- Name: products products_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_slug_unique UNIQUE (slug);


--
-- TOC entry 3356 (class 2606 OID 25730)
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- TOC entry 3358 (class 2606 OID 25732)
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- TOC entry 3360 (class 2606 OID 25734)
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3362 (class 2606 OID 25736)
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- TOC entry 3364 (class 2606 OID 25738)
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- TOC entry 3366 (class 2606 OID 25740)
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- TOC entry 3368 (class 2606 OID 25742)
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3370 (class 2606 OID 25744)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 3374 (class 2606 OID 25746)
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- TOC entry 3372 (class 2606 OID 25748)
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- TOC entry 3376 (class 2606 OID 25750)
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- TOC entry 3378 (class 2606 OID 25752)
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- TOC entry 3380 (class 2606 OID 25754)
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- TOC entry 3382 (class 2606 OID 25756)
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- TOC entry 3384 (class 2606 OID 25758)
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- TOC entry 3390 (class 2606 OID 25760)
-- Name: video_components video_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_components
    ADD CONSTRAINT video_components_pkey PRIMARY KEY (id);


--
-- TOC entry 3386 (class 2606 OID 25762)
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- TOC entry 3388 (class 2606 OID 25764)
-- Name: video video_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_slug_unique UNIQUE (slug);


--
-- TOC entry 3392 (class 2606 OID 25766)
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- TOC entry 3401 (class 2606 OID 25767)
-- Name: products_components product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- TOC entry 3402 (class 2606 OID 25772)
-- Name: video_components video_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_components
    ADD CONSTRAINT video_id_fk FOREIGN KEY (video_id) REFERENCES public.video(id) ON DELETE CASCADE;


-- Completed on 2021-10-24 09:37:25 MSK

--
-- PostgreSQL database dump complete
--

