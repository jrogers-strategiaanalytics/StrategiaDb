

--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.project (idproject, idclient, name, primarycontact, status) FROM stdin;
1	1	JJ Haines	\N	1
2	2	Strategia	\N	1
3	2	Strategia Analytics OSA 2018	\N	1
5	3	OSA November 2016	\N	1
6	3	Candidate Fit 2016-2019	\N	1
7	4	Marana Chamber of Commerce	\N	1
8	2	MPO  Collection	\N	1
9	2	Strategia Analytics OSA 2019	\N	1
10	2	 Delete this Entire Project 	\N	1
12	5	Trinity Leadership Surveys 2018 - 2019	\N	1
14	5	Trinity OSA	\N	1
15	2	Customer Centricity	\N	1
16	2	2019 Webinar Participants	\N	1
17	2	Customer Fit Partnership with Alain	\N	1
18	3	Hire Director	\N	1
20	6	Introduction	\N	1
21	5	Candidate Fit	\N	1
22	7	CFP for Trinity Glass	\N	1
24	3	Candidate fit 2020	\N	1
25	2	Computer APP Testing	\N	1
26	9	What Not	\N	1
28	2	Alice & Albert	\N	1
29	2	Strategia Analytics OSA 2020	\N	1
31	10	Kathy's Kitchen OSA 2020	\N	1
\.


--
-- Name: project_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.project_seq', 31, true);
