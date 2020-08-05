

--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.client (idclient, name, phone, email, primarycontact) FROM stdin;
1	JJ Haines	\N	\N	\N
2	Strategia	\N	\N	\N
3	Mathnasium	\N	\N	\N
4	Marana Chamber of Commerce	\N	\N	\N
5	Trinity Glass	\N		
6	Bates Communication	6104426373	alseverance13@msn.com	
7	Aerotek	6104426373	alseverance13@msn.com	
8	S. Benjamins & Company	562-394-7091	sherry@sbcompany.net	
9	Al's Testing Company	6104426373	alseverance13@msn.com	
10	Kathy's Kitchen	856-786-9355	kcrowley@strategiaanalytics.com	
11	Crowley Plumbing and Air conditioning	856-829-4033	mlb@aol.com	
\.


--
-- Name: client_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.client_seq', 11, true);
