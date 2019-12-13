

--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.people (idpeople, name, lastname, email, passhash, salt, state, isadmin) FROM stdin;
2	Kathy	Crowley	kcrowley@strategiaanalytics.com	$2a$10$1vmx9wrLfjjoXu56xGtPoODizlR4eBIlf5ZVGiRDzaBiq6LE9vwZC                                        	$2a$10$1vmx9wrLfjjoXu56xGtPoO                     	active	t
3	Miles	Overholt	moverholt@strategiaanalytics.com	$2a$10$rZNbIjBVaz8dQOdG1aLaQOU3N/ECWn26IkTb0HkPnSpvPLEH2kNbq                                        	$2a$10$rZNbIjBVaz8dQOdG1aLaQO                     	active	t
4	Al	Severance	aseverance@strategiaanalytics.com	$2a$10$IvOLUFTKpEq/2UhRdgkM5.fCiDofHF2EhemNe3XITGoLLaAvlZlDW                                        	$2a$10$IvOLUFTKpEq/2UhRdgkM5.                     	active	t
6	Strategia		admin@strategiaanalytics.com	$2a$10$B3BAKGr91aypX/ZoU0BUJeCbVNrOG.6LCNk5LZ21/AkWvSRT2WBQm                                        	$2a$10$B3BAKGr91aypX/ZoU0BUJe                     	active	t
7	Diana	Boyanova	dboyanova@strategiaanalytics.com	$2a$10$gVTYYlObmS9vs9dQ/ylyn.Ggubf60Y/aN.SWxumkkO8mSXO3MWrAu                                        	$2a$10$gVTYYlObmS9vs9dQ/ylyn.                     	active	t
8	Jon	Sharp	jons@trinityglass.com	$2a$10$AXBrAw0jiAAkCoKEhRaZqenwg.EGssL9pQoWqAKkH35Pwwl5hgtyW                                        	$2a$10$AXBrAw0jiAAkCoKEhRaZqe                     	active	f
9	Karen	Rutynowski	karen.maranamath@gmail.com	$2a$10$SKmUCCHQDbDn4bvnUqMQk.c52Ix2gGWc5vWCsUc1bx4vWRD8tJ/qC                                        	$2a$10$SKmUCCHQDbDn4bvnUqMQk.                     	inactive	f
10	Bill	Rothenbach	brothenbach@jjhaines.com	$2a$10$tqLe5rv/9TgafNrqKVk1uO0I2bMVEdB9zRoT1aE5HQv6iR7jQDIcG                                        	$2a$10$tqLe5rv/9TgafNrqKVk1uO                     	active	f
12	John	Rogers	jr@aok7.com	$2a$10$WWbC5vRByMliJCrN3G7K4OrET26utcAmcuiKm2IX4bGFHKK6cRjv.                                        	$2a$10$WWbC5vRByMliJCrN3G7K4O                     	active	t
13	Devi	Paolillo	marana@mathnasium.com	$2a$10$8oui2UDOo9UAaTQmBIhxKeFx6PHdxBgYOoTcqhzwb2D2bSm/mYKiC                                        	$2a$10$8oui2UDOo9UAaTQmBIhxKe                     	active	f
14	Alan	Severance	strategia-test@aok7.com	$2a$10$1CKp0qv7.54fOXOzNk0y/.TtswcqiW04/QWlIHlZnzGhFUHYdL5.q                                        	$2a$10$1CKp0qv7.54fOXOzNk0y/.                     	active	f
15	Alan	Severance	mathnasium-test@aok7.com	$2a$10$OwaZvknGYr0FTQpzqJdOZeNikS1k0xIHi8EMHgb3V.hD19H9qFSyy                                        	$2a$10$OwaZvknGYr0FTQpzqJdOZe                     	active	f
16	Audra	Winters	audrawinters@maranachamber.com	\N	\N	active	f
17	Sherry	Benjamins	sherry@sbcompany.net	$2a$10$6hmCzSUSpJmE1XTP9XABy.LGz7d8.Rrj2xdoJiVXKT0pOo.40P80W                                        	$2a$10$6hmCzSUSpJmE1XTP9XABy.                     	active	f
18	Upper	Case	CapTest@Aok7.com	$2a$10$ovvnE7iNDVFXEa/SFuTdpO0R/AQY7aNQzUHTZoN.Q0wXnjXZp2iXy                                        	$2a$10$ovvnE7iNDVFXEa/SFuTdpO                     	active	f
\.


--
-- Name: people_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.people_seq', 18, true);
