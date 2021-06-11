

--
-- Data for Name: demographicquestiontext; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.demographicquestiontext (iddemographicquestiontext, iddemographicquestion, question, label, lang, questionlang) FROM stdin;
1	1	Gender	Gender	en	{"en": "Gender", "es": "Gender"}
2	2	Age	Age	en	{"en": "What is your age?", "es": "Que edad tienes?"}
3	3	Years with company	Employment	en	{"en": "Employment", "es": "Employment"}
4	4	What best describes your job function	Job Function	en	{"en": "What best describes your job function", "es": ""}
5	5	Education Level	Education Level	en	{"en": "Education Level", "es": "Nivel educativo"}
6	6	Job Level	Job Level	en	{"en": "Job Level", "es": ""}
7	7	In your present position, you have	Contact Level	en	{"en": "In your present position, you have", "es": "En tu puesto actual, tienes"}
8	8	What Shift do you work?	Shift	en	{"en": "What shift do you work?", "es": ""}
9	9	Were you a CMH Employee?	Other Employee	en	{"en": "Were you a CMH Employee?", "es": ""}
10	10	Your work location	Work Location	en	{"en": "Work Location", "es": "Work Location"}
11	11	First Name	First Name	en	{"en": "First Name", "es": "Nombre"}
12	12	Last Name	Last Name	en	{"en": "Last Name", "es": "Apellidos"}
13	13	What best describes your job level	Job Level	en	{"en": "What best describes your job level", "es": ""}
14	14	What best describes your job function	Job Function	en	{"en": "What best describes your job function", "es": "¿Qué describe mejor su función laboral?"}
15	15	Gender	Gender	en	{"en": "What is your gender?", "es": "Cúal es tu género?"}
16	16	Years in Workforce	Employment	en	{"en": "Years in Workforce", "es": ""}
17	17	Education	Education Level	en	{"en": "Education", "es": ""}
18	18	Job Level	Job Level	en	{"en": "Job Level", "es": "Posición de trabajo"}
19	19	Customer Contact	Contact Level	en	{"en": "Customer Contact", "es": ""}
20	20	E-mail	E-mail	en	{"en": "E-mail", "es": "Correo electrónico"}
21	21	Education	Education	en	{"en": "Education", "es": ""}
22	22	How long have you been a Chamber member?	Long in chamber	en	{"en": "How long have you been a Chamber member?", "es": ""}
23	23	Are you a	Board or Staff	en	{"en": "Are you a", "es": ""}
24	24	How long have you been on the Board	Long board	en	{"en": "How long have you been on the Board", "es": ""}
25	25	Function/Role (for staff only)	Function/Role	en	{"en": "Function/Role (for staff only)", "es": ""}
26	26	Size of your own business	Size business	en	{"en": "Size of your own business", "es": ""}
27	27	Which committee are you a member of	Member of	en	{"en": "Which committee are you a member of", "es": ""}
28	28	What best describes your job function	JJHJob Function	en	{"en": "What best describes your job function", "es": ""}
29	29	Job Level	J J H Job Level	en	{"en": "Job Level", "es": ""}
30	30	What Shift do you work?	Shift	en	{"en": "What Shift do you work?", "es": ""}
31	31	Were you a CMH Employee?	JJH CMH only	en	{"en": "Were you a CMH Employee?", "es": ""}
32	32	Your work location	J J H locations	en	{"en": "Your work location", "es": ""}
33	33	Gender	Gender	en	{"en": "Gender", "es": ""}
34	34	Years in Workforce	Employment	en	{"en": "Years in Workforce", "es": ""}
35	35	Education	Education Level	en	{"en": "Education", "es": ""}
36	36	Job Level	Job Level	en	{"en": "Job Level", "es": ""}
37	37	Customer Contact	Contact Level	en	{"en": "Customer Contact", "es": ""}
38	38	What best describes your job function	Job Function	en	{"en": "What best describes your job function", "es": ""}
39	39	Job Level	Job Level	en	{"en": "Job Level", "es": ""}
40	40	What Shift do you work?	Shift	en	{"en": "What Shift do you work?", "es": ""}
41	41	Were you a CMH Employee?	Other Employee	en	{"en": "Were you a CMH Employee?", "es": "¿Eras un empleado de CMH?"}
42	42	Your work location	Work Location	en	{"en": "Your work location", "es": "Lugar de trabajo"}
43	43	Gender	Gender	en	{"en": "Gender", "es": ""}
44	44	Years in Workforce	Employment	en	{"en": "Years in Workforce", "es": ""}
45	45	Education	Education Level	en	{"en": "Education", "es": ""}
46	46	Job Level	Job Level	en	{"en": "Job Level", "es": ""}
47	47	Customer Contact	Contact Level	en	{"en": "Customer Contact", "es": ""}
48	48	Gender	Gender	en	{"en": "Gender", "es": ""}
49	49	Years in Workforce	Employment	en	{"en": "Years in Workforce", "es": ""}
50	50	Education	Education Level	en	{"en": "Education", "es": ""}
51	51	Job Level	Job Level	en	{"en": "Job Level", "es": ""}
52	52	Customer Contact	Contact Level	en	{"en": "Customer Contact", "es": ""}
53	53	Work Location	Work Location	en	{"en": "Work Location", "es": "Work Location"}
54	54	Work Area 	Work Area	en	{"en": "Work Area", "es": "Work Area"}
56	56	Job Function	Job Function	en	{"en": "Job Function", "es": "Job Function"}
57	57	test custom demo question	test custom dem	en	{"en": "test custom dem", "es": "test custom dem"}
58	58	test2 - custom	test2 - custom 	en	{"en": "test2 - custom ", "es": "test2 - custom "}
59	59	create empty one	create empty on	en	{"en": "create empty on", "es": "create empty on"}
60	60	Job Level	Job Level	en	{"en": "Job Level", "es": ""}
61	61	What is your Location?	Location	en	{"en": "What is your Location?", "es": ""}
62	62	What is your location?	Demographics	en	{"en": "What is your location?", "es": ""}
\.


--
-- Name: demographicquestiontext_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.demographicquestiontext_seq', 62, true);
