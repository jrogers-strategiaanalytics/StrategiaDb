

--
-- Data for Name: demographicquestion; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.demographicquestion (iddemographicquestion, enumerator, weight, type, crosstabcolname, family, locked) FROM stdin;
1	D1	1	selectbox	D1	standard	t
2	D2	2	selectbox	D2	standard	t
3	D3	3	selectbox	D3	standard	t
4	D4	4	selectbox	D4	custom	t
5	D5	5	selectbox	D5	standard	t
6	D6	6	selectbox	D6	custom	t
7	D7	7	selectbox	D7	standard	t
8	D8	8	selectbox	D8	custom	t
9	D9	9	selectbox	D9	custom	t
10	D10	10	selectbox	D10	custom	t
11	\N	-15	textbox	T11	nothing	t
12	\N	-10	textbox	T12	nothing	t
13	D13	6	selectbox	D13	custom	t
14	D14	4	selectbox	D14	custom	t
15	D15	1	selectbox	D15	custom	t
16	D16	3	selectbox	D16	custom	t
17	D17	5	selectbox	D17	custom	t
18	D18	6	selectbox	D18	custom	t
19	D19	7	selectbox	D19	custom	t
20	\N	-5	textbox	T20	nothing	t
21	D21	3	selectbox	D21	custom	t
22	D22	4	selectbox	D22	custom	t
23	D23	5	selectbox	D23	custom	t
24	D24	6	selectbox	D24	custom	t
25	D25	7	selectbox	D25	custom	t
26	D26	8	selectbox	D26	custom	t
27	D27	9	selectbox	D27	custom	t
28	D28	4	selectbox	D28	custom	t
29	D29	6	selectbox	D29	custom	t
30	D30	8	selectbox	D30	custom	t
31	D31	9	selectbox	D31	custom	t
32	D32	10	selectbox	D32	custom	t
33	D33	1	selectbox	D33	custom	t
34	D34	3	selectbox	D34	custom	t
35	D35	5	selectbox	D35	custom	t
36	D36	6	selectbox	D36	custom	t
37	D37	7	selectbox	D37	custom	t
38	D38	4	selectbox	D38	custom	t
39	D39	6	selectbox	D39	custom	t
40	D40	8	selectbox	D40	custom	t
41	D41	9	selectbox	D41	custom	t
42	D42	10	selectbox	D42	custom	t
43	D43	1	selectbox	D43	custom	t
44	D44	3	selectbox	D44	custom	t
45	D45	5	selectbox	D45	custom	t
46	D46	6	selectbox	D46	custom	t
47	D47	7	selectbox	D47	custom	t
48	D48	1	selectbox	D48	custom	t
49	D49	3	selectbox	D49	custom	t
50	D50	5	selectbox	D50	custom	t
51	D51	6	selectbox	D51	custom	t
52	D52	7	selectbox	D52	custom	t
53	D53	1	selectbox	D53	custom	t
54	D54	1	selectbox	D54	custom	t
56	D56	1	selectbox	D56	standard	t
57	D57	1	selectbox	D57	custom	t
58	D58	1	selectbox	D58	custom	t
59	D59	1	selectbox	D59	custom	t
\.


--
-- Name: demographicquestion_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.demographicquestion_seq', 59, true);
