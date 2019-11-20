

--
-- Data for Name: peoplecode; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.peoplecode (idcode, idpeople, status, codehash, state, isadmin) FROM stdin;
1	13	1	fu9beLX0KJvNjGdnrgDXe3lZFpywJC6Rwi5fqx	confirmed	f
2	13	0	ff0anL3lcfH1mi2YTWzNhX7otXCGL4WHSPwbMu	confirmed	f
3	13	0	dJKqSEn4yt7ND8P9y33Ps6vcBKjQnDGwgl0SXD	confirmed	f
4	13	0	un3eV4GID5TkScG7KMSgavtysGcZJ50gV0BWVz	confirmed	f
5	13	0	2M0ioeFNr98fG2Bek4JRjPzwzNJPGwcGoEul5J	confirmed	f
6	13	0	12g7cI0Hmc4U3637qzLLoxKTMfNHXqoLhcVeYP	confirmed	f
7	13	0	hDBaHjkiXy3cAGGY68uGEbq7rfKqTrOluF1tDU	confirmed	f
8	13	0	I38Jzb1OdA9k9AxKXDqPeuABhdij2II7XhS6Kp	confirmed	f
9	13	0	gQz3EVhHwfF6T307bjIlFMCzyUFVxgYMg6NIER	confirmed	f
10	13	0	UgGsnvZ74umRE05ljq5uvwMBlcycdGmlR93igC	confirmed	f
11	13	0	QgcbZzlWm8PNnBb8E14aMYuamgnO1VTjCXvHui	confirmed	f
12	13	0	d2PXFHa7slrsKYNqSsYLkOIaJF6XVBfdfZMcwF	confirmed	f
13	13	0	R4bg4oYe1sTlUiVBa5jMh5vgkjGSjXNDt04n5J	confirmed	f
14	13	0	KjPfh4zLkHvnL3va7U0yhHTCOCxdfUVgFOwxPg	confirmed	f
15	13	0	UJMDWl458fILqCdrelasfIji9WS95QJ6ybWvH3	confirmed	f
16	13	0	Qm1a1yDlJ6Rx7PX7OW8SBdYzQiwk9Ta3R61YU3	confirmed	f
17	13	0	TmzdAbGxCHkaToCwFG7B0Vim8syGaa6Mo5nHAH	confirmed	f
18	13	0	YyEXjPTibgIGXBd73xhxFQ3OGHH1WGjVeptaYw	confirmed	f
19	13	0	ZNW43TbwofSg0CHxQQQ49WQO6Nm76qYofveSrj	confirmed	f
20	14	1	06tY5GQHNM3FWAvlA1EgxFY2XA593YV167o7TF	confirmed	f
21	15	1	btOGu0F5tahwCk7OkVQgqNpkQt5P8vXh6OIdiy	confirmed	f
22	16	0	5OyXZpFkvwe0XWfAbg1jWq3P3yfPgpKcHdBPF8	confirmed	f
23	17	1	wRvLhX7fSZB4lX5QHTXgMcw4BuGlb6335Vdawa	confirmed	f
24	18	1	GCIKPeGnMvOBbZQBlMPDuTnwWWayuCGjA5dgPN	unconfirmed	f
\.


--
-- Name: peoplecode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.peoplecode_id_seq', 24, true);
