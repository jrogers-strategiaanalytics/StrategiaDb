

--
-- Data for Name: demographicquestiontext; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.demographicquestiontext (iddemographicquestiontext, iddemographicquestion, question, label, lang, questionlang) FROM stdin;
1	1	Gender	Gender	en	{ \n  "en": "What is your gender?",\n  "es": "Cúal es tu género?"\n}
2	2	Age	Age	en	{ \n  "en": "What is your age?",\n  "es": "Que edad tienes?"\n}
3	3	Years with company	Employment	en	{ \n  "en": "Years with company",\n  "es": "Años con la compañia"\n}
4	4	What best describes your job function	Job Function	en	{\n   "en": "", \n   "es": ""\n}
5	5	Education Level	Education Level	en	{ \n  "en": "Education Level",\n  "es": "Nivel educativo"\n}
6	6	Job Level	Job Level	en	{\n   "en": "", \n   "es": ""\n}
7	7	In your present position, you have	Contact Level	en	{ \n  "en": "In your present position, you have",\n  "es": "En tu puesto actual, tienes"\n}
8	8	What Shift do you work?	Shift	en	{\n   "en": "What shift do you work?", \n   "es": ""\n}
9	9	Were you a CMH Employee?	Other Employee	en	{\n   "en": "", \n   "es": ""\n}
10	10	Your work location	Work Location	en	{\n   "en": "Your work location", \n   "es": ""\n}
11	11	First Name	First Name	en	{\n   "en": "First Name", \n   "es": "Nombre"\n}
12	12	Last Name	Last Name	en	{\n   "en": "Last Name", \n   "es": "Apellidos"\n}
13	13	What best describes your job level	Job Level	en	{\n   "en": "", \n   "es": ""\n}
14	14	What best describes your job function	Job Function	en	{ \n  "en": "What best describes your job function",\n  "es": "¿Qué describe mejor su función laboral?"\n}
15	15	Gender	Gender	en	{ \n  "en": "What is your gender?",\n  "es": "Cúal es tu género?"\n}
16	16	Years in Workforce	Employment	en	{\n   "en": "", \n   "es": ""\n}
17	17	Education	Education Level	en	{\n   "en": "", \n   "es": ""\n}
18	18	Job Level	Job Level	en	{ \n  "en": "Job Level",\n  "es": "Posición de trabajo"\n}
19	19	Customer Contact	Contact Level	en	{\n   "en": "", \n   "es": ""\n}
20	20	E-mail	E-mail	en	{\n   "en": "E-mail", \n   "es": "Correo electrónico"\n}
21	21	Education	Education	en	{\n   "en": "", \n   "es": ""\n}
22	22	How long have you been a Chamber member?	Long in chamber	en	{\n   "en": "", \n   "es": ""\n}
23	23	Are you a	Board or Staff	en	{\n   "en": "", \n   "es": ""\n}
24	24	How long have you been on the Board	Long board	en	{\n   "en": "", \n   "es": ""\n}
25	25	Function/Role (for staff only)	Function/Role	en	{\n   "en": "", \n   "es": ""\n}
26	26	Size of your own business	Size business	en	{\n   "en": "", \n   "es": ""\n}
27	27	Which committee are you a member of	Member of	en	{\n   "en": "", \n   "es": ""\n}
28	28	What best describes your job function	JJHJob Function	en	{\n   "en": "", \n   "es": ""\n}
29	29	Job Level	J J H Job Level	en	{\n   "en": "", \n   "es": ""\n}
30	30	What Shift do you work?	Shift	en	{\n   "en": "", \n   "es": ""\n}
31	31	Were you a CMH Employee?	JJH CMH only	en	{\n   "en": "", \n   "es": ""\n}
32	32	Your work location	J J H locations	en	{\n   "en": "", \n   "es": ""\n}
33	33	Gender	Gender	en	{\n   "en": "", \n   "es": ""\n}
34	34	Years in Workforce	Employment	en	{\n   "en": "", \n   "es": ""\n}
35	35	Education	Education Level	en	{\n   "en": "", \n   "es": ""\n}
36	36	Job Level	Job Level	en	{\n   "en": "", \n   "es": ""\n}
37	37	Customer Contact	Contact Level	en	{\n   "en": "", \n   "es": ""\n}
38	38	What best describes your job function	Job Function	en	{\n   "en": "", \n   "es": ""\n}
39	39	Job Level	Job Level	en	{\n   "en": "", \n   "es": ""\n}
40	40	What Shift do you work?	Shift	en	{\n   "en": "", \n   "es": ""\n}
41	41	Were you a CMH Employee?	Other Employee	en	{ \n  "en": "Were you a CMH Employee?",\n  "es": "¿Eras un empleado de CMH?"\n}
42	42	Your work location	Work Location	en	{ \n  "en": "Your work location",\n  "es": "Lugar de trabajo"\n}
43	43	Gender	Gender	en	{\n   "en": "", \n   "es": ""\n}
44	44	Years in Workforce	Employment	en	{\n   "en": "", \n   "es": ""\n}
45	45	Education	Education Level	en	{\n   "en": "", \n   "es": ""\n}
46	46	Job Level	Job Level	en	{\n   "en": "", \n   "es": ""\n}
47	47	Customer Contact	Contact Level	en	{\n   "en": "", \n   "es": ""\n}
48	48	Gender	Gender	en	{\n   "en": "", \n   "es": ""\n}
49	49	Years in Workforce	Employment	en	{\n   "en": "", \n   "es": ""\n}
50	50	Education	Education Level	en	{\n   "en": "", \n   "es": ""\n}
51	51	Job Level	Job Level	en	{\n   "en": "", \n   "es": ""\n}
52	52	Customer Contact	Contact Level	en	{\n   "en": "", \n   "es": ""\n}
53	53	Work Location	Work Location	en	{\n   "en": "Work Location", \n   "es": ""\n}
54	54	Job Function	Job Function	en	{\n   "en": "Job Function", \n   "es": ""\n}
56	56	Job Function	Job Function	en	{\n   "en": "Job Function", \n   "es": ""\n}
\.


--
-- Name: demographicquestiontext_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.demographicquestiontext_seq', 56, true);
