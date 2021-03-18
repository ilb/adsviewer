
COPY public.carbody (id, name, code, avitocode) FROM stdin;
1	хетчбэк	HATCHBACK	hatchback
2	минивэн	MINIVAN	minvan
3	внедорожник	SUV	suv
4	седан	SEDAN	sedan
5	фургон	VAN	van
6	пикап	PICKUP	pickuo
7	универсал	ESTATECAR	estatecar
8	купе	COUPE	coupe
9	микроавтобус	MINIBUS	minibus
10	кабриолет	CABRIOLET	cabriolet
11	лимузин	LIMOUSINE	limousine
\.


COPY public.carmanufacturer (id, name, code, avitocode) FROM stdin;
1242	Zuk	zuk	zuk
1243	BAW	baw	baw
1244	KIA	kia	kia
1245	Mitsubishi	mitsubishi	mitsubishi
1246	Caterham	caterham	caterham
1247	FIAT	fiat	fiat
1248	Руссо-Балт	russo-balt	russo-balt
1249	Aro	aro	aro
1250	DKW	dkw	dkw
1251	DW Hower	dw_hower	dw_hower
1252	Genesis	genesis	genesis
1253	Tatra	tatra	tatra
1254	Maserati	maserati	maserati
1255	Skoda	skoda	skoda
1256	Dadi	dadi	dadi
1257	ЗАЗ	zaz	zaz
1258	Hyundai	hyundai	hyundai
1259	Ronart	ronart	ronart
1260	Vortex	vortex	vortex
1261	Iveco	iveco	iveco
1262	Leyland	leyland	leyland
1263	Acura	acura	acura
1264	Москвич	moskvich	moskvich
1265	Oldsmobile	oldsmobile	oldsmobile
1266	Nysa	nysa	nysa
1267	Lotus	lotus	lotus
1268	ГАЗ	gaz	gaz
1269	AM General	am_general	am_general
1270	Zibar	zibar	zibar
1271	ЗиС	zis	zis
1272	Wanderer	wanderer	wanderer
1273	ЛуАЗ	luaz	luaz
1274	AMC	amc	amc
1275	Alfa Romeo	alfa_romeo	alfa_romeo
1276	ИЖ	izh	izh
1277	Saturn	saturn	saturn
1278	Dacia	dacia	dacia
1279	LDV	ldv	ldv
1280	Maybach	maybach	maybach
1281	Wiesmann	wiesmann	wiesmann
1282	Jeep	jeep	jeep
1283	Isuzu	isuzu	isuzu
1284	Renault Samsung	renault_samsung	renault_samsung
1285	Aston Martin	aston_martin	aston_martin
1286	Asia	asia	asia
1287	Hummer	hummer	hummer
1288	Luxgen	luxgen	luxgen
1289	SMA	sma	sma
1290	PUCH	puch	puch
1291	Iran Khodro	iran_khodro	iran_khodro
1292	Changan	changan	changan
1293	Morgan	morgan	morgan
1294	Triumph	triumph	triumph
1295	Renault	renault	renault
1296	Shuanghuan	shuanghuan	shuanghuan
1297	Honda	honda	honda
1298	СМЗ	smz	smz
1299	Geely	geely	geely
1300	Daihatsu	daihatsu	daihatsu
1301	Nissan	nissan	nissan
1302	AC	ac	ac
1303	Tesla	tesla	tesla
1304	Graham-Paige	graham-paige	graham-paige
1305	Opel	opel	opel
1306	Excalibur	excalibur	excalibur
1307	Bugatti	bugatti	bugatti
1308	Metrocab	metrocab	metrocab
1309	Lancia	lancia	lancia
1310	Hanomag	hanomag	hanomag
1311	FSO	fso	fso
1312	Haval	haval	haval
1313	Rolls-Royce	rolls-royce	rolls-royce
1314	Trabant	trabant	trabant
1315	Derways	derways	derways
1316	Hafei	hafei	hafei
1317	Scion	scion	scion
1318	Plymouth	plymouth	plymouth
1319	Mitsuoka	mitsuoka	mitsuoka
1320	Datsun	datsun	datsun
1321	Adler	adler	adler
1322	BYD	byd	byd
1323	Toyota	toyota	toyota
1324	Groz	groz	groz
1325	McLaren	mclaren	mclaren
1326	Hawtai	hawtai	hawtai
1327	ChangFeng	changfeng	changfeng
1328	Tianye	tianye	tianye
1329	Daewoo	daewoo	daewoo
1330	Eagle	eagle	eagle
1331	УАЗ	uaz	uaz
1332	Bentley	bentley	bentley
1333	Pontiac	pontiac	pontiac
1334	ВАЗ (LADA)	vaz_lada	vaz_lada
1335	ВИС	vis	vis
1336	Land Rover	land_rover	land_rover
1337	Daimler	daimler	daimler
1338	Buick	buick	buick
1339	Saleen	saleen	saleen
1340	ZOTYE	zotye	zotye
1341	Fisker	fisker	fisker
1342	Suzuki	suzuki	suzuki
1343	Комбат	kombat	kombat
1344	Mahindra	mahindra	mahindra
1345	Mercury	mercury	mercury
1346	Tianma	tianma	tianma
1347	Changhe	changhe	changhe
1348	Steyr	steyr	steyr
1349	DS	ds	ds
1350	Proton	proton	proton
1351	Doninvest	doninvest	doninvest
1352	Haima	haima	haima
1353	Great Wall	great_wall	great_wall
1354	Vauxhall	vauxhall	vauxhall
1355	Mercedes-Benz	mercedes-benz	mercedes-benz
1356	Lamborghini	lamborghini	lamborghini
1357	Ravon	ravon	ravon
1358	JAC	jac	jac
1359	BMW	bmw	bmw
1360	Willys	willys	willys
1361	Богдан	bogdan	bogdan
1362	Lexus	lexus	lexus
1363	Tata	tata	tata
1364	Talbot	talbot	talbot
1365	Huanghai	huanghai	huanghai
1366	Tazzari	tazzari	tazzari
1367	Dodge	dodge	dodge
1368	DeLorean	delorean	delorean
1369	Geo	geo	geo
1370	Citroen	citroen	citroen
1371	LTI	lti	lti
1372	ЗИЛ	zil	zil
1373	ZX	zx	zx
1374	Bio Auto	bio_auto	bio_auto
1375	РАФ	raf	raf
1376	MINI	mini	mini
1377	Mazda	mazda	mazda
1378	LIFAN	lifan	lifan
1379	Chery	chery	chery
1380	Volvo	volvo	volvo
1381	Smart	smart	smart
1382	FAW	faw	faw
1383	Alpina	alpina	alpina
1384	GMC	gmc	gmc
1385	Morris	morris	morris
1386	Porsche	porsche	porsche
1387	Dongfeng	dongfeng	dongfeng
1388	MG	mg	mg
1389	Jaguar	jaguar	jaguar
1390	GAC	gac	gac
1391	Landwind	landwind	landwind
1392	Subaru	subaru	subaru
1393	SEAT	seat	seat
1394	Bajaj	bajaj	bajaj
1395	JMC	jmc	jmc
1396	Канонир	kanonir	kanonir
1397	Ford	ford	ford
1398	Austin	austin	austin
1399	Ferrari	ferrari	ferrari
1400	Infiniti	infiniti	infiniti
1401	SsangYong	ssangyong	ssangyong
1402	Cadillac	cadillac	cadillac
1403	ЕрАЗ	eraz	eraz
1404	Chrysler	chrysler	chrysler
1405	Volkswagen	volkswagen	volkswagen
1406	Brilliance	brilliance	brilliance
1407	Foton	foton	foton
1408	Saab	saab	saab
1409	Автокам	avtokam	avtokam
1410	Studebaker	studebaker	studebaker
1411	Barkas	barkas	barkas
1412	Peugeot	peugeot	peugeot
1413	Hudson	hudson	hudson
1414	Audi	audi	audi
1415	Xin Kai	xin_kai	xin_kai
1416	Lichi	lichi	lichi
1417	Wartburg	wartburg	wartburg
1418	Chevrolet	chevrolet	chevrolet
1419	Rover	rover	rover
1420	Lincoln	lincoln	lincoln
1421	ТагАЗ	tagaz	tagaz
1422	Jinbei	jinbei	jinbei
1423	Апал	apal	apal
1424	Jonway	jonway	jonway
1425	Westfield	westfield	westfield
1426	Zastava	zastava	zastava
\.



COPY public.carmodel (id, carmanufacturerid, name, code, carbodyid, cartransmissionid, enginecapacity, enginepower, avitocode) FROM stdin;
18478	1242	А07	a07	5	1	2.3	89	a07
18479	1242	А06	a06	5	1	2.1	52	a06
18480	1243	Tonik	tonik	5	1	1.3	70	tonik
18481	1243	007	007	3	1	2.2	133	007
18482	1243	Fenix	fenix	5	1	3.2	112	fenix
18483	1244	cee'd	ceed	1	2	1.5	125	ceed
18484	1244	Clarus	clarus	4	1	1.9	133	clarus
18485	1244	Carens	carens	2	1	1.8	130	carens
18486	1244	Mohave	mohave	3	2	3.4	274	mohave
18487	1244	Sorento	sorento	3	2	2.4	188	sorento
18488	1244	Pregio	pregio	2	1	2.7	86	pregio
18489	1244	Forte	forte	4	2	1.9	149	forte
18490	1244	Magentis	magentis	4	1	2.2	157	magentis
18491	1244	Quoris	quoris	4	2	4.4	334	quoris
18492	1244	Spectra	spectra	4	1	1.6	106	spectra
18493	1244	Joice	joice	2	1	2.0	130	joice
18494	1244	Concord	concord	\N	\N	0.0	0	concord
18495	1244	K5	k5	4	2	1.9	165	k5
18496	1244	Cadenza	cadenza	4	2	3.3	246	cadenza
18497	1244	Bongo	bongo	5	1	2.5	109	bongo
18498	1244	K7	k7	4	2	2.8	218	k7
18499	1244	K900	k900	4	2	4.2	338	k900
18500	1244	cee'd GT	ceed_gt	1	1	1.6	204	ceed_gt
18501	1244	Shuma	shuma	1	1	1.6	106	shuma
18502	1244	Sportage	sportage	3	2	1.8	136	sportage
18503	1244	Rio	rio	4	1	1.4	100	rio
18504	1244	X-Trek	x-trek	2	2	2.0	113	x-trek
18505	1244	Picanto	picanto	1	2	1.1	65	picanto
18506	1244	Ray	ray	2	2	1.0	78	ray
18507	1244	Mentor	mentor	4	1	1.6	100	mentor
18508	1244	XCeed	xceed	\N	\N	0.0	0	xceed
18509	1244	Pride	pride	4	1	1.5	95	pride
18510	1244	Stinger	stinger	1	2	2.7	247	stinger
18511	1244	Rio X-Line	rio_x-line	1	2	1.5	123	rio_x-line
18512	1244	Retona	retona	3	1	2.0	89	retona
18513	1244	Visto	visto	1	2	0.8	54	visto
18514	1244	Opirus	opirus	4	2	3.5	201	opirus
18515	1244	Optima	optima	4	2	1.9	176	optima
18516	1244	ProCeed	proceed	7	3	1.5	140	proceed
18517	1244	Seltos	seltos	3	4	0.8	123	seltos
18518	1244	Carnival	carnival	2	2	2.9	170	carnival
18519	1244	Cerato	cerato	4	2	1.6	128	cerato
18520	1244	Avella	avella	4	1	1.4	90	avella
18521	1244	Capital	capital	4	1	1.5	73	capital
18522	1244	Sorento Prime	sorento_prime	3	2	2.4	194	sorento_prime
18523	1244	Venga	venga	2	2	1.5	124	venga
18524	1244	Towner	towner	2	1	0.8	43	towner
18525	1244	Sephia	sephia	4	1	1.6	103	sephia
18526	1244	Picanto X-Line	picanto_x-line	1	2	1.2	84	picanto_x-line
18527	1244	Besta	besta	5	1	2.5	76	besta
18528	1244	Soul	soul	1	2	0.8	130	soul
18529	1245	Toppo	toppo	2	2	0.9	57	toppo
18530	1245	Minicab	minicab	2	2	0.0	48	minicab
18531	1245	Galant	galant	4	2	2.2	135	galant
18532	1245	EK Custom	ek_custom	1	4	0.7	57	ek_custom
18533	1245	Sigma	sigma	4	1	2.5	176	sigma
18534	1245	Space Runner	space_runner	2	1	2.0	133	space_runner
18535	1245	Pajero iO	pajero_io	3	2	1.8	136	pajero_io
18536	1245	Celeste	celeste	1	1	1.8	90	celeste
18537	1245	L300	l300	2	1	2.4	85	l300
18538	1245	Eclipse	eclipse	8	2	2.2	159	eclipse
18539	1245	3000 GT	3000_gt	8	1	3.0	256	3000_gt
18540	1245	Pajero Junior	pajero_junior	3	2	1.1	80	pajero_junior
18541	1245	Debonair	debonair	4	2	3.0	185	debonair
18542	1245	Delica D2	delica_d2	2	4	1.2	91	delica_d2
18543	1245	L400	l400	5	1	2.5	105	l400
18544	1245	Libero	libero	7	2	1.6	101	libero
18545	1245	Diamante	diamante	4	2	2.8	204	diamante
18546	1245	Eterna	eterna	4	2	1.8	140	eterna
18547	1245	Mirage	mirage	4	2	1.5	91	mirage
18548	1245	Sapporo	sapporo	8	1	2.0	100	sapporo
18549	1245	Delica	delica	2	2	2.3	115	delica
18550	1245	Delica D5	delica_d5	2	4	2.3	149	delica_d5
18551	1245	Chariot	chariot	2	2	1.9	135	chariot
18552	1245	Town BOX	town_box	2	2	0.9	64	town_box
18553	1245	Airtrek	airtrek	3	2	2.2	136	airtrek
18554	1245	Space Star	space_star	2	1	1.7	99	space_star
18555	1245	RVR	rvr	2	2	2.0	140	rvr
18556	1245	Dingo	dingo	1	2	1.5	108	dingo
18557	1245	GTO	gto	8	1	3.0	253	gto
18558	1245	i	i	1	2	0.7	64	i
18559	1245	Montero	montero	3	2	3.3	202	montero
18560	1245	Montero Sport	montero_sport	3	2	3.0	168	montero_sport
18561	1245	Colt	colt	1	1	1.4	100	colt
18562	1245	Pajero	pajero	3	2	2.6	168	pajero
18563	1245	Starion	starion	\N	\N	0.0	0	starion
18564	1245	Pajero Sport	pajero_sport	3	2	2.4	167	pajero_sport
18565	1245	Endeavor	endeavor	3	2	3.8	223	endeavor
18566	1245	Space Wagon	space_wagon	2	1	2.0	106	space_wagon
18567	1245	Eclipse Cross	eclipse_cross	3	4	1.9	150	eclipse_cross
18568	1245	Carisma	carisma	4	1	1.8	103	carisma
18569	1245	Aspire	aspire	4	2	1.9	140	aspire
18570	1245	L200	l200	6	1	2.7	136	l200
18571	1245	Minica	minica	1	2	0.7	50	minica
18572	1245	Pajero Mini	pajero_mini	3	2	0.7	52	pajero_mini
18573	1245	Strada	strada	6	1	2.5	85	strada
18574	1245	Dion	dion	2	2	1.9	150	dion
18575	1245	Challenger	challenger	3	2	3.0	185	challenger
18576	1245	Jeep	jeep	3	1	2.4	97	jeep
18577	1245	Space Gear	space_gear	2	1	2.5	127	space_gear
18578	1245	Emeraude	emeraude	4	2	1.9	140	emeraude
18579	1245	Lancer Evolution	lancer_evolution	4	1	2.0	271	lancer_evolution
18580	1245	ASX	asx	3	4	1.6	117	asx
18581	1245	Pajero Pinin	pajero_pinin	3	2	2.0	120	pajero_pinin
18582	1245	Lancer Cedia	lancer_cedia	4	4	1.8	120	lancer_cedia
18583	1245	Lancer Ralliart	lancer_ralliart	4	3	2.2	203	lancer_ralliart
18584	1245	i-MiEV	i-miev	1	2	0.0	67	i-miev
18585	1245	Legnum	legnum	7	2	2.2	158	legnum
18586	1245	Outlander	outlander	3	4	2.3	150	outlander
18587	1245	Grandis	grandis	2	2	2.2	151	grandis
18588	1245	Lancer Cargo	lancer_cargo	7	2	1.4	91	lancer_cargo
18589	1245	FTO	fto	8	2	1.9	175	fto
18590	1245	Delica D3	delica_d3	2	2	1.6	109	delica_d3
18591	1245	EK Space	ek_space	1	4	0.7	57	ek_space
18592	1245	Lancer	lancer	4	1	1.5	100	lancer
18593	1245	EK Wagon	ek_wagon	1	2	0.7	50	ek_wagon
18594	1246	7	7	10	1	1.6	130	7
18595	1246	21	21	\N	\N	0.0	0	21
18596	1247	Doblo	doblo	2	1	1.5	88	doblo
18597	1247	Sedici	sedici	1	1	1.8	114	sedici
18598	1247	Marea	marea	4	1	1.8	112	marea
18599	1247	Fullback	fullback	6	2	2.4	168	fullback
18600	1247	Barchetta	barchetta	10	1	1.7	130	barchetta
18601	1247	Qubo	qubo	2	1	1.3	75	qubo
18602	1247	500L	500l	2	2	1.4	162	500l
18603	1247	Tempra	tempra	4	1	1.8	83	tempra
18604	1247	Coupe	coupe	8	1	1.9	154	coupe
18605	1247	131	131	4	1	1.8	99	131
18606	1247	Uno	uno	1	1	1.3	58	uno
18607	1247	Punto	punto	1	1	1.6	86	punto
18608	1247	Scudo	scudo	2	1	1.9	100	scudo
18609	1247	Multipla	multipla	2	1	1.8	107	multipla
18610	1247	Palio	palio	7	1	1.5	73	palio
18611	1247	Tipo	tipo	1	1	1.7	80	tipo
18612	1247	Regata	regata	4	1	1.6	77	regata
18613	1247	Albea	albea	4	1	1.4	78	albea
18614	1247	Seicento	seicento	1	1	1.0	47	seicento
18615	1247	Ducato	ducato	5	1	2.1	111	ducato
18616	1247	124 Spider	124_spider	10	2	1.4	160	124_spider
18617	1247	Bravo	bravo	1	1	1.6	113	bravo
18618	1247	Ulysse	ulysse	2	1	2.1	109	ulysse
18619	1247	Panda	panda	1	3	1.0	54	panda
18620	1247	127	127	1	1	1.0	48	127
18621	1247	Duna	duna	7	1	1.1	58	duna
18622	1247	Cinquecento	cinquecento	1	1	0.9	41	cinquecento
18623	1247	Freemont	freemont	7	2	2.2	155	freemont
18624	1247	Stilo	stilo	1	1	1.7	109	stilo
18625	1247	Brava	brava	1	1	1.6	86	brava
18626	1247	Idea	idea	2	1	1.3	85	idea
18627	1247	Linea	linea	4	1	1.3	93	linea
18628	1247	Fiorino	fiorino	2	1	1.5	67	fiorino
18629	1247	124	124	4	1	1.5	81	124
18630	1247	Siena	siena	4	1	1.4	80	siena
18631	1247	Strada	strada	\N	\N	0.0	0	strada
18632	1247	Croma	croma	1	1	2.0	113	croma
18633	1247	Ritmo	ritmo	1	1	1.3	58	ritmo
18634	1247	500	500	1	1	0.6	100	500
18635	1248	С-24	s-24	10	1	4.7	35	s-24
18636	1249	24	24	3	1	2.7	87	24
18637	1249	10	10	3	1	1.5	60	10
18638	1250	3=6	36	\N	\N	0.0	0	36
18639	1251	H5	h5	3	1	2.0	150	h5
18640	1251	H3	h3	3	1	2.0	150	h3
18641	1252	G90	g90	4	2	3.8	370	g90
18642	1252	G70	g70	4	2	2.0	222	g70
18643	1252	G80	g80	4	2	2.7	245	g80
18644	1253	T700	t700	\N	\N	0.0	0	t700
18645	1253	57	57	4	1	1.2	18	57
18646	1253	T603	t603	4	1	2.5	99	t603
18647	1253	T613	t613	4	1	3.5	180	t613
18648	1254	Quattroporte	quattroporte	4	2	3.5	405	quattroporte
18649	1254	Ghibli	ghibli	4	2	3.0	380	ghibli
18650	1254	4200 GT	4200_gt	8	3	4.2	395	4200_gt
18651	1254	3200 GT	3200_gt	8	2	3.2	370	3200_gt
18652	1254	Biturbo	biturbo	\N	\N	0.0	0	biturbo
18653	1254	Levante	levante	3	2	3.1	350	levante
18654	1254	GranTurismo	granturismo	8	2	4.4	445	granturismo
18655	1255	Fabia RS	fabia_rs	1	3	1.7	155	fabia_rs
18656	1255	Felicia	felicia	1	1	1.5	64	felicia
18657	1255	Superb	superb	1	3	2.0	162	superb
18658	1255	Praktik	praktik	5	1	1.3	75	praktik
18659	1255	Favorit	favorit	1	1	1.3	58	favorit
18660	1255	Rapid	rapid	1	1	1.3	90	rapid
18661	1255	Fabia	fabia	1	1	1.5	75	fabia
18662	1255	Octavia RS	octavia_rs	1	3	1.8	180	octavia_rs
18663	1255	Yeti	yeti	3	3	1.7	122	yeti
18664	1255	Fabia Scout	fabia_scout	1	1	1.4	96	fabia_scout
18665	1255	Roomster	roomster	2	1	1.5	77	roomster
18666	1255	Octavia	octavia	1	1	1.5	102	octavia
18667	1255	Kodiaq	kodiaq	3	3	1.5	150	kodiaq
18668	1255	100	100	4	1	1.1	47	100
18669	1255	Karoq	karoq	3	2	3.7	150	karoq
18670	1255	Roomster Scout	roomster_scout	2	3	1.2	105	roomster_scout
18671	1255	Popular	popular	1	1	1.1	27	popular
18672	1255	105	105	4	1	1.0	45	105
18673	1255	Octavia Scout	octavia_scout	7	1	1.9	152	octavia_scout
18674	1256	Smoothing	smoothing	6	1	2.3	115	smoothing
18675	1256	Shuttle	shuttle	3	1	2.4	125	shuttle
18676	1256	City Leading	city_leading	3	1	2.4	125	city_leading
18677	1257	968 Запорожец	968_zaporozhets	4	1	1.1	41	968_zaporozhets
18678	1257	Vida	vida	4	1	1.5	107	vida
18679	1257	965 Запорожец	965_zaporozhets	4	1	0.9	27	965_zaporozhets
18680	1257	1103 Славута	1103_slavuta	1	1	1.3	63	1103_slavuta
18681	1257	Sens	sens	4	1	1.4	85	sens
18682	1257	966 Запорожец	966_zaporozhets	4	1	1.1	30	966_zaporozhets
18683	1257	11055	11055	5	1	1.2	58	11055
18684	1257	1105 Дана	1105_dana	7	1	1.2	58	1105_dana
18685	1257	Forza	forza	1	1	1.5	109	forza
18686	1257	Lanos	lanos	4	1	1.5	86	lanos
18687	1257	1102 Таврия	1102_tavriya	1	1	1.2	56	1102_tavriya
18688	1257	Chance	chance	4	1	1.4	77	chance
18689	1258	Matrix	matrix	2	1	1.7	106	matrix
18690	1258	Getz	getz	1	1	1.4	87	getz
18691	1258	Grand Starex	grand_starex	2	2	1.2	167	grand_starex
18692	1258	Palisade	palisade	3	2	3.0	246	palisade
18693	1258	Elantra	elantra	4	1	1.8	115	elantra
18694	1258	Solaris	solaris	4	2	1.4	106	solaris
18695	1258	Centennial	centennial	4	2	4.0	240	centennial
18696	1258	XG	xg	4	2	2.8	188	xg
18697	1258	H-100	h-100	2	1	2.5	80	h-100
18698	1258	Sonata	sonata	4	2	2.2	151	sonata
18699	1258	Stellar	stellar	4	1	1.6	76	stellar
18700	1258	S-Coupe	s-coupe	8	1	1.5	88	s-coupe
18701	1258	Veracruz	veracruz	3	2	3.4	252	veracruz
18702	1258	ix35	ix35	3	2	2.2	150	ix35
18703	1258	IONIQ	ioniq	1	2	0.0	120	ioniq
18704	1258	Santa Fe	santa_fe	3	2	2.4	177	santa_fe
18705	1258	Santamo	santamo	2	1	2.0	139	santamo
18706	1258	Genesis	genesis	4	2	2.5	270	genesis
18707	1258	Veloster	veloster	1	2	1.6	140	veloster
18708	1258	Tuscani	tuscani	8	2	2.4	141	tuscani
18709	1258	Terracan	terracan	3	2	2.9	163	terracan
18710	1258	Accent	accent	4	1	1.4	95	accent
18711	1258	Marcia	marcia	4	2	2.0	103	marcia
18712	1258	Pony	pony	4	1	1.4	72	pony
18713	1258	i40	i40	4	2	1.7	147	i40
18714	1258	Azera	azera	4	2	3.3	237	azera
18715	1258	ix55	ix55	3	2	3.4	255	ix55
18716	1258	Lavita	lavita	2	2	1.7	113	lavita
18717	1258	Maxcruz	maxcruz	3	2	2.2	197	maxcruz
18718	1258	Tucson	tucson	3	2	1.8	149	tucson
18719	1258	i30	i30	1	1	1.5	122	i30
18720	1258	Verna	verna	4	1	1.5	91	verna
18721	1258	Kona	kona	3	1	1.8	163	kona
18722	1258	i20	i20	1	1	1.4	100	i20
18723	1258	i10	i10	1	1	1.1	78	i10
18724	1258	Trajet	trajet	2	1	2.4	136	trajet
18725	1258	Coupe	coupe	8	1	1.9	138	coupe
18726	1258	Porter	porter	5	1	2.5	126	porter
18727	1258	Atos	atos	1	1	1.1	58	atos
18728	1258	Creta	creta	3	2	0.8	121	creta
18729	1258	Excel	excel	4	1	1.4	72	excel
18730	1258	Starex	starex	2	2	1.2	111	starex
18731	1258	Grand Santa Fe	grand_santa_fe	3	2	2.7	225	grand_santa_fe
18732	1258	Lantra	lantra	4	1	1.7	114	lantra
18733	1258	Equus	equus	4	2	4.2	312	equus
18734	1258	Galloper	galloper	3	1	2.5	102	galloper
18735	1258	i30 N	i30_n	1	1	2.0	250	i30_n
18736	1258	H-1	h-1	2	2	2.5	128	h-1
18737	1258	Grace	grace	2	1	2.5	95	grace
18738	1258	Tiburon	tiburon	8	2	1.9	138	tiburon
18739	1258	Grandeur	grandeur	4	2	2.7	193	grandeur
18740	1258	H-200	h-200	2	1	2.5	106	h-200
18741	1258	Avante	avante	4	2	1.7	120	avante
18742	1259	Lightning	lightning	\N	\N	0.0	0	lightning
18743	1260	Estina	estina	4	1	1.5	119	estina
18744	1260	Tingo	tingo	3	1	1.8	100	tingo
18745	1260	Corda	corda	1	1	1.5	97	corda
18746	1261	Massif	massif	3	1	3.0	146	massif
18747	1261	Daily	daily	5	1	2.5	118	daily
18748	1262	Sherpa	sherpa	\N	\N	0.0	0	sherpa
18749	1263	Integra	integra	8	2	1.8	156	integra
18750	1263	RSX	rsx	8	1	2.0	181	rsx
18751	1263	ILX	ilx	4	4	2.0	156	ilx
18752	1263	CSX	csx	4	1	2.0	176	csx
18753	1263	TLX	tlx	4	3	3.0	209	tlx
18754	1263	TSX	tsx	4	2	3.0	203	tsx
18755	1263	SLX	slx	\N	\N	0.0	0	slx
18756	1263	RL	rl	4	2	3.5	299	rl
18757	1263	EL	el	4	2	1.6	127	el
18758	1263	NSX	nsx	\N	\N	0.0	0	nsx
18759	1263	CL	cl	8	2	2.7	225	cl
18760	1263	ZDX	zdx	3	2	3.7	300	zdx
18761	1263	MDX	mdx	3	2	3.6	263	mdx
18762	1263	TL	tl	4	2	3.5	265	tl
18763	1263	RDX	rdx	3	2	2.3	272	rdx
18764	1264	2140	2140	4	1	3.4	75	2140
18765	1264	2136	2136	7	1	1.4	50	2136
18766	1264	Князь Владимир	knyaz_vladimir	4	1	1.8	95	knyaz_vladimir
18767	1264	2335	2335	6	1	1.7	76	2335
18768	1264	401	401	4	1	0.9	33	401
18769	1264	400	400	4	1	1.1	23	400
18770	1264	Святогор	svyatogor	1	1	1.7	81	svyatogor
18771	1264	424	424	7	1	1.4	45	424
18772	1264	427	427	7	1	1.5	75	427
18773	1264	2141	2141	1	1	1.7	76	2141
18774	1264	Иван Калита	ivan_kalita	\N	\N	0.0	0	ivan_kalita
18775	1264	2138	2138	4	1	1.5	63	2138
18776	1264	403	403	4	1	1.4	45	403
18777	1264	426	426	7	1	1.4	50	426
18778	1264	402	402	4	1	1.2	35	402
18779	1264	411	411	7	1	1.4	45	411
18780	1264	408	408	4	1	1.4	50	408
18781	1264	2137	2137	7	1	1.5	75	2137
18782	1264	410	410	4	1	1.3	40	410
18783	1264	412	412	4	1	1.5	71	412
18784	1264	407	407	4	1	1.4	50	407
18785	1264	Юрий Долгорукий	yuriy_dolgorukiy	1	1	1.8	85	yuriy_dolgorukiy
18786	1264	423	423	7	1	1.3	40	423
18787	1265	Cutlass	cutlass	4	2	4.4	135	cutlass
18788	1265	Cutlass Supreme	cutlass_supreme	4	2	2.3	162	cutlass_supreme
18789	1265	Toronado	toronado	8	2	5.4	275	toronado
18790	1265	Achieva	achieva	\N	\N	0.0	0	achieva
18791	1265	Eighty-Eight	eighty-eight	4	2	5.2	162	eighty-eight
18792	1265	Ninety-Eight	ninety-eight	4	2	5.4	160	ninety-eight
18793	1265	Silhouette	silhouette	2	2	3.5	148	silhouette
18794	1265	Bravada	bravada	\N	\N	0.0	0	bravada
18795	1265	Aurora	aurora	4	2	3.8	236	aurora
18796	1265	Omega	omega	4	2	2.8	135	omega
18797	1265	Alero	alero	4	2	2.4	152	alero
18798	1266	522	522	5	1	2.1	61	522
18799	1267	Evora	evora	\N	\N	0.0	0	evora
18800	1267	Exige	exige	8	1	2.7	221	exige
18801	1268	22 Волга	22_volga	7	1	2.4	75	22_volga
18802	1268	ГАЗель 3221	gazel_3221	9	1	2.5	107	gazel_3221
18803	1268	ГАЗель 33023	gazel_33023	5	1	2.5	107	gazel_33023
18804	1268	13 Чайка	13_chayka	4	2	5.5	195	13_chayka
18805	1268	310221 Волга	310221_volga	7	1	2.2	103	310221_volga
18806	1268	ГАЗель 2747	gazel_2747	5	1	2.5	114	gazel_2747
18807	1268	3111 Волга	3111_volga	4	1	2.4	141	3111_volga
18808	1268	24 Волга	24_volga	4	1	2.4	95	24_volga
18809	1268	64	64	3	1	3.3	50	64
18810	1268	Соболь 2752	sobol_2752	5	1	2.4	107	sobol_2752
18811	1268	М-20 Победа	m-20_pobeda	1	1	2.1	52	m-20_pobeda
18812	1268	31105 Волга	31105_volga	4	1	2.3	131	31105_volga
18813	1268	ГАЗель Next	gazel_next	5	1	2.6	120	gazel_next
18814	1268	ГАЗель 3302	gazel_3302	5	1	2.1	104	gazel_3302
18815	1268	21 Волга	21_volga	4	1	2.2	80	21_volga
18816	1268	67	67	3	1	3.3	54	67
18817	1268	Volga Siber	volga_siber	4	2	2.2	142	volga_siber
18818	1268	2308 Атаман	2308_ataman	6	1	2.7	150	2308_ataman
18819	1268	3102 Волга	3102_volga	4	1	2.4	130	3102_volga
18820	1268	2330 Тигр	2330_tigr	3	1	5.9	205	2330_tigr
18821	1268	M1	m1	4	1	3.4	63	m1
18822	1268	Соболь 2217	sobol_2217	9	1	2.5	107	sobol_2217
18823	1268	Соболь 2310	sobol_2310	6	1	2.5	115	sobol_2310
18824	1268	69	69	3	1	2.1	60	69
18825	1268	ГАЗель 2705	gazel_2705	5	1	2.3	103	gazel_2705
18826	1268	14 Чайка	14_chayka	4	2	5.5	220	14_chayka
18827	1268	3110 Волга	3110_volga	4	1	2.1	96	3110_volga
18828	1268	3105 Волга	3105_volga	4	1	2.4	131	3105_volga
18829	1268	М-72	m-72	4	1	2.1	55	m-72
18830	1268	12 ЗИМ	12_zim	4	1	3.5	90	12_zim
18831	1268	А	a	10	1	3.3	40	a
18832	1268	31029 Волга	31029_volga	4	1	2.4	95	31029_volga
18833	1269	HMMWV (Humvee)	hmmwv_humvee	3	2	6.0	165	hmmwv_humvee
18834	1270	MK2	mk2	\N	\N	0.0	0	mk2
18835	1271	110	110	4	1	0.0	140	110
18836	1272	W40	w40	4	1	2.0	40	w40
18837	1272	W24	w24	10	1	1.8	42	w24
18838	1273	969	969	3	1	1.1	35	969
18839	1273	967	967	3	1	1.1	32	967
18840	1273	1302	1302	3	1	1.0	31	1302
18841	1274	Eagle	eagle	7	1	3.4	112	eagle
18842	1274	Hornet	hornet	1	2	5.9	285	hornet
18843	1275	4C	4c	\N	\N	0.0	0	4c
18844	1275	Giulietta	giulietta	1	3	1.6	131	giulietta
18845	1275	166	166	4	1	2.5	183	166
18846	1275	155	155	4	1	1.9	142	155
18847	1275	GT	gt	8	1	2.0	168	gt
18848	1275	145	145	1	1	1.6	116	145
18849	1275	Brera	brera	1	3	2.7	223	brera
18850	1275	164	164	4	1	2.5	180	164
18851	1275	156	156	4	1	2.0	147	156
18852	1275	Stelvio	stelvio	3	2	2.0	200	stelvio
18853	1275	GTV	gtv	8	1	2.0	155	gtv
18854	1275	Spider	spider	10	1	2.1	150	spider
18855	1275	6C	6c	8	1	2.5	95	6c
18856	1275	Giulia	giulia	4	2	1.8	189	giulia
18857	1275	147	147	1	1	2.0	130	147
18858	1275	159	159	4	1	2.1	165	159
18859	1275	75	75	4	1	1.8	113	75
18860	1275	6	6	\N	\N	0.0	0	6
18861	1275	146	146	1	1	1.7	125	146
18862	1275	33	33	1	1	1.5	90	33
18863	1275	MiTo	mito	1	1	1.4	120	mito
18864	1275	SZ	sz	\N	\N	0.0	0	sz
18865	1276	2125	2125	1	1	1.5	71	2125
18866	1276	Москвич-412	moskvich-412	4	1	1.5	75	moskvich-412
18867	1276	2126	2126	1	1	1.7	76	2126
18868	1276	2715	2715	5	1	1.6	74	2715
18869	1276	2717	2717	5	1	1.7	75	2717
18870	1276	21261	21261	7	1	1.7	85	21261
18871	1277	LS	ls	4	2	2.2	139	ls
18872	1277	SC	sc	8	2	1.9	113	sc
18873	1277	SW	sw	\N	\N	0.0	0	sw
18874	1277	Sky	sky	10	2	2.0	260	sky
18875	1277	Aura	aura	4	2	2.4	168	aura
18876	1277	SL	sl	4	1	1.9	100	sl
18877	1277	VUE	vue	3	1	2.7	176	vue
18878	1277	ION	ion	4	2	2.2	140	ion
18879	1278	Solenza	solenza	1	1	1.4	75	solenza
18880	1278	Super Nova	super_nova	1	1	1.4	75	super_nova
18881	1278	Nova	nova	\N	\N	0.0	0	nova
18882	1278	1310	1310	7	1	1.4	62	1310
18883	1278	Lodgy	lodgy	2	1	1.6	98	lodgy
18884	1278	Logan	logan	7	1	1.5	86	logan
18885	1278	Duster	duster	3	1	1.6	107	duster
18886	1278	Sandero	sandero	1	1	1.5	87	sandero
18887	1279	Convoy	convoy	5	1	2.4	79	convoy
18888	1279	Maxus	maxus	5	1	2.5	120	maxus
18889	1280	57	57	4	2	2.8	581	57
18890	1280	62	62	4	2	2.8	590	62
18891	1281	GT	gt	\N	\N	0.0	0	gt
18892	1282	CJ	cj	3	1	2.5	88	cj
18893	1282	Grand Cherokee	grand_cherokee	3	2	3.7	219	grand_cherokee
18894	1282	Commander	commander	3	2	4.2	225	commander
18895	1282	Wrangler	wrangler	3	2	3.2	184	wrangler
18896	1282	Renegade	renegade	3	2	1.6	166	renegade
18897	1282	Cherokee	cherokee	3	2	3.0	170	cherokee
18898	1282	Patriot	patriot	3	4	2.2	164	patriot
18899	1282	Compass	compass	3	4	2.2	170	compass
18900	1282	Liberty	liberty	3	4	2.6	170	liberty
18901	1283	Filly	filly	2	2	3.2	150	filly
18902	1283	Rodeo	rodeo	3	1	2.8	140	rodeo
18903	1283	D-Max	d-max	6	2	2.8	170	d-max
18904	1283	Piazza	piazza	1	1	1.9	140	piazza
18905	1283	Bighorn	bighorn	3	2	2.9	131	bighorn
18906	1283	Trooper	trooper	3	1	2.8	123	trooper
18907	1283	Wizard	wizard	3	2	3.1	208	wizard
18908	1283	Gemini	gemini	4	2	1.7	98	gemini
18909	1283	MU	mu	3	2	2.8	120	mu
18910	1283	Axiom	axiom	3	2	3.5	233	axiom
18911	1283	Impulse	impulse	1	2	1.6	130	impulse
18912	1283	Midi	midi	5	1	2.2	82	midi
18913	1283	Amigo	amigo	3	1	2.5	115	amigo
18914	1283	Aska	aska	4	2	1.9	113	aska
18915	1283	Fargo	fargo	2	1	2.7	95	fargo
18916	1283	Campo	campo	6	1	2.8	128	campo
18917	1283	VehiCross	vehicross	3	2	3.4	215	vehicross
18918	1284	SM3	sm3	4	2	0.8	53	sm3
18919	1284	QM5	qm5	3	4	2.3	161	qm5
18920	1285	Rapide S	rapide_s	\N	\N	0.0	0	rapide_s
18921	1285	Rapide	rapide	1	2	5.9	477	rapide
18922	1285	V8 Vantage	v8_vantage	8	1	4.8	471	v8_vantage
18923	1285	DBS	dbs	8	2	5.9	517	dbs
18924	1285	Vanquish	vanquish	10	2	5.9	589	vanquish
18925	1285	DB11	db11	8	2	4.6	559	db11
18926	1285	DB7	db7	10	2	5.9	420	db7
18927	1285	DB9	db9	10	2	5.9	477	db9
18928	1285	Virage	virage	8	2	5.9	497	virage
18929	1286	Towner	towner	\N	\N	0.0	0	towner
18930	1286	Hi-topic	hi-topic	2	1	2.7	75	hi-topic
18931	1286	Rocsta	rocsta	3	1	2.0	74	rocsta
18932	1287	H2	h2	3	2	0.0	359	h2
18933	1287	H1	h1	3	2	2.9	190	h1
18934	1287	H3	h3	3	2	3.7	273	h3
18935	1288	7 SUV	7_suv	3	2	2.2	176	7_suv
18936	1288	7 MPV	7_mpv	2	2	2.2	175	7_mpv
18937	1289	C52	c52	4	1	1.5	95	c52
18938	1289	C51	c51	4	1	1.5	97	c51
18939	1289	C81	c81	4	1	1.8	115	c81
18940	1289	C32	c32	4	1	1.3	85	c32
18941	1290	Pinzgauer	pinzgauer	3	1	2.5	92	pinzgauer
18942	1290	G-modell	g-modell	\N	\N	0.0	0	g-modell
18943	1291	Samand	samand	4	1	1.7	100	samand
18944	1291	Sahra	sahra	\N	\N	0.0	0	sahra
18945	1291	Soren	soren	\N	\N	0.0	0	soren
18946	1292	Benni	benni	1	1	1.3	86	benni
18947	1292	Eado	eado	4	2	1.6	113	eado
18948	1292	CS35	cs35	3	2	1.6	113	cs35
18949	1292	CS35 Plus	cs35_plus	3	2	1.6	128	cs35_plus
18950	1292	CM-8	cm-8	2	1	1.3	82	cm-8
18951	1292	Raeton	raeton	4	2	1.8	163	raeton
18952	1292	CS55	cs55	3	2	1.5	143	cs55
18953	1292	CS75	cs75	3	2	1.8	157	cs75
18954	1293	Plus 4	plus_4	\N	\N	0.0	0	plus_4
18955	1293	Aero	aero	10	1	4.6	327	aero
18956	1294	Spitfire	spitfire	10	1	1.3	76	spitfire
18957	1295	Duster	duster	3	1	1.8	115	duster
18958	1295	Kadjar	kadjar	3	3	1.6	120	kadjar
18959	1295	Espace	espace	2	1	2.2	150	espace
18960	1295	Dokker Stepway	dokker_stepway	2	1	1.5	90	dokker_stepway
18961	1295	Grand Espace	grand_espace	2	1	2.6	168	grand_espace
18962	1295	Megane	megane	4	1	1.5	107	megane
18963	1295	5	5	1	1	1.3	58	5
18964	1295	Arkana	arkana	3	4	1.5	132	arkana
18965	1295	Twingo	twingo	1	1	1.2	68	twingo
18966	1295	Dokker	dokker	2	1	0.8	86	dokker
18967	1295	Logan	logan	4	1	1.3	80	logan
18968	1295	19	19	4	1	1.6	79	19
18969	1295	Rapid	rapid	5	1	1.3	56	rapid
18970	1295	Trafic	trafic	2	1	2.0	115	trafic
18971	1295	Grand Scenic	grand_scenic	2	1	1.5	115	grand_scenic
18972	1295	Primaquatre	primaquatre	\N	\N	0.0	0	primaquatre
18973	1295	25	25	1	1	2.4	120	25
18974	1295	11	11	1	1	1.5	73	11
18975	1295	18	18	7	1	1.6	70	18
18976	1295	Koleos	koleos	3	4	2.3	161	koleos
18977	1295	Vel Satis	vel_satis	1	1	2.6	167	vel_satis
18978	1295	Logan Stepway	logan_stepway	4	1	1.6	102	logan_stepway
18979	1295	Talisman	talisman	7	3	1.6	130	talisman
18980	1295	Symbol	symbol	4	1	1.3	82	symbol
18981	1295	ZOE	zoe	\N	\N	0.0	0	zoe
18982	1295	Kangoo	kangoo	2	1	1.4	85	kangoo
18983	1295	Scenic	scenic	2	1	1.6	105	scenic
18984	1295	Modus	modus	2	1	1.5	85	modus
18985	1295	Megane RS	megane_rs	1	1	2.0	237	megane_rs
18986	1295	Captur	captur	3	1	1.2	114	captur
18987	1295	Safrane	safrane	1	1	2.3	136	safrane
18988	1295	Clio	clio	1	1	1.5	80	clio
18989	1295	Kaptur	kaptur	3	4	1.6	143	kaptur
18990	1295	Master	master	5	1	2.3	115	master
18991	1295	21	21	4	1	2.1	95	21
18992	1295	Laguna	laguna	1	1	2.0	120	laguna
18993	1295	Sandero	sandero	1	1	1.2	83	sandero
18994	1295	30	30	\N	\N	0.0	0	30
18995	1295	4	4	1	1	1.1	55	4
18996	1295	Fuego	fuego	1	2	2.1	99	fuego
18997	1295	Fluence	fluence	4	1	1.6	108	fluence
18998	1295	Vel SMTis	vel_smtis	\N	\N	0.0	0	vel_smtis
18999	1295	Avantime	avantime	2	1	2.5	185	avantime
19000	1295	Dokker Van	dokker_van	5	1	1.6	86	dokker_van
19001	1295	9	9	4	1	1.6	74	9
19002	1295	Latitude	latitude	4	4	2.0	158	latitude
19003	1295	Clio RS	clio_rs	1	1	1.8	200	clio_rs
19004	1295	Twizy	twizy	8	2	0.0	11	twizy
19005	1295	Wind	wind	\N	\N	0.0	0	wind
19006	1295	Sandero Stepway	sandero_stepway	1	1	0.7	86	sandero_stepway
19007	1296	Sceo	sceo	3	1	2.4	125	sceo
19008	1297	Zest	zest	1	2	0.7	58	zest
19009	1297	Inspire	inspire	4	2	3.0	200	inspire
19010	1297	Passport	passport	3	2	3.2	191	passport
19011	1297	Ascot	ascot	4	2	2.3	160	ascot
19012	1297	Grace	grace	4	3	1.5	121	grace
19013	1297	S2000	s2000	10	1	2.0	245	s2000
19014	1297	N-WGN	n-wgn	1	4	0.7	61	n-wgn
19015	1297	Insight	insight	1	4	1.4	109	insight
19016	1297	Saber	saber	4	2	2.5	200	saber
19017	1297	Orthia	orthia	7	2	1.9	145	orthia
19018	1297	Prelude	prelude	8	1	2.0	137	prelude
19019	1297	Fit	fit	1	4	1.4	100	fit
19020	1297	City	city	4	2	1.3	94	city
19021	1297	Mobilio Spike	mobilio_spike	2	4	1.5	110	mobilio_spike
19022	1297	Vezel	vezel	3	3	1.5	131	vezel
19023	1297	CR-X	cr-x	8	1	1.6	125	cr-x
19024	1297	Today	today	1	1	0.7	52	today
19025	1297	Mobilio	mobilio	2	4	1.5	100	mobilio
19026	1297	Civic	civic	4	2	1.5	113	civic
19027	1297	Ascot Innova	ascot_innova	4	2	2.2	150	ascot_innova
19028	1297	S-MX	s-mx	2	2	2.0	136	s-mx
19029	1297	Fit Shuttle	fit_shuttle	7	4	1.4	104	fit_shuttle
19030	1297	Concerto	concerto	1	1	1.6	109	concerto
19031	1297	Odyssey (North America)	odyssey_north_america	2	2	2.4	242	odyssey_north_america
19032	1297	Jazz	jazz	1	4	1.4	95	jazz
19033	1297	Vigor	vigor	4	2	2.3	178	vigor
19034	1297	Odyssey	odyssey	2	2	2.4	185	odyssey
19035	1297	Vamos	vamos	2	2	0.7	52	vamos
19036	1297	Civic Ferio	civic_ferio	4	2	1.6	110	civic_ferio
19037	1297	Z	z	1	2	0.7	58	z
19038	1297	Jade	jade	1	3	1.5	141	jade
19039	1297	Pilot	pilot	3	2	3.0	249	pilot
19040	1297	S660	s660	10	4	0.7	64	s660
19041	1297	Accord	accord	4	2	2.2	152	accord
19042	1297	Acty	acty	2	2	0.7	50	acty
19043	1297	Stepwgn	stepwgn	2	2	2.0	148	stepwgn
19044	1297	Beat	beat	10	1	0.7	64	beat
19045	1297	MDX	mdx	3	2	3.5	260	mdx
19046	1297	CR-V	cr-v	3	2	1.6	159	cr-v
19047	1297	Life	life	1	2	0.7	57	life
19048	1297	Element	element	3	2	2.4	163	element
19049	1297	Avancier	avancier	7	2	2.7	183	avancier
19050	1297	Capa	capa	2	2	1.5	98	capa
19051	1297	Integra SJ	integra_sj	4	4	1.5	118	integra_sj
19052	1297	Airwave	airwave	7	4	1.5	110	airwave
19053	1297	Edix	edix	2	2	1.9	143	edix
19054	1297	That S	that_s	1	2	0.7	58	that_s
19055	1297	Street	street	2	1	0.5	34	street
19056	1297	Freed	freed	2	4	1.5	110	freed
19057	1297	Torneo	torneo	4	2	2.0	165	torneo
19058	1297	NSX	nsx	8	3	3.3	423	nsx
19059	1297	Domani	domani	4	2	1.6	125	domani
19060	1297	Crossroad	crossroad	3	2	1.9	145	crossroad
19061	1297	Shuttle	shuttle	7	3	2.2	132	shuttle
19062	1297	HR-V	hr-v	3	4	0.0	113	hr-v
19063	1297	Jazz AA	jazz_aa	\N	\N	0.0	0	jazz_aa
19064	1297	Elysion	elysion	2	2	3.0	247	elysion
19065	1297	Ridgeline	ridgeline	6	2	3.5	250	ridgeline
19066	1297	Logo	logo	1	2	1.3	66	logo
19067	1297	Stream	stream	2	2	1.8	150	stream
19068	1297	Integra	integra	4	2	1.7	140	integra
19069	1297	Partner	partner	7	2	1.5	98	partner
19070	1297	N-One	n-one	1	4	0.7	61	n-one
19071	1297	Fit Aria	fit_aria	4	4	1.4	90	fit_aria
19072	1297	Rafaga	rafaga	4	2	1.0	80	rafaga
19073	1297	Legend	legend	4	2	3.0	190	legend
19074	1297	CR-Z	cr-z	1	4	1.5	116	cr-z
19075	1297	N-BOX	n-box	1	4	0.7	61	n-box
19076	1297	FR-V	fr-v	2	1	1.8	140	fr-v
19077	1297	Crosstour	crosstour	3	2	3.5	271	crosstour
19078	1298	С-3А	s-3a	10	1	0.0	10	s-3a
19079	1298	С-3Д	s-3d	8	1	0.0	12	s-3d
19080	1299	MK	mk	4	1	1.6	95	mk
19081	1299	Emgrand EC8	emgrand_ec8	4	1	2.0	136	emgrand_ec8
19082	1299	CK (Otaka)	ck_otaka	4	1	1.4	86	ck_otaka
19083	1299	MK Cross	mk_cross	1	1	1.6	94	mk_cross
19084	1299	Atlas	atlas	3	2	2.0	149	atlas
19085	1299	Emgrand EC7	emgrand_ec7	4	1	1.7	126	emgrand_ec7
19086	1299	GC6	gc6	4	1	1.5	94	gc6
19087	1299	Emgrand 7	emgrand_7	4	4	1.6	116	emgrand_7
19088	1299	FC (Vision)	fc_vision	4	1	1.7	120	fc_vision
19089	1299	Emgrand X7	emgrand_x7	3	1	2.0	140	emgrand_x7
19090	1299	Emgrand GT	emgrand_gt	4	2	2.1	156	emgrand_gt
19091	1299	LC (GC2)	lc_gc2	1	1	1.3	86	lc_gc2
19092	1299	GS	gs	1	3	1.8	133	gs
19093	1299	Coolray	coolray	3	3	0.0	0	coolray
19094	1300	Move	move	2	4	0.8	55	move
19095	1300	Cast	cast	1	4	0.7	58	cast
19096	1300	Leeza	leeza	\N	\N	0.0	0	leeza
19097	1300	Materia	materia	1	1	1.4	97	materia
19098	1300	Wildcat	wildcat	3	1	2.7	88	wildcat
19099	1300	Delta	delta	2	2	2.0	94	delta
19100	1300	Mebius	mebius	\N	\N	0.0	0	mebius
19101	1300	Terios	terios	3	2	1.3	89	terios
19102	1300	Sonica	sonica	1	4	0.7	64	sonica
19103	1300	Tanto	tanto	2	4	0.7	58	tanto
19104	1300	Storia	storia	1	2	1.2	64	storia
19105	1300	Boon	boon	1	4	1.2	81	boon
19106	1300	Altis	altis	4	4	2.5	160	altis
19107	1300	Cuore	cuore	1	1	0.9	58	cuore
19108	1300	Mira	mira	1	2	0.7	54	mira
19109	1300	Gran Move	gran_move	2	1	1.6	91	gran_move
19110	1300	Hijet Truck	hijet_truck	6	1	0.0	42	hijet_truck
19111	1300	Esse	esse	1	2	0.7	59	esse
19112	1300	Naked	naked	\N	\N	0.0	0	naked
19113	1300	Rocky	rocky	3	1	2.2	97	rocky
19114	1300	Applause	applause	1	1	1.6	99	applause
19115	1300	Hijet Caddie	hijet_caddie	5	4	0.7	52	hijet_caddie
19116	1300	YRV	yrv	2	2	1.2	89	yrv
19117	1300	Pyzar	pyzar	2	2	1.6	108	pyzar
19118	1300	Coo	coo	2	2	1.3	91	coo
19119	1300	MAX	max	1	2	0.7	61	max
19120	1300	Terios Kid	terios_kid	3	2	0.7	62	terios_kid
19121	1300	Trevis	trevis	1	1	1.0	59	trevis
19122	1300	Hijet	hijet	2	2	1.0	47	hijet
19123	1300	Opti	opti	\N	\N	0.0	0	opti
19124	1300	Charade	charade	1	2	1.4	84	charade
19125	1300	Mira e:S	mira_es	1	4	0.7	51	mira_es
19126	1300	Wake	wake	1	4	0.7	58	wake
19127	1300	Copen	copen	10	2	0.7	64	copen
19128	1300	Atrai	atrai	2	2	1.0	77	atrai
19129	1300	Be-go	be-go	3	2	1.5	109	be-go
19130	1300	Feroza	feroza	3	1	1.6	95	feroza
19131	1300	Sirion	sirion	1	1	1.2	89	sirion
19132	1301	Note	note	1	1	1.3	90	note
19133	1301	Stagea	stagea	7	2	2.6	215	stagea
19134	1301	100NX	100nx	8	1	1.8	102	100nx
19135	1301	Leopard	leopard	4	2	2.5	195	leopard
19136	1301	Pulsar	pulsar	4	2	1.7	100	pulsar
19137	1301	Cabstar	cabstar	5	1	1.3	110	cabstar
19138	1301	Pathfinder	pathfinder	3	2	2.7	190	pathfinder
19139	1301	Clipper	clipper	2	2	0.7	56	clipper
19140	1301	Homy	homy	2	2	2.7	96	homy
19141	1301	Bassara	bassara	2	2	2.5	165	bassara
19142	1301	Moco	moco	1	2	0.7	57	moco
19143	1301	Micra	micra	1	2	1.3	75	micra
19144	1301	Figaro	figaro	8	2	1.0	76	figaro
19145	1301	Largo	largo	2	2	2.0	100	largo
19146	1301	X-Terra	x-terra	3	2	3.3	180	x-terra
19147	1301	NV200	nv200	2	2	1.5	109	nv200
19148	1301	Patrol	patrol	3	2	3.7	148	patrol
19149	1301	President	president	4	2	4.5	270	president
19150	1301	X-Trail	x-trail	3	4	2.0	145	x-trail
19151	1301	300ZX	300zx	8	1	3.0	282	300zx
19152	1301	Wingroad	wingroad	7	2	1.7	118	wingroad
19153	1301	180SX	180sx	8	1	2.0	173	180sx
19154	1301	Bluebird	bluebird	4	2	1.9	107	bluebird
19155	1301	Titan	titan	6	2	5.6	317	titan
19156	1301	NP300	np300	6	1	2.5	132	np300
19157	1301	Tino	tino	2	2	2.0	120	tino
19158	1301	Presea	presea	4	2	1.8	118	presea
19159	1301	Murano	murano	3	4	1.3	240	murano
19160	1301	Teana	teana	4	4	2.3	171	teana
19161	1301	Tiida	tiida	1	2	1.7	114	tiida
19162	1301	NV100 Clipper	nv100_clipper	2	2	0.0	24	nv100_clipper
19163	1301	200SX	200sx	8	1	1.9	169	200sx
19164	1301	Mistral	mistral	3	2	2.7	125	mistral
19165	1301	Liberty	liberty	2	4	2.0	147	liberty
19166	1301	Safari	safari	3	2	4.4	160	safari
19167	1301	Sunny California	sunny_california	7	2	1.5	94	sunny_california
19168	1301	Roox	roox	2	4	0.7	59	roox
19169	1301	S-Cargo	s-cargo	1	2	1.5	73	s-cargo
19170	1301	Vanette Cargo	vanette_cargo	5	1	2.2	86	vanette_cargo
19171	1301	Otti	otti	1	2	0.7	57	otti
19172	1301	Altima	altima	4	2	2.5	174	altima
19173	1301	NX Coupe	nx_coupe	8	1	1.6	110	nx_coupe
19174	1301	Skyline	skyline	4	2	2.6	190	skyline
19175	1301	Prairie	prairie	2	2	1.9	100	prairie
19176	1301	Juke	juke	3	4	1.6	116	juke
19177	1301	Fuga	fuga	4	2	3.6	292	fuga
19178	1301	Rasheen	rasheen	7	2	1.8	125	rasheen
19179	1301	370Z	370z	8	2	3.7	330	370z
19180	1301	GT-R	gt-r	8	3	3.8	540	gt-r
19181	1301	Crew	crew	4	2	2.4	112	crew
19182	1301	Presage	presage	2	2	2.8	164	presage
19183	1301	Navara	navara	6	2	2.5	148	navara
19184	1301	Kix	kix	3	2	0.7	64	kix
19185	1301	Leaf	leaf	1	2	0.0	109	leaf
19186	1301	Tiida Latio	tiida_latio	4	2	1.7	119	tiida_latio
19187	1301	Datsun	datsun	6	1	2.5	100	datsun
19188	1301	Caravan	caravan	2	2	2.4	105	caravan
19189	1301	Cedric	cedric	4	2	2.5	190	cedric
19190	1301	Lafesta	lafesta	2	4	2.0	139	lafesta
19191	1301	Fairlady	fairlady	8	2	2.9	280	fairlady
19192	1301	Cherry	cherry	4	1	1.5	57	cherry
19193	1301	Cefiro	cefiro	4	2	2.4	167	cefiro
19194	1301	350Z	350z	8	1	3.5	300	350z
19195	1301	Expert	expert	7	2	2.0	102	expert
19196	1301	Rogue	rogue	3	4	2.5	172	rogue
19197	1301	Sentra	sentra	4	4	1.8	126	sentra
19198	1301	Elgrand	elgrand	2	2	3.2	200	elgrand
19199	1301	Auster	auster	4	1	1.7	113	auster
19200	1301	Interstar	interstar	5	1	2.2	91	interstar
19201	1301	NV350 Caravan	nv350_caravan	2	2	2.3	130	nv350_caravan
19202	1301	Laurel	laurel	4	2	2.4	123	laurel
19203	1301	Gloria	gloria	4	2	2.7	183	gloria
19204	1301	Dayz	dayz	1	4	1.0	64	dayz
19205	1301	Dualis	dualis	3	4	2.0	137	dualis
19206	1301	Stanza	stanza	4	1	1.9	90	stanza
19207	1301	Kubistar	kubistar	5	1	1.5	68	kubistar
19208	1301	Langley	langley	1	1	1.5	85	langley
19209	1301	Qashqai+2	qashqai2	3	1	1.6	116	qashqai2
19210	1301	Silvia	silvia	8	1	1.9	165	silvia
19211	1301	280ZX	280zx	1	1	2.4	173	280zx
19212	1301	Sunny	sunny	4	2	1.6	92	sunny
19213	1301	Terrano	terrano	3	1	2.7	122	terrano
19214	1301	Versa	versa	4	4	1.7	116	versa
19215	1301	March	march	1	2	1.4	82	march
19216	1301	R Nessa	r_nessa	7	2	2.2	152	r_nessa
19217	1301	Terrano II	terrano_ii	3	1	2.4	124	terrano_ii
19218	1301	Pino	pino	1	2	0.7	54	pino
19219	1301	Pick UP	pick_up	6	1	2.5	80	pick_up
19220	1301	Urvan	urvan	2	1	2.7	105	urvan
19221	1301	Almera Classic	almera_classic	4	1	1.6	106	almera_classic
19222	1301	Pixo	pixo	1	1	1.0	68	pixo
19223	1301	Primastar	primastar	2	1	2.0	108	primastar
19224	1301	Quest	quest	2	2	3.3	207	quest
19225	1301	Frontier	frontier	6	1	3.0	162	frontier
19226	1301	Avenir	avenir	7	2	1.8	125	avenir
19227	1301	Qashqai	qashqai	3	4	1.6	116	qashqai
19228	1301	NV300	nv300	2	1	1.6	140	nv300
19229	1301	Cima	cima	4	2	3.8	270	cima
19230	1301	Almera Tino	almera_tino	2	1	2.0	125	almera_tino
19231	1301	AD	ad	7	2	1.7	103	ad
19232	1301	Latio	latio	4	4	1.2	79	latio
19233	1301	Dayz Roox	dayz_roox	1	4	0.7	57	dayz_roox
19234	1301	Primera	primera	4	1	1.9	116	primera
19235	1301	Almera	almera	4	1	1.5	99	almera
19236	1301	Cube	cube	2	2	1.6	101	cube
19237	1301	Bluebird Sylphy	bluebird_sylphy	4	2	1.7	118	bluebird_sylphy
19238	1301	Lucino	lucino	1	2	1.7	115	lucino
19239	1301	Armada	armada	3	2	5.6	313	armada
19240	1301	Serena	serena	2	4	2.2	133	serena
19241	1301	Trade	trade	5	1	2.3	74	trade
19242	1301	Vanette	vanette	2	1	1.9	88	vanette
19243	1301	240SX	240sx	\N	\N	0.0	0	240sx
19244	1301	Violet	violet	\N	\N	0.0	0	violet
19245	1301	Maxima	maxima	4	2	2.8	194	maxima
19246	1302	Ace	ace	10	1	3.5	326	ace
19247	1302	Cobra	cobra	10	1	5.5	393	cobra
19248	1302	Aceca	aceca	8	1	4.1	340	aceca
19249	1302	378 GT Zagato	378_gt_zagato	8	1	0.0	442	378_gt_zagato
19250	1303	Model X	model_x	3	2	0.0	427	model_x
19251	1303	Model S	model_s	1	2	0.0	470	model_s
19252	1303	Model 3	model_3	4	2	0.0	258	model_3
19253	1304	610	610	\N	\N	0.0	0	610
19254	1304	97	97	\N	\N	0.0	0	97
19255	1305	Astra GTC	astra_gtc	1	1	1.7	128	astra_gtc
19256	1305	Astra Family	astra_family	4	1	1.7	128	astra_family
19257	1305	Commodore	commodore	4	1	2.5	123	commodore
19258	1305	Zafira	zafira	2	1	1.8	120	zafira
19259	1305	Zafira OPC	zafira_opc	2	1	1.3	240	zafira_opc
19260	1305	Arena	arena	5	1	2.5	75	arena
19261	1305	Olympia	olympia	4	1	1.4	37	olympia
19262	1305	Karl	karl	1	1	1.0	75	karl
19263	1305	Tigra	tigra	8	1	1.5	98	tigra
19264	1305	Omega	omega	4	1	2.4	125	omega
19265	1305	GT	gt	8	1	1.9	89	gt
19266	1305	Diplomat	diplomat	4	1	2.8	165	diplomat
19267	1305	Ascona	ascona	4	1	1.7	84	ascona
19268	1305	Campo	campo	6	1	2.5	96	campo
19269	1305	Astra OPC	astra_opc	1	1	2.0	260	astra_opc
19270	1305	Kadett	kadett	1	1	1.5	79	kadett
19271	1305	Sintra	sintra	2	1	2.6	141	sintra
19272	1305	Ampera	ampera	1	4	1.4	86	ampera
19273	1305	Rekord	rekord	4	1	1.9	85	rekord
19274	1305	Insignia	insignia	4	2	1.6	162	insignia
19275	1305	Agila	agila	2	1	1.1	70	agila
19276	1305	Antara	antara	3	2	2.3	165	antara
19277	1305	Admiral	admiral	4	1	2.8	100	admiral
19278	1305	Bedford	bedford	5	1	2.0	80	bedford
19279	1305	Vectra OPC	vectra_opc	1	1	2.3	256	vectra_opc
19280	1305	Astra	astra	1	1	1.6	106	astra
19281	1305	Mokka	mokka	3	2	1.7	135	mokka
19282	1305	Signum	signum	1	2	2.2	175	signum
19283	1305	Manta	manta	8	1	2.0	95	manta
19284	1305	Super 6	super_6	4	1	2.5	40	super_6
19285	1305	Corsa OPC	corsa_opc	1	1	1.6	192	corsa_opc
19286	1305	Meriva OPC	meriva_opc	\N	\N	0.0	0	meriva_opc
19287	1305	Frontera	frontera	3	1	2.4	118	frontera
19288	1305	Monza	monza	1	1	2.8	150	monza
19289	1305	Calibra	calibra	8	1	2.3	143	calibra
19290	1305	Vita	vita	1	2	1.5	90	vita
19291	1305	Vivaro	vivaro	2	1	2.0	116	vivaro
19292	1305	Monterey	monterey	3	1	3.2	168	monterey
19293	1305	Corsa	corsa	1	1	1.4	84	corsa
19294	1305	Senator	senator	4	1	2.6	150	senator
19295	1305	Vectra	vectra	4	1	2.0	124	vectra
19296	1305	Movano	movano	5	1	2.3	112	movano
19297	1305	Grandland X	grandland_x	3	2	1.6	150	grandland_x
19298	1305	Kapitan	kapitan	4	1	2.5	64	kapitan
19299	1305	Meriva	meriva	2	1	1.5	101	meriva
19300	1305	Zafira Life	zafira_life	2	2	2.0	150	zafira_life
19301	1305	Insignia OPC	insignia_opc	4	2	2.8	325	insignia_opc
19302	1305	Combo	combo	2	1	1.4	82	combo
19303	1306	Series V	series_v	10	2	5.7	248	series_v
19304	1306	Series IV	series_iv	10	2	5.0	178	series_iv
19305	1307	Veyron	veyron	8	3	6.0	1200	veyron
19306	1307	Chiron	chiron	\N	\N	0.0	0	chiron
19307	1308	Taxi	taxi	1	1	2.5	75	taxi
19308	1309	Dedra	dedra	4	1	1.9	101	dedra
19309	1309	Zeta	zeta	\N	\N	0.0	0	zeta
19310	1309	Ypsilon	ypsilon	1	1	1.1	73	ypsilon
19311	1309	Prisma	prisma	4	1	1.8	98	prisma
19312	1309	Thema	thema	4	1	2.5	133	thema
19313	1309	Musa	musa	2	3	1.4	86	musa
19314	1309	Delta	delta	1	1	1.6	120	delta
19315	1309	Thesis	thesis	4	2	2.7	180	thesis
19316	1309	Trevi	trevi	\N	\N	0.0	0	trevi
19317	1309	Phedra	phedra	2	2	2.1	153	phedra
19318	1309	Kappa	kappa	4	1	2.4	165	kappa
19319	1309	Lybra	lybra	7	1	1.9	123	lybra
19320	1310	Rekord	rekord	8	1	1.7	34	rekord
19321	1311	125p	125p	6	1	1.3	64	125p
19322	1311	126p	126p	\N	\N	0.0	0	126p
19323	1311	127p	127p	\N	\N	0.0	0	127p
19324	1311	Polonez	polonez	1	1	1.6	85	polonez
19325	1311	132p	132p	\N	\N	0.0	0	132p
19326	1312	H5	h5	3	1	0.0	0	h5
19327	1312	H6 Coupe	h6_coupe	3	3	2.0	190	h6_coupe
19328	1312	F7x	f7x	3	3	2.0	190	f7x
19329	1312	H9	h9	3	2	2.0	215	h9
19330	1312	H8	h8	3	2	2.0	218	h8
19331	1312	H2	h2	3	2	0.0	72	h2
19332	1312	F7	f7	3	3	1.8	170	f7
19333	1312	H6	h6	3	1	1.8	150	h6
19334	1313	Silver Shadow	silver_shadow	4	2	0.0	183	silver_shadow
19335	1313	20/25	2025	10	1	3.7	25	2025
19336	1313	Dawn	dawn	10	2	0.0	570	dawn
19337	1313	Silver Seraph	silver_seraph	4	2	5.4	326	silver_seraph
19338	1313	Silver Spur	silver_spur	4	2	6.0	304	silver_spur
19339	1313	Ghost	ghost	4	2	0.0	591	ghost
19340	1313	Phantom	phantom	4	2	0.0	460	phantom
19341	1313	Cullinan	cullinan	3	2	0.0	571	cullinan
19342	1313	Silver Spirit	silver_spirit	4	2	6.0	218	silver_spirit
19343	1313	Wraith	wraith	8	2	0.0	632	wraith
19344	1313	Silver Cloud	silver_cloud	4	2	2.5	200	silver_cloud
19345	1314	P601	p601	10	1	0.6	25	p601
19346	1315	Plutus	plutus	6	1	2.4	126	plutus
19347	1315	Shuttle	shuttle	3	1	2.2	108	shuttle
19348	1315	Antelope	antelope	6	1	2.4	126	antelope
19349	1315	Land Crown	land_crown	3	1	3.0	160	land_crown
19350	1315	Saladin	saladin	3	1	2.4	150	saladin
19351	1315	Aurora	aurora	3	1	2.4	131	aurora
19352	1315	Cowboy	cowboy	3	1	2.4	130	cowboy
19353	1316	Simbo	simbo	1	1	1.5	85	simbo
19354	1316	Princip	princip	4	1	1.6	101	princip
19355	1316	Brio	brio	1	1	1.1	56	brio
19356	1317	xB	xb	2	2	1.5	108	xb
19357	1317	tC	tc	8	2	2.5	163	tc
19358	1317	xD	xd	1	2	1.8	128	xd
19359	1317	xA	xa	1	2	1.5	110	xa
19360	1318	Caravelle	caravelle	4	2	2.2	97	caravelle
19361	1318	Voyager	voyager	2	2	2.8	147	voyager
19362	1318	Reliant	reliant	\N	\N	0.0	0	reliant
19363	1318	Breeze	breeze	4	2	2.2	141	breeze
19364	1318	Valiant	valiant	4	1	2.8	117	valiant
19365	1318	Laser	laser	8	1	1.9	137	laser
19366	1318	Neon	neon	4	2	2.0	141	neon
19367	1318	Prowler	prowler	10	2	3.5	253	prowler
19368	1318	Sundance	sundance	4	2	2.5	102	sundance
19369	1318	Grand Voyager	grand_voyager	2	2	3.2	152	grand_voyager
19370	1318	Acclaim	acclaim	4	2	3.0	123	acclaim
19371	1318	Fury	fury	8	2	3.7	233	fury
19372	1319	Le-Seyde	le-seyde	10	2	1.8	125	le-seyde
19373	1320	Sunny	sunny	8	1	1.3	75	sunny
19374	1320	mi-DO	mi-do	1	1	3.8	98	mi-do
19375	1320	120Y	120y	8	1	1.5	90	120y
19376	1320	1200	1200	\N	\N	0.0	0	1200
19377	1320	on-DO	on-do	4	1	0.0	44	on-do
19378	1321	Diplomat	diplomat	4	1	2.9	63	diplomat
19379	1321	Trumpf Junior	trumpf_junior	4	1	1.0	25	trumpf_junior
19380	1322	F0	f0	1	1	1.0	59	f0
19381	1322	S6	s6	\N	\N	0.0	0	s6
19382	1322	Flyer	flyer	1	1	0.8	40	flyer
19383	1322	F6	f6	4	1	2.0	140	f6
19384	1322	F3	f3	4	1	0.8	97	f3
19385	1323	Echo	echo	4	2	1.5	110	echo
19386	1323	Verossa	verossa	4	2	2.3	200	verossa
19387	1323	Platz	platz	4	2	1.3	99	platz
19388	1323	Granvia	granvia	2	2	3.2	140	granvia
19389	1323	Coms	coms	8	2	0.0	7	coms
19390	1323	Paseo	paseo	8	1	1.5	103	paseo
19391	1323	Camry Gracia	camry_gracia	4	2	2.5	190	camry_gracia
19392	1323	Auris	auris	1	3	1.5	109	auris
19393	1323	Avensis Verso	avensis_verso	2	1	0.0	133	avensis_verso
19394	1323	Altezza	altezza	4	2	2.5	209	altezza
19395	1323	Mark X ZiO	mark_x_zio	2	4	3.0	224	mark_x_zio
19396	1323	C-HR	c-hr	3	4	1.8	116	c-hr
19397	1323	FJ Cruiser	fj_cruiser	3	2	4.0	260	fj_cruiser
19398	1323	Vanguard	vanguard	3	4	3.0	225	vanguard
19399	1323	Windom	windom	4	2	2.8	205	windom
19400	1323	Nadia	nadia	2	2	2.0	145	nadia
19401	1323	Prius Alpha	prius_alpha	7	4	1.8	99	prius_alpha
19402	1323	Prius PHV	prius_phv	1	4	1.8	99	prius_phv
19403	1323	Town Ace	town_ace	2	2	1.6	84	town_ace
19404	1323	bB	bb	2	2	1.4	92	bb
19405	1323	Fortuner	fortuner	3	2	2.8	166	fortuner
19406	1323	Yaris Verso	yaris_verso	1	1	1.4	86	yaris_verso
19407	1323	WiLL	will	1	2	1.5	117	will
19408	1323	Raum	raum	2	2	1.5	94	raum
19409	1323	Corsa	corsa	4	2	1.5	88	corsa
19410	1323	Allion	allion	4	4	1.8	132	allion
19411	1323	Aurion	aurion	4	2	2.0	145	aurion
19412	1323	Ipsum	ipsum	2	2	2.2	138	ipsum
19413	1323	Blade	blade	1	4	3.0	224	blade
19414	1323	Crown	crown	4	2	2.8	179	crown
19415	1323	Corolla Fielder	corolla_fielder	7	4	1.8	110	corolla_fielder
19416	1323	Pixis Van	pixis_van	2	2	0.7	59	pixis_van
19417	1323	Grand Hiace	grand_hiace	2	2	3.2	160	grand_hiace
19418	1323	iQ	iq	1	4	1.2	94	iq
19419	1323	Celsior	celsior	4	2	4.2	265	celsior
19420	1323	Sienta	sienta	2	4	1.5	105	sienta
19421	1323	Vista Ardeo	vista_ardeo	7	2	1.9	141	vista_ardeo
19422	1323	Vitz	vitz	1	2	1.4	86	vitz
19423	1323	Prius V	prius_v	7	2	1.8	99	prius_v
19424	1323	Corona EXiV	corona_exiv	4	2	1.9	140	corona_exiv
19425	1323	Mark II Wagon Blit	mark_ii_wagon_blit	7	2	2.0	160	mark_ii_wagon_blit
19426	1323	Progres	progres	4	2	2.8	208	progres
19427	1323	Urban Cruiser	urban_cruiser	1	1	1.4	99	urban_cruiser
19428	1323	Blizzard	blizzard	3	1	2.3	79	blizzard
19429	1323	Avensis	avensis	4	1	1.8	129	avensis
19430	1323	Soluna	soluna	4	2	1.5	100	soluna
19431	1323	Corolla Spacio	corolla_spacio	2	2	1.6	125	corolla_spacio
19432	1323	Hiace	hiace	2	1	2.4	103	hiace
19433	1323	Matrix	matrix	1	2	2.1	158	matrix
19434	1323	Allex	allex	1	2	1.7	132	allex
19435	1323	Regius	regius	2	2	2.7	140	regius
19436	1323	Vios	vios	4	2	1.5	101	vios
19437	1323	Wish	wish	2	2	1.9	144	wish
19438	1323	Hiace Regius	hiace_regius	2	2	1.4	65	hiace_regius
19439	1323	Estima	estima	2	2	2.7	135	estima
19440	1323	Corolla Rumion	corolla_rumion	7	4	1.7	132	corolla_rumion
19441	1323	Corolla Levin	corolla_levin	8	2	1.6	120	corolla_levin
19442	1323	Camry Solara	camry_solara	8	2	2.7	159	camry_solara
19443	1323	Passo Sette	passo_sette	2	2	1.5	109	passo_sette
19444	1323	Ractis	ractis	1	4	1.4	103	ractis
19445	1323	Cami	cami	3	2	1.3	92	cami
19446	1323	Spade	spade	2	4	1.4	103	spade
19447	1323	Mark X	mark_x	4	2	3.0	238	mark_x
19448	1323	Hilux Surf	hilux_surf	3	2	2.8	140	hilux_surf
19449	1323	Carina	carina	4	2	1.8	99	carina
19450	1323	Regius Ace	regius_ace	2	2	3.0	91	regius_ace
19451	1323	Vista	vista	4	2	2.0	126	vista
19452	1323	Kluger	kluger	3	2	3.0	211	kluger
19453	1323	Supra	supra	8	2	2.5	225	supra
19454	1323	Brevis	brevis	4	2	2.8	210	brevis
19455	1323	Aristo	aristo	4	2	3.5	260	aristo
19456	1323	Hilux	hilux	6	1	2.6	140	hilux
19457	1323	Prius C	prius_c	1	2	1.5	73	prius_c
19458	1323	Corolla II	corolla_ii	1	2	1.4	90	corolla_ii
19459	1323	Starlet	starlet	1	2	1.3	84	starlet
19460	1323	Highlander	highlander	3	2	3.0	219	highlander
19461	1323	Esquire	esquire	2	4	1.9	126	esquire
19462	1323	Tacoma	tacoma	6	2	3.4	175	tacoma
19463	1323	Yaris	yaris	1	1	1.4	95	yaris
19464	1323	Estima Lucida	estima_lucida	2	2	2.3	105	estima_lucida
19465	1323	Rush	rush	3	2	1.5	107	rush
19466	1323	Mega Cruiser	mega_cruiser	3	2	4.1	163	mega_cruiser
19467	1323	Pronard	pronard	4	2	3.0	215	pronard
19468	1323	Corolla Ceres	corolla_ceres	4	2	1.6	113	corolla_ceres
19469	1323	Belta	belta	4	4	1.3	87	belta
19470	1323	Mark II Wagon Qualis	mark_ii_wagon_qualis	7	2	2.5	200	mark_ii_wagon_qualis
19471	1323	Corona	corona	4	2	1.8	115	corona
19472	1323	Cynos	cynos	8	2	1.4	103	cynos
19473	1323	Corolla	corolla	4	1	1.9	101	corolla
19474	1323	Picnic	picnic	2	1	2.1	138	picnic
19475	1323	Century	century	4	2	4.5	223	century
19476	1323	Caldina	caldina	7	2	1.9	133	caldina
19477	1323	Duet	duet	1	2	1.2	64	duet
19478	1323	Aqua	aqua	1	4	0.0	0	aqua
19479	1323	Sprinter Marino	sprinter_marino	4	2	1.6	115	sprinter_marino
19480	1323	Model F	model_f	2	1	2.0	88	model_f
19481	1323	Sprinter	sprinter	4	2	1.7	91	sprinter
19482	1323	4Runner	4runner	3	1	3.2	184	4runner
19483	1323	Tank	tank	1	4	1.0	84	tank
19484	1323	GT86	gt86	8	2	2.0	200	gt86
19485	1323	Cavalier	cavalier	8	2	2.4	165	cavalier
19486	1323	Previa	previa	2	1	2.3	144	previa
19487	1323	Corona Premio	corona_premio	4	2	1.9	115	corona_premio
19488	1323	Sequoia	sequoia	3	2	4.7	282	sequoia
19489	1323	Isis	isis	2	4	1.9	144	isis
19490	1323	Corolla Runx	corolla_runx	1	2	1.7	136	corolla_runx
19491	1323	Voltz	voltz	1	2	1.8	134	voltz
19492	1323	MasterAce	masterace	2	2	2.0	83	masterace
19493	1323	Verso	verso	2	4	1.8	129	verso
19494	1323	Celica	celica	1	1	1.9	147	celica
19495	1323	Roomy	roomy	2	4	1.0	84	roomy
19496	1323	Mark II	mark_ii	4	2	2.0	138	mark_ii
19497	1323	Town Ace Noah	town_ace_noah	2	2	2.1	94	town_ace_noah
19498	1323	WiLL Cypha	will_cypha	1	2	1.4	97	will_cypha
19499	1323	Carina E	carina_e	4	1	1.7	107	carina_e
19500	1323	Voxy	voxy	2	4	1.9	151	voxy
19501	1323	Aygo	aygo	1	1	1.2	67	aygo
19502	1323	Premio	premio	4	2	1.8	133	premio
19503	1323	Prius	prius	1	2	1.7	78	prius
19504	1323	Pixis Space	pixis_space	2	4	0.7	58	pixis_space
19505	1323	Carina ED	carina_ed	4	2	1.9	133	carina_ed
19506	1323	Crown Majesta	crown_majesta	4	2	4.0	265	crown_majesta
19507	1323	Soarer	soarer	10	2	3.0	230	soarer
19508	1323	Funcargo	funcargo	2	2	1.4	97	funcargo
19509	1323	Camry	camry	4	2	2.2	140	camry
19510	1323	Cressida	cressida	4	1	2.4	126	cressida
19511	1323	Pixis Mega	pixis_mega	2	4	0.7	58	pixis_mega
19512	1323	Lite Ace	lite_ace	2	2	1.8	84	lite_ace
19513	1323	Succeed	succeed	7	2	1.5	103	succeed
19514	1323	ProAce	proace	2	1	1.6	90	proace
19515	1323	Sprinter Carib	sprinter_carib	7	2	1.6	118	sprinter_carib
19516	1323	SAI	sai	4	4	2.4	150	sai
19517	1323	Sprinter Trueno	sprinter_trueno	8	1	1.6	115	sprinter_trueno
19518	1323	Noah	noah	2	4	1.9	150	noah
19519	1323	Porte	porte	2	2	1.4	94	porte
19520	1323	Cresta	cresta	4	2	2.4	133	cresta
19521	1323	Comfort	comfort	4	2	2.0	110	comfort
19522	1323	MR2	mr2	8	1	1.8	165	mr2
19523	1323	MR-S	mr-s	10	1	1.8	140	mr-s
19524	1323	Pixis Epoch	pixis_epoch	1	4	0.7	51	pixis_epoch
19525	1323	Avalon	avalon	4	2	3.0	268	avalon
19526	1323	Tundra	tundra	6	2	4.7	274	tundra
19527	1323	Chaser	chaser	4	2	2.3	135	chaser
19528	1323	RAV4	rav4	3	4	2.2	151	rav4
19529	1323	Curren	curren	8	2	1.9	140	curren
19530	1323	Alphard	alphard	2	2	2.8	164	alphard
19531	1323	Sienna	sienna	2	2	2.9	223	sienna
19612	1331	469	469	3	1	2.2	91	469
19532	1323	Corolla Verso	corolla_verso	2	3	1.9	133	corolla_verso
19533	1323	Classic	classic	4	2	2.0	97	classic
19534	1323	Harrier	harrier	3	2	2.5	186	harrier
19535	1323	Land Cruiser Prado	land_cruiser_prado	3	2	2.8	151	land_cruiser_prado
19536	1323	Passo	passo	1	4	1.2	90	passo
19537	1323	Sparky	sparky	2	2	1.3	91	sparky
19538	1323	Ist	ist	1	2	1.5	107	ist
19539	1323	Vellfire	vellfire	2	4	2.5	176	vellfire
19540	1323	Tercel	tercel	4	2	1.4	85	tercel
19541	1323	Scepter	scepter	4	2	2.6	140	scepter
19542	1323	Opa	opa	7	2	2.0	134	opa
19543	1323	Gaia	gaia	2	2	2.1	138	gaia
19544	1323	Lite Ace Noah	lite_ace_noah	2	2	2.1	94	lite_ace_noah
19545	1323	Probox	probox	7	2	1.4	95	probox
19546	1323	Sera	sera	8	2	1.5	110	sera
19547	1323	Corolla Axio	corolla_axio	4	4	1.5	110	corolla_axio
19548	1323	Land Cruiser	land_cruiser	3	2	3.5	180	land_cruiser
19549	1323	Venza	venza	3	2	3.1	185	venza
19550	1324	Polarsun	polarsun	2	1	2.2	105	polarsun
19551	1325	650S	650s	8	3	3.8	650	650s
19552	1325	MP4-12C	mp4-12c	8	3	3.8	625	mp4-12c
19553	1325	720S	720s	8	3	4.0	720	720s
19554	1325	570S	570s	\N	\N	0.0	0	570s
19555	1326	Boliger	boliger	3	1	1.9	155	boliger
19556	1326	Laville	laville	3	1	1.5	145	laville
19557	1327	Liebao Leopard	liebao_leopard	\N	\N	0.0	0	liebao_leopard
19558	1327	SUV	suv	\N	\N	0.0	0	suv
19559	1327	Flying PickUp	flying_pickup	6	1	2.5	111	flying_pickup
19560	1328	Admiral	admiral	6	1	2.2	103	admiral
19561	1329	Gentra	gentra	4	1	1.5	86	gentra
19562	1329	LeMans	lemans	4	1	1.6	75	lemans
19563	1329	Magnus	magnus	4	2	2.0	132	magnus
19564	1329	Charman	charman	4	2	3.2	220	charman
19565	1329	Nubira	nubira	4	1	1.7	126	nubira
19566	1329	Evanda	evanda	4	2	2.0	131	evanda
19567	1329	Lacetti Premiere	lacetti_premiere	4	2	1.7	128	lacetti_premiere
19568	1329	Damas	damas	2	1	0.8	38	damas
19569	1329	Tico	tico	1	1	0.8	41	tico
19570	1329	Kalos	kalos	1	1	1.4	89	kalos
19571	1329	Prince	prince	4	1	2.0	110	prince
19572	1329	Winstorm	winstorm	3	2	2.0	151	winstorm
19573	1329	G2X	g2x	10	1	2.3	170	g2x
19574	1329	Rezzo	rezzo	2	1	1.8	114	rezzo
19575	1329	Racer	racer	4	1	1.5	75	racer
19576	1329	Tacuma	tacuma	2	1	1.8	106	tacuma
19577	1329	Musso	musso	\N	\N	0.0	0	musso
19578	1329	Matiz Creative	matiz_creative	1	2	1.0	69	matiz_creative
19579	1329	Tosca	tosca	\N	\N	0.0	0	tosca
19580	1329	Matiz	matiz	1	1	1.0	52	matiz
19581	1329	Nexia	nexia	4	1	1.5	86	nexia
19582	1329	Lanos	lanos	4	1	1.5	81	lanos
19583	1329	Leganza	leganza	4	2	2.0	116	leganza
19584	1329	Sens	sens	4	1	1.3	70	sens
19585	1329	Espero	espero	4	1	1.8	100	espero
19586	1329	Lacetti	lacetti	4	2	1.6	106	lacetti
19587	1329	Lublin	lublin	2	1	2.4	80	lublin
19588	1330	Vision	vision	4	2	3.4	190	vision
19589	1330	Talon	talon	\N	\N	0.0	0	talon
19590	1330	Summit	summit	8	1	1.7	92	summit
19591	1331	2360	2360	6	1	2.7	128	2360
19592	1331	3159	3159	3	1	2.7	133	3159
19593	1331	450	450	5	1	0.0	0	450
19594	1331	Hunter	hunter	3	1	2.4	102	hunter
19595	1331	31512	31512	3	1	2.6	85	31512
19596	1331	Карго	kargo	6	1	2.5	121	kargo
19597	1331	31514	31514	3	1	2.4	88	31514
19598	1331	3962	3962	9	1	2.6	90	3962
19599	1331	2206	2206	9	1	2.7	96	2206
19600	1331	452 Буханка	452_buhanka	5	1	2.4	84	452_buhanka
19601	1331	Профи	profi	5	1	2.7	143	profi
19602	1331	3151	3151	3	1	2.5	90	3151
19603	1331	Patriot	patriot	3	1	2.5	128	patriot
19604	1331	Симбир	simbir	3	1	1.4	102	simbir
19605	1331	3303	3303	6	1	2.6	95	3303
19606	1331	39094	39094	6	1	2.4	104	39094
19607	1331	3909	3909	9	1	2.6	95	3909
19608	1331	Pickup	pickup	6	1	2.4	134	pickup
19609	1331	3153	3153	3	1	2.9	88	3153
19610	1331	3741	3741	5	1	2.5	96	3741
19611	1331	39095	39095	6	1	2.7	105	39095
19613	1331	3160	3160	3	1	2.6	102	3160
19614	1331	31519	31519	3	1	2.6	92	31519
19615	1332	Azure	azure	\N	\N	0.0	0	azure
19616	1332	Arnage	arnage	4	2	2.2	431	arnage
19617	1332	Flying Spur	flying_spur	4	2	2.0	625	flying_spur
19618	1332	Eight	eight	4	2	0.0	389	eight
19619	1332	Mulsanne	mulsanne	4	2	0.0	512	mulsanne
19620	1332	Continental	continental	8	2	6.0	408	continental
19621	1332	S	s	4	2	2.5	168	s
19622	1332	Brooklands	brooklands	8	2	0.0	393	brooklands
19623	1332	Turbo R	turbo_r	4	2	0.0	351	turbo_r
19624	1332	Continental Flying Spur	continental_flying_spur	4	2	0.0	585	continental_flying_spur
19625	1332	Continental GT	continental_gt	8	2	2.0	585	continental_gt
19626	1332	Bentayga	bentayga	3	2	2.0	550	bentayga
19627	1333	Sunbird	sunbird	4	2	2.2	94	sunbird
19628	1333	Fiero	fiero	1	2	2.5	90	fiero
19629	1333	Trans Sport	trans_sport	2	1	3.1	140	trans_sport
19630	1333	G6	g6	4	2	3.5	200	g6
19631	1333	Firebird	firebird	8	2	3.8	220	firebird
19632	1333	Grand AM	grand_am	4	2	2.4	150	grand_am
19633	1333	Torrent	torrent	3	2	3.4	185	torrent
19634	1333	Bonneville	bonneville	4	2	4.9	207	bonneville
19635	1333	Montana	montana	2	2	3.4	180	montana
19636	1333	Catalina	catalina	8	1	0.0	302	catalina
19637	1333	Aztek	aztek	3	2	3.4	162	aztek
19638	1333	Solstice	solstice	10	1	2.4	179	solstice
19639	1333	Grand Prix	grand_prix	4	2	3.8	200	grand_prix
19640	1333	Sunfire	sunfire	8	2	2.3	131	sunfire
19641	1333	6000	6000	\N	\N	0.0	0	6000
19642	1333	Laurentian	laurentian	\N	\N	0.0	0	laurentian
19643	1333	Sunrunner	sunrunner	3	2	1.6	97	sunrunner
19644	1333	GTO	gto	8	2	5.9	335	gto
19645	1333	Vibe	vibe	2	2	2.1	132	vibe
19646	1334	Vesta Cross	vesta_cross	7	1	1.6	106	vesta_cross
19647	1334	Priora	priora	4	1	1.5	96	priora
19648	1334	2129	2129	3	1	1.8	81	2129
19649	1334	2114 Samara	2114_samara	1	1	1.6	81	2114_samara
19650	1334	2106	2106	4	1	1.5	73	2106
19651	1334	2120 Надежда	2120_nadezhda	2	1	1.8	80	2120_nadezhda
19652	1334	2329	2329	6	1	0.0	80	2329
19653	1334	2108	2108	1	1	1.6	79	2108
19654	1334	2121 (4x4) Рысь	2121_4x4_rys	\N	\N	0.0	0	2121_4x4_rys
19655	1334	2109	2109	1	1	1.4	76	2109
19656	1334	Largus	largus	7	1	1.1	89	largus
19657	1334	2123	2123	3	1	1.7	76	2123
19658	1334	2103	2103	4	1	1.4	70	2103
19659	1334	Largus Cross	largus_cross	7	1	0.0	102	largus_cross
19660	1334	2102	2102	7	1	1.3	69	2102
19661	1334	2105	2105	4	1	1.2	74	2105
19662	1334	2121 (4x4) Urban	2121_4x4_urban	\N	\N	0.0	0	2121_4x4_urban
19663	1334	2328	2328	\N	\N	0.0	0	2328
19664	1334	Granta	granta	4	1	1.5	96	granta
19665	1334	XRAY Cross	xray_cross	1	1	1.7	118	xray_cross
19666	1334	21099	21099	4	1	1.3	72	21099
19667	1334	XRAY	xray	1	1	1.6	109	xray
19668	1334	El Lada	el_lada	7	2	0.0	82	el_lada
19669	1334	Niva Off-road	niva_off-road	\N	\N	0.0	0	niva_off-road
19670	1334	Kalina Cross	kalina_cross	7	1	0.0	44	kalina_cross
19671	1334	2121 (4x4) Фора	2121_4x4_fora	\N	\N	0.0	0	2121_4x4_fora
19672	1334	4x4 (Нива)	4x4_niva	3	1	1.6	82	4x4_niva
19673	1334	2110	2110	4	1	1.5	85	2110
19674	1334	1111 Ока	1111_oka	1	1	1.1	36	1111_oka
19675	1334	Niva	niva	\N	\N	0.0	0	niva
19676	1334	2302 Бизон	2302_bizon	6	1	1.7	58	2302_bizon
19677	1334	2121 (4x4) Bronto	2121_4x4_bronto	\N	\N	0.0	0	2121_4x4_bronto
19678	1334	Vesta	vesta	4	1	1.6	110	vesta
19679	1334	Revolution	revolution	\N	\N	0.0	0	revolution
19680	1334	2104	2104	7	1	1.5	71	2104
19681	1334	2113 Samara	2113_samara	1	1	1.6	82	2113_samara
19682	1334	2107	2107	4	1	1.3	73	2107
19683	1334	2111	2111	7	1	1.6	81	2111
19684	1334	2131 (4x4) Рысь	2131_4x4_rys	\N	\N	0.0	0	2131_4x4_rys
19685	1334	2101	2101	4	1	1.5	70	2101
19686	1334	2115 Samara	2115_samara	4	1	1.5	78	2115_samara
19687	1334	Kalina	kalina	1	1	1.5	89	kalina
19688	1334	2112	2112	1	1	1.5	84	2112
19689	1334	Granta Cross	granta_cross	7	1	0.0	44	granta_cross
19690	1334	2131 (4x4) Urban	2131_4x4_urban	\N	\N	0.0	0	2131_4x4_urban
19691	1335	1705	1705	5	1	1.5	60	1705
19692	1335	2349	2349	5	1	1.6	86	2349
19693	1335	2345	2345	5	1	1.5	71	2345
19694	1335	2346	2346	5	1	1.7	81	2346
19695	1335	2347	2347	5	1	1.6	75	2347
19696	1335	1706	1706	6	1	1.6	78	1706
19697	1336	Freelander	freelander	3	2	2.0	150	freelander
19698	1336	Range Rover Sport	range_rover_sport	3	2	3.3	340	range_rover_sport
19699	1336	Range Rover Velar	range_rover_velar	3	2	2.5	263	range_rover_velar
19700	1336	Discovery Sport	discovery_sport	3	2	1.0	190	discovery_sport
19701	1336	Range Rover	range_rover	3	2	3.5	249	range_rover
19702	1336	Range Rover Evoque	range_rover_evoque	3	2	1.0	190	range_rover_evoque
19703	1336	Defender	defender	3	1	2.3	113	defender
19704	1336	Series III	series_iii	3	1	2.3	69	series_iii
19705	1336	Discovery	discovery	3	2	3.3	211	discovery
19706	1337	XJ	xj	4	1	4.0	222	xj
19707	1337	Limousine	limousine	4	2	4.2	164	limousine
19708	1337	Super Eight	super_eight	4	2	4.2	400	super_eight
19709	1338	Regal	regal	4	2	3.1	172	regal
19710	1338	Park Avenue	park_avenue	4	2	3.8	205	park_avenue
19711	1338	Encore	encore	3	2	1.4	139	encore
19712	1338	Envision	envision	3	2	2.0	252	envision
19713	1338	Roadmaster	roadmaster	4	1	5.5	205	roadmaster
19714	1338	Riviera	riviera	8	2	4.9	218	riviera
19715	1338	LeSabre	lesabre	4	2	5.4	165	lesabre
19716	1338	Enclave	enclave	3	2	3.6	281	enclave
19717	1338	Rendezvous	rendezvous	3	2	3.5	222	rendezvous
19718	1338	Excelle	excelle	\N	\N	0.0	0	excelle
19719	1338	Electra	electra	4	2	4.1	175	electra
19720	1338	Cascada	cascada	10	2	1.6	170	cascada
19721	1338	Skylark	skylark	4	2	3.0	158	skylark
19722	1338	Century	century	4	2	3.6	150	century
19723	1338	Special	special	8	1	4.7	149	special
19724	1338	LaCrosse	lacrosse	\N	\N	0.0	0	lacrosse
19725	1339	S7	s7	8	1	0.0	558	s7
19726	1340	Z300	z300	4	2	1.6	117	z300
19727	1340	Coupa	coupa	3	2	1.5	143	coupa
19728	1340	T600	t600	3	1	1.8	156	t600
19729	1341	Karma	karma	4	4	2.0	260	karma
19730	1342	MR Wagon	mr_wagon	1	2	0.7	60	mr_wagon
19731	1342	Reno	reno	1	2	2.0	129	reno
19732	1342	Grand Escudo	grand_escudo	3	2	2.7	181	grand_escudo
19733	1342	Cervo	cervo	1	2	0.7	57	cervo
19734	1342	Equator	equator	6	2	4.0	265	equator
19735	1342	Sidekick	sidekick	3	1	1.8	120	sidekick
19736	1342	Cappuccino	cappuccino	10	1	0.7	64	cappuccino
19737	1342	Carry	carry	5	1	0.8	41	carry
19738	1342	Splash	splash	1	2	1.1	85	splash
19739	1342	XL7	xl7	3	2	2.7	179	xl7
19740	1342	Alto	alto	1	2	0.9	54	alto
19741	1342	X-90	x-90	3	1	1.6	97	x-90
19742	1342	Solio	solio	2	4	1.3	90	solio
19743	1342	Baleno	baleno	4	1	1.5	97	baleno
19744	1342	Vitara	vitara	3	2	1.8	102	vitara
19745	1342	Ignis	ignis	1	1	1.2	83	ignis
19746	1342	Cultus	cultus	4	2	1.5	94	cultus
19747	1342	Hustler	hustler	1	4	0.7	58	hustler
19748	1342	Verona	verona	4	2	2.5	156	verona
19749	1342	Aerio	aerio	7	2	1.9	141	aerio
19750	1342	Spacia	spacia	1	4	0.7	58	spacia
19751	1342	Wagon R	wagon_r	1	2	1.1	67	wagon_r
19752	1342	SX4	sx4	3	1	1.5	108	sx4
19753	1342	Cultus Wagon	cultus_wagon	7	2	1.6	106	cultus_wagon
19754	1342	Kizashi	kizashi	4	4	2.4	178	kizashi
19755	1342	Landy	landy	2	4	2.0	146	landy
19756	1342	LJ 80	lj_80	3	1	0.8	41	lj_80
19757	1342	Esteem	esteem	4	2	1.7	110	esteem
19758	1342	Forenza	forenza	4	2	2.0	124	forenza
19759	1342	Kei	kei	1	2	0.7	60	kei
19760	1342	Every Landy	every_landy	2	2	1.3	88	every_landy
19761	1342	Liana	liana	7	1	1.4	106	liana
19762	1342	Grand Vitara	grand_vitara	3	2	2.2	144	grand_vitara
19763	1342	Every	every	2	2	1.0	64	every
19764	1342	Chevrolet Cruze	chevrolet_cruze	1	2	1.4	99	chevrolet_cruze
19765	1342	Palette	palette	2	2	0.7	59	palette
19766	1342	Escudo	escudo	3	2	1.9	117	escudo
19767	1342	Samurai	samurai	3	1	1.2	64	samurai
19768	1342	Jimny	jimny	3	2	1.2	81	jimny
19769	1342	Swift (Japan)	swift_japan	1	2	1.4	102	swift_japan
19770	1342	Swift	swift	1	2	1.4	88	swift
19771	1343	Т98	t98	3	2	0.0	360	t98
19772	1344	Marshal	marshal	3	1	2.0	116	marshal
19773	1345	Tracer	tracer	4	2	2.0	111	tracer
19774	1345	Topaz	topaz	4	2	2.3	97	topaz
19775	1345	Comet	comet	\N	\N	0.0	0	comet
19776	1345	Grand Marquis	grand_marquis	4	2	4.8	200	grand_marquis
19777	1345	Cougar	cougar	1	2	4.0	186	cougar
19778	1345	Monterey	monterey	4	2	5.7	233	monterey
19779	1345	Milan	milan	4	2	3.0	224	milan
19780	1345	Sable	sable	4	2	3.4	150	sable
19781	1345	Villager	villager	2	2	3.0	151	villager
19782	1345	Mariner	mariner	3	2	2.5	173	mariner
19783	1345	Mountaineer	mountaineer	3	2	4.3	228	mountaineer
19784	1345	Mystique	mystique	4	2	2.3	150	mystique
19785	1345	Marquis	marquis	4	2	4.4	135	marquis
19786	1346	Century	century	6	1	2.6	110	century
19787	1347	Ideal	ideal	1	1	1.1	65	ideal
19788	1348	120	120	10	1	2.3	55	120
19789	1349	DS 4 Crossback	ds_4_crossback	1	2	1.8	165	ds_4_crossback
19790	1349	DS 4	ds_4	1	2	1.6	150	ds_4
19791	1349	DS 3	ds_3	1	2	1.2	110	ds_3
19792	1350	Waja	waja	\N	\N	0.0	0	waja
19793	1350	Persona	persona	1	1	1.6	101	persona
19794	1350	400 Series	400_series	1	1	1.6	89	400_series
19795	1350	Satria	satria	1	2	1.5	87	satria
19796	1350	Putra	putra	8	2	1.8	140	putra
19797	1351	Assol	assol	1	1	1.6	96	assol
19798	1351	Kondor	kondor	4	1	2.0	133	kondor
19799	1351	Orion	orion	7	1	1.8	120	orion
19800	1352	3	3	4	1	1.8	112	3
19801	1352	7	7	3	1	2.0	143	7
19802	1352	M3	m3	4	1	1.5	109	m3
19803	1353	Hover M2	hover_m2	7	1	1.5	99	hover_m2
19804	1353	Hover M4	hover_m4	3	1	1.5	97	hover_m4
19805	1353	Safe	safe	3	1	2.2	106	safe
19806	1353	Sailor	sailor	6	1	2.2	105	sailor
19807	1353	Voleex C30	voleex_c30	4	1	1.5	101	voleex_c30
19808	1353	Cowry	cowry	2	1	2.0	143	cowry
19809	1353	Coolbear	coolbear	1	1	1.5	102	coolbear
19810	1353	Hover H5	hover_h5	3	1	2.4	136	hover_h5
19811	1353	Hover H6	hover_h6	3	1	2.0	143	hover_h6
19812	1353	Deer	deer	6	1	2.3	102	deer
19813	1353	Florid	florid	1	1	1.4	99	florid
19814	1353	Sing RUV	sing_ruv	3	1	2.2	102	sing_ruv
19815	1353	Hover	hover	3	1	2.0	125	hover
19816	1353	Wingle	wingle	6	1	2.1	107	wingle
19817	1353	Peri	peri	1	1	1.3	88	peri
19818	1353	Sokol	sokol	6	1	2.2	105	sokol
19819	1353	Pegasus	pegasus	3	1	2.2	105	pegasus
19820	1353	Hover H3	hover_h3	3	1	2.2	130	hover_h3
19821	1354	Viva	viva	4	1	1.5	64	viva
19822	1355	CL-класс	cl-klass	8	2	4.9	388	cl-klass
19823	1355	SLK-класс	slk-klass	10	2	2.7	204	slk-klass
19824	1355	V-класс	v-klass	2	2	2.2	153	v-klass
19825	1355	W100	w100	4	2	0.0	250	w100
19826	1355	GL-класс	gl-klass	3	2	3.5	306	gl-klass
19827	1355	GLC-класс Coupe	glc-klass_coupe	3	2	2.1	228	glc-klass_coupe
19828	1355	E-класс	e-klass	4	2	2.7	190	e-klass
19829	1355	GLE-класс	gle-klass	3	2	2.9	332	gle-klass
19830	1355	GLA-класс AMG	gla-klass_amg	3	3	2.0	371	gla-klass_amg
19831	1355	SLC-класс AMG	slc-klass_amg	10	2	3.0	367	slc-klass_amg
19832	1355	W114	w114	8	1	2.5	120	w114
19833	1355	CLK-класс AMG	clk-klass_amg	8	2	5.4	357	clk-klass_amg
19834	1355	SLC-класс	slc-klass	10	2	2.5	245	slc-klass
19835	1355	Vito	vito	2	1	2.3	116	vito
19836	1355	CLA-класс AMG	cla-klass_amg	4	3	2.0	360	cla-klass_amg
19837	1355	SLR McLaren	slr_mclaren	8	2	5.4	638	slr_mclaren
19838	1355	CLS-класс AMG	cls-klass_amg	4	2	4.2	514	cls-klass_amg
19839	1355	GLE-класс AMG Coupe	gle-klass_amg_coupe	3	2	4.3	474	gle-klass_amg_coupe
19840	1355	G-класс	g-klass	3	2	3.0	211	g-klass
19841	1355	Viano	viano	2	2	3.1	190	viano
19842	1355	W136	w136	4	1	1.8	39	w136
19843	1355	Sprinter Classic	sprinter_classic	9	1	2.4	122	sprinter_classic
19844	1355	GLB-класс	glb-klass	3	3	2.0	190	glb-klass
19845	1355	W123	w123	4	1	2.4	101	w123
19846	1355	S-класс	s-klass	4	2	3.7	247	s-klass
19847	1355	E-класс AMG	e-klass_amg	4	2	3.8	474	e-klass_amg
19848	1355	SL-класс	sl-klass	10	2	3.2	243	sl-klass
19849	1355	CLK-класс	clk-klass	8	2	2.7	197	clk-klass
19850	1355	190 (W201)	190_w201	4	1	2.2	117	190_w201
19851	1355	Vaneo	vaneo	2	1	1.7	91	vaneo
19852	1355	GL-класс AMG	gl-klass_amg	3	2	5.5	557	gl-klass_amg
19853	1355	SLS-класс AMG	sls-klass_amg	8	3	0.0	581	sls-klass_amg
19854	1355	B-класс	b-klass	1	4	1.7	129	b-klass
19855	1355	C-класс AMG	c-klass_amg	4	2	3.6	424	c-klass_amg
19856	1355	GLE-класс Coupe	gle-klass_coupe	3	2	1.5	330	gle-klass_coupe
19857	1355	W120	w120	4	1	1.9	64	w120
19858	1355	AMG GT	amg_gt	1	2	3.5	510	amg_gt
19859	1355	SLK-класс AMG	slk-klass_amg	10	2	5.4	360	slk-klass_amg
19860	1355	T1	t1	5	1	2.7	85	t1
19861	1355	GLA-класс	gla-klass	3	3	1.8	163	gla-klass
19862	1355	MB100	mb100	5	1	2.4	74	mb100
19863	1355	CLS-класс	cls-klass	4	2	3.3	292	cls-klass
19864	1355	W188	w188	10	1	3.0	150	w188
19865	1355	S-класс AMG	s-klass_amg	4	2	4.4	521	s-klass_amg
19866	1355	GLC-класс AMG Coupe	glc-klass_amg_coupe	3	2	3.5	433	glc-klass_amg_coupe
19867	1355	R-класс	r-klass	2	2	3.5	265	r-klass
19868	1355	A-класс AMG	a-klass_amg	1	3	2.0	371	a-klass_amg
19869	1355	CLA-класс	cla-klass	4	3	1.8	177	cla-klass
19870	1355	GLS-класс	gls-klass	3	2	3.0	350	gls-klass
19871	1355	W110	w110	4	1	2.0	80	w110
19872	1355	C-класс	c-klass	4	2	2.3	170	c-klass
19873	1355	W108	w108	4	1	2.7	145	w108
19874	1355	A-класс	a-klass	1	3	1.7	125	a-klass
19875	1355	GLC-класс	glc-klass	3	2	2.2	247	glc-klass
19876	1355	190 SL	190_sl	10	1	1.9	105	190_sl
19877	1355	CL-класс AMG	cl-klass_amg	8	2	5.4	520	cl-klass_amg
19878	1355	Simplex	simplex	\N	\N	0.0	0	simplex
19879	1355	CLC-класс	clc-klass	8	2	2.5	194	clc-klass
19880	1355	T2	t2	5	1	2.5	98	t2
19881	1355	W128	w128	10	1	2.5	118	w128
19882	1355	W186	w186	\N	\N	0.0	0	w186
19883	1355	Sprinter	sprinter	9	1	2.8	129	sprinter
19884	1355	W111	w111	8	1	2.5	133	w111
19885	1355	W115	w115	4	1	2.3	86	w115
19886	1355	X-класс	x-klass	6	2	2.7	190	x-klass
19887	1355	Maybach S-класс	maybach_s-klass	4	2	3.5	462	maybach_s-klass
19888	1355	M-класс	m-klass	3	2	3.5	245	m-klass
19889	1355	Citan	citan	2	1	1.5	90	citan
19890	1355	E-класс All-Terrain	e-klass_all-terrain	7	2	2.5	222	e-klass_all-terrain
19891	1355	GLE-класс AMG	gle-klass_amg	3	2	4.3	435	gle-klass_amg
19892	1355	Vario	vario	5	1	4.0	145	vario
19893	1355	GLC-класс AMG	glc-klass_amg	3	2	3.5	390	glc-klass_amg
19894	1355	R-класс AMG	r-klass_amg	\N	\N	0.0	0	r-klass_amg
19895	1355	GLK-класс	glk-klass	3	2	2.2	231	glk-klass
19896	1355	W189	w189	4	2	3.0	185	w189
19897	1355	GLS-класс AMG	gls-klass_amg	3	2	5.5	585	gls-klass_amg
19898	1355	M-класс AMG	m-klass_amg	3	2	5.5	525	m-klass_amg
19899	1355	Pullman	pullman	4	2	5.3	388	pullman
19900	1355	SL-класс AMG	sl-klass_amg	10	2	5.4	525	sl-klass_amg
19901	1355	G-класс AMG	g-klass_amg	3	2	4.7	507	g-klass_amg
19902	1355	W124	w124	4	1	2.6	132	w124
19903	1356	LM002	lm002	\N	\N	0.0	0	lm002
19904	1356	Huracan	huracan	8	3	5.2	610	huracan
19905	1356	Urus	urus	3	2	4.0	650	urus
19906	1356	Aventador	aventador	8	3	0.0	740	aventador
19907	1356	Gallardo	gallardo	8	3	5.1	540	gallardo
19908	1356	Murcielago	murcielago	8	1	0.0	610	murcielago
19909	1357	R2	r2	1	2	1.3	85	r2
19910	1357	Matiz	matiz	1	1	0.8	51	matiz
19911	1357	R4	r4	4	1	1.5	106	r4
19912	1357	Nexia	nexia	4	1	1.5	107	nexia
19913	1357	Gentra	gentra	4	1	1.5	106	gentra
19914	1358	J2	j2	1	1	1.0	68	j2
19915	1358	S5	s5	3	1	1.9	161	s5
19916	1358	J5	j5	4	1	1.7	119	j5
19917	1358	S3	s3	3	1	1.6	112	s3
19918	1358	iEV7S	iev7s	3	2	0.0	116	iev7s
19919	1358	Rein	rein	3	1	2.2	130	rein
19920	1358	T6	t6	6	1	2.4	136	t6
19921	1358	Refine	refine	2	1	2.4	136	refine
19922	1359	M8 серия Gran Coupe	m8_seriya_gran_coupe	4	2	4.4	625	m8_seriya_gran_coupe
19923	1359	X4	x4	3	2	2.5	306	x4
19924	1359	i3	i3	1	2	0.0	177	i3
19925	1359	6 серия GT	6_seriya_gt	1	2	2.5	265	6_seriya_gt
19926	1359	X3 M	x3_m	3	2	3.0	495	x3_m
19927	1359	i8	i8	8	2	0.0	362	i8
19928	1359	X6	x6	3	2	3.0	327	x6
19929	1359	X7	x7	3	2	3.0	340	x7
19930	1359	5 серия	5_seriya	4	2	2.8	192	5_seriya
19931	1359	321	321	4	1	2.0	46	321
19932	1359	Z3 M	z3_m	8	1	3.2	321	z3_m
19933	1359	2000 C/CS	2000_ccs	8	1	2.0	122	2000_ccs
19934	1359	6 серия Gran Coupe	6_seriya_gran_coupe	4	2	4.4	344	6_seriya_gran_coupe
19935	1359	X1	x1	3	2	1.5	190	x1
19936	1359	M3	m3	8	3	3.1	382	m3
19937	1359	7 серия	7_seriya	4	2	3.5	303	7_seriya
19938	1359	2 серия Grand Tourer	2_seriya_grand_tourer	2	2	1.8	136	2_seriya_grand_tourer
19939	1359	M8	m8	8	2	4.4	613	m8
19940	1359	327	327	8	1	2.0	56	327
19941	1359	Z3	z3	10	1	2.1	150	z3
19942	1359	2 серия Active Tourer	2_seriya_active_tourer	2	3	1.8	145	2_seriya_active_tourer
19943	1359	3 серия	3_seriya	4	2	2.1	163	3_seriya
19944	1359	Z4	z4	10	2	2.4	218	z4
19945	1359	1M	1m	8	1	3.0	340	1m
19946	1359	503	503	8	1	3.2	140	503
19947	1359	X3	x3	3	2	2.0	245	x3
19948	1359	Z4 M	z4_m	10	1	3.2	343	z4_m
19949	1359	5 серия GT	5_seriya_gt	1	2	3.7	303	5_seriya_gt
19950	1359	X2	x2	3	2	2.0	170	x2
19951	1359	Z1	z1	\N	\N	0.0	0	z1
19952	1359	M5	m5	4	3	4.4	534	m5
19953	1359	X5 M	x5_m	3	2	4.7	575	x5_m
19954	1359	2 серия	2_seriya	8	2	2.0	187	2_seriya
19955	1359	4 серия	4_seriya	8	2	2.5	249	4_seriya
19956	1359	X5	x5	3	2	3.7	300	x5
19957	1359	X4 M	x4_m	3	2	3.0	495	x4_m
19958	1359	02 (E10)	02_e10	4	1	2.0	101	02_e10
19959	1359	340	340	4	1	2.0	51	340
19960	1359	8 серия Gran Coupe	8_seriya_gran_coupe	4	2	3.7	340	8_seriya_gran_coupe
19961	1359	M6	m6	8	3	4.7	560	m6
19962	1359	M4	m4	8	3	3.0	441	m4
19963	1359	6 серия	6_seriya	8	2	3.3	300	6_seriya
19964	1359	X6 M	x6_m	3	2	4.0	565	x6_m
19965	1359	3 серия GT	3_seriya_gt	1	2	2.5	218	3_seriya_gt
19966	1359	326	326	4	1	2.0	51	326
19967	1359	1 серия	1_seriya	1	2	1.8	167	1_seriya
19968	1359	8 серия	8_seriya	8	2	4.4	323	8_seriya
19969	1359	M2	m2	8	3	3.0	410	m2
19970	1359	4 серия Gran Coupe	4_seriya_gran_coupe	1	2	2.5	247	4_seriya_gran_coupe
19971	1359	2 серия Gran Coupe	2_seriya_gran_coupe	4	3	1.8	223	2_seriya_gran_coupe
19972	1360	MB	mb	3	1	2.2	60	mb
19973	1361	2111	2111	7	1	1.6	85	2111
19974	1361	2310	2310	5	1	1.6	80	2310
19975	1361	2312	2312	6	1	1.6	80	2312
19976	1361	2110	2110	4	1	1.6	85	2110
19977	1362	RC F	rc_f	8	2	5.0	477	rc_f
19978	1362	UX	ux	3	4	2.0	164	ux
19979	1362	LC	lc	8	2	5.0	477	lc
19980	1362	RX	rx	3	2	2.7	233	rx
19981	1362	LS	ls	4	2	3.8	341	ls
19982	1362	RC	rc	8	2	2.8	282	rc
19983	1362	ES	es	4	2	3.0	208	es
19984	1362	IS F	is_f	4	2	5.0	423	is_f
19985	1362	HS	hs	4	4	2.4	147	hs
19986	1362	NX	nx	3	4	2.5	176	nx
19987	1362	LX	lx	3	2	4.5	253	lx
19988	1362	CT	ct	1	4	1.8	118	ct
19989	1362	IS	is	4	2	2.5	214	is
19990	1362	GS F	gs_f	4	2	5.0	477	gs_f
19991	1362	SC	sc	10	2	4.0	253	sc
19992	1362	GX	gx	3	2	4.7	266	gx
19993	1362	LFA	lfa	\N	\N	0.0	0	lfa
19994	1362	GS	gs	4	2	3.8	282	gs
19995	1363	Xenon	xenon	6	1	2.2	145	xenon
19996	1363	Indica	indica	1	1	1.4	71	indica
19997	1363	Telcoline	telcoline	6	1	2.0	89	telcoline
19998	1364	Horizon	horizon	1	1	1.4	76	horizon
19999	1365	Antelope	antelope	6	1	2.4	103	antelope
20000	1366	Zero	zero	\N	\N	0.0	0	zero
20001	1367	Durango	durango	3	2	5.2	292	durango
20002	1367	Stealth	stealth	8	1	3.0	226	stealth
20003	1367	Ram	ram	6	2	3.9	245	ram
20004	1367	WC series	wc_series	3	1	3.8	92	wc_series
20005	1367	Grand Caravan	grand_caravan	2	2	3.5	173	grand_caravan
20006	1367	Charger	charger	4	2	3.5	363	charger
20007	1367	Aries	aries	4	2	2.4	103	aries
20008	1367	Intrepid	intrepid	4	2	3.3	223	intrepid
20009	1367	Spirit	spirit	4	2	2.8	123	spirit
20010	1367	Avenger	avenger	4	2	2.5	170	avenger
20011	1367	Diplomat	diplomat	\N	\N	0.0	0	diplomat
20012	1367	Caliber	caliber	1	4	2.0	159	caliber
20013	1367	Ram Van	ram_van	9	2	4.6	155	ram_van
20014	1367	Challenger	challenger	8	2	3.6	403	challenger
20015	1367	Dakota	dakota	6	2	4.3	214	dakota
20016	1367	Custom Royal	custom_royal	4	2	5.2	234	custom_royal
20017	1367	Daytona	daytona	1	1	2.4	160	daytona
20018	1367	Journey	journey	3	2	2.7	185	journey
20019	1367	Stratus	stratus	4	2	2.5	150	stratus
20020	1367	Dynasty	dynasty	4	2	3.2	146	dynasty
20021	1367	Viper	viper	10	1	0.0	554	viper
20022	1367	Caravan	caravan	2	2	3.2	151	caravan
20023	1367	Magnum	magnum	7	2	3.5	250	magnum
20024	1367	Neon	neon	4	2	1.5	140	neon
20025	1367	Dart	dart	4	2	2.2	172	dart
20026	1367	Nitro	nitro	3	2	3.7	213	nitro
20027	1367	Shadow	shadow	10	2	2.5	102	shadow
20028	1368	DMC-12	dmc-12	\N	\N	0.0	0	dmc-12
20029	1369	Storm	storm	8	1	1.6	96	storm
20030	1369	Metro	metro	1	2	1.0	56	metro
20031	1369	Tracker	tracker	\N	\N	0.0	0	tracker
20032	1369	Prizm	prizm	4	2	1.6	106	prizm
20033	1370	C4 Aircross	c4_aircross	3	4	1.8	134	c4_aircross
20034	1370	Jumper	jumper	5	1	2.2	128	jumper
20035	1370	C3	c3	1	1	1.2	79	c3
20036	1370	BX	bx	1	1	1.7	78	bx
20037	1370	C5	c5	4	2	2.1	139	c5
20038	1370	Xsara	xsara	1	1	1.8	90	xsara
20039	1370	Grand C4 SpaceTourer	grand_c4_spacetourer	2	2	1.6	120	grand_c4_spacetourer
20040	1370	C8	c8	2	1	2.2	139	c8
20041	1370	XM	xm	1	1	2.1	145	xm
20042	1370	C15	c15	5	1	1.8	60	c15
20043	1370	DS 3	ds_3	1	2	1.5	120	ds_3
20044	1370	Xsara Picasso	xsara_picasso	2	1	1.7	109	xsara_picasso
20045	1370	C4 SpaceTourer	c4_spacetourer	2	2	1.6	150	c4_spacetourer
20046	1370	Evasion	evasion	2	1	2.0	109	evasion
20047	1370	Xantia	xantia	1	1	1.9	110	xantia
20048	1370	C4 Picasso	c4_picasso	2	3	1.7	132	c4_picasso
20049	1370	C4	c4	1	2	1.5	115	c4
20050	1370	ZX	zx	1	1	1.8	75	zx
20051	1370	Visa	visa	1	1	1.4	76	visa
20052	1370	Mehari	mehari	\N	\N	0.0	0	mehari
20053	1370	DS 4	ds_4	1	2	1.8	160	ds_4
20054	1370	2 CV	2_cv	1	1	0.6	29	2_cv
20055	1370	Type H	type_h	5	1	1.9	57	type_h
20056	1370	CX	cx	1	1	2.3	91	cx
20057	1370	C3 Aircross	c3_aircross	3	2	1.4	101	c3_aircross
20058	1370	AX	ax	1	1	1.1	53	ax
20059	1370	Berlingo	berlingo	2	1	1.8	100	berlingo
20060	1370	C2	c2	1	3	1.4	82	c2
20061	1370	DS	ds	\N	\N	0.0	0	ds
20062	1370	C4 Cactus	c4_cactus	3	3	1.2	82	c4_cactus
20063	1370	C5 Aircross	c5_aircross	3	2	1.8	164	c5_aircross
20064	1370	Nemo	nemo	2	1	1.3	72	nemo
20065	1370	GS	gs	1	1	1.2	60	gs
20066	1370	C6	c6	4	2	2.9	215	c6
20067	1370	Saxo	saxo	1	1	1.3	68	saxo
20068	1370	C-Elysee	c-elysee	4	1	1.4	92	c-elysee
20069	1370	Jumpy	jumpy	2	1	1.9	120	jumpy
20070	1370	C-Crosser	c-crosser	3	4	2.2	156	c-crosser
20071	1370	C3 Picasso	c3_picasso	2	1	1.5	112	c3_picasso
20072	1370	SpaceTourer	spacetourer	2	2	1.8	150	spacetourer
20073	1370	DS 5	ds_5	1	2	1.8	157	ds_5
20074	1370	Grand C4 Picasso	grand_c4_picasso	2	3	1.8	136	grand_c4_picasso
20075	1370	C1	c1	1	3	1.2	68	c1
20076	1371	TX1	tx1	\N	\N	0.0	0	tx1
20077	1371	TX4	tx4	7	2	2.5	102	tx4
20078	1371	TXII	txii	\N	\N	0.0	0	txii
20079	1372	114	114	4	2	0.0	303	114
20080	1372	4105	4105	4	2	0.0	315	4105
20081	1372	110	110	4	1	0.0	140	110
20082	1372	4104	4104	4	2	0.0	315	4104
20083	1372	117	117	4	2	0.0	303	117
20084	1373	Landmark	landmark	3	1	2.4	126	landmark
20085	1373	GrandTiger	grandtiger	6	1	2.4	131	grandtiger
20086	1373	Admiral	admiral	6	1	2.2	105	admiral
20087	1374	evA-4	eva-4	\N	\N	0.0	0	eva-4
20088	1375	2203	2203	9	1	2.2	85	2203
20089	1376	John Cooper Works	john_cooper_works	1	2	1.8	215	john_cooper_works
20168	1378	X50	x50	1	1	1.5	103	x50
20090	1376	Cooper S Paceman	cooper_s_paceman	1	2	1.6	184	cooper_s_paceman
20091	1376	One	one	1	2	1.4	90	one
20092	1376	Cooper S	cooper_s	1	2	1.8	175	cooper_s
20093	1376	Cooper S Clubman	cooper_s_clubman	1	2	1.8	184	cooper_s_clubman
20094	1376	John Cooper Works Countryman	john_cooper_works_countryman	3	2	1.8	231	john_cooper_works_countryman
20095	1376	Cooper Paceman	cooper_paceman	1	2	1.6	153	cooper_paceman
20096	1376	Cooper SD Countryman	cooper_sd_countryman	3	2	2.0	167	cooper_sd_countryman
20097	1376	Cooper Countryman	cooper_countryman	3	2	1.6	143	cooper_countryman
20098	1376	Cooper	cooper	1	2	1.5	121	cooper
20099	1376	Cooper Clubman	cooper_clubman	1	2	1.6	122	cooper_clubman
20100	1376	Cooper S Countryman	cooper_s_countryman	3	2	1.8	184	cooper_s_countryman
20101	1376	John Cooper Works Clubman	john_cooper_works_clubman	7	2	1.8	221	john_cooper_works_clubman
20102	1376	John Cooper Works Paceman	john_cooper_works_paceman	1	2	1.6	218	john_cooper_works_paceman
+20103	1377	2	2	1	2	1.4	83	2
20104	1377	Millenia	millenia	4	2	2.3	200	millenia
20105	1377	Bongo Brawny	bongo_brawny	2	1	2.3	86	bongo_brawny
20106	1377	MX-6	mx-6	8	1	2.3	163	mx-6
20107	1377	Cronos	cronos	4	2	2.0	140	cronos
20108	1377	3	3	4	2	1.8	115	3
20109	1377	929	929	4	1	2.1	124	929
20110	1377	Proceed Marvie	proceed_marvie	3	2	2.5	125	proceed_marvie
20111	1377	6 MPS	6_mps	4	1	2.3	260	6_mps
20112	1377	616	616	4	1	1.6	75	616
20113	1377	B-Series	b-series	6	1	2.4	109	b-series
20114	1377	CX-9	cx-9	3	2	3.5	259	cx-9
20115	1377	Xedos 6	xedos_6	4	1	1.8	140	xedos_6
20116	1377	Eunos Cosmo	eunos_cosmo	8	2	1.7	230	eunos_cosmo
20117	1377	Familia	familia	4	2	1.7	98	familia
20118	1377	Sentia	sentia	4	2	2.8	200	sentia
20119	1377	AZ-Wagon	az-wagon	2	2	0.7	57	az-wagon
20120	1377	Roadster	roadster	10	1	1.8	146	roadster
20121	1377	323	323	1	1	1.6	87	323
20122	1377	Autozam AZ-3	autozam_az-3	8	1	1.7	120	autozam_az-3
20123	1377	Axela	axela	4	2	2.1	130	axela
20124	1377	Verisa	verisa	1	2	1.5	113	verisa
20125	1377	5	5	2	1	1.9	144	5
20126	1377	CX-5	cx-5	3	2	2.4	155	cx-5
20127	1377	Demio	demio	1	2	1.4	86	demio
20128	1377	Protege	protege	4	2	1.7	108	protege
20129	1377	Atenza	atenza	4	2	2.3	155	atenza
20130	1377	Bongo	bongo	2	1	1.9	100	bongo
20131	1377	6	6	4	2	2.3	155	6
20132	1377	Carol	carol	1	2	0.7	54	carol
20133	1377	626	626	1	1	2.1	101	626
20134	1377	Biante	biante	2	2	2.2	151	biante
20135	1377	Eunos	eunos	4	2	2.4	210	eunos
20136	1377	Scrum	scrum	2	2	0.7	64	scrum
20137	1377	Proceed	proceed	6	2	2.4	103	proceed
20138	1377	Spiano	spiano	\N	\N	0.0	0	spiano
20139	1377	Tribute	tribute	3	2	2.4	153	tribute
20140	1377	Lantis	lantis	4	2	1.9	135	lantis
20141	1377	MPV	mpv	2	2	2.2	141	mpv
20142	1377	Efini	efini	4	2	2.3	180	efini
20143	1377	RX-8	rx-8	8	1	2.8	231	rx-8
20144	1377	CX-3	cx-3	3	2	1.8	120	cx-3
20145	1377	MX-3	mx-3	8	1	1.7	118	mx-3
20146	1377	MX-5	mx-5	10	1	1.8	126	mx-5
20147	1377	Xedos 9	xedos_9	4	2	2.3	165	xedos_9
20148	1377	Luce	luce	4	2	2.2	122	luce
20149	1377	Capella	capella	7	2	1.9	120	capella
20150	1377	121	121	4	1	1.2	57	121
20151	1377	3 MPS	3_mps	1	1	2.3	260	3_mps
20152	1377	Laputa	laputa	1	2	0.7	60	laputa
20153	1377	Navajo	navajo	3	1	4.0	162	navajo
20154	1377	AZ-Offroad	az-offroad	\N	\N	0.0	0	az-offroad
20155	1377	Eunos 500	eunos_500	4	2	2.0	160	eunos_500
20156	1377	Premacy	premacy	2	2	1.9	135	premacy
20157	1377	RX-7	rx-7	8	1	1.2	228	rx-7
20158	1377	CX-7	cx-7	3	2	2.4	237	cx-7
20159	1377	Bongo Friendee	bongo_friendee	2	2	2.3	125	bongo_friendee
20160	1377	Levante	levante	3	2	2.0	140	levante
20161	1377	BT-50	bt-50	6	1	2.9	172	bt-50
20162	1377	Flair	flair	2	4	0.7	58	flair
20163	1377	Revue	revue	4	2	1.4	82	revue
20164	1377	Persona	persona	4	2	1.9	115	persona
20165	1378	Breez (520)	breez_520	4	1	1.4	90	breez_520
20166	1378	X60	x60	3	1	1.8	129	x60
20167	1378	Solano	solano	4	1	1.6	106	solano
20169	1378	Smily (320)	smily_320	1	1	1.3	88	smily_320
20170	1378	Murman	murman	4	1	2.1	144	murman
20171	1378	Cebrium (720)	cebrium_720	4	1	1.8	128	cebrium_720
20172	1378	Celliya (530)	celliya_530	4	1	1.5	96	celliya_530
20173	1378	Myway	myway	3	1	1.8	125	myway
20174	1378	X70	x70	3	1	2.0	136	x70
20175	1379	E5	e5	4	1	1.5	109	e5
20176	1379	Sweet (QQ)	sweet_qq	1	1	1.0	53	sweet_qq
20177	1379	Tiggo (T11)	tiggo_t11	3	1	2.0	126	tiggo_t11
20178	1379	Tiggo 5	tiggo_5	3	4	1.9	132	tiggo_5
20179	1379	Arrizo 7	arrizo_7	4	4	1.6	126	arrizo_7
20180	1379	Kimo (A1)	kimo_a1	1	1	1.3	84	kimo_a1
20181	1379	Tiggo 3	tiggo_3	3	1	1.6	126	tiggo_3
20182	1379	Fora (A21)	fora_a21	4	1	1.6	124	fora_a21
20183	1379	Very	very	1	1	1.5	111	very
20184	1379	Tiggo 2	tiggo_2	3	1	1.8	129	tiggo_2
20185	1379	Oriental Son (B11)	oriental_son_b11	4	1	2.2	127	oriental_son_b11
20186	1379	Tiggo 8	tiggo_8	3	4	2.0	170	tiggo_8
20187	1379	IndiS (S18D)	indis_s18d	1	1	1.3	84	indis_s18d
20188	1379	Bonus 3 (E3)	bonus_3_e3	4	1	3.8	109	bonus_3_e3
20189	1379	Tiggo 4	tiggo_4	3	4	1.8	134	tiggo_4
20190	1379	M11 (A3)	m11_a3	1	1	1.7	126	m11_a3
20191	1379	Karry	karry	2	1	1.5	109	karry
20192	1379	Amulet (A15)	amulet_a15	1	1	1.6	88	amulet_a15
20193	1379	QQ6 (S21)	qq6_s21	1	1	1.2	83	qq6_s21
20194	1379	CrossEastar (B14)	crosseastar_b14	2	1	4.0	136	crosseastar_b14
20195	1379	Tiggo 7	tiggo_7	3	4	1.8	137	tiggo_7
20196	1379	Bonus (A13)	bonus_a13	1	1	3.8	109	bonus_a13
20197	1380	S80	s80	4	2	2.8	205	s80
20198	1380	260	260	4	1	2.7	140	260
20199	1380	780	780	4	2	2.6	154	780
20200	1380	V90	v90	7	2	2.5	220	v90
20201	1380	V40	v40	7	1	1.8	138	v40
20202	1380	V70	v70	7	2	2.3	180	v70
20203	1380	480	480	8	1	1.9	110	480
20204	1380	S40	s40	4	1	1.9	131	s40
20205	1380	Laplander	laplander	3	1	3.0	117	laplander
20206	1380	940	940	4	1	2.4	127	940
20207	1380	440	440	1	1	1.8	102	440
20208	1380	850	850	4	1	2.3	202	850
20209	1380	C30	c30	1	1	2.2	145	c30
20210	1380	66	66	\N	\N	0.0	0	66
20211	1380	V90 Cross Country	v90_cross_country	7	2	2.0	242	v90_cross_country
20212	1380	S60 Cross Country	s60_cross_country	4	2	2.3	245	s60_cross_country
20213	1380	740	740	4	1	2.3	116	740
20214	1380	XC40	xc40	3	2	2.0	190	xc40
20215	1380	XC90	xc90	3	2	2.5	235	xc90
20216	1380	760	760	4	1	2.4	152	760
20217	1380	140	140	4	1	2.0	103	140
20218	1380	960	960	4	2	2.5	170	960
20219	1380	V60	v60	7	2	2.2	240	v60
20220	1380	S60	s60	4	2	2.3	204	s60
20221	1380	V40 Cross Country	v40_cross_country	1	2	1.8	180	v40_cross_country
20222	1380	C70	c70	8	2	2.4	197	c70
20223	1380	V50	v50	7	1	2.0	125	v50
20224	1380	V60 Cross Country	v60_cross_country	7	2	2.2	245	v60_cross_country
20225	1380	XC70	xc70	7	2	2.4	209	xc70
20226	1380	S90	s90	4	2	2.5	220	s90
20227	1380	XC60	xc60	3	2	2.5	218	xc60
20228	1380	S70	s70	4	1	2.4	170	s70
20229	1380	340	340	1	1	1.7	69	340
20230	1380	460	460	4	1	1.8	104	460
20231	1380	240	240	4	1	2.2	113	240
20232	1380	360	360	1	1	2.0	107	360
20233	1381	Roadster	roadster	10	3	0.7	82	roadster
20234	1381	Forfour	forfour	1	3	1.1	75	forfour
20235	1381	Fortwo	fortwo	1	3	0.7	71	fortwo
20236	1382	V2	v2	1	1	1.3	91	v2
20237	1382	Besturn X80	besturn_x80	3	2	2.0	145	besturn_x80
20238	1382	6350	6350	5	1	1.0	45	6350
20239	1382	Besturn X40	besturn_x40	3	1	1.6	108	besturn_x40
20240	1382	Vita	vita	1	1	1.4	97	vita
20241	1382	V5	v5	4	1	1.5	102	v5
20242	1382	Oley	oley	4	2	1.6	102	oley
20243	1382	Besturn B50	besturn_b50	4	1	1.6	103	besturn_b50
20244	1382	Besturn B70	besturn_b70	4	1	2.0	147	besturn_b70
20245	1382	Jinn	jinn	1	1	1.1	52	jinn
20246	1383	D10	d10	\N	\N	0.0	0	d10
20247	1383	B10	b10	4	2	4.6	347	b10
20248	1383	B3	b3	8	1	3.3	280	b3
20249	1383	D3	d3	\N	\N	0.0	0	d3
20250	1383	B6	b6	8	2	4.4	540	b6
20251	1383	B7	b7	4	2	3.7	507	b7
20252	1383	B5	b5	4	2	4.4	530	b5
20253	1383	B12	b12	4	2	5.3	369	b12
20254	1384	Suburban	suburban	3	2	5.7	200	suburban
20255	1384	Typhoon	typhoon	3	2	4.3	280	typhoon
20256	1384	Terrain	terrain	3	2	2.4	182	terrain
20257	1384	Sonoma	sonoma	6	2	2.5	105	sonoma
20258	1384	Jimmy	jimmy	3	2	4.3	192	jimmy
20259	1384	Envoy	envoy	3	2	4.3	276	envoy
20260	1384	Vandura	vandura	2	2	5.0	155	vandura
20261	1384	Safari	safari	2	2	4.3	192	safari
20262	1384	Sierra	sierra	6	2	4.8	315	sierra
20263	1384	Yukon	yukon	3	2	5.1	296	yukon
20264	1384	Acadia	acadia	3	2	3.6	279	acadia
20265	1384	Savana	savana	2	2	5.1	285	savana
20266	1385	Marina	marina	4	1	1.8	89	marina
20267	1386	Cayenne GTS	cayenne_gts	3	2	4.2	420	cayenne_gts
20268	1386	718 Cayman	718_cayman	8	3	2.3	333	718_cayman
20269	1386	911 Carrera S	911_carrera_s	8	3	3.6	393	911_carrera_s
20270	1386	911 GT2	911_gt2	8	1	3.7	615	911_gt2
20271	1386	944	944	8	1	2.5	190	944
20272	1386	Cayenne Turbo S	cayenne_turbo_s	3	2	4.5	536	cayenne_turbo_s
20273	1386	911 GT2 RS	911_gt2_rs	8	3	3.8	700	911_gt2_rs
20274	1386	Panamera 4S	panamera_4s	1	3	3.0	420	panamera_4s
20275	1386	356	356	\N	\N	0.0	0	356
20276	1386	Cayenne S	cayenne_s	3	2	3.9	385	cayenne_s
20277	1386	Panamera S	panamera_s	1	3	3.9	400	panamera_s
20278	1386	928	928	8	2	4.7	276	928
20279	1386	Panamera 4	panamera_4	1	3	3.0	320	panamera_4
20280	1386	Panamera GTS	panamera_gts	1	3	4.4	440	panamera_gts
20281	1386	Macan S	macan_s	3	3	3.0	340	macan_s
20282	1386	Cayenne	cayenne	3	2	3.2	317	cayenne
20283	1386	911 Carrera	911_carrera	8	1	3.2	279	911_carrera
20284	1386	Macan Turbo	macan_turbo	3	3	3.6	400	macan_turbo
20285	1386	Cayenne Coupe	cayenne_coupe	3	2	3.0	495	cayenne_coupe
20286	1386	Macan GTS	macan_gts	3	3	3.0	360	macan_gts
20287	1386	Carrera GT	carrera_gt	10	1	5.7	612	carrera_gt
20288	1386	Panamera	panamera	1	3	3.6	410	panamera
20289	1386	911 Targa 4	911_targa_4	10	3	3.0	370	911_targa_4
20290	1386	Cayman GTS	cayman_gts	\N	\N	0.0	0	cayman_gts
20291	1386	718 Boxster	718_boxster	10	3	2.3	333	718_boxster
20292	1386	911 Turbo	911_turbo	8	2	3.7	490	911_turbo
20293	1386	911 GT3 RS	911_gt3_rs	8	3	4.0	500	911_gt3_rs
20294	1386	Boxster S	boxster_s	10	3	3.3	288	boxster_s
20295	1386	Panamera Turbo	panamera_turbo	1	3	4.4	520	panamera_turbo
20296	1386	718 Boxster S	718_boxster_s	10	3	2.5	358	718_boxster_s
20297	1386	Boxster	boxster	10	3	2.7	260	boxster
20298	1386	911 Carrera 4S	911_carrera_4s	8	3	3.6	393	911_carrera_4s
20299	1386	Macan	macan	3	3	2.5	249	macan
20300	1386	Panamera Turbo S	panamera_turbo_s	1	3	4.4	535	panamera_turbo_s
20301	1386	Cayman S	cayman_s	8	3	3.4	320	cayman_s
20302	1386	911 Turbo S	911_turbo_s	8	3	3.7	560	911_turbo_s
20303	1386	911 GT3	911_gt3	8	3	3.8	446	911_gt3
20304	1386	Cayenne Turbo	cayenne_turbo	3	2	4.5	510	cayenne_turbo
20305	1386	Taycan	taycan	4	2	0.0	646	taycan
20306	1386	718 Cayman S	718_cayman_s	8	3	2.5	350	718_cayman_s
20307	1386	Cayman	cayman	8	3	2.7	295	cayman
20308	1386	924	924	8	1	2.0	148	924
20309	1386	911 Targa 4S	911_targa_4s	\N	\N	0.0	0	911_targa_4s
20310	1386	911 Carrera 4	911_carrera_4	8	2	3.4	335	911_carrera_4
20311	1387	MPV	mpv	2	1	2.0	110	mpv
20312	1387	580	580	3	1	1.8	132	580
20313	1387	H30 Cross	h30_cross	1	1	1.6	117	h30_cross
20314	1387	S30	s30	4	1	1.6	117	s30
20315	1387	AX7	ax7	3	2	1.9	136	ax7
20316	1388	550	550	4	2	1.8	146	550
20317	1388	ZR	zr	1	1	1.8	160	zr
20318	1388	TF	tf	10	1	1.8	136	tf
20319	1388	MGB	mgb	10	1	1.8	92	mgb
20320	1388	3 Cross	3_cross	\N	\N	0.0	0	3_cross
20321	1388	ZT	zt	4	1	2.5	177	zt
20322	1388	F	f	10	1	1.8	120	f
20323	1388	350	350	4	2	1.5	106	350
20324	1389	XJS	xjs	10	2	4.7	268	xjs
20325	1389	XF	xf	4	2	2.7	275	xf
20326	1389	E-type	e-type	10	1	4.0	265	e-type
20327	1389	XK	xk	8	2	4.2	298	xk
20328	1389	XJR	xjr	4	2	4.1	363	xjr
20329	1389	Mark IX	mark_ix	\N	\N	0.0	0	mark_ix
20330	1389	Mark 2	mark_2	4	1	3.8	265	mark_2
20331	1389	XKR	xkr	8	2	4.2	416	xkr
20332	1389	X-type	x-type	4	2	2.2	156	x-type
20333	1389	E-Pace	e-pace	3	2	2.0	220	e-pace
20334	1389	F-type	f-type	8	2	3.0	400	f-type
20335	1389	XJ	xj	4	2	3.4	241	xj
20336	1389	F-Pace	f-pace	3	2	2.0	275	f-pace
20337	1389	XE	xe	4	2	2.5	240	xe
20338	1389	XFR	xfr	4	2	5.0	530	xfr
20339	1389	I-Pace	i-pace	3	2	0.0	400	i-pace
20340	1389	S-type	s-type	4	2	3.0	238	s-type
20341	1390	GS8	gs8	3	2	2.0	190	gs8
20342	1390	GN8	gn8	\N	\N	0.0	0	gn8
20343	1390	WAY M2	way_m2	6	1	1.0	56	way_m2
20344	1390	WAY V1	way_v1	2	1	1.0	56	way_v1
20345	1390	WAY M1	way_m1	6	1	1.0	56	way_m1
20346	1391	X6	x6	3	1	2.6	105	x6
20347	1391	Fashion	fashion	2	1	2.0	139	fashion
20348	1392	Leone	leone	4	1	1.7	97	leone
20349	1392	BRZ	brz	8	2	2.0	200	brz
20350	1392	Domingo	domingo	2	1	1.1	52	domingo
20351	1392	Justy	justy	1	1	1.3	70	justy
20352	1392	Outback	outback	7	2	2.2	170	outback
20353	1392	Dias	dias	2	2	0.7	56	dias
20354	1392	Levorg	levorg	7	4	1.8	235	levorg
20355	1392	Impreza	impreza	1	2	1.9	135	impreza
20356	1392	Stella	stella	2	4	0.7	54	stella
20357	1392	Libero	libero	2	1	1.2	54	libero
20358	1392	SVX	svx	8	2	3.3	230	svx
20359	1392	Dex	dex	1	2	1.3	94	dex
20360	1392	WRX STI	wrx_sti	4	1	2.3	273	wrx_sti
20361	1392	Pleo	pleo	1	4	0.7	58	pleo
20362	1392	Trezia	trezia	1	4	1.4	101	trezia
20363	1392	XV	xv	3	4	1.8	132	xv
20364	1392	Legacy Lancaster	legacy_lancaster	7	2	2.8	170	legacy_lancaster
20365	1392	Exiga	exiga	7	2	2.3	162	exiga
20366	1392	R1	r1	1	4	0.7	59	r1
20367	1392	Rex	rex	1	1	0.0	35	rex
20368	1392	Ascent	ascent	\N	\N	0.0	0	ascent
20369	1392	R2	r2	1	4	0.7	54	r2
20370	1392	Legacy	legacy	4	2	2.2	163	legacy
20371	1392	Tribeca	tribeca	3	2	3.3	250	tribeca
20372	1392	Sambar	sambar	2	2	0.7	52	sambar
20373	1392	Vivio	vivio	1	1	0.7	53	vivio
20374	1392	Forester	forester	3	2	1.0	171	forester
20375	1392	WRX	wrx	4	1	2.3	235	wrx
20376	1392	Alcyone	alcyone	8	2	2.6	135	alcyone
20377	1392	Traviq	traviq	2	2	2.0	136	traviq
20378	1392	Baja	baja	6	2	2.5	188	baja
20379	1393	Malaga	malaga	4	1	1.6	73	malaga
20380	1393	Ateca	ateca	\N	\N	0.0	0	ateca
20381	1393	Leon	leon	1	1	1.7	125	leon
20382	1393	Exeo	exeo	7	1	1.6	102	exeo
20383	1393	Leon FR	leon_fr	1	3	1.8	160	leon_fr
20384	1393	Cordoba	cordoba	4	1	1.8	95	cordoba
20385	1393	Mii	mii	1	3	1.0	68	mii
20386	1393	Marbella	marbella	1	1	0.9	40	marbella
20387	1393	Inca	inca	5	1	1.7	62	inca
20388	1393	Toledo	toledo	1	1	1.9	102	toledo
20389	1393	Leon Cupra	leon_cupra	1	1	1.9	240	leon_cupra
20390	1393	Leon X-PERIENCE	leon_x-perience	\N	\N	0.0	0	leon_x-perience
20391	1393	Alhambra	alhambra	2	1	2.0	128	alhambra
20392	1393	Altea	altea	2	1	1.6	140	altea
20393	1393	Altea Freetrack	altea_freetrack	2	3	1.6	140	altea_freetrack
20394	1393	Arosa	arosa	1	1	1.2	55	arosa
20395	1393	Ibiza FR	ibiza_fr	1	3	1.4	150	ibiza_fr
20396	1393	Ibiza	ibiza	1	1	1.6	75	ibiza
20397	1393	Altea XL	altea_xl	2	1	1.5	125	altea_xl
20398	1394	Qute	qute	1	3	0.0	13	qute
20399	1395	1032	1032	5	1	0.0	0	1032
20400	1395	Baodian	baodian	6	1	2.8	81	baodian
20401	1395	1052	1052	5	1	0.0	0	1052
20402	1396	2317	2317	6	1	2.9	91	2317
20403	1397	Telstar	telstar	4	2	1.9	121	telstar
20404	1397	Escape	escape	3	2	2.0	162	escape
20405	1397	Orion	orion	4	1	1.5	74	orion
20406	1397	Fusion (North America)	fusion_north_america	4	2	2.2	184	fusion_north_america
20407	1397	Model T	model_t	10	1	2.9	20	model_t
20408	1397	Transit Custom	transit_custom	5	1	2.2	113	transit_custom
20409	1397	Galaxy	galaxy	2	1	2.0	150	galaxy
20410	1397	Fusion	fusion	1	1	1.4	85	fusion
20411	1397	Ixion	ixion	2	2	1.8	133	ixion
20412	1397	Focus	focus	4	1	1.6	108	focus
20413	1397	Puma	puma	1	1	1.6	103	puma
20414	1397	Probe	probe	8	1	2.4	129	probe
20415	1397	V8	v8	\N	\N	0.0	0	v8
20493	1399	FF	ff	1	3	0.0	660	ff
20416	1397	Tourneo Connect	tourneo_connect	2	1	1.5	110	tourneo_connect
20417	1397	Fairmont	fairmont	4	2	3.3	82	fairmont
20418	1397	Mondeo	mondeo	4	1	2.1	141	mondeo
20419	1397	Explorer Sport Trac	explorer_sport_trac	6	2	4.0	213	explorer_sport_trac
20420	1397	Ranger (North America)	ranger_north_america	6	2	3.0	148	ranger_north_america
20421	1397	Explorer	explorer	3	2	4.0	249	explorer
20422	1397	Courier	courier	5	1	1.6	60	courier
20423	1397	Anglia	anglia	1	1	1.1	36	anglia
20424	1397	Spectron	spectron	2	1	2.0	84	spectron
20425	1397	Econoline	econoline	2	2	4.9	215	econoline
20426	1397	Five Hundred	five_hundred	4	4	3.0	203	five_hundred
20427	1397	Escort	escort	1	1	1.6	84	escort
20428	1397	Scorpio	scorpio	4	1	2.4	123	scorpio
20429	1397	Focus ST	focus_st	1	1	2.0	199	focus_st
20430	1397	Taurus	taurus	4	2	3.3	202	taurus
20431	1397	Windstar	windstar	2	2	3.4	155	windstar
20432	1397	Mustang	mustang	8	2	4.3	297	mustang
20433	1397	F-250	f-250	6	2	2.7	325	f-250
20434	1397	Festiva	festiva	1	2	1.3	73	festiva
20435	1397	Country Squire	country_squire	\N	\N	0.0	0	country_squire
20436	1397	Contour	contour	4	2	2.3	132	contour
20437	1397	F-150	f-150	6	2	4.2	323	f-150
20438	1397	Ranchero	ranchero	6	2	2.9	275	ranchero
20439	1397	Consul	consul	4	1	2.0	95	consul
20440	1397	Excursion	excursion	3	2	5.4	261	excursion
20441	1397	F-350	f-350	6	2	5.0	210	f-350
20442	1397	Thunderbird	thunderbird	8	2	4.3	177	thunderbird
20443	1397	Maverick	maverick	3	2	2.4	138	maverick
20444	1397	Freda	freda	2	2	2.3	115	freda
20445	1397	P100	p100	6	1	2.0	75	p100
20446	1397	Edge	edge	3	2	3.1	288	edge
20447	1397	Fairlane	fairlane	4	1	3.3	117	fairlane
20448	1397	Sierra	sierra	4	1	2.0	101	sierra
20449	1397	C-MAX	c-max	2	1	1.6	123	c-max
20450	1397	Bronco	bronco	3	2	4.8	194	bronco
20451	1397	Mondeo ST	mondeo_st	4	1	3.0	226	mondeo_st
20452	1397	Model B	model_b	4	1	3.6	65	model_b
20453	1397	Transit	transit	9	1	2.3	101	transit
20454	1397	EcoSport	ecosport	3	3	1.8	123	ecosport
20455	1397	B-MAX	b-max	2	1	1.3	103	b-max
20456	1397	Laser	laser	4	2	0.8	92	laser
20457	1397	Tourneo	tourneo	9	1	2.2	110	tourneo
20458	1397	Aerostar	aerostar	2	2	3.5	148	aerostar
20459	1397	Fiesta ST	fiesta_st	1	1	2.0	150	fiesta_st
20460	1397	Expedition	expedition	3	2	5.0	243	expedition
20461	1397	Ranger	ranger	6	1	2.5	147	ranger
20462	1397	Tempo	tempo	4	2	2.3	100	tempo
20463	1397	Focus RS	focus_rs	1	1	2.2	260	focus_rs
20464	1397	Taunus	taunus	4	1	1.8	73	taunus
20465	1397	LTD Crown Victoria	ltd_crown_victoria	4	2	4.9	152	ltd_crown_victoria
20466	1397	Cougar	cougar	8	1	2.3	170	cougar
20467	1397	Freestyle	freestyle	3	4	3.0	203	freestyle
20468	1397	Econovan	econovan	2	1	1.9	84	econovan
20469	1397	Grand C-MAX	grand_c-max	2	1	1.6	125	grand_c-max
20470	1397	Aspire	aspire	1	1	1.3	64	aspire
20471	1397	Tourneo Custom	tourneo_custom	2	1	2.2	140	tourneo_custom
20472	1397	Crown Victoria	crown_victoria	4	2	4.6	213	crown_victoria
20473	1397	Transit Connect	transit_connect	5	1	1.7	103	transit_connect
20474	1397	S-MAX	s-max	2	1	2.0	150	s-max
20475	1397	Kuga	kuga	3	2	1.6	150	kuga
20476	1397	Escort (North America)	escort_north_america	7	2	2.0	112	escort_north_america
20477	1397	Granada	granada	4	1	2.4	113	granada
20478	1397	Model A	model_a	1	1	3.3	40	model_a
20479	1397	Galaxie	galaxie	8	2	0.0	284	galaxie
20480	1397	Fiesta	fiesta	1	1	1.2	81	fiesta
20481	1397	Flex	flex	3	2	3.5	275	flex
20482	1397	Ka	ka	1	1	1.3	69	ka
20483	1397	Capri	capri	8	1	2.2	90	capri
20484	1398	Montego	montego	4	1	0.7	35	montego
20485	1398	Mini	mini	4	1	1.0	39	mini
20486	1399	488 Pista	488_pista	\N	\N	0.0	0	488_pista
20487	1399	Testarossa	testarossa	\N	\N	0.0	0	testarossa
20488	1399	488 GTB	488_gtb	\N	\N	0.0	0	488_gtb
20489	1399	F12berlinetta	f12berlinetta	8	3	6.0	740	f12berlinetta
20490	1399	California	california	10	3	4.1	490	california
20491	1399	599 GTB Fiorano	599_gtb_fiorano	8	3	6.0	620	599_gtb_fiorano
20492	1399	SF90 Stradale	sf90_stradale	\N	\N	0.0	0	sf90_stradale
20494	1399	575M Maranello	575m_maranello	8	2	5.7	515	575m_maranello
20495	1399	F355	f355	\N	\N	0.0	0	f355
20496	1399	812 Superfast	812_superfast	8	3	6.0	800	812_superfast
20497	1399	Portofino	portofino	\N	\N	0.0	0	portofino
20498	1399	GTC4Lusso	gtc4lusso	1	3	5.0	650	gtc4lusso
20499	1399	Mondial	mondial	\N	\N	0.0	0	mondial
20500	1399	612 Scaglietti	612_scaglietti	8	2	5.7	540	612_scaglietti
20501	1399	458 Italia	458_italia	8	3	4.5	570	458_italia
20502	1399	360	360	8	3	3.6	400	360
20503	1399	F430	f430	10	3	4.3	490	f430
20504	1399	458 Spider	458_spider	\N	\N	0.0	0	458_spider
20505	1400	Q60	q60	8	2	3.0	333	q60
20506	1400	JX	jx	3	4	3.5	264	jx
20507	1400	QX30	qx30	3	3	2.0	211	qx30
20508	1400	FX37	fx37	3	2	3.7	333	fx37
20509	1400	G35	g35	4	2	3.0	293	g35
20510	1400	M56	m56	4	2	5.6	408	m56
20511	1400	I30	i30	4	2	3.0	212	i30
20512	1400	EX25	ex25	3	2	2.5	222	ex25
20513	1400	Q50	q50	4	2	3.0	306	q50
20514	1400	EX30	ex30	3	2	3.0	238	ex30
20515	1400	M25	m25	4	2	2.5	222	m25
20516	1400	Q45	q45	4	2	4.3	278	q45
20517	1400	FX30	fx30	3	2	3.0	238	fx30
20518	1400	J30	j30	4	2	3.0	215	j30
20519	1400	QX80	qx80	3	2	5.6	405	qx80
20520	1400	Q30	q30	1	3	1.6	149	q30
20521	1400	QX56	qx56	3	2	5.6	320	qx56
20522	1400	G25	g25	4	2	2.5	222	g25
20523	1400	QX4	qx4	3	2	3.4	206	qx4
20524	1400	QX50	qx50	3	2	2.5	261	qx50
20525	1400	G37	g37	8	2	3.7	334	g37
20526	1400	I35	i35	4	2	3.5	255	i35
20527	1400	FX35	fx35	3	2	3.5	284	fx35
20528	1400	FX50	fx50	3	2	5.0	410	fx50
20529	1400	QX70	qx70	3	2	3.0	238	qx70
20530	1400	G20	g20	4	2	2.0	143	g20
20531	1400	Q70	q70	4	2	2.8	222	q70
20532	1400	M45	m45	4	2	4.5	339	m45
20533	1400	EX35	ex35	3	2	3.5	299	ex35
20534	1400	M35	m35	4	2	3.5	303	m35
20535	1400	EX37	ex37	3	2	3.7	325	ex37
20536	1400	FX45	fx45	3	2	4.5	320	fx45
20537	1400	M37	m37	4	2	3.7	333	m37
20538	1400	QX60	qx60	3	4	3.0	262	qx60
20539	1401	Kyron	kyron	3	1	2.2	150	kyron
20540	1401	Korando	korando	3	2	2.3	133	korando
20541	1401	Istana	istana	2	1	2.6	98	istana
20542	1401	Korando Family	korando_family	3	1	2.5	74	korando_family
20543	1401	Rexton	rexton	3	2	2.3	155	rexton
20544	1401	Musso	musso	3	1	2.9	118	musso
20545	1401	Korando Sports	korando_sports	6	2	2.0	155	korando_sports
20546	1401	Chairman	chairman	4	2	3.0	209	chairman
20547	1401	Stavic	stavic	2	2	2.0	152	stavic
20548	1401	Tivoli XLV	tivoli_xlv	3	2	1.6	128	tivoli_xlv
20549	1401	Actyon Sports	actyon_sports	6	1	2.0	147	actyon_sports
20550	1401	Actyon	actyon	3	2	1.8	141	actyon
20551	1401	Tivoli	tivoli	3	1	1.6	128	tivoli
20552	1401	Rodius	rodius	2	2	2.7	165	rodius
20553	1402	XT5	xt5	3	2	3.6	257	xt5
20554	1402	XT6	xt6	3	2	2.0	200	xt6
20555	1402	Catera	catera	\N	\N	0.0	0	catera
20556	1402	STS	sts	4	2	4.1	306	sts
20557	1402	SRX	srx	3	2	3.6	271	srx
20558	1402	XTS	xts	\N	\N	0.0	0	xts
20559	1402	CTS	cts	4	2	2.8	258	cts
20560	1402	ELR	elr	8	4	1.4	84	elr
20561	1402	DTS	dts	4	2	4.6	287	dts
20562	1402	Fleetwood	fleetwood	4	2	4.9	188	fleetwood
20563	1402	CT6	ct6	4	2	3.7	338	ct6
20564	1402	Brougham	brougham	4	2	5.0	173	brougham
20565	1402	ATS	ats	4	2	2.3	272	ats
20566	1402	Seville	seville	4	2	4.6	273	seville
20567	1402	Escalade	escalade	3	2	5.3	343	escalade
20568	1402	BLS	bls	4	2	2.4	210	bls
20569	1402	DE Ville	de_ville	4	2	4.5	288	de_ville
20570	1402	CTS-V	cts-v	4	2	0.0	607	cts-v
20571	1402	Eldorado	eldorado	8	2	4.8	202	eldorado
20572	1403	762	762	5	1	2.5	75	762
20573	1404	Voyager	voyager	2	2	2.7	144	voyager
20574	1404	Intrepid	intrepid	4	2	3.3	211	intrepid
20575	1404	New Yorker	new_yorker	4	2	3.3	150	new_yorker
20576	1404	300M	300m	4	2	3.1	228	300m
20577	1404	Grand Voyager	grand_voyager	2	2	3.0	158	grand_voyager
20578	1404	200	200	4	2	3.0	234	200
20579	1404	LeBaron	lebaron	8	2	2.8	146	lebaron
20580	1404	Neon	neon	4	2	1.8	124	neon
20581	1404	300C	300c	4	2	3.3	286	300c
20582	1404	Pacifica	pacifica	3	2	3.7	252	pacifica
20583	1404	Town & Country	town_country	2	2	3.7	181	town_country
20584	1404	Fifth Avenue	fifth_avenue	\N	\N	0.0	0	fifth_avenue
20585	1404	Stratus	stratus	4	2	2.3	133	stratus
20586	1404	LHS	lhs	4	2	3.5	218	lhs
20587	1404	Vision	vision	4	2	3.5	211	vision
20588	1404	300 Letter Series	300_letter_series	8	2	6.0	380	300_letter_series
20589	1404	PT Cruiser	pt_cruiser	7	2	2.1	152	pt_cruiser
20590	1404	Concorde	concorde	4	2	3.3	228	concorde
20591	1404	Prowler	prowler	10	2	3.5	257	prowler
20592	1404	Simca 1308 GT	simca_1308_gt	\N	\N	0.0	0	simca_1308_gt
20593	1404	Sebring	sebring	4	2	2.5	170	sebring
20594	1404	180	180	\N	\N	0.0	0	180
20595	1404	Crossfire	crossfire	8	2	3.2	275	crossfire
20596	1404	Saratoga	saratoga	4	2	2.8	123	saratoga
20597	1404	Cirrus	cirrus	4	2	2.4	152	cirrus
20598	1404	Cordoba	cordoba	8	2	0.0	190	cordoba
20599	1405	Up	up	1	1	1.0	68	up
20600	1405	Golf Country	golf_country	3	1	1.8	94	golf_country
20601	1405	Eos	eos	10	3	2.0	200	eos
20602	1405	Jetta	jetta	4	1	1.5	102	jetta
20603	1405	Lupo	lupo	1	1	1.2	68	lupo
20604	1405	EuroVan	eurovan	2	2	2.7	125	eurovan
20605	1405	Fox	fox	1	1	1.3	72	fox
20606	1405	Caddy	caddy	2	1	1.4	88	caddy
20607	1405	Caravelle	caravelle	2	1	2.0	99	caravelle
20608	1405	Vento	vento	4	1	1.7	70	vento
20609	1405	Golf	golf	1	1	1.5	101	golf
20610	1405	Santana	santana	4	1	1.9	88	santana
20611	1405	Golf GTI	golf_gti	1	3	2.0	165	golf_gti
20612	1405	Arteon	arteon	\N	\N	0.0	0	arteon
20613	1405	California	california	2	3	2.4	145	california
20614	1405	Scirocco	scirocco	1	3	1.6	112	scirocco
20615	1405	Touran	touran	2	3	1.6	110	touran
20616	1405	Routan	routan	2	2	3.7	240	routan
20617	1405	Polo	polo	4	1	1.3	83	polo
20618	1405	Pointer	pointer	1	1	1.4	83	pointer
20619	1405	Golf R	golf_r	1	3	2.0	270	golf_r
20620	1405	Passat CC	passat_cc	4	3	1.6	152	passat_cc
20621	1405	LT	lt	5	1	2.5	93	lt
20622	1405	Type 2	type_2	2	1	1.7	66	type_2
20623	1405	Gol	gol	1	1	1.6	81	gol
20624	1405	Crafter	crafter	5	1	1.0	125	crafter
20625	1405	Amarok	amarok	6	1	2.5	163	amarok
20626	1405	Transporter	transporter	5	1	1.9	87	transporter
20627	1405	Phaeton	phaeton	4	2	3.4	263	phaeton
20628	1405	Type 1	type_1	4	1	1.4	45	type_1
20629	1405	Sharan	sharan	2	1	1.9	150	sharan
20630	1405	Passat	passat	4	1	2.0	114	passat
20631	1405	Derby	derby	8	1	1.3	60	derby
20632	1405	Polo GTI	polo_gti	1	3	1.8	192	polo_gti
20633	1405	Teramont	teramont	3	2	2.8	237	teramont
20634	1405	Corrado	corrado	1	1	1.9	148	corrado
20635	1405	Golf Plus	golf_plus	1	1	1.5	115	golf_plus
20636	1405	Golf R32	golf_r32	1	3	3.2	250	golf_r32
20637	1405	New Beetle	new_beetle	1	2	1.9	109	new_beetle
20638	1405	Passat (North America)	passat_north_america	4	2	2.3	190	passat_north_america
20639	1405	Type 4	type_4	4	1	1.8	83	type_4
20640	1405	181	181	10	1	1.6	49	181
20641	1405	K70	k70	\N	\N	0.0	0	k70
20642	1405	Kaefer	kaefer	8	1	1.3	42	kaefer
20643	1405	Tiguan	tiguan	3	2	1.4	165	tiguan
20644	1405	CrossPolo	crosspolo	1	3	1.4	80	crosspolo
20645	1405	Multivan	multivan	2	3	2.0	113	multivan
20646	1405	Touareg	touareg	3	2	3.2	245	touareg
20647	1405	Beetle	beetle	1	3	1.8	115	beetle
20648	1405	Bora	bora	4	1	1.9	108	bora
20649	1405	Taro	taro	6	1	2.4	97	taro
20650	1405	Type 166	type_166	\N	\N	0.0	0	type_166
20651	1406	M2 (BS4)	m2_bs4	4	1	1.7	136	m2_bs4
20652	1406	M1 (BS6)	m1_bs6	4	1	1.9	150	m1_bs6
20653	1406	V3	v3	3	1	1.5	107	v3
20654	1406	H230	h230	4	3	1.5	105	h230
20655	1406	V5	v5	3	1	1.6	127	v5
20656	1406	H530	h530	4	1	1.6	110	h530
20657	1407	Sauvana	sauvana	3	2	2.0	209	sauvana
20658	1407	Alpha Van	alpha_van	9	1	2.3	117	alpha_van
20659	1407	View CS2	view_cs2	9	1	2.6	133	view_cs2
20660	1407	Tunland	tunland	6	1	2.8	163	tunland
20661	1408	96	96	8	1	1.5	67	96
20662	1408	9-7X	9-7x	3	2	5.3	304	9-7x
20663	1408	Lancia 600	lancia_600	\N	\N	0.0	0	lancia_600
20664	1408	9000	9000	1	1	2.3	162	9000
20665	1408	9-3	9-3	4	2	2.1	185	9-3
20666	1408	9-2X	9-2x	7	2	2.5	230	9-2x
20667	1408	95	95	\N	\N	0.0	0	95
20668	1408	900	900	1	1	2.3	136	900
20669	1408	9-5	9-5	4	2	2.2	192	9-5
20670	1408	9-4X	9-4x	3	2	3.0	265	9-4x
20671	1408	99	99	4	1	2.0	98	99
20672	1409	2160	2160	3	1	1.5	72	2160
20673	1410	President 8	president_8	4	1	4.8	115	president_8
20674	1411	B1000	b1000	5	1	1.0	44	b1000
20675	1412	406	406	4	1	2.0	133	406
20676	1412	J9	j9	\N	\N	0.0	0	j9
20677	1412	4007	4007	3	4	2.2	156	4007
20678	1412	Bipper	bipper	2	1	1.3	73	bipper
20679	1412	207	207	1	3	1.5	90	207
20680	1412	1007	1007	1	3	1.5	82	1007
20681	1412	408	408	4	2	1.6	113	408
20682	1412	208	208	1	2	1.4	94	208
20683	1412	Expert	expert	2	1	1.9	128	expert
20684	1412	104	104	1	1	1.3	61	104
20685	1412	508	508	4	2	1.6	150	508
20686	1412	407	407	4	1	1.9	138	407
20687	1412	505	505	4	1	2.3	98	505
20688	1412	607	607	4	2	2.6	158	607
20689	1412	203	203	\N	\N	0.0	0	203
20690	1412	4008	4008	3	4	2.0	150	4008
20691	1412	806	806	2	1	2.0	129	806
20692	1412	RCZ	rcz	8	2	1.6	156	rcz
20693	1412	301	301	4	1	1.4	92	301
20694	1412	309	309	1	1	1.5	68	309
20695	1412	807	807	2	1	2.2	141	807
20696	1412	307	307	1	2	1.6	110	307
20697	1412	504	504	4	1	2.1	82	504
20698	1412	Boxer	boxer	5	1	2.2	115	boxer
20699	1412	308	308	1	2	1.5	114	308
20700	1412	405	405	4	1	1.8	91	405
20701	1412	305	305	4	1	1.7	67	305
20702	1412	3008	3008	3	2	1.8	120	3008
20703	1412	Traveller	traveller	2	2	1.8	123	traveller
20704	1412	605	605	4	1	2.4	132	605
20705	1412	Partner	partner	2	1	1.8	92	partner
20706	1412	306	306	1	1	1.7	96	306
20707	1412	5008	5008	2	3	1.6	120	5008
20708	1412	205	205	1	1	1.6	70	205
20709	1412	107	107	1	3	1.2	61	107
20710	1412	2008	2008	7	2	1.4	112	2008
20711	1412	206	206	1	1	1.6	82	206
20712	1412	106	106	1	1	1.3	60	106
20713	1412	J5	j5	5	1	2.0	75	j5
20714	1413	Deluxe Eight	deluxe_eight	\N	\N	0.0	0	deluxe_eight
20715	1414	A5	a5	8	3	1.9	225	a5
20716	1414	S5	s5	8	2	1.5	167	s5
20717	1414	S3	s3	1	1	1.9	241	s3
20718	1414	A2	a2	1	1	1.4	75	a2
20719	1414	RS Q3 Sportback	rs_q3_sportback	\N	\N	0.0	0	rs_q3_sportback
20720	1414	Q5	q5	3	2	2.0	235	q5
20721	1414	SQ7	sq7	\N	\N	0.0	0	sq7
20722	1414	V8	v8	4	2	3.9	250	v8
20723	1414	A4 Allroad Quattro	a4_allroad_quattro	7	3	1.0	224	a4_allroad_quattro
20724	1414	A6 Allroad Quattro	a6_allroad_quattro	7	2	2.6	243	a6_allroad_quattro
20725	1414	TTS	tts	8	3	2.0	291	tts
20726	1414	Q3	q3	3	3	1.7	180	q3
20727	1414	A6	a6	4	2	2.5	207	a6
20728	1414	RS6	rs6	7	2	4.2	570	rs6
20729	1414	90	90	4	1	2.3	136	90
20730	1414	RS Q3	rs_q3	3	3	2.5	325	rs_q3
20731	1414	Cabriolet	cabriolet	10	1	2.3	133	cabriolet
20732	1414	RS4	rs4	7	1	2.9	420	rs4
20733	1414	A4	a4	4	4	2.4	165	a4
20734	1414	TT RS	tt_rs	8	3	2.5	360	tt_rs
20735	1414	S2	s2	1	1	2.2	225	s2
20736	1414	A3	a3	1	3	1.8	140	a3
20737	1414	S7	s7	1	3	4.0	435	s7
20738	1414	RS5	rs5	8	3	3.6	450	rs5
20739	1414	Q8	q8	3	2	3.0	249	q8
20740	1414	A7	a7	1	3	2.0	275	a7
20741	1414	e-tron	e-tron	3	2	0.0	408	e-tron
20742	1414	200	200	4	1	2.2	170	200
20743	1414	S6	s6	4	2	4.1	380	s6
20744	1414	A1	a1	1	3	1.4	124	a1
20745	1414	SQ5	sq5	3	2	3.0	354	sq5
20746	1414	Q3 Sportback	q3_sportback	\N	\N	0.0	0	q3_sportback
20747	1414	S8	s8	4	2	4.2	450	s8
20748	1414	RS3	rs3	1	3	2.5	354	rs3
20749	1414	100	100	4	1	2.3	133	100
20750	1414	RS7	rs7	1	2	3.4	560	rs7
20751	1414	S4	s4	4	3	3.0	333	s4
20752	1414	Coupe	coupe	8	1	2.1	131	coupe
20753	1414	Q7	q7	3	2	3.3	247	q7
20754	1414	Quattro	quattro	8	1	2.2	220	quattro
20755	1414	TT	tt	8	3	2.0	206	tt
20756	1414	RS2	rs2	\N	\N	0.0	0	rs2
20757	1414	A8	a8	4	2	3.2	278	a8
20758	1414	R8	r8	8	3	4.7	538	r8
20759	1414	80	80	4	1	2.1	87	80
20760	1415	SR-V X3	sr-v_x3	3	1	2.2	105	sr-v_x3
20761	1415	SUV X3	suv_x3	3	1	2.2	105	suv_x3
20762	1415	Pickup X3	pickup_x3	6	1	2.2	105	pickup_x3
20763	1416	A01	a01	1	2	0.0	6	a01
20764	1417	1.3	1.3	4	1	1.3	58	1.3
20765	1417	353	353	4	1	1.0	48	353
20766	1418	Nova	nova	1	2	1.6	110	nova
20767	1418	MW	mw	1	2	1.3	88	mw
20768	1418	Starcraft	starcraft	2	2	5.7	240	starcraft
20769	1418	Cavalier	cavalier	4	1	2.4	126	cavalier
20770	1418	Celebrity	celebrity	4	2	2.8	130	celebrity
20771	1418	Bel Air	bel_air	8	2	4.1	139	bel_air
20772	1418	Deluxe	deluxe	4	1	3.5	90	deluxe
20773	1418	Uplander	uplander	2	2	3.9	243	uplander
20774	1418	Alero	alero	4	2	2.9	159	alero
20775	1418	TrailBlazer	trailblazer	3	2	3.6	284	trailblazer
20776	1418	Suburban	suburban	3	2	5.2	288	suburban
20777	1418	Prizm	prizm	4	1	1.8	124	prizm
20778	1418	Tahoe	tahoe	3	2	5.1	293	tahoe
20779	1418	Matiz	matiz	1	1	0.9	58	matiz
20780	1418	Volt	volt	1	4	1.5	93	volt
20781	1418	Cruze	cruze	4	1	1.8	130	cruze
20782	1418	Spark	spark	1	1	1.2	68	spark
20783	1418	HHR	hhr	7	2	2.3	149	hhr
20784	1418	Equinox	equinox	3	2	2.4	182	equinox
20785	1418	Corvette	corvette	8	2	4.6	360	corvette
20786	1418	Silverado	silverado	6	2	4.6	301	silverado
20787	1418	Orlando	orlando	2	2	1.8	141	orlando
20788	1418	Impala	impala	4	2	1.3	197	impala
20789	1418	Cobalt	cobalt	4	1	1.6	145	cobalt
20790	1418	Rezzo	rezzo	2	1	1.8	105	rezzo
20791	1418	Aveo	aveo	4	1	1.5	96	aveo
20792	1418	Evanda	evanda	4	2	2.0	131	evanda
20793	1418	Express	express	2	2	4.9	280	express
20794	1418	Epica	epica	4	1	2.3	145	epica
20795	1418	Blazer	blazer	3	2	4.3	150	blazer
20796	1418	Metro	metro	4	2	1.3	79	metro
20797	1418	Corsica	corsica	4	2	2.7	142	corsica
20798	1418	El Camino	el_camino	6	1	5.2	184	el_camino
20799	1418	Venture	venture	2	2	3.4	187	venture
20800	1418	Lumina	lumina	4	2	3.3	186	lumina
20801	1418	C/K	ck	6	2	4.6	186	ck
20802	1418	SSR	ssr	6	2	5.3	300	ssr
20803	1418	Bolt	bolt	1	2	0.0	200	bolt
20804	1418	Sonic	sonic	\N	\N	0.0	0	sonic
20805	1418	Astra	astra	1	1	1.8	110	astra
20806	1418	Niva	niva	3	1	1.8	87	niva
20807	1418	Cruze HR	cruze_hr	1	2	1.4	99	cruze_hr
20808	1418	Monte Carlo	monte_carlo	8	2	3.1	162	monte_carlo
20809	1418	Tracker	tracker	3	2	1.8	141	tracker
20810	1418	Trans Sport	trans_sport	2	2	3.4	180	trans_sport
20811	1418	Van	van	2	2	5.7	135	van
20812	1418	Malibu	malibu	4	2	3.1	150	malibu
20813	1418	Beretta	beretta	8	1	2.5	126	beretta
20814	1418	Colorado	colorado	6	2	3.2	198	colorado
20815	1418	Viva	viva	4	1	1.8	125	viva
20816	1418	Corvair	corvair	10	2	2.7	96	corvair
20817	1418	Avalanche	avalanche	6	2	5.7	320	avalanche
20818	1418	Captiva	captiva	3	2	2.2	157	captiva
20819	1418	Traverse	traverse	3	2	3.6	303	traverse
20820	1418	Astro	astro	2	2	4.3	179	astro
20821	1418	Camaro	camaro	8	2	3.7	300	camaro
20822	1418	Caprice	caprice	4	2	4.7	200	caprice
20823	1418	Nexia	nexia	4	1	1.5	106	nexia
20824	1418	Chevelle	chevelle	8	2	2.7	325	chevelle
20825	1418	Lacetti	lacetti	4	1	1.6	104	lacetti
20826	1418	S10	s10	6	2	3.3	141	s10
20827	1418	Lanos	lanos	4	1	1.6	79	lanos
20828	1418	Sprint	sprint	\N	\N	0.0	0	sprint
20829	1418	Blazer K5	blazer_k5	3	2	2.9	175	blazer_k5
20830	1418	Lumina APV	lumina_apv	2	2	3.5	149	lumina_apv
20831	1419	600	600	4	1	2.0	123	600
20832	1419	75	75	4	1	2.0	131	75
20833	1419	200	200	1	1	1.5	103	200
20834	1419	25	25	1	1	1.6	103	25
20835	1419	Maestro	maestro	1	1	1.6	69	maestro
20836	1419	400	400	4	1	1.8	104	400
20837	1419	45	45	4	1	1.7	109	45
20838	1419	100	100	1	1	1.1	60	100
20839	1419	800	800	4	1	2.5	169	800
20840	1419	MGF	mgf	\N	\N	0.0	0	mgf
20841	1419	Streetwise	streetwise	1	1	1.6	109	streetwise
20842	1419	Mini MK	mini_mk	4	1	1.3	63	mini_mk
20843	1419	SD1	sd1	1	1	2.6	126	sd1
20844	1420	Mark VIII	mark_viii	8	2	4.6	289	mark_viii
20845	1420	Continental	continental	4	2	4.2	195	continental
20846	1420	Zephyr	zephyr	8	1	4.4	110	zephyr
20847	1420	LS	ls	4	2	3.5	226	ls
20848	1420	MKC	mkc	3	2	2.3	285	mkc
20849	1420	Mark LT	mark_lt	6	2	5.4	304	mark_lt
20850	1420	MKS	mks	4	2	3.7	274	mks
20851	1420	Navigator	navigator	3	2	4.5	302	navigator
20852	1420	Mark	mark	8	2	4.6	284	mark
20853	1420	Aviator	aviator	3	2	3.8	353	aviator
20854	1420	Mark VII	mark_vii	8	2	4.9	225	mark_vii
20855	1420	MKX	mkx	3	2	3.6	284	mkx
20856	1420	MKZ	mkz	4	2	3.5	249	mkz
20857	1420	Town Car	town_car	4	2	4.9	219	town_car
20858	1421	Hyundai Accent	hyundai_accent	4	1	1.5	102	hyundai_accent
20859	1421	Vortex Tingo	vortex_tingo	3	1	1.8	132	vortex_tingo
20860	1421	Vortex Corda	vortex_corda	4	1	1.5	105	vortex_corda
20861	1421	C190	c190	3	1	2.4	136	c190
20862	1421	С30	s30	4	1	1.5	101	s30
20863	1421	Vortex Estina	vortex_estina	4	1	1.6	119	vortex_estina
20864	1421	Aquila	aquila	4	1	1.6	107	aquila
20865	1421	Hyundai Santa Fe Classic	hyundai_santa_fe_classic	3	2	2.4	143	hyundai_santa_fe_classic
20866	1421	Tager	tager	3	1	2.8	129	tager
20867	1421	Road Partner	road_partner	3	1	2.6	150	road_partner
20868	1421	Hardy	hardy	5	1	1.3	78	hardy
20869	1421	C10	c10	4	1	1.3	93	c10
20870	1421	Vega	vega	4	1	1.6	124	vega
20871	1422	Haise	haise	2	1	2.2	103	haise
20872	1423	21541 (Сталкер)	21541_stalker	\N	\N	0.0	0	21541_stalker
20873	1424	UFO	ufo	\N	\N	0.0	0	ufo
20874	1425	SEi & Sport	sei_sport	\N	\N	0.0	0	sei_sport
20875	1425	SEiGHT	seight	\N	\N	0.0	0	seight
20876	1426	Florida	florida	\N	\N	0.0	0	florida
\.


--
-- Data for Name: carmodelbody; Type: TABLE DATA; Schema: public; Owner: adsviewer
--

COPY public.carmodelbody (id, carmodelid, carbodyid) FROM stdin;
1392452	19249	8
1392453	19246	10
1392454	19248	8
1392455	19247	10
1392456	18759	8
1392457	18752	4
1392458	18757	4
1392459	18751	4
1392460	18749	8
1392461	18749	4
1392462	18761	3
1392463	18761	7
1392464	18763	3
1392465	18756	4
1392466	18750	8
1392467	18762	4
1392468	18753	4
1392469	18754	4
1392470	18760	3
1392471	19378	4
1392472	19379	4
1392473	18848	1
1392474	18861	1
1392475	18857	1
1392476	18846	4
1392477	18851	4
1392478	18851	7
1392479	18858	4
1392480	18858	7
1392481	18850	4
1392482	18845	4
1392483	18862	4
1392484	18862	7
1392485	18862	1
1392486	18855	8
1392487	18859	4
1392488	18849	1
1392489	18856	4
1392490	18844	4
1392491	18844	1
1392492	18847	8
1392493	18853	8
1392494	18863	1
1392495	18854	10
1392496	18852	3
1392497	20247	4
1392498	20253	4
1392499	20248	8
1392500	20248	7
1392501	20252	4
1392502	20250	10
1392503	20250	8
1392504	20251	8
1392505	20251	4
1392506	18833	3
1392507	18841	7
1392508	18637	3
1392509	18636	3
1392510	18930	2
1392511	18931	3
1392512	18925	8
1392513	18927	10
1392514	18927	8
1392515	18923	8
1392516	18921	1
1392517	18922	10
1392518	18922	8
1392519	18924	10
1392520	18924	8
1392521	18928	10
1392522	18928	8
1392523	20749	4
1392524	20749	7
1392525	20742	4
1392526	20742	7
1392527	20759	4
1392528	20759	7
1392529	20729	4
1392530	20744	8
1392531	20744	1
1392532	20718	1
1392533	20736	10
1392534	20736	8
1392535	20736	4
1392536	20736	7
1392537	20736	1
1392538	20733	10
1392539	20733	4
1392540	20733	7
1392541	20723	7
1392542	20715	10
1392543	20715	8
1392544	20715	4
1392545	20715	1
1392546	20727	4
1392547	20727	7
1392548	20724	4
1392549	20724	7
1392550	20740	4
1392551	20740	1
1392552	20757	4
1392553	20757	1
1392554	20731	10
1392555	20752	8
1392556	20726	3
1392557	20726	7
1392558	20720	3
1392559	20720	2
1392560	20720	7
1392561	20753	3
1392562	20753	4
1392563	20753	7
1392564	20753	1
1392565	20739	3
1392566	20754	8
1392567	20758	10
1392568	20758	8
1392569	20730	3
1392570	20748	1
1392571	20732	4
1392572	20732	7
1392573	20738	8
1392574	20738	1
1392575	20728	4
1392576	20728	7
1392577	20750	4
1392578	20750	1
1392579	20735	4
1392580	20735	7
1392581	20735	1
1392582	20717	4
1392583	20717	1
1392584	20751	10
1392585	20751	4
1392586	20751	7
1392587	20716	8
1392588	20716	1
1392589	20743	4
1392590	20743	7
1392591	20737	1
1392592	20747	4
1392593	20745	3
1392594	20755	10
1392595	20755	8
1392596	20734	10
1392597	20734	8
1392598	20725	10
1392599	20725	8
1392600	20722	4
1392601	20485	4
1392602	20484	4
1392603	20672	3
1392604	20672	8
1392605	20398	1
1392606	20674	9
1392607	20674	5
1392608	18481	3
1392609	18482	6
1392610	18482	5
1392611	18480	6
1392612	18480	5
1392613	19616	4
1392614	19626	3
1392615	19622	8
1392616	19622	4
1392617	19620	8
1392618	19624	4
1392619	19625	10
1392620	19625	8
1392621	19618	4
1392622	19617	4
1392623	19619	4
1392624	19621	4
1392625	19623	4
1392626	19958	4
1392627	19967	10
1392628	19967	8
1392629	19967	1
1392630	19945	8
1392631	19954	10
1392632	19954	8
1392633	19942	2
1392634	19971	4
1392635	19938	2
1392636	19933	8
1392637	19943	10
1392638	19943	8
1392639	19943	4
1392640	19943	7
1392641	19943	1
1392642	19965	1
1392643	19931	4
1392644	19966	4
1392645	19940	8
1392646	19959	4
1392647	19955	10
1392648	19955	8
1392649	19955	4
1392650	19955	1
1392651	19970	8
1392652	19970	1
1392653	19930	4
1392654	19930	7
1392655	19949	7
1392656	19949	1
1392657	19946	8
1392658	19963	10
1392659	19963	8
1392660	19963	4
1392661	19963	1
1392662	19934	8
1392663	19934	4
1392664	19925	1
1392665	19937	4
1392666	19968	10
1392667	19968	8
1392668	19960	4
1392669	19924	1
1392670	19927	8
1392671	19969	8
1392672	19936	10
1392673	19936	8
1392674	19936	4
1392675	19962	10
1392676	19962	8
1392677	19952	4
1392678	19961	10
1392679	19961	8
1392680	19961	4
1392681	19961	1
1392682	19939	10
1392683	19922	4
1392684	19935	3
1392685	19935	2
1392686	19935	4
1392687	19935	7
1392688	19950	3
1392689	19947	3
1392690	19947	7
1392691	19947	1
1392692	19926	3
1392693	19923	3
1392694	19923	1
1392695	19957	3
1392696	19956	3
1392697	19956	7
1392698	19953	3
1392699	19953	1
1392700	19928	3
1392701	19928	7
1392702	19928	1
1392703	19964	3
1392704	19964	4
1392705	19964	7
1392706	19929	3
1392707	19941	10
1392708	19941	8
1392709	19932	10
1392710	19932	8
1392711	19944	10
1392712	19944	8
1392713	19948	10
1392714	19948	8
1392715	19976	4
1392716	19973	7
1392717	19974	5
1392718	19975	6
1392719	20654	4
1392720	20654	1
1392721	20656	4
1392722	20652	4
1392723	20651	4
1392724	20651	7
1392725	20653	3
1392726	20655	3
1392727	20655	4
1392728	20655	7
1392729	19305	8
1392730	19720	10
1392731	19722	8
1392732	19722	4
1392733	19722	7
1392734	19719	4
1392735	19716	3
1392736	19711	3
1392737	19712	3
1392738	19715	4
1392739	19710	4
1392740	19709	8
1392741	19709	4
1392742	19717	3
1392743	19714	8
1392744	19713	4
1392745	19721	4
1392746	19723	8
1392747	19723	4
1392748	19380	1
1392749	19384	4
1392750	19384	1
1392751	19383	4
1392752	19382	1
1392753	20565	4
1392754	20568	4
1392755	20564	4
1392756	20563	4
1392757	20559	8
1392758	20559	4
1392759	20570	4
1392760	20569	10
1392761	20569	8
1392762	20569	4
1392763	20561	4
1392764	20571	10
1392765	20571	8
1392766	20560	8
1392767	20567	3
1392768	20567	6
1392769	20562	4
1392770	20566	4
1392771	20557	3
1392772	20557	7
1392773	20556	4
1392774	20553	3
1392775	20554	3
1392776	18594	10
1392777	18946	1
1392778	18950	2
1392779	18948	3
1392780	18949	3
1392781	18952	3
1392782	18953	3
1392783	18947	4
1392784	18951	4
1392785	19559	6
1392786	19787	1
1392787	20192	4
1392788	20192	1
1392789	20179	4
1392790	20188	4
1392791	20188	1
1392792	20196	4
1392793	20196	1
1392794	20194	2
1392795	20175	4
1392796	20182	4
1392797	20187	4
1392798	20187	7
1392799	20187	1
1392800	20180	4
1392801	20180	1
1392802	20190	4
1392803	20190	1
1392804	20185	4
1392805	20193	4
1392806	20193	1
1392807	20176	1
1392808	20184	3
1392809	20184	7
1392810	20184	1
1392811	20181	3
1392812	20181	7
1392813	20189	3
1392814	20178	3
1392815	20178	7
1392816	20195	3
1392817	20186	3
1392818	20177	3
1392819	20177	4
1392820	20177	7
1392821	20183	1
1392822	20774	4
1392823	20805	1
1392824	20820	2
1392825	20817	6
1392826	20791	4
1392827	20791	7
1392828	20791	1
1392829	20771	8
1392830	20813	8
1392831	20795	3
1392832	20829	3
1392833	20821	10
1392834	20821	8
1392835	20822	4
1392836	20818	3
1392837	20818	7
1392838	20769	8
1392839	20769	4
1392840	20770	4
1392841	20824	8
1392842	20801	6
1392843	20789	8
1392844	20789	4
1392845	20814	6
1392846	20797	4
1392847	20816	10
1392848	20785	10
1392849	20785	8
1392850	20781	4
1392851	20781	7
1392852	20781	1
1392853	20807	1
1392854	20772	4
1392855	20798	6
1392856	20794	4
1392857	20784	3
1392858	20792	4
1392859	20793	2
1392860	20783	7
1392861	20788	8
1392862	20788	4
1392863	20825	4
1392864	20825	7
1392865	20825	1
1392866	20827	4
1392867	20827	7
1392868	20827	1
1392869	20800	4
1392870	20830	2
1392871	20812	4
1392872	20779	1
1392873	20796	4
1392874	20796	1
1392875	20808	8
1392876	20767	1
1392877	20823	4
1392878	20806	3
1392879	20806	2
1392880	20806	7
1392881	20806	1
1392882	20766	4
1392883	20766	1
1392884	20787	2
1392885	20787	7
1392886	20777	4
1392887	20790	2
1392888	20790	7
1392889	20790	1
1392890	20826	6
1392891	20786	6
1392892	20782	7
1392893	20782	1
1392894	20802	6
1392895	20768	2
1392896	20776	3
1392897	20778	3
1392898	20809	3
1392899	20775	3
1392900	20810	2
1392901	20819	3
1392902	20773	2
1392903	20811	2
1392904	20799	2
1392905	20815	4
1392906	20780	1
1392907	20578	10
1392908	20578	4
1392909	20588	8
1392910	20581	4
1392911	20581	7
1392912	20576	4
1392913	20597	4
1392914	20590	4
1392915	20595	10
1392916	20595	8
1392917	20577	2
1392918	20577	7
1392919	20574	4
1392920	20579	10
1392921	20579	8
1392922	20579	4
1392923	20586	4
1392924	20580	4
1392925	20575	4
1392926	20582	3
1392927	20582	2
1392928	20582	7
1392929	20591	10
1392930	20589	10
1392931	20589	11
1392932	20589	4
1392933	20589	7
1392934	20589	1
1392935	20596	4
1392936	20593	10
1392937	20593	8
1392938	20593	4
1392939	20585	10
1392940	20585	4
1392941	20583	2
1392942	20587	4
1392943	20573	2
1392944	20054	1
1392945	20058	1
1392946	20059	2
1392947	20059	6
1392948	20059	4
1392949	20059	7
1392950	20059	5
1392951	20036	1
1392952	20070	3
1392953	20070	7
1392954	20068	4
1392955	20075	1
1392956	20042	5
1392957	20060	1
1392958	20035	10
1392959	20035	4
1392960	20035	7
1392961	20035	5
1392962	20035	1
1392963	20057	3
1392964	20071	2
1392965	20071	7
1392966	20049	8
1392967	20049	2
1392968	20049	4
1392969	20049	1
1392970	20033	3
1392971	20062	3
1392972	20048	2
1392973	20048	6
1392974	20048	7
1392975	20045	2
1392976	20037	4
1392977	20037	7
1392978	20037	1
1392979	20063	3
1392980	20066	4
1392981	20066	7
1392982	20040	2
1392983	20056	1
1392984	20043	1
1392985	20053	4
1392986	20053	1
1392987	20073	7
1392988	20073	1
1392989	20046	2
1392990	20074	2
1392991	20065	7
1392992	20065	1
1392993	20034	9
1392994	20034	5
1392995	20069	2
1392996	20069	7
1392997	20069	5
1392998	20064	2
1392999	20064	5
1393000	20067	1
1393001	20072	9
1393002	20072	2
1393003	20055	5
1393004	20051	1
1393005	20047	7
1393006	20047	1
1393007	20041	7
1393008	20041	1
1393009	20038	7
1393010	20038	1
1393011	20044	2
1393012	20050	7
1393013	20050	1
1393014	18882	7
1393015	18885	3
1393016	18883	2
1393017	18884	4
1393018	18884	7
1393019	18886	1
1393020	18879	1
1393021	18880	1
1393022	18676	3
1393023	18675	3
1393024	18675	6
1393025	18674	6
1393026	19568	2
1393027	19585	4
1393028	19566	4
1393029	19573	10
1393030	19561	4
1393031	19561	1
1393032	19570	4
1393033	19570	1
1393034	19586	4
1393035	19586	1
1393036	19567	4
1393037	19582	4
1393038	19582	1
1393039	19583	4
1393040	19562	4
1393041	19587	2
1393042	19587	5
1393043	19563	4
1393044	19580	2
1393045	19580	6
1393046	19580	4
1393047	19580	7
1393048	19580	1
1393049	19578	1
1393050	19581	4
1393051	19581	7
1393052	19581	1
1393053	19565	4
1393054	19565	7
1393055	19565	1
1393056	19571	4
1393057	19575	4
1393058	19574	2
1393059	19584	4
1393060	19576	2
1393061	19569	1
1393062	19572	3
1393063	19106	4
1393064	19114	1
1393065	19128	2
1393066	19129	3
1393067	19105	1
1393068	19095	1
1393069	19124	4
1393070	19124	1
1393071	19118	2
1393072	19127	10
1393073	19107	1
1393074	19099	2
1393075	19111	1
1393076	19130	3
1393077	19109	2
1393078	19122	9
1393079	19122	2
1393080	19115	5
1393081	19110	6
1393082	19097	1
1393083	19119	1
1393084	19108	1
1393085	19125	7
1393086	19125	1
1393087	19094	2
1393088	19094	1
1393089	19117	2
1393090	19113	3
1393091	19131	1
1393092	19102	1
1393093	19104	1
1393094	19103	2
1393095	19103	1
1393096	19101	3
1393097	19120	3
1393098	19121	1
1393099	19126	1
1393100	19116	2
1393101	19707	4
1393102	19708	4
1393103	19706	4
1393104	19375	8
1393105	19374	4
1393106	19374	1
1393107	19377	4
1393108	19373	8
1393109	19373	4
1393110	19348	6
1393111	19351	3
1393112	19352	3
1393113	19349	3
1393114	19346	6
1393115	19350	3
1393116	19347	3
1393117	18638	4
1393118	20007	4
1393119	20010	8
1393120	20010	4
1393121	20012	1
1393122	20022	2
1393123	20022	7
1393124	20014	8
1393125	20006	8
1393126	20006	4
1393127	20016	4
1393128	20015	6
1393129	20025	4
1393130	20017	1
1393131	20001	3
1393132	20020	4
1393133	20005	2
1393134	20008	4
1393135	20018	3
1393136	20023	7
1393137	20024	8
1393138	20024	4
1393139	20026	3
1393140	20003	6
1393141	20013	9
1393142	20013	5
1393143	20027	10
1393144	20009	4
1393145	20002	8
1393146	20019	8
1393147	20019	4
1393148	20021	10
1393149	20021	8
1393150	20004	3
1393151	20312	3
1393152	20315	3
1393153	20313	3
1393154	20313	7
1393155	20313	1
1393156	20311	2
1393157	20314	4
1393158	19797	1
1393159	19798	4
1393160	19799	4
1393161	19799	7
1393162	19791	1
1393163	19790	1
1393164	19789	1
1393165	18640	3
1393166	18639	3
1393167	19590	8
1393168	19590	4
1393169	19588	4
1393170	20572	5
1393171	19304	10
1393172	19303	10
1393173	20238	9
1393174	20238	5
1393175	20243	4
1393176	20244	4
1393177	20239	3
1393178	20237	3
1393179	20245	1
1393180	20242	4
1393181	20236	1
1393182	20241	4
1393183	20240	4
1393184	20240	1
1393185	20502	10
1393186	20502	8
1393187	20501	8
1393188	20494	8
1393189	20491	8
1393190	20500	8
1393191	20496	8
1393192	20490	10
1393193	20489	8
1393194	20503	10
1393195	20503	8
1393196	20493	1
1393197	20498	1
1393198	18629	8
1393199	18629	4
1393200	18629	7
1393201	18616	10
1393202	18620	1
1393203	18605	4
1393204	18634	10
1393205	18634	1
1393206	18602	2
1393207	18613	4
1393208	18600	10
1393209	18625	1
1393210	18617	1
1393211	18622	1
1393212	18604	8
1393213	18632	7
1393214	18632	1
1393215	18596	8
1393216	18596	2
1393217	18596	7
1393218	18596	5
1393219	18596	1
1393220	18615	9
1393221	18615	2
1393222	18615	5
1393223	18621	7
1393224	18628	2
1393225	18623	2
1393226	18623	7
1393227	18599	6
1393228	18626	2
1393229	18627	4
1393230	18598	4
1393231	18598	7
1393232	18609	2
1393233	18610	7
1393234	18610	1
1393235	18619	7
1393236	18619	1
1393237	18607	4
1393238	18607	1
1393239	18601	2
1393240	18612	4
1393241	18612	7
1393242	18633	1
1393243	18608	9
1393244	18608	2
1393245	18597	1
1393246	18614	1
1393247	18630	4
1393248	18624	7
1393249	18624	1
1393250	18603	4
1393251	18603	7
1393252	18611	1
1393253	18618	2
1393254	18606	1
1393255	19729	4
1393256	20458	2
1393257	20423	1
1393258	20470	1
1393259	20455	2
1393260	20450	3
1393261	20449	2
1393262	20449	7
1393263	20449	1
1393264	20483	8
1393265	20439	4
1393266	20436	4
1393267	20466	8
1393268	20422	5
1393269	20472	4
1393270	20425	9
1393271	20425	2
1393272	20468	2
1393273	20468	5
1393274	20454	3
1393275	20454	7
1393276	20454	1
1393277	20446	3
1393278	20404	3
1393279	20404	7
1393280	20427	10
1393281	20427	6
1393282	20427	4
1393283	20427	7
1393284	20427	5
1393285	20427	1
1393286	20476	8
1393287	20476	4
1393288	20476	7
1393289	20476	1
1393290	20440	3
1393291	20460	3
1393292	20421	3
1393293	20421	7
1393294	20419	6
1393295	20437	6
1393296	20433	6
1393297	20441	6
1393298	20447	4
1393299	20417	4
1393300	20434	1
1393301	20480	8
1393302	20480	4
1393303	20480	1
1393304	20459	1
1393305	20426	4
1393306	20481	3
1393307	20412	10
1393308	20412	8
1393309	20412	4
1393310	20412	7
1393311	20412	1
1393312	20463	8
1393313	20463	7
1393314	20463	1
1393315	20429	4
1393316	20429	7
1393317	20429	1
1393318	20444	2
1393319	20467	3
1393320	20410	3
1393321	20410	2
1393322	20410	6
1393323	20410	4
1393324	20410	7
1393325	20410	1
1393326	20406	4
1393327	20479	8
1393328	20479	4
1393329	20409	2
1393330	20409	7
1393331	20477	8
1393332	20477	4
1393333	20477	7
1393334	20469	2
1393335	20411	2
1393336	20482	10
1393337	20482	1
1393338	20475	3
1393339	20475	2
1393340	20475	7
1393341	20456	4
1393342	20465	4
1393343	20443	3
1393344	20443	7
1393345	20478	1
1393346	20452	4
1393347	20407	10
1393348	20418	4
1393349	20418	7
1393350	20418	1
1393351	20451	4
1393352	20432	10
1393353	20432	8
1393354	20405	4
1393355	20445	6
1393356	20414	8
1393357	20414	1
1393358	20413	8
1393359	20413	1
1393360	20438	6
1393361	20461	3
1393362	20461	6
1393363	20461	7
1393364	20420	6
1393365	20474	2
1393366	20474	7
1393367	20428	4
1393368	20428	7
1393369	20428	1
1393370	20448	4
1393371	20448	7
1393372	20448	1
1393373	20424	2
1393374	20464	8
1393375	20464	4
1393376	20464	7
1393377	20430	4
1393378	20430	7
1393379	20403	4
1393380	20462	8
1393381	20462	4
1393382	20442	10
1393383	20442	8
1393384	20457	9
1393385	20457	7
1393386	20457	5
1393387	20416	2
1393388	20471	2
1393389	20453	9
1393390	20453	2
1393391	20453	6
1393392	20453	5
1393393	20473	7
1393394	20473	5
1393395	20408	2
1393396	20408	5
1393397	20431	2
1393398	20658	9
1393399	20657	3
1393400	20660	6
1393401	20659	9
1393402	19321	6
1393403	19324	1
1393404	20341	3
1393405	20345	6
1393406	20343	6
1393407	20344	2
1393408	18830	4
1393409	18804	4
1393410	18826	4
1393411	18815	4
1393412	18801	7
1393413	18818	6
1393414	18820	3
1393415	18808	4
1393416	18808	7
1393417	18819	4
1393418	18819	7
1393419	18805	7
1393420	18832	4
1393421	18832	7
1393422	18828	4
1393423	18827	4
1393424	18827	7
1393425	18812	4
1393426	18807	4
1393427	18809	3
1393428	18816	3
1393429	18824	3
1393430	18824	10
1393431	18824	7
1393432	18824	5
1393433	18831	10
1393434	18825	9
1393435	18825	2
1393436	18825	6
1393437	18825	4
1393438	18825	7
1393439	18825	5
1393440	18806	6
1393441	18806	5
1393442	18802	9
1393443	18802	2
1393444	18802	6
1393445	18802	5
1393446	18814	9
1393447	18814	6
1393448	18814	7
1393449	18814	5
1393450	18803	3
1393451	18803	9
1393452	18803	2
1393453	18803	6
1393454	18803	7
1393455	18803	5
1393456	18813	9
1393457	18813	2
1393458	18813	6
1393459	18813	5
1393460	18811	10
1393461	18811	1
1393462	18829	4
1393463	18821	4
1393464	18822	9
1393465	18822	2
1393466	18823	6
1393467	18823	5
1393468	18810	9
1393469	18810	2
1393470	18810	7
1393471	18810	5
1393472	18817	4
1393473	19084	3
1393474	19082	4
1393475	19093	3
1393476	19087	4
1393477	19085	4
1393478	19085	7
1393479	19085	1
1393480	19081	4
1393481	19090	4
1393482	19089	3
1393483	19089	7
1393484	19088	4
1393485	19086	4
1393486	19092	1
1393487	19091	1
1393488	19080	4
1393489	19080	1
1393490	19083	7
1393491	19083	1
1393492	18642	4
1393493	18643	4
1393494	18641	4
1393495	20030	1
1393496	20032	4
1393497	20029	8
1393498	20264	3
1393499	20259	3
1393500	20258	3
1393501	20261	2
1393502	20265	2
1393503	20262	6
1393504	20257	6
1393505	20254	3
1393506	20256	3
1393507	20255	3
1393508	20260	2
1393509	20263	3
1393510	19809	7
1393511	19809	1
1393512	19808	2
1393513	19812	6
1393514	19813	1
1393515	19815	3
1393516	19815	4
1393517	19815	7
1393518	19820	3
1393519	19820	7
1393520	19810	3
1393521	19810	7
1393522	19811	3
1393523	19811	7
1393524	19803	7
1393525	19804	3
1393526	19819	3
1393527	19817	1
1393528	19805	3
1393529	19806	6
1393530	19814	3
1393531	19818	6
1393532	19807	4
1393533	19816	6
1393534	19816	7
1393535	19550	2
1393536	19355	1
1393537	19354	4
1393538	19353	1
1393539	19800	4
1393540	19800	1
1393541	19801	3
1393542	19802	4
1393543	19320	8
1393544	19332	3
1393545	19328	3
1393546	19331	3
1393547	19326	3
1393548	19333	3
1393549	19327	3
1393550	19330	3
1393551	19329	3
1393552	19555	3
1393553	19555	7
1393554	19556	3
1393555	19041	8
1393556	19041	4
1393557	19041	7
1393558	19041	1
1393559	19042	2
1393560	19052	7
1393561	19011	4
1393562	19027	4
1393563	19049	7
1393564	19044	10
1393565	19050	2
1393566	19020	4
1393567	19020	1
1393568	19026	8
1393569	19026	4
1393570	19026	7
1393571	19026	1
1393572	19036	4
1393573	19030	4
1393574	19030	1
1393575	19046	3
1393576	19046	7
1393577	19023	8
1393578	19074	1
1393579	19060	3
1393580	19077	3
1393581	19077	7
1393582	19077	1
1393583	19059	4
1393584	19053	2
1393585	19048	3
1393586	19064	2
1393587	19019	7
1393588	19019	1
1393589	19071	4
1393590	19029	7
1393591	19076	3
1393592	19076	2
1393593	19076	7
1393594	19056	9
1393595	19056	2
1393596	19012	4
1393597	19062	3
1393598	19062	7
1393599	19062	1
1393600	19015	1
1393601	19009	4
1393602	19068	8
1393603	19068	4
1393604	19068	1
1393605	19051	4
1393606	19038	1
1393607	19032	1
1393608	19073	8
1393609	19073	4
1393610	19047	1
1393611	19066	1
1393612	19045	3
1393613	19025	2
1393614	19021	2
1393615	19075	1
1393616	19070	1
1393617	19014	1
1393618	19058	8
1393619	19034	2
1393620	19031	2
1393621	19017	7
1393622	19069	7
1393623	19010	3
1393624	19039	3
1393625	19039	7
1393626	19018	8
1393627	19072	4
1393628	19065	6
1393629	19028	2
1393630	19013	10
1393631	19040	10
1393632	19016	4
1393633	19061	2
1393634	19061	7
1393635	19043	2
1393636	19043	7
1393637	19067	2
1393638	19067	7
1393639	19055	2
1393640	19054	1
1393641	19024	1
1393642	19057	4
1393643	19035	2
1393644	19022	3
1393645	19022	1
1393646	19033	4
1393647	19037	1
1393648	19008	1
1393649	19999	6
1393650	18933	3
1393651	18933	6
1393652	18932	3
1393653	18932	6
1393654	18934	3
1393655	18710	4
1393656	18710	1
1393657	18727	7
1393658	18727	1
1393659	18741	4
1393660	18741	7
1393661	18714	4
1393662	18695	4
1393663	18725	8
1393664	18728	3
1393665	18728	7
1393666	18728	1
1393667	18693	8
1393668	18693	4
1393669	18693	7
1393670	18693	1
1393671	18733	4
1393672	18729	4
1393673	18734	3
1393674	18706	8
1393675	18706	4
1393676	18690	1
1393677	18737	2
1393678	18731	3
1393679	18731	7
1393680	18691	9
1393681	18691	2
1393682	18691	7
1393683	18691	5
1393684	18739	4
1393685	18736	9
1393686	18736	2
1393687	18736	7
1393688	18736	5
1393689	18697	9
1393690	18697	2
1393691	18697	5
1393692	18740	2
1393693	18723	1
1393694	18722	1
1393695	18719	8
1393696	18719	6
1393697	18719	4
1393698	18719	7
1393699	18719	1
1393700	18735	1
1393701	18713	4
1393702	18713	7
1393703	18702	3
1393704	18702	2
1393705	18702	4
1393706	18702	7
1393707	18715	3
1393708	18715	7
1393709	18721	3
1393710	18732	4
1393711	18732	7
1393712	18716	2
1393713	18711	4
1393714	18711	1
1393715	18689	2
1393716	18689	7
1393717	18689	1
1393718	18717	3
1393719	18692	3
1393720	18712	4
1393721	18712	1
1393722	18726	6
1393723	18726	5
1393724	18700	8
1393725	18704	3
1393726	18704	2
1393727	18704	4
1393728	18704	7
1393729	18705	2
1393730	18694	6
1393731	18694	4
1393732	18694	7
1393733	18694	1
1393734	18698	4
1393735	18730	9
1393736	18730	2
1393737	18730	7
1393738	18730	5
1393739	18699	4
1393740	18709	3
1393741	18738	8
1393742	18738	1
1393743	18724	2
1393744	18718	3
1393745	18718	7
1393746	18708	8
1393747	18707	1
1393748	18701	3
1393749	18720	4
1393750	18720	1
1393751	18696	4
1393752	20512	3
1393753	20512	7
1393754	20514	3
1393755	20533	3
1393756	20533	7
1393757	20533	1
1393758	20535	3
1393759	20517	3
1393760	20517	7
1393761	20527	3
1393762	20527	4
1393763	20527	7
1393764	20508	3
1393765	20508	7
1393766	20508	1
1393767	20536	3
1393768	20528	3
1393769	20530	4
1393770	20522	4
1393771	20509	8
1393772	20509	4
1393773	20525	10
1393774	20525	8
1393775	20525	4
1393776	20511	4
1393777	20526	4
1393778	20518	4
1393779	20506	3
1393780	20515	4
1393781	20534	4
1393782	20537	4
1393783	20532	4
1393784	20510	4
1393785	20520	1
1393786	20516	4
1393787	20513	4
1393788	20505	10
1393789	20505	8
1393790	20531	4
1393791	20507	3
1393792	20523	3
1393793	20524	3
1393794	20521	3
1393795	20538	3
1393796	20538	7
1393797	20529	3
1393798	20529	7
1393799	20519	3
1393800	18943	4
1393801	18913	3
1393802	18914	4
1393803	18910	3
1393804	18905	3
1393805	18916	6
1393806	18903	6
1393807	18915	2
1393808	18901	2
1393809	18908	8
1393810	18908	4
1393811	18908	1
1393812	18911	1
1393813	18912	5
1393814	18909	3
1393815	18904	1
1393816	18902	3
1393817	18902	6
1393818	18906	3
1393819	18917	3
1393820	18907	3
1393821	18747	9
1393822	18747	6
1393823	18747	5
1393824	18746	3
1393825	18865	7
1393826	18865	1
1393827	18867	3
1393828	18867	7
1393829	18867	1
1393830	18870	7
1393831	18868	6
1393832	18868	5
1393833	18869	6
1393834	18869	5
1393835	18866	4
1393836	18866	5
1393837	19914	1
1393838	19916	4
1393839	19921	2
1393840	19919	3
1393841	19919	7
1393842	19917	3
1393843	19915	3
1393844	19920	6
1393845	20333	3
1393846	20326	10
1393847	20336	3
1393848	20336	7
1393849	20334	10
1393850	20334	8
1393851	20330	4
1393852	20340	4
1393853	20332	4
1393854	20332	7
1393855	20337	4
1393856	20325	4
1393857	20338	4
1393858	20335	4
1393859	20328	4
1393860	20324	10
1393861	20324	8
1393862	20327	10
1393863	20327	8
1393864	20331	10
1393865	20331	8
1393866	18897	3
1393867	18892	3
1393868	18894	3
1393869	18899	3
1393870	18899	7
1393871	18893	3
1393872	18893	7
1393873	18900	3
1393874	18900	7
1393875	18898	3
1393876	18896	3
1393877	18895	3
1393878	20871	2
1393879	20399	6
1393880	20399	5
1393881	20401	6
1393882	20401	5
1393883	20400	6
1393884	20402	6
1393885	18520	4
1393886	18520	1
1393887	18527	5
1393888	18497	6
1393889	18497	5
1393890	18496	4
1393891	18521	4
1393892	18485	2
1393893	18485	7
1393894	18485	1
1393895	18518	2
1393896	18483	3
1393897	18483	8
1393898	18483	4
1393899	18483	7
1393900	18483	1
1393901	18500	1
1393902	18519	8
1393903	18519	4
1393904	18519	1
1393905	18484	4
1393906	18484	7
1393907	18489	8
1393908	18489	4
1393909	18489	1
1393910	18493	2
1393911	18495	4
1393912	18498	4
1393913	18499	4
1393914	18490	4
1393915	18507	4
1393916	18486	3
1393917	18486	7
1393918	18514	4
1393919	18515	4
1393920	18505	8
1393921	18505	4
1393922	18505	7
1393923	18505	1
1393924	18526	1
1393925	18488	2
1393926	18488	5
1393927	18509	4
1393928	18509	7
1393929	18509	1
1393930	18516	8
1393931	18516	7
1393932	18491	4
1393933	18506	2
1393934	18512	3
1393935	18512	7
1393936	18503	4
1393937	18503	7
1393938	18503	1
1393939	18511	4
1393940	18511	7
1393941	18511	1
1393942	18517	3
1393943	18525	4
1393944	18525	1
1393945	18501	4
1393946	18501	1
1393947	18487	3
1393948	18487	7
1393949	18522	3
1393950	18528	3
1393951	18528	2
1393952	18528	7
1393953	18528	1
1393954	18492	4
1393955	18492	1
1393956	18502	3
1393957	18502	4
1393958	18502	7
1393959	18502	1
1393960	18510	4
1393961	18510	1
1393962	18524	2
1393963	18523	2
1393964	18523	1
1393965	18513	1
1393966	18504	2
1393967	19771	3
1393968	19906	8
1393969	19907	10
1393970	19907	8
1393971	19904	8
1393972	19908	8
1393973	19905	3
1393974	19308	4
1393975	19308	7
1393976	19314	1
1393977	19318	8
1393978	19318	4
1393979	19318	7
1393980	19319	4
1393981	19319	7
1393982	19313	2
1393983	19317	2
1393984	19311	4
1393985	19312	4
1393986	19315	4
1393987	19310	1
1393988	19703	3
1393989	19705	3
1393990	19705	7
1393991	19700	3
1393992	19700	7
1393993	19697	3
1393994	19697	7
1393995	19701	3
1393996	19702	3
1393997	19702	8
1393998	19698	3
1393999	19698	7
1394000	19699	3
1394001	19704	3
1394002	20347	2
1394003	20346	3
1394004	18887	9
1394005	18887	6
1394006	18887	5
1394007	18888	9
1394008	18888	2
1394009	18888	5
1394010	19988	1
1394011	19983	4
1394012	19994	3
1394013	19994	4
1394014	19990	4
1394015	19992	3
1394016	19992	7
1394017	19985	4
1394018	19989	10
1394019	19989	4
1394020	19989	7
1394021	19984	4
1394022	19979	8
1394023	19981	4
1394024	19987	3
1394025	19987	7
1394026	19986	3
1394027	19986	7
1394028	19982	8
1394029	19977	8
1394030	19980	3
1394031	19980	7
1394032	19991	10
1394033	19978	3
1394034	19978	7
1394035	20165	4
1394036	20165	1
1394037	20171	4
1394038	20172	4
1394039	20170	4
1394040	20173	3
1394041	20173	7
1394042	20169	4
1394043	20169	1
1394044	20167	4
1394045	20168	3
1394046	20168	2
1394047	20168	6
1394048	20168	4
1394049	20168	7
1394050	20168	1
1394051	20166	3
1394052	20166	2
1394053	20166	7
1394054	20166	1
1394055	20174	3
1394056	20174	7
1394057	20853	3
1394058	20845	10
1394059	20845	8
1394060	20845	4
1394061	20847	4
1394062	20852	8
1394063	20849	6
1394064	20854	8
1394065	20844	8
1394066	20848	3
1394067	20850	4
1394068	20855	3
1394069	20856	4
1394070	20851	3
1394071	20857	8
1394072	20857	11
1394073	20857	4
1394074	20846	8
1394075	20846	4
1394076	18800	8
1394077	20077	7
1394078	18840	3
1394079	18839	3
1394080	18838	3
1394081	18936	2
1394082	18935	3
1394083	18935	7
1394084	19772	3
1394085	18651	8
1394086	18650	10
1394087	18650	8
1394088	18649	4
1394089	18654	10
1394090	18654	8
1394091	18653	3
1394092	18648	4
1394093	18889	4
1394094	18890	4
1394095	20150	4
1394096	20150	1
1394097	20103	1
1394098	20108	4
1394099	20108	1
1394100	20151	4
1394101	20151	1
1394102	20121	4
1394103	20121	7
1394104	20121	1
1394105	20125	2
1394106	20125	7
1394107	20131	3
1394108	20131	4
1394109	20131	7
1394110	20131	1
1394111	20111	4
1394112	20112	4
1394113	20133	8
1394114	20133	4
1394115	20133	7
1394116	20133	1
1394117	20109	8
1394118	20109	4
1394119	20109	7
1394120	20129	4
1394121	20129	7
1394122	20129	1
1394123	20122	8
1394124	20123	4
1394125	20123	1
1394126	20119	2
1394127	20113	6
1394128	20134	9
1394129	20134	2
1394130	20130	9
1394131	20130	2
1394132	20105	2
1394133	20159	9
1394134	20159	2
1394135	20161	6
1394136	20149	8
1394137	20149	4
1394138	20149	7
1394139	20149	1
1394140	20132	1
1394141	20107	4
1394142	20144	3
1394143	20126	3
1394144	20126	2
1394145	20126	4
1394146	20126	7
1394147	20158	3
1394148	20158	4
1394149	20158	7
1394150	20158	1
1394151	20114	3
1394152	20127	1
1394153	20142	4
1394154	20135	4
1394155	20155	4
1394156	20116	8
1394157	20117	4
1394158	20117	7
1394159	20117	1
1394160	20162	2
1394161	20162	7
1394162	20140	4
1394163	20140	1
1394164	20152	1
1394165	20160	3
1394166	20148	4
1394167	20104	4
1394168	20141	2
1394169	20141	7
1394170	20145	8
1394171	20146	10
1394172	20106	8
1394173	20153	3
1394174	20164	4
1394175	20156	2
1394176	20137	6
1394177	20110	3
1394178	20128	4
1394179	20128	1
1394180	20163	4
1394181	20120	10
1394182	20157	8
1394183	20143	8
1394184	20136	2
1394185	20118	4
1394186	20139	3
1394187	20124	1
1394188	20115	4
1394189	20147	4
1394190	19551	10
1394191	19551	8
1394192	19553	8
1394193	19552	8
1394194	19876	10
1394195	19850	4
1394196	19874	4
1394197	19874	1
1394198	19868	1
1394199	19858	10
1394200	19858	8
1394201	19858	4
1394202	19858	1
1394203	19854	4
1394204	19854	7
1394205	19854	5
1394206	19854	1
1394207	19872	10
1394208	19872	8
1394209	19872	4
1394210	19872	7
1394211	19872	1
1394212	19855	10
1394213	19855	8
1394214	19855	4
1394215	19855	7
1394216	19889	2
1394217	19822	8
1394218	19877	8
1394219	19869	4
1394220	19869	7
1394221	19836	4
1394222	19836	7
1394223	19879	8
1394224	19849	3
1394225	19849	10
1394226	19849	8
1394227	19833	10
1394228	19833	8
1394229	19863	8
1394230	19863	4
1394231	19863	7
1394232	19838	4
1394233	19828	10
1394234	19828	8
1394235	19828	4
1394236	19828	7
1394237	19890	8
1394238	19890	7
1394239	19847	10
1394240	19847	8
1394241	19847	4
1394242	19847	7
1394243	19840	3
1394244	19840	7
1394245	19901	3
1394246	19826	3
1394247	19852	3
1394248	19861	3
1394249	19861	4
1394250	19861	1
1394251	19830	3
1394252	19844	3
1394253	19875	3
1394254	19875	8
1394255	19893	3
1394256	19866	3
1394257	19827	3
1394258	19829	3
1394259	19829	8
1394260	19891	3
1394261	19839	3
1394262	19856	3
1394263	19856	7
1394264	19895	3
1394265	19895	7
1394266	19870	3
1394267	19870	4
1394268	19897	3
1394269	19888	3
1394270	19888	4
1394271	19888	7
1394272	19898	3
1394273	19898	4
1394274	19887	4
1394275	19862	9
1394276	19862	5
1394277	19899	4
1394278	19867	2
1394279	19867	7
1394280	19846	10
1394281	19846	8
1394282	19846	4
1394283	19865	10
1394284	19865	8
1394285	19865	4
1394286	19848	10
1394287	19848	8
1394288	19900	10
1394289	19834	10
1394290	19831	10
1394291	19823	10
1394292	19859	10
1394293	19837	10
1394294	19837	8
1394295	19853	10
1394296	19853	8
1394297	19883	9
1394298	19883	5
1394299	19843	9
1394300	19843	5
1394301	19860	9
1394302	19860	6
1394303	19860	5
1394304	19880	5
1394305	19824	2
1394306	19851	2
1394307	19892	9
1394308	19892	5
1394309	19841	2
1394310	19835	9
1394311	19835	2
1394312	19835	5
1394313	19873	8
1394314	19873	4
1394315	19873	5
1394316	19871	4
1394317	19884	8
1394318	19884	4
1394319	19832	8
1394320	19832	4
1394321	19885	4
1394322	19857	4
1394323	19845	8
1394324	19845	4
1394325	19845	7
1394326	19902	10
1394327	19902	8
1394328	19902	4
1394329	19902	7
1394330	19881	10
1394331	19881	8
1394332	19881	4
1394333	19842	4
1394334	19864	10
1394335	19896	4
1394336	19886	6
1394337	19777	8
1394338	19777	1
1394339	19776	4
1394340	19782	3
1394341	19785	4
1394342	19785	7
1394343	19779	4
1394344	19778	4
1394345	19783	3
1394346	19784	4
1394347	19780	4
1394348	19780	7
1394349	19774	4
1394350	19773	4
1394351	19773	7
1394352	19781	2
1394353	19307	1
1394354	20323	4
1394355	20316	4
1394356	20322	10
1394357	20319	10
1394358	20319	8
1394359	20318	10
1394360	20317	1
1394361	20321	4
1394362	20321	7
1394363	20098	10
1394364	20098	8
1394365	20098	1
1394366	20099	7
1394367	20099	1
1394368	20097	3
1394369	20095	3
1394370	20095	1
1394371	20092	10
1394372	20092	8
1394373	20092	1
1394374	20093	7
1394375	20093	1
1394376	20100	3
1394377	20100	1
1394378	20090	1
1394379	20096	3
1394380	20089	8
1394381	20089	1
1394382	20101	7
1394383	20101	1
1394384	20094	3
1394385	20102	1
1394386	20091	1
1394387	18539	8
1394388	18553	3
1394389	18553	1
1394390	18569	4
1394391	18580	3
1394392	18580	4
1394393	18580	7
1394394	18580	1
1394395	18568	4
1394396	18568	1
1394397	18536	1
1394398	18575	3
1394399	18551	2
1394400	18561	10
1394401	18561	7
1394402	18561	1
1394403	18541	4
1394404	18549	9
1394405	18549	2
1394406	18549	5
1394407	18542	2
1394408	18590	2
1394409	18550	2
1394410	18545	4
1394411	18556	7
1394412	18556	1
1394413	18574	2
1394414	18538	10
1394415	18538	8
1394416	18567	3
1394417	18532	1
1394418	18591	1
1394419	18593	1
1394420	18578	4
1394421	18565	3
1394422	18546	4
1394423	18546	1
1394424	18589	8
1394425	18531	4
1394426	18531	7
1394427	18531	1
1394428	18587	2
1394429	18587	7
1394430	18557	8
1394431	18558	1
1394432	18576	3
1394433	18570	3
1394434	18570	6
1394435	18570	7
1394436	18537	2
1394437	18543	2
1394438	18543	5
1394439	18592	4
1394440	18592	7
1394441	18592	1
1394442	18588	7
1394443	18582	4
1394444	18582	7
1394445	18579	4
1394446	18579	7
1394447	18583	4
1394448	18583	1
1394449	18585	7
1394450	18544	7
1394451	18571	1
1394452	18530	2
1394453	18547	8
1394454	18547	2
1394455	18547	4
1394456	18547	1
1394457	18559	3
1394458	18560	3
1394459	18560	7
1394460	18586	3
1394461	18586	7
1394462	18586	1
1394463	18562	3
1394464	18562	7
1394465	18535	3
1394466	18540	3
1394467	18572	3
1394468	18581	3
1394469	18564	3
1394470	18564	7
1394471	18555	3
1394472	18555	2
1394473	18555	7
1394474	18548	8
1394475	18533	4
1394476	18533	7
1394477	18577	2
1394478	18534	2
1394479	18554	2
1394480	18554	7
1394481	18554	1
1394482	18566	2
1394483	18566	1
1394484	18573	6
1394485	18529	2
1394486	18529	1
1394487	18552	2
1394488	19372	10
1394489	18955	10
1394490	20266	8
1394491	20266	4
1394492	18765	7
1394493	18781	7
1394494	18775	4
1394495	18764	4
1394496	18773	1
1394497	18767	6
1394498	18769	10
1394499	18769	4
1394500	18768	4
1394501	18768	1
1394502	18778	4
1394503	18776	4
1394504	18784	4
1394505	18780	4
1394506	18782	4
1394507	18779	7
1394508	18783	4
1394509	18786	7
1394510	18771	7
1394511	18777	7
1394512	18772	7
1394513	18766	4
1394514	18770	1
1394515	18785	1
1394516	19134	10
1394517	19134	8
1394518	19153	8
1394519	19163	8
1394520	19163	1
1394521	19211	1
1394522	19151	8
1394523	19194	10
1394524	19194	8
1394525	19179	10
1394526	19179	8
1394527	19231	7
1394528	19235	8
1394529	19235	4
1394530	19235	1
1394531	19221	4
1394532	19230	2
1394533	19172	8
1394534	19172	4
1394535	19239	3
1394536	19199	4
1394537	19226	7
1394538	19141	2
1394539	19154	4
1394540	19154	7
1394541	19154	1
1394542	19237	4
1394543	19137	6
1394544	19137	5
1394545	19188	9
1394546	19188	2
1394547	19189	4
1394548	19193	4
1394549	19193	7
1394550	19192	4
1394551	19229	4
1394552	19139	2
1394553	19181	4
1394554	19236	2
1394555	19236	4
1394556	19236	7
1394557	19236	1
1394558	19187	3
1394559	19187	6
1394560	19204	1
1394561	19233	1
1394562	19205	3
1394563	19198	9
1394564	19198	2
1394565	19195	7
1394566	19191	10
1394567	19191	8
1394568	19144	8
1394569	19225	6
1394570	19177	4
1394571	19203	4
1394572	19203	7
1394573	19180	8
1394574	19140	2
1394575	19200	5
1394576	19176	3
1394577	19176	2
1394578	19176	7
1394579	19176	1
1394580	19184	3
1394581	19207	5
1394582	19190	2
1394583	19190	7
1394584	19208	1
1394585	19145	2
1394586	19232	4
1394587	19202	4
1394588	19135	8
1394589	19135	4
1394590	19165	2
1394591	19165	7
1394592	19238	8
1394593	19238	1
1394594	19215	4
1394595	19215	7
1394596	19215	1
1394597	19245	4
1394598	19143	10
1394599	19143	1
1394600	19164	3
1394601	19142	1
1394602	19159	3
1394603	19159	7
1394604	19159	1
1394605	19183	3
1394606	19183	6
1394607	19132	2
1394608	19132	4
1394609	19132	7
1394610	19132	1
1394611	19156	6
1394612	19162	2
1394613	19147	2
1394614	19228	2
1394615	19228	5
1394616	19201	2
1394617	19173	8
1394618	19171	1
1394619	19138	3
1394620	19138	7
1394621	19148	3
1394622	19148	7
1394623	19219	6
1394624	19218	1
1394625	19222	1
1394626	19175	2
1394627	19182	2
1394628	19182	7
1394629	19158	4
1394630	19149	4
1394631	19223	2
1394632	19234	4
1394633	19234	7
1394634	19234	1
1394635	19136	4
1394636	19136	1
1394637	19227	3
1394638	19227	2
1394639	19227	7
1394640	19227	1
1394641	19209	3
1394642	19209	7
1394643	19224	2
1394644	19216	7
1394645	19178	7
1394646	19196	3
1394647	19168	2
1394648	19169	1
1394649	19166	3
1394650	19197	4
1394651	19240	9
1394652	19240	2
1394653	19240	7
1394654	19210	8
1394655	19174	8
1394656	19174	4
1394657	19174	7
1394658	19133	7
1394659	19206	4
1394660	19206	1
1394661	19212	8
1394662	19212	2
1394663	19212	4
1394664	19212	7
1394665	19212	5
1394666	19212	1
1394667	19167	7
1394668	19160	4
1394669	19213	3
1394670	19213	2
1394671	19213	4
1394672	19213	7
1394673	19217	3
1394674	19217	7
1394675	19161	4
1394676	19161	1
1394677	19186	4
1394678	19157	2
1394679	19155	6
1394680	19241	5
1394681	19220	2
1394682	19242	9
1394683	19242	2
1394684	19242	5
1394685	19170	2
1394686	19170	5
1394687	19214	4
1394688	19214	1
1394689	19152	7
1394690	19152	1
1394691	19146	3
1394692	19150	3
1394693	19150	2
1394694	19150	7
1394695	19150	1
1394696	18798	5
1394697	18797	4
1394698	18795	4
1394699	18787	4
1394700	18788	4
1394701	18791	10
1394702	18791	8
1394703	18791	4
1394704	18792	8
1394705	18792	4
1394706	18796	4
1394707	18793	2
1394708	18789	8
1394709	19277	4
1394710	19275	2
1394711	19275	1
1394712	19272	1
1394713	19276	3
1394714	19276	4
1394715	19276	7
1394716	19276	1
1394717	19260	5
1394718	19267	8
1394719	19267	4
1394720	19267	1
1394721	19280	10
1394722	19280	8
1394723	19280	6
1394724	19280	4
1394725	19280	7
1394726	19280	5
1394727	19280	1
1394728	19256	4
1394729	19256	7
1394730	19256	1
1394731	19255	8
1394732	19255	4
1394733	19255	1
1394734	19269	1
1394735	19278	5
1394736	19289	8
1394737	19268	6
1394738	19302	2
1394739	19257	4
1394740	19257	7
1394741	19293	8
1394742	19293	1
1394743	19285	1
1394744	19266	4
1394745	19287	3
1394746	19265	10
1394747	19265	8
1394748	19274	4
1394749	19274	7
1394750	19274	1
1394751	19301	4
1394752	19301	7
1394753	19301	1
1394754	19270	10
1394755	19270	8
1394756	19270	4
1394757	19270	7
1394758	19270	1
1394759	19298	4
1394760	19262	1
1394761	19283	8
1394762	19283	1
1394763	19299	2
1394764	19299	7
1394765	19299	1
1394766	19281	3
1394767	19281	7
1394768	19281	1
1394769	19292	3
1394770	19288	1
1394771	19296	9
1394772	19296	6
1394773	19296	5
1394774	19261	4
1394775	19264	4
1394776	19264	7
1394777	19273	8
1394778	19273	4
1394779	19273	7
1394780	19294	4
1394781	19282	1
1394782	19271	2
1394783	19284	4
1394784	19263	10
1394785	19263	8
1394786	19295	4
1394787	19295	7
1394788	19295	1
1394789	19279	4
1394790	19279	7
1394791	19279	1
1394792	19290	1
1394793	19291	2
1394794	19291	5
1394795	19258	2
1394796	19258	7
1394797	19258	1
1394798	19300	2
1394799	19259	2
1394800	20680	1
1394801	20684	1
1394802	20712	1
1394803	20709	1
1394804	20710	3
1394805	20710	7
1394806	20710	1
1394807	20708	1
1394808	20711	10
1394809	20711	8
1394810	20711	4
1394811	20711	7
1394812	20711	1
1394813	20679	10
1394814	20679	7
1394815	20679	1
1394816	20682	4
1394817	20682	1
1394818	20702	3
1394819	20702	2
1394820	20702	7
1394821	20702	1
1394822	20693	4
1394823	20701	4
1394824	20706	4
1394825	20706	7
1394826	20706	1
1394827	20696	10
1394828	20696	8
1394829	20696	7
1394830	20696	1
1394831	20699	10
1394832	20699	4
1394833	20699	7
1394834	20699	1
1394835	20694	1
1394836	20677	3
1394837	20677	7
1394838	20690	3
1394839	20700	4
1394840	20700	7
1394841	20675	8
1394842	20675	4
1394843	20675	7
1394844	20686	8
1394845	20686	4
1394846	20686	7
1394847	20681	4
1394848	20707	3
1394849	20707	2
1394850	20697	4
1394851	20697	7
1394852	20687	4
1394853	20685	4
1394854	20685	7
1394855	20704	4
1394856	20688	4
1394857	20691	2
1394858	20695	2
1394859	20678	2
1394860	20698	9
1394861	20698	2
1394862	20698	5
1394863	20683	9
1394864	20683	2
1394865	20683	5
1394866	20713	9
1394867	20713	5
1394868	20705	2
1394869	20705	6
1394870	20705	7
1394871	20705	5
1394872	20705	1
1394873	20692	8
1394874	20703	2
1394875	19370	4
1394876	19363	4
1394877	19360	8
1394878	19360	4
1394879	19371	8
1394880	19371	4
1394881	19371	7
1394882	19369	2
1394883	19365	8
1394884	19366	8
1394885	19366	4
1394886	19367	10
1394887	19368	4
1394888	19361	2
1394889	19637	3
1394890	19634	10
1394891	19634	4
1394892	19636	8
1394893	19636	4
1394894	19628	1
1394895	19631	10
1394896	19631	8
1394897	19632	8
1394898	19632	4
1394899	19639	8
1394900	19639	4
1394901	19644	8
1394902	19635	2
1394903	19638	10
1394904	19627	8
1394905	19627	4
1394906	19640	8
1394907	19640	4
1394908	19643	3
1394909	19633	3
1394910	19629	2
1394911	19645	2
1394912	19645	1
1394913	20291	10
1394914	20296	10
1394915	20268	8
1394916	20306	8
1394917	20283	10
1394918	20283	8
1394919	20310	10
1394920	20310	8
1394921	20298	10
1394922	20298	8
1394923	20269	10
1394924	20269	8
1394925	20270	8
1394926	20273	8
1394927	20303	8
1394928	20293	8
1394929	20289	10
1394930	20292	10
1394931	20292	8
1394932	20302	10
1394933	20302	8
1394934	20308	8
1394935	20278	8
1394936	20271	8
1394937	20297	10
1394938	20297	4
1394939	20294	10
1394940	20294	8
1394941	20287	10
1394942	20282	3
1394943	20282	11
1394944	20282	7
1394945	20285	3
1394946	20267	3
1394947	20276	3
1394948	20276	7
1394949	20304	3
1394950	20272	3
1394951	20307	8
1394952	20301	8
1394953	20299	3
1394954	20286	3
1394955	20281	3
1394956	20281	1
1394957	20284	3
1394958	20288	7
1394959	20288	1
1394960	20279	7
1394961	20279	1
1394962	20274	7
1394963	20274	1
1394964	20280	7
1394965	20280	1
1394966	20277	1
1394967	20295	4
1394968	20295	7
1394969	20295	1
1394970	20300	1
1394971	19794	4
1394972	19794	1
1394973	19793	8
1394974	19793	4
1394975	19793	1
1394976	19796	8
1394977	19795	1
1394978	18941	3
1394979	20088	9
1394980	20088	2
1394981	19913	4
1394982	19910	1
1394983	19912	4
1394984	19909	1
1394985	19911	4
1394986	18974	1
1394987	18975	4
1394988	18975	7
1394989	18968	10
1394990	18968	4
1394991	18968	1
1394992	18991	4
1394993	18991	7
1394994	18991	1
1394995	18973	1
1394996	18995	4
1394997	18995	1
1394998	18963	1
1394999	19001	4
1395000	18964	3
1395001	18999	2
1395002	18986	3
1395003	18988	4
1395004	18988	7
1395005	18988	1
1395006	19003	1
1395007	18966	2
1395008	18966	7
1395009	18966	5
1395010	18960	2
1395011	18960	1
1395012	19000	5
1395013	18957	3
1395014	18957	2
1395015	18957	4
1395016	18957	7
1395017	18957	1
1395018	18959	2
1395019	18997	4
1395020	18996	1
1395021	18961	2
1395022	18971	2
1395023	18971	7
1395024	18958	3
1395025	18982	2
1395026	18982	6
1395027	18982	7
1395028	18982	5
1395029	18989	3
1395030	18989	7
1395031	18976	3
1395032	18976	7
1395033	18992	8
1395034	18992	4
1395035	18992	7
1395036	18992	1
1395037	19002	4
1395038	18967	4
1395039	18967	7
1395040	18967	1
1395041	18978	4
1395042	18978	1
1395043	18990	9
1395044	18990	2
1395045	18990	5
1395046	18962	10
1395047	18962	8
1395048	18962	4
1395049	18962	7
1395050	18962	1
1395051	18985	1
1395052	18984	2
1395053	18969	5
1395054	18987	1
1395055	18993	3
1395056	18993	6
1395057	18993	7
1395058	18993	1
1395059	19006	3
1395060	19006	7
1395061	19006	1
1395062	18983	2
1395063	18983	7
1395064	18983	1
1395065	18980	4
1395066	18979	4
1395067	18979	7
1395068	18970	9
1395069	18970	2
1395070	18970	5
1395071	18965	1
1395072	18977	1
1395073	18919	3
1395074	18918	4
1395075	19335	10
1395076	19341	3
1395077	19336	10
1395078	19339	4
1395079	19340	10
1395080	19340	8
1395081	19340	4
1395082	19344	4
1395083	19337	4
1395084	19334	4
1395085	19342	4
1395086	19338	4
1395087	19343	8
1395088	20838	1
1395089	20833	8
1395090	20833	4
1395091	20833	1
1395092	20834	1
1395093	20836	4
1395094	20836	7
1395095	20836	1
1395096	20837	4
1395097	20837	1
1395098	20831	4
1395099	20832	4
1395100	20832	7
1395101	20839	4
1395102	20839	1
1395103	20835	1
1395104	20842	4
1395105	20841	1
1395106	18635	10
1395107	20666	7
1395108	20665	10
1395109	20665	4
1395110	20665	7
1395111	20665	1
1395112	20670	3
1395113	20669	4
1395114	20669	7
1395115	20662	3
1395116	20668	10
1395117	20668	4
1395118	20668	1
1395119	20664	4
1395120	20664	1
1395121	20661	8
1395122	20671	8
1395123	20671	4
1395124	18875	4
1395125	18878	4
1395126	18871	4
1395127	18872	8
1395128	18874	10
1395129	18876	4
1395130	18877	3
1395131	19357	8
1395132	19359	1
1395133	19356	2
1395134	19358	1
1395135	20391	2
1395136	20392	2
1395137	20392	1
1395138	20393	2
1395139	20397	2
1395140	20394	1
1395141	20384	8
1395142	20384	4
1395143	20384	7
1395144	20382	7
1395145	20396	7
1395146	20396	1
1395147	20395	1
1395148	20387	2
1395149	20387	5
1395150	20381	7
1395151	20381	1
1395152	20389	1
1395153	20383	1
1395154	20379	4
1395155	20386	1
1395156	20385	1
1395157	20388	4
1395158	20388	1
1395159	19007	3
1395160	18668	4
1395161	18672	4
1395162	18661	4
1395163	18661	7
1395164	18661	1
1395165	18655	7
1395166	18655	1
1395167	18664	1
1395168	18659	7
1395169	18659	1
1395170	18656	6
1395171	18656	7
1395172	18656	1
1395173	18669	3
1395174	18667	3
1395175	18667	7
1395176	18666	4
1395177	18666	7
1395178	18666	1
1395179	18662	4
1395180	18662	7
1395181	18662	1
1395182	18673	4
1395183	18673	7
1395184	18671	1
1395185	18658	5
1395186	18660	4
1395187	18660	7
1395188	18660	1
1395189	18665	2
1395190	18665	7
1395191	18665	1
1395192	18670	2
1395193	18657	4
1395194	18657	7
1395195	18657	1
1395196	18663	3
1395197	18663	7
1395198	18663	1
1395199	18940	4
1395200	18938	4
1395201	18937	4
1395202	18939	4
1395203	20234	1
1395204	20235	10
1395205	20235	1
1395206	20233	10
1395207	19078	10
1395208	19079	8
1395209	20550	3
1395210	20550	2
1395211	20550	6
1395212	20550	7
1395213	20550	1
1395214	20549	6
1395215	20546	4
1395216	20541	9
1395217	20541	2
1395218	20540	3
1395219	20542	3
1395220	20545	6
1395221	20539	3
1395222	20539	7
1395223	20544	3
1395224	20544	6
1395225	20543	3
1395226	20543	7
1395227	20552	2
1395228	20547	2
1395229	20551	3
1395230	20548	3
1395231	19788	10
1395232	20673	4
1395233	20376	8
1395234	20378	6
1395235	20349	8
1395236	20359	1
1395237	20350	2
1395238	20365	7
1395239	20374	3
1395240	20374	7
1395241	20374	1
1395242	20355	8
1395243	20355	4
1395244	20355	7
1395245	20355	1
1395246	20351	2
1395247	20351	1
1395248	20370	4
1395249	20370	7
1395250	20364	7
1395251	20348	4
1395252	20348	7
1395253	20354	7
1395254	20357	2
1395255	20352	3
1395256	20352	4
1395257	20352	7
1395258	20361	1
1395259	20366	1
1395260	20369	1
1395261	20372	9
1395262	20372	2
1395263	20356	2
1395264	20358	8
1395265	20377	2
1395266	20362	1
1395267	20371	3
1395268	20371	7
1395269	20373	1
1395270	20375	4
1395271	20375	7
1395272	20375	1
1395273	20360	8
1395274	20360	4
1395275	20360	7
1395276	20360	1
1395277	20363	3
1395278	20363	7
1395279	20363	1
1395280	19749	4
1395281	19749	7
1395282	19740	1
1395283	19743	4
1395284	19743	7
1395285	19743	1
1395286	19736	10
1395287	19737	2
1395288	19737	5
1395289	19733	1
1395290	19764	1
1395291	19746	4
1395292	19746	7
1395293	19746	1
1395294	19753	4
1395295	19753	7
1395296	19753	1
1395297	19734	6
1395298	19766	3
1395299	19757	4
1395300	19763	8
1395301	19763	2
1395302	19760	2
1395303	19758	4
1395304	19732	3
1395305	19762	3
1395306	19762	4
1395307	19762	7
1395308	19747	1
1395309	19745	1
1395310	19768	3
1395311	19768	1
1395312	19759	1
1395313	19754	4
1395314	19755	2
1395315	19761	4
1395316	19761	7
1395317	19761	1
1395318	19756	3
1395319	19730	1
1395320	19765	2
1395321	19731	1
1395322	19767	3
1395323	19735	3
1395324	19742	2
1395325	19750	1
1395326	19738	1
1395327	19770	4
1395328	19770	7
1395329	19770	1
1395330	19769	1
1395331	19752	3
1395332	19752	4
1395333	19752	7
1395334	19752	1
1395335	19748	4
1395336	19744	3
1395337	19744	7
1395338	19744	1
1395339	19751	2
1395340	19751	1
1395341	19741	3
1395342	19739	3
1395343	20864	4
1395344	20869	4
1395345	20869	5
1395346	20861	3
1395347	20868	6
1395348	20868	5
1395349	20858	4
1395350	20865	3
1395351	20867	3
1395352	20867	6
1395353	20862	4
1395354	20866	3
1395355	20866	7
1395356	20870	4
1395357	20863	4
1395358	20859	3
1395359	20859	7
1395360	19998	1
1395361	19996	1
1395362	19997	6
1395363	19995	6
1395364	18645	4
1395365	18646	4
1395366	18647	4
1395367	19786	6
1395368	19560	3
1395369	19560	6
1395370	19482	3
1395371	19434	1
1395372	19410	4
1395373	19530	9
1395374	19530	2
1395375	19394	4
1395376	19394	7
1395377	19478	1
1395378	19455	4
1395379	19411	4
1395380	19411	1
1395381	19392	4
1395382	19392	7
1395383	19392	1
1395384	19525	4
1395385	19429	4
1395386	19429	7
1395387	19429	1
1395388	19393	2
1395389	19501	1
1395390	19404	2
1395391	19469	4
1395392	19413	1
1395393	19428	3
1395394	19454	4
1395395	19396	3
1395396	19396	1
1395397	19476	7
1395398	19476	5
1395399	19445	3
1395400	19509	8
1395401	19509	4
1395402	19509	7
1395403	19509	1
1395404	19391	4
1395405	19391	7
1395406	19442	10
1395407	19442	8
1395408	19449	8
1395409	19449	4
1395410	19449	7
1395411	19449	1
1395412	19499	4
1395413	19499	7
1395414	19499	1
1395415	19505	4
1395416	19485	8
1395417	19485	4
1395418	19494	10
1395419	19494	8
1395420	19494	1
1395421	19419	4
1395422	19475	4
1395423	19527	4
1395424	19533	4
1395425	19521	4
1395426	19473	8
1395427	19473	4
1395428	19473	7
1395429	19473	1
1395430	19547	4
1395431	19468	4
1395432	19415	7
1395433	19458	4
1395434	19458	1
1395435	19441	8
1395436	19440	7
1395437	19490	1
1395438	19431	2
1395439	19431	7
1395440	19532	2
1395441	19532	7
1395442	19471	8
1395443	19471	4
1395444	19471	7
1395445	19471	1
1395446	19424	4
1395447	19487	4
1395448	19409	8
1395449	19409	4
1395450	19409	1
1395451	19510	4
1395452	19520	4
1395453	19414	4
1395454	19414	7
1395455	19506	4
1395456	19529	8
1395457	19472	8
1395458	19477	1
1395459	19385	8
1395460	19385	4
1395461	19385	1
1395462	19461	2
1395463	19439	9
1395464	19439	2
1395465	19464	2
1395466	19397	3
1395467	19405	3
1395468	19405	7
1395469	19508	2
1395470	19508	7
1395471	19508	1
1395472	19543	2
1395473	19543	7
1395474	19417	9
1395475	19417	2
1395476	19388	2
1395477	19484	8
1395478	19534	3
1395479	19534	2
1395480	19432	9
1395481	19432	2
1395482	19432	7
1395483	19432	5
1395484	19438	2
1395485	19460	3
1395486	19460	7
1395487	19456	3
1395488	19456	6
1395489	19448	3
1395490	19412	2
1395491	19412	7
1395492	19418	1
1395493	19489	2
1395494	19538	1
1395495	19452	3
1395496	19548	3
1395497	19548	7
1395498	19535	3
1395499	19535	2
1395500	19535	7
1395501	19512	9
1395502	19512	2
1395503	19544	9
1395504	19544	2
1395505	19496	4
1395506	19496	7
1395507	19425	7
1395508	19470	7
1395509	19447	4
1395510	19395	2
1395511	19492	2
1395512	19433	7
1395513	19433	1
1395514	19466	3
1395515	19480	2
1395516	19523	10
1395517	19522	10
1395518	19522	8
1395519	19400	2
1395520	19518	2
1395521	19542	7
1395522	19542	1
1395523	19390	8
1395524	19536	1
1395525	19443	2
1395526	19474	2
1395527	19524	1
1395528	19511	2
1395529	19504	2
1395530	19416	2
1395531	19387	4
1395532	19519	2
1395533	19519	7
1395534	19519	1
1395535	19502	4
1395536	19486	2
1395537	19503	2
1395538	19503	4
1395539	19503	1
1395540	19401	7
1395541	19457	1
1395542	19402	1
1395543	19423	7
1395544	19514	2
1395545	19545	7
1395546	19426	4
1395547	19467	4
1395548	19444	7
1395549	19444	1
1395550	19408	2
1395551	19408	1
1395552	19528	3
1395553	19528	2
1395554	19528	7
1395555	19435	2
1395556	19450	2
1395557	19495	2
1395558	19465	3
1395559	19516	4
1395560	19541	8
1395561	19541	4
1395562	19541	7
1395563	19488	3
1395564	19546	8
1395565	19531	2
1395566	19420	2
1395567	19507	10
1395568	19507	8
1395569	19430	4
1395570	19446	2
1395571	19537	2
1395572	19481	4
1395573	19481	7
1395574	19481	1
1395575	19515	7
1395576	19479	4
1395577	19517	8
1395578	19459	7
1395579	19459	1
1395580	19513	7
1395581	19453	8
1395582	19462	6
1395583	19483	1
1395584	19540	8
1395585	19540	4
1395586	19540	7
1395587	19540	1
1395588	19403	9
1395589	19403	2
1395590	19403	6
1395591	19403	5
1395592	19497	2
1395593	19526	6
1395594	19427	1
1395595	19398	3
1395596	19539	2
1395597	19549	3
1395598	19549	2
1395599	19549	7
1395600	19386	4
1395601	19493	2
1395602	19493	7
1395603	19493	1
1395604	19436	4
1395605	19451	4
1395606	19451	7
1395607	19451	1
1395608	19421	7
1395609	19422	1
1395610	19491	1
1395611	19500	9
1395612	19500	2
1395613	19407	4
1395614	19407	7
1395615	19407	1
1395616	19498	1
1395617	19399	4
1395618	19437	2
1395619	19437	7
1395620	19463	2
1395621	19463	4
1395622	19463	1
1395623	19406	1
1395624	19345	10
1395625	18956	10
1395626	19599	3
1395627	19599	9
1395628	19599	2
1395629	19599	7
1395630	19599	5
1395631	19591	6
1395632	19602	3
1395633	19602	5
1395634	19595	3
1395635	19595	10
1395636	19595	7
1395637	19597	3
1395638	19597	7
1395639	19614	3
1395640	19609	3
1395641	19592	3
1395642	19613	3
1395643	19605	3
1395644	19605	9
1395645	19605	6
1395646	19605	5
1395647	19610	3
1395648	19610	9
1395649	19610	5
1395650	19607	3
1395651	19607	9
1395652	19607	6
1395653	19607	7
1395654	19607	5
1395655	19606	3
1395656	19606	6
1395657	19606	5
1395658	19611	9
1395659	19611	6
1395660	19611	5
1395661	19598	3
1395662	19598	9
1395663	19598	5
1395664	19593	6
1395665	19593	5
1395666	19600	3
1395667	19600	9
1395668	19600	2
1395669	19600	5
1395670	19612	3
1395671	19612	1
1395672	19594	3
1395673	19594	2
1395674	19594	7
1395675	19596	3
1395676	19596	6
1395677	19603	3
1395678	19603	6
1395679	19603	4
1395680	19603	7
1395681	19608	6
1395682	19601	6
1395683	19601	5
1395684	19604	3
1395685	19821	4
1395686	19674	8
1395687	19674	4
1395688	19674	7
1395689	19674	5
1395690	19674	1
1395691	19685	4
1395692	19660	4
1395693	19660	7
1395694	19658	4
1395695	19658	5
1395696	19680	6
1395697	19680	4
1395698	19680	7
1395699	19661	4
1395700	19661	5
1395701	19650	4
1395702	19650	7
1395703	19682	4
1395704	19682	7
1395705	19682	1
1395706	19653	3
1395707	19653	10
1395708	19653	8
1395709	19653	4
1395710	19653	1
1395711	19655	3
1395712	19655	4
1395713	19655	5
1395714	19655	1
1395715	19666	4
1395716	19666	1
1395717	19673	4
1395718	19673	7
1395719	19683	4
1395720	19683	7
1395721	19683	1
1395722	19688	8
1395723	19688	4
1395724	19688	1
1395725	19681	8
1395726	19681	1
1395727	19649	8
1395728	19649	4
1395729	19649	7
1395730	19649	1
1395731	19686	4
1395732	19686	1
1395733	19651	2
1395734	19657	3
1395735	19657	1
1395736	19648	3
1395737	19676	6
1395738	19663	6
1395739	19652	2
1395740	19652	6
1395741	19672	3
1395742	19672	8
1395743	19672	2
1395744	19672	4
1395745	19672	7
1395746	19672	1
1395747	19664	6
1395748	19664	4
1395749	19664	7
1395750	19664	1
1395751	19689	7
1395752	19687	4
1395753	19687	7
1395754	19687	1
1395755	19670	7
1395756	19656	2
1395757	19656	4
1395758	19656	7
1395759	19656	5
1395760	19659	2
1395761	19659	4
1395762	19659	7
1395763	19647	8
1395764	19647	4
1395765	19647	7
1395766	19647	1
1395767	19679	10
1395768	19678	4
1395769	19678	7
1395770	19646	4
1395771	19646	7
1395772	19646	1
1395773	19667	3
1395774	19667	2
1395775	19667	7
1395776	19667	1
1395777	19665	1
1395778	19691	6
1395779	19691	5
1395780	19696	6
1395781	19693	5
1395782	19694	5
1395783	19695	6
1395784	19695	5
1395785	19692	5
1395786	20640	10
1395787	20625	6
1395788	20647	10
1395789	20647	1
1395790	20648	4
1395791	20648	7
1395792	20606	2
1395793	20606	6
1395794	20606	7
1395795	20606	5
1395796	20613	2
1395797	20607	9
1395798	20607	2
1395799	20634	1
1395800	20624	9
1395801	20624	2
1395802	20624	6
1395803	20624	5
1395804	20644	1
1395805	20631	8
1395806	20601	10
1395807	20604	2
1395808	20605	1
1395809	20623	1
1395810	20609	10
1395811	20609	8
1395812	20609	7
1395813	20609	1
1395814	20600	3
1395815	20611	1
1395816	20635	2
1395817	20635	4
1395818	20635	7
1395819	20635	1
1395820	20619	1
1395821	20636	1
1395822	20602	4
1395823	20602	7
1395824	20642	10
1395825	20642	8
1395826	20621	9
1395827	20621	2
1395828	20621	6
1395829	20621	5
1395830	20603	1
1395831	20645	9
1395832	20645	2
1395833	20645	7
1395834	20637	8
1395835	20637	1
1395836	20630	4
1395837	20630	7
1395838	20630	1
1395839	20620	8
1395840	20620	4
1395841	20620	7
1395842	20638	4
1395843	20627	4
1395844	20618	1
1395845	20617	4
1395846	20617	7
1395847	20617	1
1395848	20632	1
1395849	20616	2
1395850	20610	4
1395851	20614	1
1395852	20629	2
1395853	20649	6
1395854	20633	3
1395855	20643	3
1395856	20643	2
1395857	20643	7
1395858	20643	1
1395859	20646	3
1395860	20646	7
1395861	20615	2
1395862	20615	5
1395863	20626	9
1395864	20626	2
1395865	20626	6
1395866	20626	5
1395867	20628	10
1395868	20628	4
1395869	20622	2
1395870	20639	4
1395871	20639	7
1395872	20599	1
1395873	20608	4
1395874	20217	4
1395875	20231	4
1395876	20231	7
1395877	20198	4
1395878	20229	4
1395879	20229	1
1395880	20232	4
1395881	20232	1
1395882	20207	1
1395883	20230	4
1395884	20203	8
1395885	20213	4
1395886	20213	7
1395887	20216	4
1395888	20216	7
1395889	20199	4
1395890	20208	4
1395891	20208	7
1395892	20206	4
1395893	20206	7
1395894	20218	4
1395895	20218	7
1395896	20209	8
1395897	20209	1
1395898	20222	10
1395899	20222	8
1395900	20205	3
1395901	20204	4
1395902	20220	4
1395903	20212	4
1395904	20228	4
1395905	20197	4
1395906	20226	4
1395907	20201	7
1395908	20201	1
1395909	20221	1
1395910	20223	7
1395911	20219	7
1395912	20224	7
1395913	20202	7
1395914	20200	7
1395915	20211	7
1395916	20214	3
1395917	20227	3
1395918	20227	2
1395919	20227	7
1395920	20225	3
1395921	20225	7
1395922	20215	3
1395923	20215	7
1395924	18745	4
1395925	18745	1
1395926	18743	4
1395927	18744	3
1395928	18744	7
1395929	18837	10
1395930	18836	4
1395931	20764	4
1395932	20764	7
1395933	20765	4
1395934	20765	7
1395935	19972	3
1395936	20762	6
1395937	20760	3
1395938	20761	3
1395939	18687	1
1395940	18680	1
1395941	18684	7
1395942	18683	6
1395943	18683	5
1395944	18679	4
1395945	18679	1
1395946	18682	4
1395947	18677	4
1395948	18688	4
1395949	18688	1
1395950	18685	1
1395951	18686	4
1395952	18681	4
1395953	18681	5
1395954	18681	1
1395955	18678	4
1395956	18678	1
1395957	20081	4
1395958	20079	4
1395959	20083	4
1395960	20082	4
1395961	20080	4
1395962	18835	11
1395963	18835	4
1395964	19727	3
1395965	19728	3
1395966	19728	7
1395967	19726	4
1395968	18479	5
1395969	18478	6
1395970	18478	5
1395971	20086	6
1395972	20085	6
1395973	20084	3
\.



--
-- Data for Name: cartransmission; Type: TABLE DATA; Schema: public; Owner: adsviewer
--

COPY public.cartransmission (id, name, code, avitocode) FROM stdin;
1	механика	MANUAL	manual
2	автомат	AUTOMATIC	automatic
3	робот	ROBOTIC	robotic
4	вариатор	VARIATOR	variator
\.

--
-- Data for Name: carmodeltransmission; Type: TABLE DATA; Schema: public; Owner: adsviewer
--

COPY public.carmodeltransmission (id, carmodelid, cartransmissionid) FROM stdin;
29676	19249	1
29677	19246	2
29678	19246	1
29679	19248	1
29680	19247	1
29681	18759	2
29682	18752	1
29683	18757	2
29684	18757	1
29685	18751	4
29686	18751	3
29687	18749	2
29688	18749	1
29689	18761	2
29690	18763	2
29691	18756	2
29692	18750	2
29693	18750	1
29694	18762	2
29695	18753	2
29696	18753	3
29697	18754	2
29698	18754	1
29699	18760	2
29700	19378	1
29701	19379	1
29702	18848	1
29703	18861	1
29704	18857	1
29705	18857	3
29706	18846	1
29707	18851	2
29708	18851	1
29709	18851	3
29710	18858	2
29711	18858	1
29712	18858	3
29713	18850	2
29714	18850	1
29715	18845	2
29716	18845	1
29717	18862	1
29718	18855	1
29719	18859	1
29720	18849	2
29721	18849	1
29722	18849	3
29723	18856	2
29724	18856	1
29725	18844	1
29726	18844	3
29727	18847	1
29728	18847	3
29729	18853	1
29730	18863	1
29731	18863	3
29732	18854	2
29733	18854	1
29734	18854	3
29735	18852	2
29736	20247	2
29737	20253	2
29738	20248	2
29739	20248	1
29740	20252	2
29741	20250	2
29742	20251	2
29743	20251	1
29744	18833	2
29745	18841	2
29746	18841	1
29747	18637	1
29748	18636	1
29749	18930	1
29750	18931	1
29751	18925	2
29752	18927	2
29753	18927	1
29754	18923	2
29755	18921	2
29756	18922	1
29757	18922	3
29758	18924	2
29759	18928	2
29760	20749	2
29761	20749	1
29762	20742	2
29763	20742	1
29764	20759	2
29765	20759	1
29766	20729	2
29767	20729	1
29768	20744	2
29769	20744	1
29770	20744	3
29771	20718	1
29772	20736	2
29773	20736	1
29774	20736	3
29775	20733	2
29776	20733	4
29777	20733	1
29778	20733	3
29779	20723	2
29780	20723	1
29781	20723	3
29782	20715	2
29783	20715	4
29784	20715	1
29785	20715	3
29786	20727	2
29787	20727	4
29788	20727	1
29789	20727	3
29790	20724	2
29791	20724	1
29792	20724	3
29793	20740	2
29794	20740	4
29795	20740	1
29796	20740	3
29797	20757	2
29798	20757	4
29799	20757	1
29800	20731	2
29801	20731	1
29802	20752	2
29803	20752	1
29804	20726	2
29805	20726	1
29806	20726	3
29807	20720	2
29808	20720	1
29809	20720	3
29810	20753	2
29811	20753	1
29812	20739	2
29813	20754	1
29814	20758	3
29815	20730	3
29816	20748	3
29817	20732	2
29818	20732	1
29819	20732	3
29820	20738	2
29821	20738	3
29822	20728	2
29823	20750	2
29824	20735	1
29825	20717	1
29826	20717	3
29827	20751	2
29828	20751	1
29829	20751	3
29830	20716	2
29831	20716	1
29832	20716	3
29833	20743	2
29834	20743	1
29835	20743	3
29836	20737	3
29837	20747	2
29838	20747	1
29839	20745	2
29840	20755	2
29841	20755	1
29842	20755	3
29843	20734	1
29844	20734	3
29845	20725	3
29846	20722	2
29847	20722	1
29848	20485	1
29849	20484	1
29850	20672	1
29851	20398	3
29852	20674	1
29853	18481	1
29854	18482	1
29855	18480	1
29856	19616	2
29857	19626	2
29858	19622	2
29859	19620	2
29860	19624	2
29861	19625	2
29862	19618	2
29863	19617	2
29864	19619	2
29865	19621	2
29866	19623	2
29867	19958	1
29868	19967	2
29869	19967	1
29870	19967	3
29871	19945	1
29872	19954	2
29873	19954	1
29874	19942	2
29875	19942	3
29876	19971	3
29877	19938	2
29878	19938	1
29879	19933	1
29880	19943	2
29881	19943	1
29882	19965	2
29883	19931	1
29884	19966	1
29885	19940	1
29886	19959	1
29887	19955	2
29888	19955	1
29889	19970	2
29890	19970	1
29891	19930	2
29892	19930	1
29893	19949	2
29894	19946	1
29895	19963	2
29896	19963	1
29897	19934	2
29898	19925	2
29899	19937	2
29900	19937	1
29901	19968	2
29902	19960	2
29903	19924	2
29904	19927	2
29905	19969	1
29906	19969	3
29907	19936	1
29908	19936	3
29909	19962	1
29910	19962	3
29911	19952	2
29912	19952	1
29913	19952	3
29914	19961	2
29915	19961	3
29916	19939	2
29917	19922	2
29918	19935	2
29919	19935	1
29920	19935	3
29921	19950	2
29922	19950	3
29923	19947	2
29924	19947	1
29925	19926	2
29926	19923	2
29927	19957	2
29928	19956	2
29929	19956	1
29930	19953	2
29931	19928	2
29932	19964	2
29933	19929	2
29934	19941	2
29935	19941	1
29936	19932	1
29937	19944	2
29938	19944	1
29939	19944	3
29940	19948	1
29941	19976	1
29942	19973	1
29943	19974	1
29944	19975	1
29945	20654	3
29946	20656	2
29947	20656	1
29948	20652	2
29949	20652	1
29950	20651	1
29951	20653	2
29952	20653	1
29953	20655	2
29954	20655	1
29955	19305	3
29956	19720	2
29957	19722	2
29958	19719	2
29959	19716	2
29960	19711	2
29961	19712	2
29962	19715	2
29963	19715	1
29964	19710	2
29965	19709	2
29966	19717	2
29967	19714	2
29968	19713	2
29969	19713	1
29970	19721	2
29971	19723	1
29972	19380	1
29973	19384	1
29974	19383	1
29975	19382	1
29976	20565	2
29977	20568	2
29978	20568	1
29979	20564	2
29980	20563	2
29981	20559	2
29982	20559	1
29983	20570	2
29984	20570	1
29985	20569	2
29986	20561	2
29987	20571	2
29988	20560	4
29989	20567	2
29990	20567	4
29991	20562	2
29992	20566	2
29993	20557	2
29994	20556	2
29995	20553	2
29996	20554	2
29997	18594	1
29998	18946	1
29999	18950	1
30000	18948	2
30001	18948	1
30002	18949	2
30003	18949	1
30004	18952	2
30005	18952	1
30006	18953	2
30007	18947	2
30008	18947	1
30009	18951	2
30010	19559	1
30011	19787	1
30012	20192	2
30013	20192	1
30014	20179	4
30015	20179	1
30016	20188	1
30017	20196	1
30018	20194	1
30019	20175	1
30020	20182	1
30021	20187	2
30022	20187	1
30023	20187	3
30024	20180	1
30025	20190	2
30026	20190	4
30027	20190	1
30028	20185	2
30029	20185	1
30030	20193	1
30031	20176	1
30032	20176	3
30033	20184	2
30034	20184	1
30035	20181	2
30036	20181	4
30037	20181	1
30038	20189	2
30039	20189	4
30040	20189	1
30041	20189	3
30042	20178	2
30043	20178	4
30044	20178	1
30045	20195	4
30046	20195	1
30047	20186	4
30048	20177	2
30049	20177	4
30050	20177	1
30051	20177	3
30052	20183	1
30053	20774	2
30054	20774	1
30055	20805	1
30056	20820	2
30057	20817	2
30058	20791	2
30059	20791	4
30060	20791	1
30061	20771	2
30062	20771	1
30063	20813	2
30064	20813	1
30065	20795	2
30066	20795	1
30067	20829	2
30068	20821	2
30069	20821	1
30070	20822	2
30071	20818	2
30072	20818	1
30073	20769	2
30074	20769	1
30075	20770	2
30076	20824	2
30077	20801	2
30078	20801	1
30079	20789	2
30080	20789	1
30081	20814	2
30082	20814	1
30083	20797	2
30084	20797	1
30085	20816	2
30086	20785	2
30087	20785	1
30088	20781	2
30089	20781	1
30090	20807	2
30091	20772	1
30092	20798	2
30093	20798	1
30094	20794	2
30095	20794	1
30096	20784	2
30097	20792	2
30098	20792	1
30099	20793	2
30100	20783	2
30101	20783	1
30102	20788	2
30103	20825	2
30104	20825	1
30105	20827	1
30106	20800	2
30107	20830	2
30108	20812	2
30109	20779	2
30110	20779	1
30111	20796	2
30112	20796	1
30113	20808	2
30114	20767	2
30115	20823	2
30116	20823	1
30117	20806	1
30118	20766	2
30119	20787	2
30120	20787	1
30121	20777	2
30122	20790	2
30123	20790	1
30124	20826	2
30125	20826	1
30126	20786	2
30127	20782	2
30128	20782	4
30129	20782	1
30130	20802	2
30131	20768	2
30132	20768	1
30133	20776	2
30134	20776	1
30135	20778	2
30136	20809	2
30137	20809	1
30138	20775	2
30139	20775	1
30140	20810	2
30141	20819	2
30142	20773	2
30143	20811	2
30144	20811	1
30145	20799	2
30146	20815	1
30147	20780	4
30148	20578	2
30149	20588	2
30150	20581	2
30151	20576	2
30152	20597	2
30153	20590	2
30154	20595	2
30155	20595	1
30156	20577	2
30157	20577	1
30158	20574	2
30159	20579	2
30160	20579	1
30161	20586	2
30162	20580	2
30163	20580	1
30164	20575	2
30165	20582	2
30166	20591	2
30167	20589	2
30168	20589	1
30169	20596	2
30170	20596	1
30171	20593	2
30172	20593	1
30173	20585	2
30174	20585	1
30175	20583	2
30176	20587	2
30177	20573	2
30178	20573	1
30179	20054	1
30180	20058	1
30181	20059	1
30182	20059	3
30183	20036	1
30184	20070	4
30185	20070	1
30186	20070	3
30187	20068	2
30188	20068	1
30189	20068	3
30190	20075	1
30191	20075	3
30192	20042	1
30193	20060	2
30194	20060	1
30195	20060	3
30196	20035	2
30197	20035	1
30198	20035	3
30199	20057	2
30200	20057	1
30201	20071	1
30202	20071	3
30203	20049	2
30204	20049	1
30205	20049	3
30206	20033	2
30207	20033	4
30208	20033	1
30209	20062	3
30210	20048	2
30211	20048	1
30212	20048	3
30213	20045	2
30214	20037	2
30215	20037	1
30216	20037	3
30217	20063	2
30218	20066	2
30219	20040	2
30220	20040	1
30221	20056	1
30222	20043	2
30223	20043	1
30224	20053	2
30225	20053	1
30226	20073	2
30227	20046	1
30228	20074	2
30229	20074	1
30230	20074	3
30231	20065	1
30232	20034	1
30233	20069	2
30234	20069	1
30235	20064	1
30236	20064	3
30237	20067	2
30238	20067	1
30239	20072	2
30240	20072	1
30241	20055	1
30242	20051	1
30243	20047	2
30244	20047	1
30245	20041	2
30246	20041	1
30247	20038	2
30248	20038	1
30249	20044	2
30250	20044	1
30251	20050	1
30252	18882	1
30253	18885	1
30254	18883	1
30255	18884	1
30256	18886	1
30257	18879	1
30258	18880	1
30259	18676	1
30260	18675	1
30261	18674	1
30262	19568	1
30263	19585	2
30264	19585	1
30265	19566	2
30266	19566	1
30267	19573	1
30268	19561	2
30269	19561	1
30270	19570	2
30271	19570	1
30272	19586	2
30273	19586	1
30274	19567	2
30275	19582	2
30276	19582	1
30277	19583	2
30278	19583	1
30279	19562	1
30280	19587	1
30281	19563	2
30282	19563	1
30283	19580	2
30284	19580	1
30285	19578	2
30286	19578	1
30287	19581	2
30288	19581	1
30289	19565	2
30290	19565	1
30291	19571	2
30292	19571	1
30293	19575	1
30294	19574	2
30295	19574	1
30296	19584	1
30297	19576	2
30298	19576	1
30299	19569	2
30300	19569	1
30301	19572	2
30302	19572	1
30303	19106	4
30304	19114	2
30305	19114	1
30306	19128	2
30307	19128	1
30308	19129	2
30309	19129	1
30310	19105	2
30311	19105	4
30312	19095	4
30313	19124	2
30314	19124	1
30315	19118	2
30316	19127	2
30317	19127	4
30318	19127	1
30319	19107	2
30320	19107	1
30321	19099	2
30322	19099	1
30323	19111	2
30324	19130	1
30325	19109	2
30326	19109	1
30327	19122	2
30328	19122	1
30329	19115	4
30330	19110	2
30331	19110	1
30332	19097	2
30333	19097	1
30334	19119	2
30335	19119	4
30336	19108	2
30337	19108	4
30338	19108	1
30339	19125	2
30340	19125	4
30341	19094	2
30342	19094	4
30343	19094	1
30344	19117	2
30345	19117	1
30346	19113	2
30347	19113	1
30348	19131	2
30349	19131	1
30350	19102	4
30351	19104	2
30352	19104	1
30353	19103	2
30354	19103	4
30355	19101	2
30356	19101	1
30357	19120	2
30358	19120	1
30359	19121	1
30360	19126	4
30361	19116	2
30362	19116	1
30363	19707	2
30364	19708	2
30365	19706	1
30366	19375	1
30367	19374	2
30368	19374	1
30369	19377	2
30370	19377	1
30371	19373	1
30372	19348	1
30373	19351	1
30374	19352	1
30375	19349	1
30376	19346	1
30377	19350	1
30378	19347	1
30379	18638	1
30380	20007	2
30381	20010	2
30382	20010	1
30383	20012	2
30384	20012	4
30385	20012	1
30386	20022	2
30387	20022	1
30388	20014	2
30389	20014	1
30390	20006	2
30391	20016	2
30392	20015	2
30393	20015	1
30394	20025	2
30395	20017	2
30396	20017	1
30397	20001	2
30398	20020	2
30399	20005	2
30400	20008	2
30401	20018	2
30402	20018	1
30403	20023	2
30404	20024	2
30405	20024	1
30406	20026	2
30407	20003	2
30408	20003	1
30409	20013	2
30410	20013	1
30411	20027	2
30412	20009	2
30413	20002	2
30414	20002	1
30415	20019	2
30416	20019	1
30417	20021	1
30418	20004	1
30419	20312	1
30420	20315	2
30421	20315	1
30422	20313	2
30423	20313	1
30424	20311	2
30425	20311	1
30426	20314	2
30427	20314	1
30428	19797	2
30429	19797	1
30430	19798	2
30431	19798	1
30432	19799	2
30433	19799	1
30434	19791	2
30435	19790	2
30436	19789	2
30437	18640	1
30438	18639	1
30439	19590	1
30440	19588	2
30441	20572	1
30442	19304	2
30443	19303	2
30444	20238	1
30445	20243	2
30446	20243	1
30447	20244	1
30448	20239	2
30449	20239	1
30450	20237	2
30451	20237	1
30452	20245	1
30453	20242	2
30454	20242	1
30455	20236	1
30456	20241	1
30457	20240	1
30458	20502	3
30459	20501	3
30460	20494	2
30461	20491	3
30462	20500	2
30463	20496	3
30464	20490	3
30465	20489	3
30466	20503	3
30467	20493	3
30468	20498	3
30469	18629	1
30470	18616	2
30471	18620	1
30472	18605	2
30473	18605	1
30474	18634	2
30475	18634	1
30476	18634	3
30477	18602	2
30478	18613	1
30479	18600	1
30480	18625	2
30481	18625	1
30482	18617	2
30483	18617	1
30484	18617	3
30485	18622	1
30486	18604	1
30487	18632	2
30488	18632	1
30489	18596	1
30490	18615	1
30491	18621	1
30492	18628	1
30493	18628	3
30494	18623	2
30495	18623	1
30496	18599	2
30497	18599	1
30498	18626	1
30499	18626	3
30500	18627	1
30501	18598	2
30502	18598	1
30503	18609	1
30504	18610	1
30505	18619	1
30506	18619	3
30507	18607	4
30508	18607	1
30509	18607	3
30510	18601	1
30511	18612	1
30512	18633	1
30513	18608	1
30514	18597	2
30515	18597	1
30516	18614	1
30517	18630	1
30518	18624	1
30519	18624	3
30520	18603	1
30521	18611	1
30522	18618	2
30523	18618	1
30524	18606	1
30525	19729	4
30526	20458	2
30527	20458	1
30528	20423	1
30529	20470	2
30530	20470	1
30531	20455	1
30532	20455	3
30533	20450	2
30534	20450	1
30535	20449	2
30536	20449	4
30537	20449	1
30538	20449	3
30539	20483	1
30540	20439	1
30541	20436	2
30542	20436	1
30543	20466	2
30544	20466	1
30545	20422	1
30546	20472	2
30547	20425	2
30548	20468	2
30549	20468	1
30550	20454	2
30551	20454	1
30552	20454	3
30553	20446	2
30554	20404	2
30555	20404	4
30556	20404	1
30557	20427	2
30558	20427	4
30559	20427	1
30560	20476	2
30561	20476	1
30562	20440	2
30563	20460	2
30564	20421	2
30565	20421	1
30566	20419	2
30567	20437	2
30568	20433	2
30569	20433	1
30570	20441	2
30571	20441	1
30572	20447	1
30573	20417	2
30574	20434	2
30575	20434	1
30576	20480	2
30577	20480	4
30578	20480	1
30579	20480	3
30580	20459	1
30581	20426	4
30582	20481	2
30583	20412	2
30584	20412	4
30585	20412	1
30586	20412	3
30587	20463	2
30588	20463	1
30589	20429	2
30590	20429	1
30591	20444	2
30592	20444	1
30593	20467	2
30594	20467	4
30595	20410	2
30596	20410	1
30597	20410	3
30598	20406	2
30599	20406	4
30600	20406	1
30601	20479	2
30602	20409	2
30603	20409	1
30604	20409	3
30605	20477	2
30606	20477	1
30607	20469	1
30608	20469	3
30609	20411	2
30610	20482	1
30611	20475	2
30612	20475	1
30613	20475	3
30614	20456	2
30615	20456	1
30616	20465	2
30617	20443	2
30618	20443	1
30619	20478	1
30620	20452	1
30621	20407	1
30622	20418	2
30623	20418	1
30624	20418	3
30625	20451	1
30626	20432	2
30627	20432	1
30628	20405	2
30629	20405	1
30630	20445	1
30631	20414	2
30632	20414	1
30633	20413	1
30634	20438	2
30635	20461	2
30636	20461	1
30637	20420	2
30638	20420	1
30639	20474	2
30640	20474	1
30641	20474	3
30642	20428	2
30643	20428	1
30644	20448	2
30645	20448	1
30646	20424	2
30647	20424	1
30648	20464	2
30649	20464	1
30650	20430	2
30651	20430	1
30652	20403	2
30653	20462	2
30654	20462	1
30655	20442	2
30656	20442	1
30657	20457	1
30658	20416	2
30659	20416	1
30660	20416	3
30661	20471	1
30662	20453	2
30663	20453	1
30664	20473	2
30665	20473	1
30666	20408	1
30667	20431	2
30668	20658	1
30669	20657	2
30670	20657	1
30671	20660	1
30672	20659	1
30673	19321	1
30674	19324	1
30675	20341	2
30676	20345	1
30677	20343	1
30678	20344	1
30679	18830	1
30680	18804	2
30681	18826	2
30682	18815	2
30683	18815	1
30684	18801	1
30685	18818	1
30686	18820	1
30687	18808	2
30688	18808	1
30689	18819	2
30690	18819	1
30691	18805	1
30692	18832	1
30693	18828	1
30694	18827	1
30695	18812	1
30696	18807	1
30697	18809	1
30698	18816	1
30699	18824	1
30700	18831	1
30701	18825	1
30702	18806	1
30703	18802	1
30704	18814	2
30705	18814	1
30706	18803	2
30707	18803	1
30708	18813	2
30709	18813	1
30710	18811	1
30711	18829	1
30712	18821	1
30713	18822	1
30714	18823	1
30715	18810	1
30716	18817	2
30717	18817	1
30718	19084	2
30719	19084	1
30720	19082	1
30721	19093	3
30722	19087	4
30723	19087	1
30724	19085	2
30725	19085	4
30726	19085	1
30727	19081	2
30728	19081	1
30729	19090	2
30730	19089	2
30731	19089	1
30732	19088	1
30733	19086	1
30734	19092	1
30735	19092	3
30736	19091	1
30737	19080	1
30738	19083	1
30739	18642	2
30740	18643	2
30741	18641	2
30742	20030	2
30743	20032	2
30744	20029	2
30745	20029	1
30746	20264	2
30747	20259	2
30748	20258	2
30749	20261	2
30750	20265	2
30751	20262	2
30752	20262	1
30753	20257	2
30754	20254	2
30755	20256	2
30756	20255	2
30757	20260	2
30758	20263	2
30759	19809	1
30760	19808	1
30761	19812	1
30762	19813	1
30763	19815	2
30764	19815	1
30765	19820	1
30766	19810	2
30767	19810	1
30768	19811	2
30769	19811	1
30770	19803	1
30771	19804	1
30772	19819	1
30773	19817	1
30774	19805	1
30775	19806	1
30776	19814	1
30777	19818	1
30778	19807	1
30779	19816	1
30780	19550	1
30781	19355	1
30782	19354	1
30783	19353	1
30784	19800	4
30785	19800	1
30786	19801	2
30787	19801	1
30788	19802	1
30789	19320	1
30790	19332	2
30791	19332	1
30792	19332	3
30793	19328	3
30794	19331	2
30795	19331	1
30796	19326	1
30797	19333	2
30798	19333	1
30799	19327	3
30800	19330	2
30801	19329	2
30802	19555	2
30803	19555	1
30804	19556	2
30805	19556	1
30806	19041	2
30807	19041	4
30808	19041	1
30809	19042	2
30810	19042	1
30811	19052	4
30812	19011	2
30813	19011	1
30814	19027	2
30815	19049	2
30816	19044	1
30817	19050	2
30818	19050	4
30819	19020	2
30820	19020	4
30821	19020	1
30822	19026	2
30823	19026	4
30824	19026	1
30825	19026	3
30826	19036	2
30827	19036	4
30828	19036	1
30829	19030	2
30830	19030	1
30831	19046	2
30832	19046	4
30833	19046	1
30834	19023	2
30835	19023	1
30836	19074	4
30837	19074	1
30838	19060	2
30839	19077	2
30840	19059	2
30841	19059	4
30842	19059	1
30843	19053	2
30844	19048	2
30845	19048	1
30846	19064	2
30847	19019	2
30848	19019	4
30849	19019	1
30850	19019	3
30851	19071	4
30852	19029	2
30853	19029	4
30854	19076	2
30855	19076	1
30856	19056	2
30857	19056	4
30858	19056	3
30859	19012	4
30860	19012	3
30861	19062	2
30862	19062	4
30863	19062	1
30864	19015	4
30865	19009	2
30866	19068	2
30867	19068	1
30868	19051	2
30869	19051	4
30870	19051	1
30871	19038	4
30872	19038	3
30873	19032	4
30874	19032	1
30875	19032	3
30876	19073	2
30877	19073	1
30878	19073	3
30879	19047	2
30880	19047	1
30881	19066	2
30882	19066	4
30883	19066	1
30884	19045	2
30885	19025	4
30886	19021	4
30887	19075	4
30888	19070	4
30889	19014	4
30890	19058	2
30891	19058	3
30892	19034	2
30893	19034	4
30894	19031	2
30895	19031	4
30896	19017	2
30897	19017	1
30898	19069	2
30899	19069	1
30900	19010	2
30901	19010	1
30902	19039	2
30903	19018	2
30904	19018	1
30905	19072	2
30906	19072	1
30907	19065	2
30908	19028	2
30909	19013	1
30910	19040	4
30911	19040	1
30912	19016	2
30913	19061	2
30914	19061	4
30915	19061	3
30916	19043	2
30917	19043	4
30918	19067	2
30919	19067	4
30920	19067	1
30921	19055	1
30922	19054	2
30923	19024	1
30924	19057	2
30925	19057	1
30926	19035	2
30927	19035	1
30928	19022	2
30929	19022	4
30930	19022	3
30931	19033	2
30932	19033	1
30933	19037	2
30934	19008	2
30935	19999	1
30936	18933	2
30937	18932	2
30938	18934	2
30939	18934	1
30940	18710	2
30941	18710	1
30942	18727	2
30943	18727	1
30944	18741	2
30945	18741	1
30946	18714	2
30947	18695	2
30948	18725	2
30949	18725	1
30950	18728	2
30951	18728	1
30952	18693	2
30953	18693	1
30954	18733	2
30955	18729	1
30956	18734	2
30957	18734	1
30958	18706	2
30959	18706	1
30960	18690	2
30961	18690	1
30962	18737	2
30963	18737	1
30964	18731	2
30965	18691	2
30966	18691	1
30967	18739	2
30968	18736	2
30969	18736	1
30970	18697	2
30971	18697	1
30972	18740	2
30973	18740	1
30974	18723	2
30975	18723	1
30976	18722	2
30977	18722	1
30978	18719	2
30979	18719	1
30980	18719	3
30981	18735	1
30982	18713	2
30983	18713	4
30984	18713	1
30985	18713	3
30986	18702	2
30987	18702	1
30988	18715	2
30989	18721	1
30990	18732	2
30991	18732	1
30992	18716	2
30993	18716	1
30994	18711	2
30995	18711	1
30996	18689	2
30997	18689	1
30998	18717	2
30999	18692	2
31000	18712	2
31001	18712	1
31002	18726	2
31003	18726	1
31004	18700	2
31005	18700	1
31006	18704	2
31007	18704	1
31008	18705	2
31009	18705	1
31010	18694	2
31011	18694	1
31012	18698	2
31013	18698	1
31014	18698	3
31015	18730	2
31016	18730	1
31017	18699	1
31018	18709	2
31019	18709	1
31020	18738	2
31021	18738	1
31022	18724	2
31023	18724	1
31024	18718	2
31025	18718	1
31026	18718	3
31027	18708	2
31028	18708	1
31029	18707	2
31030	18707	1
31031	18707	3
31032	18701	2
31033	18720	2
31034	18720	1
31035	18696	2
31036	20512	2
31037	20514	2
31038	20533	2
31039	20535	2
31040	20517	2
31041	20527	2
31042	20508	2
31043	20536	2
31044	20528	2
31045	20530	2
31046	20530	1
31047	20522	2
31048	20509	2
31049	20509	1
31050	20525	2
31051	20511	2
31052	20526	2
31053	20518	2
31054	20506	4
31055	20515	2
31056	20534	2
31057	20537	2
31058	20532	2
31059	20510	2
31060	20520	1
31061	20520	3
31062	20516	2
31063	20513	2
31064	20505	2
31065	20531	2
31066	20507	3
31067	20523	2
31068	20524	2
31069	20524	4
31070	20521	2
31071	20538	2
31072	20538	4
31073	20529	2
31074	20519	2
31075	18943	1
31076	18913	2
31077	18913	1
31078	18914	2
31079	18914	1
31080	18910	2
31081	18905	2
31082	18905	1
31083	18916	1
31084	18903	2
31085	18903	1
31086	18915	1
31087	18901	2
31088	18908	2
31089	18908	1
31090	18911	2
31091	18912	1
31092	18909	2
31093	18909	1
31094	18904	2
31095	18904	1
31096	18902	2
31097	18902	1
31098	18906	2
31099	18906	1
31100	18917	2
31101	18907	2
31102	18907	1
31103	18747	2
31104	18747	1
31105	18746	1
31106	18865	1
31107	18867	1
31108	18870	1
31109	18868	1
31110	18869	1
31111	18866	1
31112	19914	1
31113	19916	2
31114	19916	1
31115	19921	1
31116	19919	1
31117	19917	4
31118	19917	1
31119	19915	1
31120	19920	1
31121	20333	2
31122	20326	1
31123	20336	2
31124	20334	2
31125	20330	1
31126	20340	2
31127	20340	1
31128	20332	2
31129	20332	1
31130	20337	2
31131	20325	2
31132	20338	2
31133	20335	2
31134	20335	1
31135	20328	2
31136	20324	2
31137	20327	2
31138	20331	2
31139	18897	2
31140	18897	1
31141	18892	1
31142	18894	2
31143	18899	2
31144	18899	4
31145	18899	1
31146	18893	2
31147	18893	1
31148	18900	2
31149	18900	4
31150	18900	1
31151	18898	2
31152	18898	4
31153	18898	1
31154	18896	2
31155	18896	1
31156	18896	3
31157	18895	2
31158	18895	1
31159	20871	1
31160	20399	1
31161	20401	1
31162	20400	1
31163	20402	1
31164	18520	2
31165	18520	1
31166	18527	1
31167	18497	2
31168	18497	1
31169	18496	2
31170	18521	1
31171	18485	2
31172	18485	1
31173	18518	2
31174	18518	1
31175	18483	2
31176	18483	1
31177	18483	3
31178	18500	1
31179	18500	3
31180	18519	2
31181	18519	1
31182	18484	2
31183	18484	1
31184	18489	2
31185	18489	4
31186	18489	1
31187	18493	2
31188	18493	1
31189	18495	2
31190	18495	3
31191	18498	2
31192	18499	2
31193	18490	2
31194	18490	1
31195	18507	1
31196	18486	2
31197	18514	2
31198	18515	2
31199	18515	1
31200	18505	2
31201	18505	4
31202	18505	1
31203	18526	2
31204	18488	1
31205	18509	2
31206	18509	1
31207	18516	1
31208	18516	3
31209	18491	2
31210	18506	2
31211	18512	2
31212	18512	1
31213	18503	2
31214	18503	1
31215	18511	2
31216	18511	1
31217	18517	2
31218	18517	4
31219	18517	1
31220	18525	2
31221	18525	1
31222	18501	2
31223	18501	1
31224	18487	2
31225	18487	1
31226	18522	2
31227	18522	1
31228	18528	2
31229	18528	4
31230	18528	1
31231	18528	3
31232	18492	2
31233	18492	1
31234	18502	2
31235	18502	1
31236	18502	3
31237	18510	2
31238	18524	1
31239	18523	2
31240	18523	1
31241	18523	3
31242	18513	2
31243	18504	2
31244	18504	1
31245	19771	2
31246	19906	3
31247	19907	3
31248	19904	3
31249	19908	1
31250	19905	2
31251	19308	1
31252	19314	2
31253	19314	1
31254	19314	3
31255	19318	2
31256	19318	1
31257	19319	2
31258	19319	1
31259	19313	1
31260	19313	3
31261	19317	2
31262	19317	1
31263	19311	1
31264	19312	1
31265	19315	2
31266	19315	1
31267	19310	1
31268	19310	3
31269	19703	2
31270	19703	1
31271	19705	2
31272	19705	1
31273	19700	2
31274	19697	2
31275	19697	1
31276	19701	2
31277	19701	1
31278	19702	2
31279	19702	1
31280	19698	2
31281	19699	2
31282	19704	1
31283	20347	1
31284	20346	1
31285	18887	1
31286	18888	1
31287	19988	2
31288	19988	4
31289	19983	2
31290	19983	4
31291	19994	2
31292	19994	4
31293	19994	1
31294	19990	2
31295	19992	2
31296	19985	4
31297	19989	2
31298	19989	4
31299	19989	1
31300	19984	2
31301	19979	2
31302	19981	2
31303	19981	4
31304	19987	2
31305	19987	3
31306	19986	2
31307	19986	4
31308	19982	2
31309	19977	2
31310	19980	2
31311	19980	4
31312	19980	1
31313	19991	2
31314	19978	4
31315	20165	1
31316	20171	1
31317	20172	4
31318	20172	1
31319	20170	2
31320	20170	1
31321	20173	2
31322	20173	1
31323	20169	4
31324	20169	1
31325	20167	2
31326	20167	4
31327	20167	1
31328	20168	2
31329	20168	4
31330	20168	1
31331	20166	2
31332	20166	4
31333	20166	1
31334	20174	4
31335	20174	1
31336	20853	2
31337	20845	2
31338	20847	2
31339	20847	1
31340	20852	2
31341	20849	2
31342	20854	2
31343	20844	2
31344	20848	2
31345	20850	2
31346	20855	2
31347	20856	2
31348	20856	4
31349	20851	2
31350	20857	2
31351	20846	1
31352	18800	1
31353	20077	2
31354	18840	1
31355	18839	1
31356	18838	1
31357	18936	2
31358	18935	2
31359	19772	1
31360	18651	2
31361	18651	1
31362	18650	3
31363	18649	2
31364	18654	2
31365	18654	3
31366	18653	2
31367	18648	2
31368	18648	1
31369	18889	2
31370	18890	2
31371	20150	4
31372	20150	1
31373	20103	2
31374	20103	1
31375	20108	2
31376	20108	1
31377	20151	1
31378	20121	2
31379	20121	1
31380	20125	2
31381	20125	1
31382	20131	2
31383	20131	1
31384	20111	1
31385	20112	1
31386	20133	2
31387	20133	1
31388	20109	2
31389	20109	1
31390	20129	2
31391	20129	1
31392	20122	2
31393	20122	1
31394	20123	2
31395	20123	4
31396	20123	1
31397	20119	2
31398	20119	4
31399	20119	1
31400	20113	2
31401	20113	1
31402	20134	2
31403	20130	2
31404	20130	1
31405	20105	2
31406	20105	1
31407	20159	2
31408	20159	1
31409	20161	2
31410	20161	1
31411	20149	2
31412	20149	1
31413	20132	2
31414	20132	4
31415	20132	1
31416	20107	2
31417	20107	1
31418	20144	2
31419	20144	1
31420	20126	2
31421	20126	1
31422	20158	2
31423	20158	4
31424	20158	1
31425	20114	2
31426	20127	2
31427	20127	4
31428	20127	1
31429	20142	2
31430	20135	2
31431	20155	2
31432	20116	2
31433	20117	2
31434	20117	4
31435	20117	1
31436	20162	4
31437	20140	2
31438	20140	1
31439	20152	2
31440	20152	1
31441	20160	2
31442	20160	1
31443	20148	2
31444	20148	1
31445	20104	2
31446	20104	1
31447	20141	2
31448	20141	1
31449	20145	2
31450	20145	1
31451	20146	2
31452	20146	1
31453	20106	2
31454	20106	1
31455	20153	2
31456	20153	1
31457	20164	2
31458	20164	1
31459	20156	2
31460	20156	1
31461	20137	2
31462	20137	1
31463	20110	2
31464	20110	1
31465	20128	2
31466	20128	1
31467	20163	2
31468	20120	2
31469	20120	1
31470	20157	2
31471	20157	1
31472	20143	2
31473	20143	1
31474	20136	2
31475	20118	2
31476	20139	2
31477	20139	1
31478	20124	2
31479	20115	2
31480	20115	1
31481	20147	2
31482	20147	1
31483	19551	3
31484	19553	3
31485	19552	3
31486	19876	1
31487	19850	2
31488	19850	1
31489	19874	2
31490	19874	4
31491	19874	1
31492	19874	3
31493	19868	2
31494	19868	3
31495	19858	2
31496	19858	3
31497	19854	2
31498	19854	4
31499	19854	1
31500	19854	3
31501	19872	2
31502	19872	1
31503	19872	3
31504	19855	2
31505	19889	1
31506	19822	2
31507	19877	2
31508	19869	2
31509	19869	1
31510	19869	3
31511	19836	3
31512	19879	2
31513	19879	1
31514	19849	2
31515	19849	1
31516	19833	2
31517	19863	2
31518	19838	2
31519	19838	3
31520	19828	2
31521	19828	1
31522	19890	2
31523	19847	2
31524	19840	2
31525	19840	1
31526	19901	2
31527	19826	2
31528	19852	2
31529	19861	2
31530	19861	1
31531	19861	3
31532	19830	3
31533	19844	3
31534	19875	2
31535	19893	2
31536	19866	2
31537	19827	2
31538	19829	2
31539	19891	2
31540	19839	2
31541	19856	2
31542	19895	2
31543	19895	3
31544	19870	2
31545	19897	2
31546	19888	2
31547	19888	1
31548	19898	2
31549	19887	2
31550	19862	1
31551	19899	2
31552	19867	2
31553	19846	2
31554	19846	1
31555	19865	2
31556	19848	2
31557	19848	1
31558	19900	2
31559	19834	2
31560	19831	2
31561	19823	2
31562	19823	1
31563	19859	2
31564	19837	2
31565	19853	3
31566	19883	2
31567	19883	1
31568	19843	2
31569	19843	1
31570	19860	1
31571	19880	1
31572	19824	2
31573	19824	1
31574	19851	2
31575	19851	1
31576	19892	1
31577	19841	2
31578	19841	1
31579	19835	2
31580	19835	1
31581	19873	2
31582	19873	1
31583	19871	1
31584	19884	2
31585	19884	1
31586	19832	2
31587	19832	1
31588	19885	1
31589	19857	1
31590	19845	2
31591	19845	1
31592	19902	2
31593	19902	1
31594	19881	1
31595	19842	1
31596	19864	1
31597	19896	2
31598	19886	2
31599	19886	1
31600	19777	2
31601	19777	1
31602	19776	2
31603	19782	2
31604	19782	4
31605	19785	2
31606	19779	2
31607	19778	2
31608	19783	2
31609	19784	2
31610	19784	1
31611	19780	2
31612	19774	2
31613	19774	1
31614	19773	2
31615	19781	2
31616	19307	1
31617	20323	2
31618	20323	1
31619	20316	2
31620	20316	1
31621	20322	1
31622	20319	1
31623	20318	4
31624	20318	1
31625	20317	1
31626	20321	2
31627	20321	1
31628	20098	2
31629	20098	4
31630	20098	1
31631	20098	3
31632	20099	2
31633	20099	1
31634	20099	3
31635	20097	2
31636	20097	1
31637	20095	2
31638	20092	2
31639	20092	1
31640	20092	3
31641	20093	2
31642	20093	1
31643	20100	2
31644	20100	1
31645	20090	2
31646	20096	2
31647	20089	2
31648	20089	1
31649	20101	2
31650	20101	1
31651	20094	2
31652	20102	2
31653	20091	2
31654	20091	4
31655	20091	1
31656	20091	3
31657	18539	2
31658	18539	1
31659	18553	2
31660	18569	2
31661	18580	2
31662	18580	4
31663	18580	1
31664	18568	2
31665	18568	1
31666	18536	2
31667	18536	1
31668	18575	2
31669	18551	2
31670	18551	1
31671	18561	2
31672	18561	4
31673	18561	1
31674	18561	3
31675	18541	2
31676	18549	2
31677	18549	4
31678	18549	1
31679	18542	4
31680	18590	2
31681	18550	2
31682	18550	4
31683	18545	2
31684	18556	2
31685	18574	2
31686	18538	2
31687	18538	1
31688	18567	4
31689	18567	1
31690	18532	4
31691	18591	2
31692	18591	4
31693	18593	2
31694	18593	4
31695	18593	1
31696	18578	2
31697	18565	2
31698	18546	2
31699	18546	1
31700	18589	2
31701	18589	1
31702	18531	2
31703	18531	1
31704	18587	2
31705	18587	1
31706	18557	2
31707	18557	1
31708	18558	2
31709	18576	1
31710	18570	2
31711	18570	1
31712	18537	1
31713	18543	1
31714	18592	2
31715	18592	4
31716	18592	1
31717	18588	2
31718	18588	4
31719	18582	2
31720	18582	4
31721	18582	1
31722	18579	2
31723	18579	1
31724	18579	3
31725	18583	2
31726	18583	1
31727	18583	3
31728	18585	2
31729	18585	1
31730	18544	2
31731	18544	1
31732	18571	2
31733	18571	1
31734	18530	2
31735	18530	1
31736	18547	2
31737	18547	4
31738	18547	1
31739	18559	2
31740	18559	1
31741	18560	2
31742	18560	1
31743	18586	2
31744	18586	4
31745	18586	1
31746	18562	2
31747	18562	1
31748	18535	2
31749	18535	1
31750	18540	2
31751	18540	1
31752	18572	2
31753	18572	1
31754	18581	2
31755	18581	1
31756	18564	2
31757	18564	1
31758	18555	2
31759	18555	4
31760	18555	1
31761	18548	1
31762	18533	2
31763	18533	1
31764	18577	2
31765	18577	1
31766	18534	2
31767	18534	1
31768	18554	2
31769	18554	1
31770	18566	2
31771	18566	1
31772	18573	1
31773	18529	2
31774	18529	1
31775	18552	2
31776	19372	2
31777	18955	1
31778	20266	1
31779	18765	1
31780	18781	1
31781	18775	1
31782	18764	1
31783	18773	1
31784	18767	1
31785	18769	1
31786	18768	1
31787	18778	1
31788	18776	1
31789	18784	1
31790	18780	1
31791	18782	1
31792	18779	1
31793	18783	1
31794	18786	1
31795	18771	1
31796	18777	1
31797	18772	1
31798	18766	1
31799	18770	1
31800	18785	1
31801	19134	2
31802	19134	1
31803	19153	1
31804	19163	2
31805	19163	1
31806	19211	1
31807	19151	2
31808	19151	1
31809	19194	2
31810	19194	1
31811	19179	2
31812	19179	1
31813	19231	2
31814	19231	4
31815	19231	1
31816	19235	2
31817	19235	1
31818	19221	2
31819	19221	1
31820	19230	2
31821	19230	4
31822	19230	1
31823	19172	2
31824	19172	4
31825	19172	1
31826	19239	2
31827	19199	2
31828	19199	1
31829	19226	2
31830	19226	4
31831	19226	1
31832	19141	2
31833	19154	2
31834	19154	4
31835	19154	1
31836	19237	2
31837	19237	4
31838	19237	1
31839	19137	1
31840	19188	2
31841	19188	1
31842	19189	2
31843	19189	1
31844	19193	2
31845	19193	1
31846	19192	1
31847	19229	2
31848	19139	2
31849	19139	1
31850	19181	2
31851	19181	1
31852	19236	2
31853	19236	4
31854	19187	2
31855	19187	1
31856	19204	4
31857	19233	4
31858	19205	4
31859	19198	2
31860	19198	4
31861	19195	2
31862	19195	1
31863	19191	2
31864	19191	1
31865	19144	2
31866	19225	2
31867	19225	1
31868	19177	2
31869	19203	2
31870	19203	1
31871	19180	3
31872	19140	2
31873	19140	1
31874	19200	1
31875	19176	2
31876	19176	4
31877	19176	1
31878	19184	2
31879	19184	1
31880	19207	1
31881	19190	2
31882	19190	4
31883	19208	2
31884	19208	1
31885	19145	2
31886	19145	1
31887	19232	2
31888	19232	4
31889	19202	2
31890	19202	1
31891	19135	2
31892	19135	1
31893	19165	2
31894	19165	4
31895	19238	2
31896	19238	1
31897	19215	2
31898	19215	4
31899	19215	1
31900	19245	2
31901	19245	4
31902	19245	1
31903	19143	2
31904	19143	4
31905	19143	1
31906	19164	2
31907	19164	1
31908	19142	2
31909	19142	4
31910	19159	2
31911	19159	4
31912	19159	1
31913	19159	3
31914	19183	2
31915	19183	1
31916	19132	2
31917	19132	4
31918	19132	1
31919	19156	2
31920	19156	1
31921	19162	2
31922	19162	3
31923	19147	2
31924	19147	4
31925	19147	1
31926	19228	1
31927	19201	2
31928	19201	1
31929	19173	1
31930	19171	2
31931	19138	2
31932	19138	4
31933	19138	1
31934	19148	2
31935	19148	1
31936	19219	1
31937	19218	2
31938	19222	2
31939	19222	1
31940	19175	2
31941	19175	1
31942	19182	2
31943	19182	4
31944	19158	2
31945	19158	1
31946	19149	2
31947	19223	1
31948	19234	2
31949	19234	4
31950	19234	1
31951	19136	2
31952	19136	1
31953	19227	2
31954	19227	4
31955	19227	1
31956	19209	2
31957	19209	4
31958	19209	1
31959	19224	2
31960	19224	4
31961	19216	2
31962	19216	4
31963	19178	2
31964	19178	1
31965	19196	4
31966	19168	4
31967	19169	2
31968	19166	2
31969	19166	1
31970	19197	2
31971	19197	4
31972	19197	1
31973	19240	2
31974	19240	4
31975	19240	1
31976	19240	3
31977	19210	2
31978	19210	1
31979	19174	2
31980	19174	4
31981	19174	1
31982	19133	2
31983	19133	1
31984	19206	2
31985	19206	1
31986	19212	2
31987	19212	4
31988	19212	1
31989	19167	2
31990	19167	1
31991	19160	2
31992	19160	4
31993	19160	3
31994	19213	2
31995	19213	1
31996	19217	2
31997	19217	1
31998	19161	2
31999	19161	4
32000	19161	1
32001	19186	2
32002	19186	4
32003	19157	2
32004	19157	4
32005	19157	1
32006	19155	2
32007	19241	1
32008	19220	1
32009	19242	2
32010	19242	1
32011	19170	1
32012	19214	2
32013	19214	4
32014	19214	1
32015	19152	2
32016	19152	4
32017	19152	1
32018	19146	2
32019	19146	1
32020	19150	2
32021	19150	4
32022	19150	1
32023	18798	1
32024	18797	2
32025	18795	2
32026	18787	2
32027	18788	2
32028	18791	2
32029	18791	1
32030	18792	2
32031	18796	2
32032	18793	2
32033	18789	2
32034	19277	1
32035	19275	2
32036	19275	1
32037	19272	4
32038	19276	2
32039	19276	1
32040	19260	1
32041	19267	2
32042	19267	1
32043	19280	2
32044	19280	1
32045	19280	3
32046	19256	2
32047	19256	1
32048	19256	3
32049	19255	2
32050	19255	1
32051	19255	3
32052	19269	1
32053	19278	1
32054	19289	2
32055	19289	1
32056	19268	1
32057	19302	1
32058	19302	3
32059	19257	1
32060	19293	2
32061	19293	1
32062	19293	3
32063	19285	1
32064	19266	1
32065	19287	2
32066	19287	1
32067	19265	1
32068	19274	2
32069	19274	1
32070	19301	2
32071	19301	1
32072	19270	2
32073	19270	1
32074	19298	1
32075	19262	1
32076	19283	1
32077	19299	2
32078	19299	1
32079	19299	3
32080	19281	2
32081	19281	1
32082	19292	2
32083	19292	1
32084	19288	2
32085	19288	1
32086	19296	1
32087	19261	1
32088	19264	2
32089	19264	1
32090	19273	2
32091	19273	1
32092	19294	2
32093	19294	1
32094	19282	2
32095	19282	1
32096	19271	2
32097	19271	1
32098	19284	1
32099	19263	2
32100	19263	1
32101	19263	3
32102	19295	2
32103	19295	1
32104	19295	3
32105	19279	2
32106	19279	1
32107	19290	2
32108	19290	1
32109	19291	1
32110	19291	3
32111	19258	2
32112	19258	1
32113	19258	3
32114	19300	2
32115	19259	1
32116	20680	1
32117	20680	3
32118	20684	1
32119	20712	2
32120	20712	1
32121	20709	2
32122	20709	1
32123	20709	3
32124	20710	2
32125	20710	1
32126	20710	3
32127	20708	2
32128	20708	1
32129	20711	2
32130	20711	1
32131	20679	2
32132	20679	1
32133	20679	3
32134	20682	2
32135	20682	4
32136	20682	1
32137	20682	3
32138	20702	2
32139	20702	1
32140	20702	3
32141	20693	2
32142	20693	1
32143	20693	3
32144	20701	1
32145	20706	2
32146	20706	1
32147	20696	2
32148	20696	1
32149	20699	2
32150	20699	1
32151	20699	3
32152	20694	1
32153	20677	4
32154	20677	1
32155	20677	3
32156	20690	4
32157	20690	1
32158	20700	2
32159	20700	1
32160	20675	2
32161	20675	1
32162	20686	2
32163	20686	1
32164	20681	2
32165	20681	1
32166	20707	2
32167	20707	1
32168	20707	3
32169	20697	1
32170	20687	1
32171	20685	2
32172	20685	4
32173	20685	3
32174	20704	2
32175	20704	1
32176	20688	2
32177	20688	1
32178	20691	2
32179	20691	1
32180	20695	2
32181	20695	1
32182	20678	1
32183	20698	2
32184	20698	1
32185	20683	2
32186	20683	1
32187	20713	1
32188	20705	1
32189	20705	3
32190	20692	2
32191	20692	1
32192	20703	2
32193	20703	1
32194	20703	3
32195	19370	2
32196	19363	2
32197	19363	1
32198	19360	2
32199	19371	2
32200	19371	1
32201	19369	2
32202	19365	2
32203	19365	1
32204	19366	2
32205	19366	1
32206	19367	2
32207	19368	2
32208	19361	2
32209	19637	2
32210	19634	2
32211	19636	2
32212	19636	1
32213	19628	2
32214	19628	1
32215	19631	2
32216	19631	1
32217	19632	2
32218	19632	1
32219	19639	2
32220	19644	2
32221	19644	1
32222	19635	2
32223	19638	2
32224	19638	1
32225	19627	2
32226	19640	2
32227	19640	1
32228	19643	2
32229	19643	1
32230	19633	2
32231	19629	2
32232	19629	1
32233	19645	2
32234	19645	1
32235	20291	1
32236	20291	3
32237	20296	3
32238	20268	3
32239	20306	3
32240	20283	2
32241	20283	1
32242	20283	3
32243	20310	2
32244	20310	1
32245	20310	3
32246	20298	2
32247	20298	1
32248	20298	3
32249	20269	2
32250	20269	1
32251	20269	3
32252	20270	1
32253	20270	3
32254	20273	3
32255	20303	1
32256	20303	3
32257	20293	3
32258	20289	3
32259	20292	2
32260	20292	1
32261	20292	3
32262	20302	2
32263	20302	3
32264	20308	1
32265	20278	2
32266	20278	1
32267	20271	1
32268	20297	2
32269	20297	1
32270	20297	3
32271	20294	2
32272	20294	1
32273	20294	3
32274	20287	1
32275	20282	2
32276	20282	1
32277	20285	2
32278	20267	2
32279	20276	2
32280	20276	1
32281	20304	2
32282	20304	3
32283	20272	2
32284	20307	2
32285	20307	1
32286	20307	3
32287	20301	2
32288	20301	3
32289	20299	2
32290	20299	3
32291	20286	3
32292	20281	2
32293	20281	3
32294	20284	2
32295	20284	3
32296	20288	2
32297	20288	3
32298	20279	2
32299	20279	3
32300	20274	2
32301	20274	3
32302	20280	2
32303	20280	3
32304	20277	2
32305	20277	3
32306	20295	2
32307	20295	3
32308	20300	3
32309	19794	2
32310	19794	1
32311	19793	2
32312	19793	1
32313	19796	2
32314	19796	1
32315	19795	2
32316	18941	2
32317	18941	1
32318	20088	1
32319	19913	2
32320	19913	1
32321	19910	1
32322	19912	2
32323	19912	1
32324	19909	2
32325	19911	2
32326	19911	1
32327	18974	1
32328	18975	1
32329	18968	2
32330	18968	1
32331	18991	2
32332	18991	1
32333	18973	1
32334	18995	1
32335	18963	1
32336	19001	1
32337	18964	2
32338	18964	4
32339	18964	1
32340	18999	2
32341	18999	1
32342	18986	2
32343	18986	1
32344	18986	3
32345	18988	2
32346	18988	1
32347	18988	3
32348	19003	1
32349	19003	3
32350	18966	1
32351	18960	1
32352	19000	1
32353	18957	2
32354	18957	1
32355	18959	2
32356	18959	1
32357	18959	3
32358	18997	2
32359	18997	4
32360	18997	1
32361	18996	2
32362	18996	1
32363	18961	2
32364	18961	1
32365	18971	2
32366	18971	4
32367	18971	1
32368	18971	3
32369	18958	1
32370	18958	3
32371	18982	2
32372	18982	1
32373	18989	2
32374	18989	4
32375	18989	1
32376	18976	2
32377	18976	4
32378	18976	1
32379	18992	2
32380	18992	1
32381	18992	3
32382	19002	2
32383	19002	4
32384	18967	2
32385	18967	4
32386	18967	1
32387	18967	3
32388	18978	2
32389	18978	4
32390	18978	1
32391	18990	1
32392	18962	2
32393	18962	4
32394	18962	1
32395	18962	3
32396	18985	1
32397	18984	2
32398	18984	1
32399	18984	3
32400	18969	1
32401	18987	2
32402	18987	1
32403	18993	2
32404	18993	4
32405	18993	1
32406	18993	3
32407	19006	2
32408	19006	4
32409	19006	1
32410	19006	3
32411	18983	2
32412	18983	4
32413	18983	1
32414	18983	3
32415	18980	2
32416	18980	1
32417	18979	1
32418	18979	3
32419	18970	2
32420	18970	1
32421	18970	3
32422	18965	2
32423	18965	1
32424	18965	3
32425	18977	2
32426	18977	1
32427	18919	2
32428	18919	4
32429	18918	2
32430	18918	4
32431	19335	1
32432	19341	2
32433	19336	2
32434	19339	2
32435	19340	2
32436	19344	2
32437	19337	2
32438	19334	2
32439	19342	2
32440	19338	2
32441	19343	2
32442	20838	1
32443	20833	4
32444	20833	1
32445	20834	4
32446	20834	1
32447	20836	2
32448	20836	1
32449	20837	2
32450	20837	4
32451	20837	1
32452	20831	2
32453	20831	1
32454	20832	2
32455	20832	1
32456	20839	2
32457	20839	1
32458	20835	1
32459	20842	1
32460	20841	2
32461	20841	4
32462	20841	1
32463	18635	1
32464	20666	2
32465	20665	2
32466	20665	1
32467	20670	2
32468	20669	2
32469	20669	1
32470	20662	2
32471	20668	2
32472	20668	1
32473	20664	2
32474	20664	1
32475	20661	1
32476	20671	1
32477	18875	2
32478	18878	2
32479	18871	2
32480	18871	1
32481	18872	2
32482	18872	1
32483	18874	2
32484	18876	2
32485	18876	1
32486	18877	2
32487	18877	4
32488	18877	1
32489	19357	2
32490	19357	1
32491	19359	2
32492	19359	1
32493	19356	2
32494	19356	1
32495	19358	2
32496	19358	1
32497	20391	2
32498	20391	1
32499	20391	3
32500	20392	2
32501	20392	1
32502	20392	3
32503	20393	2
32504	20393	1
32505	20393	3
32506	20397	2
32507	20397	1
32508	20397	3
32509	20394	2
32510	20394	1
32511	20384	2
32512	20384	1
32513	20382	1
32514	20396	2
32515	20396	1
32516	20396	3
32517	20395	3
32518	20387	1
32519	20381	2
32520	20381	1
32521	20381	3
32522	20389	1
32523	20389	3
32524	20383	1
32525	20383	3
32526	20379	1
32527	20386	1
32528	20385	1
32529	20385	3
32530	20388	2
32531	20388	1
32532	19007	1
32533	18668	1
32534	18672	1
32535	18661	2
32536	18661	1
32537	18661	3
32538	18655	1
32539	18655	3
32540	18664	2
32541	18664	1
32542	18664	3
32543	18659	1
32544	18656	1
32545	18669	2
32546	18667	2
32547	18667	1
32548	18667	3
32549	18666	2
32550	18666	1
32551	18666	3
32552	18662	2
32553	18662	1
32554	18662	3
32555	18673	1
32556	18673	3
32557	18671	1
32558	18658	1
32559	18660	2
32560	18660	1
32561	18660	3
32562	18665	2
32563	18665	1
32564	18665	3
32565	18670	1
32566	18670	3
32567	18657	2
32568	18657	1
32569	18657	3
32570	18663	2
32571	18663	1
32572	18663	3
32573	18940	1
32574	18938	1
32575	18937	1
32576	18939	1
32577	20234	1
32578	20234	3
32579	20235	1
32580	20235	3
32581	20233	3
32582	19078	1
32583	19079	1
32584	20550	2
32585	20550	1
32586	20549	2
32587	20549	1
32588	20546	2
32589	20541	1
32590	20540	2
32591	20540	1
32592	20542	2
32593	20542	1
32594	20545	2
32595	20539	2
32596	20539	1
32597	20544	2
32598	20544	1
32599	20543	2
32600	20543	1
32601	20552	2
32602	20552	1
32603	20547	2
32604	20547	1
32605	20551	2
32606	20551	1
32607	20548	2
32608	19788	1
32609	20673	1
32610	20376	2
32611	20376	1
32612	20378	2
32613	20378	1
32614	20349	2
32615	20349	1
32616	20359	2
32617	20350	4
32618	20350	1
32619	20365	2
32620	20365	4
32621	20374	2
32622	20374	4
32623	20374	1
32624	20374	3
32625	20355	2
32626	20355	4
32627	20355	1
32628	20351	4
32629	20351	1
32630	20370	2
32631	20370	4
32632	20370	1
32633	20364	2
32634	20364	1
32635	20348	2
32636	20348	1
32637	20354	4
32638	20357	1
32639	20352	2
32640	20352	4
32641	20352	1
32642	20361	4
32643	20361	1
32644	20366	4
32645	20369	4
32646	20369	1
32647	20372	2
32648	20372	1
32649	20356	4
32650	20358	2
32651	20377	2
32652	20362	4
32653	20371	2
32654	20373	2
32655	20373	4
32656	20373	1
32657	20375	2
32658	20375	4
32659	20375	1
32660	20360	2
32661	20360	1
32662	20363	2
32663	20363	4
32664	20363	1
32665	19749	2
32666	19749	1
32667	19740	2
32668	19740	4
32669	19740	1
32670	19740	3
32671	19743	2
32672	19743	4
32673	19743	1
32674	19736	2
32675	19736	1
32676	19737	2
32677	19737	1
32678	19733	2
32679	19764	2
32680	19746	2
32681	19746	1
32682	19753	2
32683	19753	1
32684	19734	2
32685	19766	2
32686	19766	1
32687	19757	2
32688	19757	1
32689	19763	2
32690	19763	1
32691	19760	2
32692	19758	2
32693	19758	1
32694	19732	2
32695	19762	2
32696	19762	4
32697	19762	1
32698	19747	4
32699	19747	1
32700	19745	2
32701	19745	4
32702	19745	1
32703	19768	2
32704	19768	1
32705	19759	2
32706	19759	1
32707	19754	4
32708	19754	1
32709	19755	4
32710	19761	2
32711	19761	1
32712	19756	1
32713	19730	2
32714	19730	4
32715	19765	2
32716	19765	4
32717	19731	2
32718	19731	1
32719	19767	2
32720	19767	1
32721	19735	2
32722	19735	1
32723	19742	2
32724	19742	4
32725	19742	3
32726	19750	4
32727	19738	2
32728	19738	1
32729	19770	2
32730	19770	4
32731	19770	1
32732	19770	3
32733	19769	2
32734	19769	1
32735	19752	2
32736	19752	4
32737	19752	1
32738	19748	2
32739	19744	2
32740	19744	1
32741	19751	2
32742	19751	4
32743	19751	1
32744	19741	2
32745	19741	1
32746	19739	2
32747	19739	1
32748	20864	1
32749	20869	1
32750	20861	1
32751	20868	1
32752	20858	2
32753	20858	1
32754	20865	2
32755	20867	2
32756	20867	1
32757	20862	1
32758	20866	2
32759	20866	1
32760	20870	1
32761	20863	1
32762	20859	1
32763	19998	1
32764	19996	1
32765	19997	1
32766	19995	1
32767	18645	1
32768	18646	1
32769	18647	1
32770	19786	1
32771	19560	1
32772	19482	2
32773	19482	1
32774	19434	2
32775	19434	1
32776	19410	2
32777	19410	4
32778	19530	2
32779	19530	4
32780	19394	2
32781	19394	1
32782	19478	2
32783	19478	4
32784	19455	2
32785	19411	2
32786	19411	1
32787	19392	2
32788	19392	4
32789	19392	1
32790	19392	3
32791	19525	2
32792	19429	2
32793	19429	4
32794	19429	1
32795	19393	2
32796	19393	1
32797	19501	1
32798	19501	3
32799	19404	2
32800	19469	2
32801	19469	4
32802	19469	1
32803	19413	2
32804	19413	4
32805	19428	1
32806	19454	2
32807	19396	2
32808	19396	4
32809	19476	2
32810	19476	1
32811	19445	2
32812	19445	1
32813	19509	2
32814	19509	4
32815	19509	1
32816	19391	2
32817	19442	2
32818	19442	1
32819	19449	2
32820	19449	1
32821	19499	2
32822	19499	1
32823	19505	2
32824	19505	1
32825	19485	2
32826	19494	2
32827	19494	1
32828	19419	2
32829	19475	2
32830	19527	2
32831	19527	1
32832	19533	2
32833	19521	2
32834	19521	1
32835	19473	2
32836	19473	4
32837	19473	1
32838	19473	3
32839	19547	4
32840	19547	1
32841	19468	2
32842	19468	1
32843	19415	2
32844	19415	4
32845	19415	1
32846	19458	2
32847	19458	1
32848	19441	2
32849	19441	1
32850	19440	4
32851	19490	2
32852	19490	1
32853	19431	2
32854	19431	1
32855	19532	2
32856	19532	4
32857	19532	1
32858	19532	3
32859	19471	2
32860	19471	1
32861	19424	2
32862	19424	1
32863	19487	2
32864	19487	1
32865	19409	2
32866	19409	1
32867	19510	2
32868	19510	1
32869	19520	2
32870	19520	1
32871	19414	2
32872	19414	4
32873	19414	1
32874	19506	2
32875	19506	4
32876	19529	2
32877	19529	1
32878	19472	2
32879	19472	1
32880	19477	2
32881	19477	1
32882	19385	2
32883	19385	1
32884	19461	4
32885	19439	2
32886	19439	4
32887	19439	1
32888	19464	2
32889	19464	1
32890	19397	2
32891	19397	1
32892	19405	2
32893	19405	1
32894	19508	2
32895	19508	1
32896	19543	2
32897	19417	2
32898	19417	1
32899	19388	2
32900	19484	2
32901	19484	1
32902	19534	2
32903	19534	4
32904	19432	2
32905	19432	1
32906	19438	2
32907	19460	2
32908	19460	4
32909	19456	2
32910	19456	1
32911	19448	2
32912	19448	1
32913	19412	2
32914	19418	4
32915	19418	1
32916	19489	2
32917	19489	4
32918	19538	2
32919	19538	4
32920	19452	2
32921	19452	4
32922	19548	2
32923	19548	1
32924	19535	2
32925	19535	1
32926	19512	2
32927	19512	1
32928	19544	2
32929	19544	1
32930	19496	2
32931	19496	1
32932	19425	2
32933	19470	2
32934	19447	2
32935	19395	2
32936	19395	4
32937	19492	2
32938	19492	1
32939	19433	2
32940	19433	1
32941	19466	2
32942	19480	1
32943	19523	1
32944	19523	3
32945	19522	2
32946	19522	1
32947	19522	3
32948	19400	2
32949	19518	2
32950	19518	4
32951	19542	2
32952	19542	4
32953	19390	2
32954	19390	1
32955	19536	2
32956	19536	4
32957	19536	1
32958	19443	2
32959	19474	2
32960	19474	1
32961	19524	4
32962	19511	4
32963	19504	4
32964	19416	2
32965	19387	2
32966	19387	1
32967	19519	2
32968	19519	4
32969	19502	2
32970	19502	4
32971	19486	2
32972	19486	1
32973	19503	2
32974	19503	4
32975	19503	3
32976	19401	4
32977	19457	2
32978	19402	4
32979	19423	2
32980	19514	1
32981	19545	2
32982	19545	4
32983	19545	1
32984	19426	2
32985	19467	2
32986	19444	2
32987	19444	4
32988	19444	1
32989	19408	2
32990	19528	2
32991	19528	4
32992	19528	1
32993	19435	2
32994	19435	1
32995	19450	2
32996	19450	1
32997	19495	4
32998	19465	2
32999	19465	1
33000	19516	4
33001	19541	2
33002	19488	2
33003	19488	1
33004	19546	2
33005	19546	1
33006	19531	2
33007	19420	2
33008	19420	4
33009	19507	2
33010	19507	1
33011	19430	2
33012	19430	1
33013	19446	2
33014	19446	4
33015	19537	2
33016	19481	2
33017	19481	1
33018	19515	2
33019	19515	1
33020	19479	2
33021	19479	1
33022	19517	2
33023	19517	1
33024	19459	2
33025	19459	1
33026	19513	2
33027	19513	4
33028	19513	1
33029	19453	2
33030	19453	1
33031	19462	2
33032	19462	1
33033	19483	4
33034	19540	2
33035	19540	1
33036	19403	2
33037	19403	1
33038	19497	2
33039	19497	1
33040	19526	2
33041	19427	1
33042	19398	2
33043	19398	4
33044	19539	2
33045	19539	4
33046	19549	2
33047	19386	2
33048	19386	1
33049	19493	2
33050	19493	4
33051	19493	1
33052	19436	2
33053	19451	2
33054	19451	1
33055	19421	2
33056	19422	2
33057	19422	4
33058	19422	1
33059	19422	3
33060	19491	2
33061	19491	1
33062	19500	2
33063	19500	4
33064	19407	2
33065	19407	1
33066	19498	2
33067	19399	2
33068	19437	2
33069	19437	4
33070	19463	2
33071	19463	4
33072	19463	1
33073	19463	3
33074	19406	2
33075	19406	1
33076	19345	1
33077	18956	1
33078	19599	1
33079	19591	1
33080	19602	1
33081	19595	1
33082	19597	1
33083	19614	1
33084	19609	1
33085	19592	1
33086	19613	1
33087	19605	1
33088	19610	1
33089	19607	1
33090	19606	1
33091	19611	1
33092	19598	1
33093	19593	1
33094	19600	1
33095	19612	1
33096	19594	1
33097	19596	1
33098	19603	2
33099	19603	1
33100	19608	2
33101	19608	1
33102	19601	1
33103	19604	1
33104	19821	1
33105	19674	1
33106	19685	1
33107	19660	1
33108	19658	1
33109	19680	1
33110	19661	1
33111	19650	1
33112	19650	3
33113	19682	2
33114	19682	1
33115	19653	1
33116	19655	2
33117	19655	1
33118	19666	1
33119	19673	1
33120	19683	1
33121	19688	1
33122	19681	1
33123	19649	1
33124	19686	1
33125	19651	1
33126	19657	1
33127	19648	1
33128	19676	1
33129	19663	1
33130	19652	1
33131	19672	1
33132	19664	2
33133	19664	1
33134	19664	3
33135	19689	1
33136	19689	3
33137	19687	2
33138	19687	1
33139	19687	3
33140	19670	1
33141	19670	3
33142	19656	1
33143	19659	1
33144	19647	2
33145	19647	1
33146	19647	3
33147	19679	1
33148	19678	2
33149	19678	4
33150	19678	1
33151	19678	3
33152	19646	2
33153	19646	4
33154	19646	1
33155	19646	3
33156	19667	2
33157	19667	4
33158	19667	1
33159	19667	3
33160	19665	4
33161	19665	1
33162	19691	1
33163	19696	1
33164	19693	1
33165	19694	1
33166	19695	1
33167	19692	1
33168	20640	1
33169	20625	2
33170	20625	1
33171	20647	2
33172	20647	1
33173	20647	3
33174	20648	2
33175	20648	1
33176	20606	2
33177	20606	1
33178	20606	3
33179	20613	2
33180	20613	1
33181	20613	3
33182	20607	2
33183	20607	1
33184	20607	3
33185	20634	1
33186	20624	2
33187	20624	1
33188	20644	2
33189	20644	1
33190	20644	3
33191	20631	1
33192	20601	1
33193	20601	3
33194	20604	2
33195	20604	1
33196	20605	1
33197	20623	1
33198	20609	2
33199	20609	1
33200	20609	3
33201	20600	1
33202	20611	2
33203	20611	1
33204	20611	3
33205	20635	2
33206	20635	1
33207	20635	3
33208	20619	1
33209	20619	3
33210	20636	3
33211	20602	2
33212	20602	1
33213	20602	3
33214	20642	1
33215	20621	1
33216	20603	2
33217	20603	1
33218	20603	3
33219	20645	2
33220	20645	1
33221	20645	3
33222	20637	2
33223	20637	1
33224	20630	2
33225	20630	4
33226	20630	1
33227	20630	3
33228	20620	2
33229	20620	1
33230	20620	3
33231	20638	2
33232	20638	3
33233	20627	2
33234	20618	1
33235	20617	2
33236	20617	1
33237	20617	3
33238	20632	1
33239	20632	3
33240	20616	2
33241	20610	1
33242	20614	1
33243	20614	3
33244	20629	2
33245	20629	1
33246	20629	3
33247	20649	1
33248	20633	2
33249	20643	2
33250	20643	1
33251	20643	3
33252	20646	2
33253	20646	1
33254	20615	2
33255	20615	1
33256	20615	3
33257	20626	2
33258	20626	1
33259	20626	3
33260	20628	1
33261	20622	1
33262	20639	1
33263	20599	1
33264	20599	3
33265	20608	2
33266	20608	1
33267	20217	1
33268	20231	2
33269	20231	1
33270	20198	2
33271	20198	1
33272	20229	4
33273	20229	1
33274	20232	1
33275	20207	2
33276	20207	1
33277	20230	2
33278	20230	4
33279	20230	1
33280	20203	1
33281	20213	2
33282	20213	1
33283	20216	2
33284	20216	1
33285	20199	2
33286	20208	2
33287	20208	1
33288	20206	2
33289	20206	1
33290	20218	2
33291	20218	1
33292	20209	2
33293	20209	1
33294	20209	3
33295	20222	2
33296	20222	1
33297	20205	1
33298	20204	2
33299	20204	1
33300	20204	3
33301	20220	2
33302	20220	1
33303	20220	3
33304	20212	2
33305	20228	2
33306	20228	1
33307	20197	2
33308	20197	1
33309	20226	2
33310	20226	1
33311	20201	2
33312	20201	1
33313	20201	3
33314	20221	2
33315	20221	3
33316	20223	2
33317	20223	1
33318	20223	3
33319	20219	2
33320	20219	3
33321	20224	2
33322	20202	2
33323	20202	1
33324	20200	2
33325	20211	2
33326	20214	2
33327	20227	2
33328	20227	1
33329	20227	3
33330	20225	2
33331	20225	1
33332	20215	2
33333	20215	1
33334	18745	1
33335	18743	1
33336	18744	2
33337	18744	1
33338	18744	3
33339	18837	1
33340	18836	1
33341	20764	1
33342	20765	1
33343	19972	1
33344	20762	1
33345	20760	1
33346	20761	1
33347	18687	1
33348	18680	1
33349	18684	1
33350	18683	1
33351	18679	1
33352	18682	1
33353	18677	1
33354	18688	2
33355	18688	1
33356	18685	1
33357	18686	2
33358	18686	1
33359	18681	1
33360	18678	2
33361	18678	1
33362	20081	1
33363	20079	2
33364	20083	2
33365	20082	2
33366	20080	2
33367	18835	1
33368	19727	2
33369	19727	1
33370	19728	2
33371	19728	1
33372	19728	3
33373	19726	2
33374	19726	1
33375	18479	1
33376	18478	1
33377	20086	1
33378	20085	2
33379	20085	1
33380	20084	2
33381	20084	1
\.



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
-- Name: carbody_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.carbody_id_seq', 11, true);


--
-- Name: carmanufacturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.carmanufacturer_id_seq', 1426, true);


--
-- Name: carmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.carmodel_id_seq', 20876, true);


--
-- Name: carmodelbody_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.carmodelbody_id_seq', 1395973, true);


--
-- Name: carmodeltransmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.carmodeltransmission_id_seq', 33381, true);


--
-- Name: cartransmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adsviewer
--

SELECT pg_catalog.setval('public.cartransmission_id_seq', 4, true);


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


