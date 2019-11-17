

--
-- Data for Name: assessmenttypeslang; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.assessmenttypeslang (id, name, description, introtitle, introtext, exittitle, exittext, howtoread, lang, idassessmenttype) FROM stdin;
1	Organizational Strategic Alignment	\N	Bienvenidos a Organizational Strategic Alignment&trade; Assessment; (OSA). 	The Organizational Strategic Alignment&trade; (OSA) Assessment considera la capacidad de su organización para ejecutar su estrategia. Específicamente, calibra las claves profundas de estrategia de la organización (similar al ADN de un individuo) el cual determina y guía su desempeño. <br> <br>\nLos resultados proveen a la gerencia y a usted con una imagen del esquema subyacente y las dinámicas de su organización. <br> <br>\nEl cuestionario consiste en 63 preguntas y varias preguntas demográficas. La mayoría de la gente puede terminar el cuestionario entre 15-20 minutos. Favor de contestar las preguntas desde su propia perspectiva y experiencia.\n<br> <br>\nTodos los resultados individuales se conservan completamente anónimos y confidenciales y nunca serán compartidos de forma individual.\n<br> <br>\nGracias,\n<br> <br>\nEquipo de Strategia Analytics	Gracias por responder a esta evaluación.	Agradecemos sus respuestas y sus puntos de vista. Si tiene alguna pregunta sobre la evaluación, comuníquese con Strategia Analytics en <a href="http://www.strategiaanalytics.com"> www.strategiaanalytics.com </a>.\n<br> <br>\nEl equipo de Strategia Analytics		es	1
\.


--
-- Name: assessmenttypeslang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.assessmenttypeslang_id_seq', 1, true);
