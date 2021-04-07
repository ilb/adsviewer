COPY public.type (id, "createdAt", "updatedAt", code, name) FROM stdin;
1	2021-03-31 18:37:58.824	1970-01-01 00:00:00	1	Продам
2	2021-03-31 18:38:36.898	1970-01-01 00:00:00	2	Сдам
3	2021-03-31 18:38:36.899	1970-01-01 00:00:00	3	Куплю
4	2021-03-31 18:38:36.9	1970-01-01 00:00:00	4	Сниму
\.


--
-- Name: type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.type_id_seq', 4, true);


--
-- Name: type type_pkey; Type: CONSTRAINT; Schema: public; Owner: adsviewer
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
