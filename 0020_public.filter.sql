

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
\.


--
-- Name: filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.filter_id_seq', 10, true);
