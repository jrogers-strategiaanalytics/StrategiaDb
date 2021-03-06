

--
-- Data for Name: filter; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.filter (id, name, state) FROM stdin;
3	Customer Centricity	active
5	Lean Implementation	active
6	Communication of Alignment	active
7	Progress Report	active
10	Quadrants	active
11	Empowerment	active
12	Psychological Safety	active
13	Employee Experience	active
15	Strategy	active
16	AA Top Five Gaps 	active
17	Chamber Top 5 Changes	active
\.


--
-- Name: filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.filter_id_seq', 17, true);
