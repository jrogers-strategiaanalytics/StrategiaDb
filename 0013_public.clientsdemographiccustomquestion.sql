

--
-- Data for Name: clientsdemographiccustomquestion; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.clientsdemographiccustomquestion (id, clientid, demographicquestionid) FROM stdin;
1	1	13
2	1	9
3	1	4
4	1	8
5	1	10
6	1	14
7	1	6
8	2	33
9	2	37
10	2	35
11	2	31
12	2	30
13	2	28
14	2	36
15	2	29
16	2	34
17	2	32
18	3	39
19	3	44
20	3	38
21	3	41
22	3	42
23	3	47
24	3	46
25	3	43
26	3	45
27	3	40
28	4	51
29	4	21
30	4	25
31	4	27
32	4	48
33	4	24
34	4	50
35	4	22
36	4	49
37	4	52
38	4	23
39	4	26
40	5	53
41	5	54
\.


--
-- Name: clientsdemographiccustomquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.clientsdemographiccustomquestion_id_seq', 41, true);
