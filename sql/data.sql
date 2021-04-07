
--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: adsviewer
--

COPY public.category (id, "createdAt", "updatedAt", code, name, "avitoId", "parentId") FROM stdin;
1	2021-03-15 14:38:05.545	\N	\N	Недвижимость	1	\N
2	2021-03-15 14:38:05.545	\N	\N	Квартиры	2	1
3	2021-03-15 14:38:05.545	\N	\N	Комнаты	3	1
4	2021-03-15 14:38:05.545	\N	\N	Дома, дачи, коттеджи	4	1
5	2021-03-15 14:38:05.545	\N	\N	Земельные участки	5	1
6	2021-03-15 14:38:05.545	\N	\N	Гаражи и машиноместа	6	1
7	2021-03-15 14:38:05.545	\N	\N	Коммерческая недвижимость	7	1
8	2021-03-15 14:38:05.545	\N	\N	Недвижимость за рубежом	8	1
9	2021-03-15 14:38:05.545	\N	\N	Работа	9	\N
10	2021-03-15 14:38:05.545	\N	\N	Вакансии	10	9
12	2021-03-15 14:38:05.545	\N	\N	Услуги	12	\N
13	2021-03-15 14:38:05.545	\N	\N	Предложения услуг	13	12
14	2021-03-15 14:38:05.545	\N	\N	Запросы на услуги	14	12
21	2021-03-15 14:38:05.545	\N	\N	Транспорт	21	\N
22	2021-03-15 14:38:05.545	\N	\N	Автомобили	22	21
23	2021-03-15 14:38:05.545	\N	\N	Мотоциклы и мототехника	23	21
24	2021-03-15 14:38:05.545	\N	\N	Грузовики и спецтехника	24	21
25	2021-03-15 14:38:05.545	\N	\N	Водный транспорт	25	21
27	2021-03-15 14:38:05.545	\N	\N	Для дома и дачи	27	\N
28	2021-03-15 14:38:05.545	\N	\N	Бытовая техника	28	27
29	2021-03-15 14:38:05.545	\N	\N	Мебель и интерьер	29	27
30	2021-03-15 14:38:05.545	\N	\N	Посуда и товары для кухни	30	27
31	2021-03-15 14:38:05.545	\N	\N	Продукты питания	31	27
32	2021-03-15 14:38:05.545	\N	\N	Ремонт и строительство	32	27
33	2021-03-15 14:38:05.545	\N	\N	Растения	33	27
34	2021-03-15 14:38:05.545	\N	\N	Бытовая электроника	34	\N
35	2021-03-15 14:38:05.545	\N	\N	Аудио и видео	35	34
36	2021-03-15 14:38:05.545	\N	\N	Игры, приставки и программы	36	34
37	2021-03-15 14:38:05.545	\N	\N	Настольные компьютеры	37	34
38	2021-03-15 14:38:05.545	\N	\N	Ноутбуки	38	34
39	2021-03-15 14:38:05.545	\N	\N	Оргтехника и расходники	39	34
40	2021-03-15 14:38:05.545	\N	\N	Планшеты и электронные книги	40	34
41	2021-03-15 14:38:05.545	\N	\N	Телефоны	41	34
42	2021-03-15 14:38:05.545	\N	\N	Товары для компьютера	42	34
43	2021-03-15 14:38:05.545	\N	\N	Фототехника	43	34
44	2021-03-15 14:38:05.545	\N	\N	Хобби и отдых	44	\N
45	2021-03-15 14:38:05.545	\N	\N	Билеты и путешествия	45	44
46	2021-03-15 14:38:05.545	\N	\N	Велосипеды	46	44
47	2021-03-15 14:38:05.545	\N	\N	Книги и журналы	47	44
48	2021-03-15 14:38:05.545	\N	\N	Коллекционирование	48	44
49	2021-03-15 14:38:05.545	\N	\N	Музыкальные инструменты	49	44
50	2021-03-15 14:38:05.545	\N	\N	Охота и рыбалка	50	44
51	2021-03-15 14:38:05.545	\N	\N	Спорт и отдых	51	44
52	2021-03-15 14:38:05.545	\N	\N	Животные	52	\N
53	2021-03-15 14:38:05.545	\N	\N	Собаки	53	52
54	2021-03-15 14:38:05.545	\N	\N	Кошки	54	52
55	2021-03-15 14:38:05.545	\N	\N	Птицы	55	52
56	2021-03-15 14:38:05.545	\N	\N	Аквариум	56	52
57	2021-03-15 14:38:05.545	\N	\N	Другие животные	57	52
58	2021-03-15 14:38:05.545	\N	\N	Товары для животных	58	52
59	2021-03-15 14:38:05.545	\N	\N	Для бизнеса	59	\N
60	2021-03-15 14:38:05.545	\N	\N	Готовый бизнес	60	59
61	2021-03-15 14:38:05.545	\N	\N	Оборудование для бизнеса	61	59
\.


--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: adsviewer
--

