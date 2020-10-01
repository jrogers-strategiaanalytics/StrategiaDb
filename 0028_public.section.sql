

--
-- Data for Name: section; Type: TABLE DATA; Schema: public; Owner: adminstrategia
--

COPY public.section (idsection, idcomponent, name, description, scaleleft, scaleright, weight) FROM stdin;
1	1	Pace	Pace of Work	Rapid	Deliberate	1
2	1	Creativity	Improvement Focus	Better	Different	5
3	1	Focus	Focus of Work	Analytic	Experimental	2
4	1	Customer Needs	Customer Focus	React	Anticipate	4
5	1	Growth	Growth Strategy	Profits	Market Share	3
6	2	Customer Acquisition	Acquisition Focus	Retain	Acquire New	3
7	2	Responsibility	Performance Responsibility	Limited	Broad	4
8	2	Legacy	Change Focus	Protect	Evolve	1
9	2	Space	Accountability	Narrow	Broad	2
10	2	Orientation	Teaming Focus	Alone	Partner	5
11	2	Employee Latitude and Judgement	Employee Empowerment	Narrow	Broad	6
12	2	Customer Focused Processes	Focus on Customers	Low Focus	High Focus	7
13	3	Consistency	Alignment of Strategy and Philosophy	Low	High	1
14	3	Rewards	Strength of Link between Achievement and Rewards	Indirect	Direct	6
15	3	Purpose	Clarity and Focus of Overarching Aspiration	Unclear	Clear	9
16	3	Customer Processes	Strength of the Customer Focused Processes	React	Anticipate	3
17	3	Expectations	Clarity of Objectives, Metrics, and Performance	Unclear	Clear	7
18	3	Measurement Processes	Depth and Breadth of Measurement Processes	Narrow	Broad	2
19	3	Advancement	Clarity of Advancement Criteria	Unclear	Clear	8
20	3	Supervisory Relationship	Supervisory Relationship Effectiveness	Weak	Strong	4
21	3	Organizational Glue	Organization – Employee Link Strength	Weak	Strong	5
22	4	HR Approach	HR Effectiveness Philosophy	Non-Innovative	Innovative	1
23	4	Strategic Perspective	Strategic Time Focus	Potential	Performance	3
24	4	Learning Focus	Employee Development Focus	Technical Focus	Customer Focused	2
25	5	Pace	Pace of Work	Deliberate	Rapid	1
26	5	Creativity	Improvement Focus	Better	Different	5
27	5	Focus	Focus of Work	Analytic	Experimental	2
28	5	Customer Needs	Customer Focus	React	Anticipate	4
29	5	Growth	Growth Strategy	Profits	Market Share	3
30	5	Image	Image	Follower	Leader	6
31	5	Horizon	Horizon	Past	Future	7
32	6	Customer Acquisition	Acquisition Focus	Retain	Acquire New	3
33	6	Responsibility	Performance Responsibility	Limited	Broad	4
34	6	Legacy	Change Focus	Protect	Evolve	1
35	6	Space	Accountability	Narrow	Broad	2
36	6	Orientation	Teaming Focus	Alone	Partner	5
37	6	Employee Latitude and Judgement	Employee Empowerment	Narrow	Broad	6
38	6	Customer Focused Processes	Focus on Customers	Low Focus	High Focus	7
39	6	Intensity	Intensity	Reserve	Passion	8
40	7	Consistency	Alignment of Strategy and Philosophy	Low	High	1
41	7	Rewards	Strength of Link between Achievement and Rewards	Indirect	Direct	6
42	7	Purpose	Clarity and Focus of Overarching Aspiration	Unclear	Clear	9
43	7	Customer Processes	Strength of the Customer Focused Processes	React	Anticipate	3
44	7	Expectations	Clarity of Objectives, Metrics, and Performance	Unclear	Clear	7
45	7	Measurement Processes	Depth and Breadth of Measurement Processes	Narrow	Broad	2
46	7	Advancement	Clarity of Advancement Criteria	Unclear	Clear	8
47	7	Supervisory Relationship	Supervisory Relationship Effectiveness	Weak	Strong	4
48	7	Organizational Glue	Organization – Employee Link Streng	Weak	Strong	5
49	7	Information	Information	Control	Learning	10
50	7	Values	Values	Undefined	Defined	11
51	8	HR Approach	HR Effectiveness Philosophy	Non-Innovative	Innovative	1
52	8	Strategic Perspective	Strategic Time Focus	Performance	Potential	3
53	8	Learning Focus	Employee Development Focus	Technical Focus	Customer Focused	2
\.


--
-- Name: section_seq; Type: SEQUENCE SET; Schema: public; Owner: adminstrategia
--

SELECT pg_catalog.setval('public.section_seq', 24, true);
