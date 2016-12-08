--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: perfomances; Type: TABLE; Schema: public; Owner: nikolay
--

CREATE TABLE perfomances (
    id integer NOT NULL,
    title character varying,
    text text,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE perfomances OWNER TO nikolay;

--
-- Name: perfomances_id_seq; Type: SEQUENCE; Schema: public; Owner: nikolay
--

CREATE SEQUENCE perfomances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE perfomances_id_seq OWNER TO nikolay;

--
-- Name: perfomances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nikolay
--

ALTER SEQUENCE perfomances_id_seq OWNED BY perfomances.id;


--
-- Name: programs; Type: TABLE; Schema: public; Owner: nikolay
--

CREATE TABLE programs (
    id integer NOT NULL,
    title text,
    text text,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE programs OWNER TO nikolay;

--
-- Name: programs_id_seq; Type: SEQUENCE; Schema: public; Owner: nikolay
--

CREATE SEQUENCE programs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE programs_id_seq OWNER TO nikolay;

--
-- Name: programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nikolay
--

ALTER SEQUENCE programs_id_seq OWNED BY programs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: nikolay
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO nikolay;

--
-- Name: users; Type: TABLE; Schema: public; Owner: nikolay
--

CREATE TABLE users (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    failed_attempts integer DEFAULT 0 NOT NULL,
    unlock_token character varying,
    locked_at timestamp without time zone
);


ALTER TABLE users OWNER TO nikolay;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: nikolay
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO nikolay;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nikolay
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: week_actions; Type: TABLE; Schema: public; Owner: nikolay
--

CREATE TABLE week_actions (
    id integer NOT NULL,
    title character varying,
    text text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE week_actions OWNER TO nikolay;

--
-- Name: week_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: nikolay
--

CREATE SEQUENCE week_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE week_actions_id_seq OWNER TO nikolay;

--
-- Name: week_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nikolay
--

ALTER SEQUENCE week_actions_id_seq OWNED BY week_actions.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nikolay
--

ALTER TABLE ONLY perfomances ALTER COLUMN id SET DEFAULT nextval('perfomances_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nikolay
--

ALTER TABLE ONLY programs ALTER COLUMN id SET DEFAULT nextval('programs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nikolay
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nikolay
--

ALTER TABLE ONLY week_actions ALTER COLUMN id SET DEFAULT nextval('week_actions_id_seq'::regclass);


--
-- Data for Name: perfomances; Type: TABLE DATA; Schema: public; Owner: nikolay
--

COPY perfomances (id, title, text, image, created_at, updated_at) FROM stdin;
37	Акварим	Возраст: 1-99 лет\r\n<p>Стоимость: 250 грн\r\nДлительность: 60 мин</p>	акварим.png	2016-11-19 17:45:39.483845	2016-11-22 21:32:55.268346
35	Бумажное шоу	Возраст: 3-99 лет\r\n<p>Стоимость: 2 000 грн\r\nДлительность: 60 мин</p>	бумажное.png	2016-11-19 17:45:19.562652	2016-11-22 21:33:58.594134
30	Шоу мыльных пузырей	Возраст: 1-99 лет\r\n<p>Стоимость: 550 грн\r\nДлительность: 30 мин</p>	мыльные_пузыри.png	2016-11-19 17:44:56.513421	2016-11-22 21:35:01.766958
28	Научное шоу	Возраст: 4-15 лет\r\n<p>Стоимость: 650 грн\r\nДлительность: 45 мин</p>	научное.png	2016-11-19 17:44:10.037728	2016-11-22 21:35:40.923764
27	Дрессированные животные	Возраст: 1-15 лет\r\n<p>Стоимость: 600 грн\r\nДлительность: 20 мин</p>	дрес.животные.png	2016-11-19 17:44:08.414483	2016-11-22 21:36:25.179995
47	Шоу фокусов	Возраст: 1-15 лет\r\n<p>Стоимость: 600грн\r\nДлительность: 20-30мин</p>	фокусы.png	2016-11-21 21:51:24.134652	2016-11-22 21:20:52.861937
46	Трансформер шоу	Возраст: 8-30 лет\r\n<p>Стоимость: 3 000 грн\r\nДлительность: 60 мин</p>	трансформер.png	2016-11-21 21:51:23.388675	2016-11-22 21:24:18.816251
45	Тесла шоу	Возраст: 6-15 лет\r\n<p>Стоимость: 800 грн\r\nДлительность: 60 мин</p>	тесла.png	2016-11-21 21:50:34.911327	2016-11-22 21:25:17.377356
44	Твистинг шоу	Возраст: 2-18 лет\r\n<p>Стоимость: 450 грн\r\nДлительность: 30 мин</p>	твистинг.png	2016-11-21 21:50:33.270294	2016-11-22 21:25:42.855203
43	Танцевальные развлечения	Возраст: 5-15 лет\r\n<p>Стоимость: 700 грн\r\nДлительность: 60 мин</p>	танцы.png	2016-11-21 21:49:29.468551	2016-11-22 21:26:12.140637
42	Поролоновое шоу	Возраст: 1-15 лет\r\n<p>Стоимость: 6 000 грн\r\nДлительность: 60 мин</p>	поролон.png	2016-11-21 21:49:28.699251	2016-11-22 21:26:39.679087
41	Песочное шоу	Возраст: 3-15 лет\r\n<p>Стоимость: 900 грн\r\nДлительность: 40 мин</p>	песок.png	2016-11-21 21:49:26.128773	2016-11-22 21:27:59.771968
40	Огненное шоу	Возраст: 3-99 лет\r\n<p>Стоимость: от 1 900 грн\r\nДлительность: 15 мин</p>	огненное.png	2016-11-19 17:45:44.391238	2016-11-22 21:29:22.259077
39	Уроки Монтессори	Возраст: 1-5 лет\r\n<p>Стоимость: 800 грн\r\nДлительность: 60 мин</p>	монтессори.png	2016-11-19 17:45:43.063771	2016-11-22 21:30:27.225558
38	Мастер-классы	Возраст: 4-15 лет\r\n<p>Стоимость: 800 грн\r\nДлительность: 60 мин</p>	МК.png	2016-11-19 17:45:41.812729	2016-11-22 21:30:57.501342
\.


--
-- Name: perfomances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nikolay
--

SELECT pg_catalog.setval('perfomances_id_seq', 47, true);


--
-- Data for Name: programs; Type: TABLE DATA; Schema: public; Owner: nikolay
--

COPY programs (id, title, text, image, created_at, updated_at) FROM stdin;
1	qwe	wewewe	banner.png	2016-11-30 22:17:30.105017	2016-11-30 22:17:30.105017
2	Щенячий патруль	Предлагаем вам супер-пупер аниматоров.	Щенячий_патруль.png	2016-11-30 22:43:46.163211	2016-11-30 22:43:46.163211
3	Полли Робокар	Полли и Эмбер \r\nСтоимость 550грн	Полли_Робокар.png	2016-11-30 22:48:06.784879	2016-11-30 22:48:06.784879
\.


--
-- Name: programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nikolay
--

SELECT pg_catalog.setval('programs_id_seq', 3, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nikolay
--

COPY schema_migrations (version) FROM stdin;
20161119111810
20161119114455
20161119114652
20161119154557
20161119155317
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: nikolay
--

COPY users (id, created_at, updated_at, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, failed_attempts, unlock_token, locked_at) FROM stdin;
1	2016-11-19 11:58:29.513318	2016-11-30 22:42:26.198172	admin@admin.com	$2a$11$qG7iLCSmlJB/7RHn9pjuMOMoSmRgjuYlGxPjUwcF88wlYj2khddvO	\N	\N	\N	9	2016-11-30 22:42:26.19502	2016-11-30 22:13:13.794613	192.168.0.64	192.168.0.35	0	\N	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nikolay
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Data for Name: week_actions; Type: TABLE DATA; Schema: public; Owner: nikolay
--

COPY week_actions (id, title, text, created_at, updated_at) FROM stdin;
1	АКЦИЯ НЕДЕЛИ	Рады сообщить, что при заказе от 1000 грн для Вас в подарок к Вашему празднику - генератор мыльных пузырей. Следите за нашими недельными акциями, и обещаем, что удивим Вас нашими новинками	2016-11-19 15:49:25.325978	2016-11-19 15:49:25.325978
\.


--
-- Name: week_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nikolay
--

SELECT pg_catalog.setval('week_actions_id_seq', 1, true);


--
-- Name: perfomances_pkey; Type: CONSTRAINT; Schema: public; Owner: nikolay
--

ALTER TABLE ONLY perfomances
    ADD CONSTRAINT perfomances_pkey PRIMARY KEY (id);


--
-- Name: programs_pkey; Type: CONSTRAINT; Schema: public; Owner: nikolay
--

ALTER TABLE ONLY programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: nikolay
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: week_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: nikolay
--

ALTER TABLE ONLY week_actions
    ADD CONSTRAINT week_actions_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: nikolay
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: nikolay
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: nikolay
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