COPY public.region (id, code, name, active, kladrcode) FROM stdin;
2	udmurtiya	Удмуртия	1	18
3	kirovskaya_oblast	Кировская область	1	43
4	permskiy_kray	Пермский край	1	59
5	samarskaya_oblast	Самарская область	1	63
6	saratovskaya_oblast	Саратовская область	1	64
7	sverdlovskaya_oblast	Свердловская область	1	66
8	tatarstan	Татарстан	1	16
9	chelyabinskaya_oblast	Челябинская область	1	74
10	bashkortostan	Башкортостан	1	2
11	orenburgskaya_oblast	Оренбургская область	1	56
12	nizhegorodskaya_oblast	Нижегородская область	1	52
13	mariy_el	Марий Эл	1	12
14	ulyanovskaya_oblast	Ульяновская область	1	73
15	ivanovskaya_oblast	Ивановская область	1	37
16	chuvashiya	Чувашия	1	21
17	tyumenskaya_oblast	Тюменская область	1	72
18	komi	Коми	1	11
19	krasnodarskiy_kray	Краснодарский край	1	23
20	hanty-mansiyskiy_ao	Ханты-Мансийский АО	1	86
21	penzenskaya_oblast	Пензенская область	1	58
22	astrahanskaya_oblast	Астраханская область	1	30
23	volgogradskaya_oblast	Волгоградская область	1	34
24	rostovskaya_oblast	Ростовская область	1	61
25	lipetskaya_oblast	Липецкая область	1	48
26	tambovskaya_oblast	Тамбовская область	1	68
27	altayskiy_kray	Алтайский край	1	22
28	voronezhskaya_oblast	Воронежская область	1	36
29	novosibirskaya_oblast	Новосибирская область	1	54
30	smolenskaya_oblast	Смоленская область	1	67
31	kurskaya_oblast	Курская область	1	46
32	omskaya_oblast	Омская область	1	55
33	bryanskaya_oblast	Брянская область	1	32
34	murmanskaya_oblast	Мурманская область	1	51
35	kemerovskaya_oblast	Кемеровская область	1	42
36	tverskaya_oblast	Тверская область	1	69
37	arhangelskaya_oblast	Архангельская область	1	29
38	yaroslavskaya_oblast	Ярославская область	1	76
39	vologodskaya_oblast	Вологодская область	1	35
40	kostromskaya_oblast	Костромская область	1	44
41	ryazanskaya_oblast	Рязанская область	1	62
42	kaluzhskaya_oblast	Калужская область	1	40
43	vladimirskaya_oblast	Владимирская область	1	33
44	tulskaya_oblast	Тульская область	1	71
45	irkutskaya_oblast	Иркутская область	1	38
46	adygeya	Адыгея	1	1
47	novgorodskaya_oblast	Новгородская область	1	53
48	pskovskaya_oblast	Псковская область	1	60
49	orlovskaya_oblast	Орловская область	1	57
50	kareliya	Карелия	1	10
51	krasnoyarskiy_kray	Красноярский край	1	24
52	tomskaya_oblast	Томская область	1	70
53	moskva	Москва Г	1	77
54	moskovskaya_oblast	Московская область	1	50
56	amurskaya_oblast	Амурская область	1	28
57	belgorodskaya_oblast	Белгородская область	1	31
58	buryatiya	Бурятия	1	3
59	dagestan	Дагестан	1	5
60	evreyskaya_ao	Еврейская АО	1	79
61	zabaykalskiy_kray	Забайкальский край	1	75
62	ingushetiya	Ингушетия	1	6
63	kabardino-balkariya	Кабардино-Балкария	1	7
64	kaliningradskaya_oblast	Калининградская область	1	39
65	kalmykiya	Калмыкия	1	8
66	kamchatskiy_kray	Камчатский край	1	41
67	karachaevo-cherkesiya	Карачаево-Черкесия	1	9
68	respublika_krym	Крым	1	91
69	kurganskaya_oblast	Курганская область	1	45
70	leningradskaya_oblast	Ленинградская область	1	47
71	magadanskaya_oblast	Магаданская область	1	49
72	mordoviya	Мордовия	1	13
73	nenetskiy_ao	Ненецкий АО	1	83
74	primorskiy_kray	Приморский край	1	25
75	sankt-peterburg	Санкт-Петербург Г	1	78
76	saha_yakutiya	Саха (Якутия)	1	14
77	sahalinskaya_oblast	Сахалинская область	1	65
78	sevastopol	Севастополь Г	1	92
79	severnaya_osetiya	Северная Осетия	1	15
80	stavropolskiy_kray	Ставропольский край	1	26
81	tyva	Тыва	1	17
82	habarovskiy_kray	Хабаровский край	1	27
83	hakasiya	Хакасия	1	19
84	chechenskaya_respublika	Чеченская Республика	1	20
85	chukotskiy_ao	Чукотский АО	1	87
86	yamalo-nenetskiy_ao	Ямало-Ненецкий АО	1	89
87	respublika_altay	Республика Алтай	1	4
\.




--
-- Name: ads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.ads_id_seq', 1, false);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- Name: region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.region_id_seq', 87, true);


--
-- Name: type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.type_id_seq', 1, false);


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


