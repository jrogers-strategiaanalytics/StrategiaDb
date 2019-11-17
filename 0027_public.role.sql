

--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.role (idrole, name) FROM stdin;
1	admin
\.


--
-- Name: role_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.role_seq', 1, true);
