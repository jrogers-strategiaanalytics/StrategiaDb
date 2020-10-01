

--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.component (idcomponent, name, weight) FROM stdin;
1	Strategic Focus	1
2	Relationships	2
3	Daily Operations	3
4	People Philosophy	4
5	Strategic Focus	1
6	Relationships	2
7	Daily Operations	3
8	People Philosophy	4
\.


--
-- Name: component_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.component_seq', 4, true);
