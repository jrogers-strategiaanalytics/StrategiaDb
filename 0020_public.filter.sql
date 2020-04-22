

--
-- Data for Name: filter; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.filter (id, name, state) FROM stdin;
3	Customer Centricity	active
4	Board Priorities	active
5	Lean Implementation	active
6	Communication of Alignment	active
7	Progress Report	active
10	Quadrants	active
11	Empowerment	active
12	Psychological Safety	active
13	Employee Experience	active
14	Biggest Gaps OSA/EPP 2020	active
15	Strategy	active
16	AA Top Five Gaps 	active
\.


--
-- Name: filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.filter_id_seq', 16, true);
