--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.11
-- Dumped by pg_dump version 9.6.15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: generateassessmentswithdemographicsvw(); Type: FUNCTION; Schema: public; Owner: adminstrategia
--

CREATE FUNCTION public.generateassessmentswithdemographicsvw() RETURNS character varying
    LANGUAGE plpgsql
    AS $$
declare
    dynsqlcolumns varchar;
    dynsqlreturn varchar;
    acolumnlist varchar;
    bcolumnlist varchar;
    ct1columnlist varchar;
    ct2columnlist varchar;
    dcolumnlist varchar;
    d2columnlist varchar;
    tcolumnlist varchar;
    t2columnlist varchar;
begin
    dynsqlcolumns = 'select string_agg(a.columname,'','') FROM ( select distinct ''a.''||crosstabcolname columname, REPLACE(crosstabcolname, ''D'', '''')::int from demographicsbyassessmentvw WHERE crosstabcolname LIKE ''%D%'' ORDER BY REPLACE(crosstabcolname, ''D'', '''')::int) a;';
	execute dynsqlcolumns into acolumnlist;
	
	dynsqlcolumns = 'select string_agg(a.columname,'','') FROM ( select distinct ''ct.''||crosstabcolname columname, REPLACE(crosstabcolname, ''D'', '''')::int from demographicsbyassessmentvw WHERE crosstabcolname LIKE ''%D%'' ORDER BY REPLACE(crosstabcolname, ''D'', '''')::int) a;';
	execute dynsqlcolumns into ct1columnlist;
	
	dynsqlcolumns = 'select string_agg(a.columname,'','') FROM ( select distinct crosstabcolname||'' integer'' columname, REPLACE(crosstabcolname, ''D'', '''')::int from demographicsbyassessmentvw WHERE crosstabcolname LIKE ''%D%'' ORDER BY REPLACE(crosstabcolname, ''D'', '''')::int) a;';
	execute dynsqlcolumns into dcolumnlist;
	
	dynsqlcolumns = 'select string_agg(a.columname,'','') FROM ( select distinct ''''''''''''||crosstabcolname||'''''''''''' columname, REPLACE(crosstabcolname, ''D'', '''')::int from demographicsbyassessmentvw WHERE crosstabcolname LIKE ''%D%'' ORDER BY REPLACE(crosstabcolname, ''D'', '''')::int) a;';
	execute dynsqlcolumns into d2columnlist;
	
	
	dynsqlcolumns = 'select string_agg(a.columname,'','') FROM ( select distinct ''b.''||crosstabcolname columname, REPLACE(crosstabcolname, ''T'', '''')::int from demographicsbyassessmentvw WHERE crosstabcolname LIKE ''%T%'' ORDER BY REPLACE(crosstabcolname, ''T'', '''')::int) a;';
	execute dynsqlcolumns into bcolumnlist;
	
	dynsqlcolumns = 'select string_agg(a.columname,'','') FROM ( select distinct ''ct.''||crosstabcolname columname, REPLACE(crosstabcolname, ''T'', '''')::int from demographicsbyassessmentvw WHERE crosstabcolname LIKE ''%T%'' ORDER BY REPLACE(crosstabcolname, ''T'', '''')::int) a;';
	execute dynsqlcolumns into ct2columnlist;
	
	dynsqlcolumns = 'select string_agg(a.columname,'','') FROM ( select distinct crosstabcolname||'' text'' columname, REPLACE(crosstabcolname, ''T'', '''')::int from demographicsbyassessmentvw WHERE crosstabcolname LIKE ''%T%'' ORDER BY REPLACE(crosstabcolname, ''T'', '''')::int) a;';
	execute dynsqlcolumns into tcolumnlist;
	
	dynsqlcolumns = 'select string_agg(a.columname,'','') FROM ( select distinct ''''''''''''||crosstabcolname||'''''''''''' columname, REPLACE(crosstabcolname, ''T'', '''')::int from demographicsbyassessmentvw WHERE crosstabcolname LIKE ''%T%'' ORDER BY REPLACE(crosstabcolname, ''T'', '''')::int) a;';
	execute dynsqlcolumns into t2columnlist;
	
	DROP VIEW IF EXISTS public.assessmentswithdemographicsvw;
	dynsqlreturn = 'CREATE OR REPLACE VIEW  public.assessmentswithdemographicsvw AS SELECT c.idassessment,
    c.idassessmentresponse,
    c.comp_order,
    c.sect_order,
    c.question_order,
    c.idcomponent,
    c.comp_name,
    c.idsection,
    c.sect_name,
    c.quesionnbr,
    c.score,'||acolumnlist||','||bcolumnlist||'
   FROM ( SELECT a_1.idassessment,
            r.idassessmentresponse,
            c_1.weight AS comp_order,
            s.weight AS sect_order,
            atq.weight AS question_order,
            c_1.idcomponent,
            c_1.name AS comp_name,
            atq.idsection,
            s.name AS sect_name,
            atq.enumerator AS quesionnbr,
            ar.value AS score
           FROM assessment a_1
             JOIN assessmentresponse r USING (idassessment)
             JOIN assessmentquestionresponse ar USING (idassessmentresponse)
             JOIN assessmenttypequestion atq USING (idassessmenttypequestion)
             JOIN section s USING (idsection)
             JOIN component c_1 USING (idcomponent)
             WHERE a_1.idassessmenttype BETWEEN 1 AND 6) c
     LEFT JOIN ( SELECT ct.idassessmentresponse,
            ct.idassessment,
            '||ct1columnlist||'
           FROM crosstab(''select idassessmentresponse, idassessment, crosstabcolname, iddemographicvalueset from  demographicsbyassessmentvw WHERE iddemographicvalueset IS NOT NULL order by idassessmentresponse, demographicquestion''::text, ''select unnest(array['||d2columnlist||']);''::text) ct(idassessmentresponse integer, idassessment integer,'||dcolumnlist||')) a USING (idassessment, idassessmentresponse)
     LEFT JOIN ( SELECT ct.idassessmentresponse,
            ct.idassessment,
            '||ct2columnlist||'
           FROM crosstab(''select idassessmentresponse, idassessment, crosstabcolname, rawtextvalue from  demographicsbyassessmentvw WHERE rawtextvalue IS NOT NULL order by idassessmentresponse, demographicquestion''::text, ''select unnest(array['||t2columnlist||']);''::text) ct(idassessmentresponse integer, idassessment integer, '||tcolumnlist||')) b USING (idassessmentresponse, idassessment);';
     
    execute dynsqlreturn;
    return dynsqlreturn;
end
$$;


ALTER FUNCTION public.generateassessmentswithdemographicsvw() OWNER TO adminstrategia;

--
-- Name: assessment_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.assessment_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessment_seq OWNER TO adminstrategia;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: assessment; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessment (
    idassessment integer DEFAULT nextval('public.assessment_seq'::regclass) NOT NULL,
    idassessmenttype integer NOT NULL,
    idproject integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    startdate timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    enddate timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    status integer,
    estimatedresponses integer,
    hash character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE public.assessment OWNER TO adminstrategia;

--
-- Name: assessmentdemographicquestion; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmentdemographicquestion (
    idassessment integer NOT NULL,
    iddemographicquestion integer NOT NULL
);


ALTER TABLE public.assessmentdemographicquestion OWNER TO adminstrategia;

--
-- Name: assessmentquestionresponse_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.assessmentquestionresponse_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessmentquestionresponse_seq OWNER TO adminstrategia;

--
-- Name: assessmentquestionresponse; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmentquestionresponse (
    idassessmentquestionresponse integer DEFAULT nextval('public.assessmentquestionresponse_seq'::regclass) NOT NULL,
    idassessmenttypequestion integer NOT NULL,
    idassessmentresponse integer NOT NULL,
    value integer,
    originalvalue integer
);


ALTER TABLE public.assessmentquestionresponse OWNER TO adminstrategia;

--
-- Name: assessmentresponse_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.assessmentresponse_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessmentresponse_seq OWNER TO adminstrategia;

--
-- Name: assessmentresponse; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmentresponse (
    idassessmentresponse integer DEFAULT nextval('public.assessmentresponse_seq'::regclass) NOT NULL,
    idassessment integer NOT NULL,
    session character varying(20) DEFAULT NULL::character varying,
    createddate timestamp(0) without time zone DEFAULT now()
);


ALTER TABLE public.assessmentresponse OWNER TO adminstrategia;

--
-- Name: assessmenttypequestion_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.assessmenttypequestion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessmenttypequestion_seq OWNER TO adminstrategia;

--
-- Name: assessmenttypequestion; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmenttypequestion (
    idassessmenttypequestion integer DEFAULT nextval('public.assessmenttypequestion_seq'::regclass) NOT NULL,
    idassessmenttype integer NOT NULL,
    idsection integer NOT NULL,
    enumerator character varying(10) DEFAULT NULL::character varying,
    weight integer,
    reverse boolean DEFAULT false
);


ALTER TABLE public.assessmenttypequestion OWNER TO adminstrategia;

--
-- Name: component_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.component_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_seq OWNER TO adminstrategia;

--
-- Name: component; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.component (
    idcomponent integer DEFAULT nextval('public.component_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    weight integer
);


ALTER TABLE public.component OWNER TO adminstrategia;

--
-- Name: section_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.section_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.section_seq OWNER TO adminstrategia;

--
-- Name: section; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.section (
    idsection integer DEFAULT nextval('public.section_seq'::regclass) NOT NULL,
    idcomponent integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    description text,
    scaleleft character varying(255) DEFAULT NULL::character varying,
    scaleright character varying(255) DEFAULT NULL::character varying,
    weight integer
);


ALTER TABLE public.section OWNER TO adminstrategia;

--
-- Name: assessmentswithdemographicsvw; Type: VIEW; Schema: public; Owner: adminstrategia
--

CREATE VIEW public.assessmentswithdemographicsvw AS
 SELECT c.idassessment,
    c.idassessmentresponse,
    c.comp_order,
    c.sect_order,
    c.question_order,
    c.idcomponent,
    c.comp_name,
    c.idsection,
    c.sect_name,
    c.quesionnbr,
    c.score,
    a.d1,
    a.d2,
    a.d3,
    a.d4,
    a.d5,
    a.d6,
    a.d7,
    a.d8,
    a.d9,
    a.d10,
    a.d13,
    a.d14,
    a.d16,
    a.d17,
    a.d18,
    a.d21,
    a.d22,
    a.d23,
    a.d24,
    a.d25,
    a.d26,
    a.d27,
    a.d28,
    a.d29,
    a.d30,
    a.d31,
    a.d32,
    a.d33,
    a.d34,
    a.d35,
    a.d36,
    a.d37,
    a.d38,
    a.d39,
    a.d40,
    a.d41,
    a.d42,
    a.d43,
    a.d44,
    a.d45,
    a.d46,
    a.d47,
    a.d48,
    a.d49,
    a.d50,
    a.d51,
    a.d52,
    a.d54,
    a.d56,
    b.t11,
    b.t12,
    b.t20
   FROM ((( SELECT a_1.idassessment,
            r.idassessmentresponse,
            c_1.weight AS comp_order,
            s.weight AS sect_order,
            atq.weight AS question_order,
            c_1.idcomponent,
            c_1.name AS comp_name,
            atq.idsection,
            s.name AS sect_name,
            atq.enumerator AS quesionnbr,
            ar.value AS score
           FROM (((((public.assessment a_1
             JOIN public.assessmentresponse r USING (idassessment))
             JOIN public.assessmentquestionresponse ar USING (idassessmentresponse))
             JOIN public.assessmenttypequestion atq USING (idassessmenttypequestion))
             JOIN public.section s USING (idsection))
             JOIN public.component c_1 USING (idcomponent))
          WHERE ((a_1.idassessmenttype >= 1) AND (a_1.idassessmenttype <= 6))) c
     LEFT JOIN ( SELECT ct.idassessmentresponse,
            ct.idassessment,
            ct.d1,
            ct.d2,
            ct.d3,
            ct.d4,
            ct.d5,
            ct.d6,
            ct.d7,
            ct.d8,
            ct.d9,
            ct.d10,
            ct.d13,
            ct.d14,
            ct.d16,
            ct.d17,
            ct.d18,
            ct.d21,
            ct.d22,
            ct.d23,
            ct.d24,
            ct.d25,
            ct.d26,
            ct.d27,
            ct.d28,
            ct.d29,
            ct.d30,
            ct.d31,
            ct.d32,
            ct.d33,
            ct.d34,
            ct.d35,
            ct.d36,
            ct.d37,
            ct.d38,
            ct.d39,
            ct.d40,
            ct.d41,
            ct.d42,
            ct.d43,
            ct.d44,
            ct.d45,
            ct.d46,
            ct.d47,
            ct.d48,
            ct.d49,
            ct.d50,
            ct.d51,
            ct.d52,
            ct.d54,
            ct.d56
           FROM public.crosstab('select idassessmentresponse, idassessment, crosstabcolname, iddemographicvalueset from  demographicsbyassessmentvw WHERE iddemographicvalueset IS NOT NULL order by idassessmentresponse, demographicquestion'::text, 'select unnest(array[''D1'',''D2'',''D3'',''D4'',''D5'',''D6'',''D7'',''D8'',''D9'',''D10'',''D13'',''D14'',''D16'',''D17'',''D18'',''D21'',''D22'',''D23'',''D24'',''D25'',''D26'',''D27'',''D28'',''D29'',''D30'',''D31'',''D32'',''D33'',''D34'',''D35'',''D36'',''D37'',''D38'',''D39'',''D40'',''D41'',''D42'',''D43'',''D44'',''D45'',''D46'',''D47'',''D48'',''D49'',''D50'',''D51'',''D52'',''D54'',''D56'']);'::text) ct(idassessmentresponse integer, idassessment integer, d1 integer, d2 integer, d3 integer, d4 integer, d5 integer, d6 integer, d7 integer, d8 integer, d9 integer, d10 integer, d13 integer, d14 integer, d16 integer, d17 integer, d18 integer, d21 integer, d22 integer, d23 integer, d24 integer, d25 integer, d26 integer, d27 integer, d28 integer, d29 integer, d30 integer, d31 integer, d32 integer, d33 integer, d34 integer, d35 integer, d36 integer, d37 integer, d38 integer, d39 integer, d40 integer, d41 integer, d42 integer, d43 integer, d44 integer, d45 integer, d46 integer, d47 integer, d48 integer, d49 integer, d50 integer, d51 integer, d52 integer, d54 integer, d56 integer)) a USING (idassessment, idassessmentresponse))
     LEFT JOIN ( SELECT ct.idassessmentresponse,
            ct.idassessment,
            ct.t11,
            ct.t12,
            ct.t20
           FROM public.crosstab('select idassessmentresponse, idassessment, crosstabcolname, rawtextvalue from  demographicsbyassessmentvw WHERE rawtextvalue IS NOT NULL order by idassessmentresponse, demographicquestion'::text, 'select unnest(array[''T11'',''T12'',''T20'']);'::text) ct(idassessmentresponse integer, idassessment integer, t11 text, t12 text, t20 text)) b USING (idassessmentresponse, idassessment));


ALTER TABLE public.assessmentswithdemographicsvw OWNER TO adminstrategia;

--
-- Name: assessmenttype_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.assessmenttype_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessmenttype_seq OWNER TO adminstrategia;

--
-- Name: assessmenttype; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmenttype (
    idassessmenttype integer DEFAULT nextval('public.assessmenttype_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    description text,
    introtitle text,
    intotext text,
    exittitle text,
    exittext text,
    startnewbtn integer DEFAULT 0,
    howtoread text,
    downloadreport integer DEFAULT 0,
    lang character varying
);


ALTER TABLE public.assessmenttype OWNER TO adminstrategia;

--
-- Name: assessmenttypedemographicquestion; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmenttypedemographicquestion (
    idassessmenttype integer NOT NULL,
    iddemographicquestion integer NOT NULL
);


ALTER TABLE public.assessmenttypedemographicquestion OWNER TO adminstrategia;

--
-- Name: assessmenttypequestioncategory_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.assessmenttypequestioncategory_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessmenttypequestioncategory_seq OWNER TO adminstrategia;

--
-- Name: assessmenttypequestioncategory; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmenttypequestioncategory (
    idassessmenttypequestioncategory integer DEFAULT nextval('public.assessmenttypequestioncategory_seq'::regclass) NOT NULL,
    name text,
    lang character varying
);


ALTER TABLE public.assessmenttypequestioncategory OWNER TO adminstrategia;

--
-- Name: assessmenttypequestiontext_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.assessmenttypequestiontext_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessmenttypequestiontext_seq OWNER TO adminstrategia;

--
-- Name: assessmenttypequestiontext; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmenttypequestiontext (
    idassessmenttypequestiontext integer DEFAULT nextval('public.assessmenttypequestiontext_seq'::regclass) NOT NULL,
    idassessmenttypequestion integer NOT NULL,
    idassessmenttypequestioncategory integer NOT NULL,
    question text,
    lang character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public.assessmenttypequestiontext OWNER TO adminstrategia;

--
-- Name: assessmenttypeslang_id_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.assessmenttypeslang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessmenttypeslang_id_seq OWNER TO adminstrategia;

--
-- Name: assessmenttypeslang; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmenttypeslang (
    id integer DEFAULT nextval('public.assessmenttypeslang_id_seq'::regclass) NOT NULL,
    name character varying(255),
    description text,
    introtitle text,
    introtext text,
    exittitle text,
    exittext text,
    howtoread text,
    lang character varying(15),
    idassessmenttype integer
);


ALTER TABLE public.assessmenttypeslang OWNER TO adminstrategia;

--
-- Name: assessmentvalueset; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.assessmentvalueset (
    assessmentvalue integer,
    reverse boolean DEFAULT false,
    assessmentvaluetext character varying(40),
    lang character varying
);


ALTER TABLE public.assessmentvalueset OWNER TO adminstrategia;

--
-- Name: client_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.client_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_seq OWNER TO adminstrategia;

--
-- Name: client; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.client (
    idclient integer DEFAULT nextval('public.client_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    phone character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    primarycontact character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.client OWNER TO adminstrategia;

--
-- Name: clientsdemographiccustomquestion_id_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.clientsdemographiccustomquestion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientsdemographiccustomquestion_id_seq OWNER TO adminstrategia;

--
-- Name: clientsdemographiccustomquestion; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.clientsdemographiccustomquestion (
    id integer DEFAULT nextval('public.clientsdemographiccustomquestion_id_seq'::regclass) NOT NULL,
    clientid integer,
    demographicquestionid integer
);


ALTER TABLE public.clientsdemographiccustomquestion OWNER TO adminstrategia;

--
-- Name: untitled_table_196_id_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.untitled_table_196_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.untitled_table_196_id_seq OWNER TO adminstrategia;

--
-- Name: clientsfilter; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.clientsfilter (
    id integer DEFAULT nextval('public.untitled_table_196_id_seq'::regclass) NOT NULL,
    idfilter integer,
    demographics json NOT NULL,
    scales json NOT NULL,
    idclient integer NOT NULL
);


ALTER TABLE public.clientsfilter OWNER TO adminstrategia;

--
-- Name: demographicquestion_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.demographicquestion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demographicquestion_seq OWNER TO adminstrategia;

--
-- Name: demographicquestion; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.demographicquestion (
    iddemographicquestion integer DEFAULT nextval('public.demographicquestion_seq'::regclass) NOT NULL,
    enumerator character varying(10) DEFAULT NULL::character varying,
    weight integer,
    type character varying(20) DEFAULT NULL::character varying,
    crosstabcolname character varying(3),
    family character varying(20),
    locked boolean DEFAULT true NOT NULL
);


ALTER TABLE public.demographicquestion OWNER TO adminstrategia;

--
-- Name: demographicquestiontext_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.demographicquestiontext_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demographicquestiontext_seq OWNER TO adminstrategia;

--
-- Name: demographicquestiontext; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.demographicquestiontext (
    iddemographicquestiontext integer DEFAULT nextval('public.demographicquestiontext_seq'::regclass) NOT NULL,
    iddemographicquestion integer NOT NULL,
    question text,
    label character varying(15),
    lang character varying(10) DEFAULT NULL::character varying,
    questionlang jsonb
);


ALTER TABLE public.demographicquestiontext OWNER TO adminstrategia;

--
-- Name: demographicvalueset_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.demographicvalueset_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demographicvalueset_seq OWNER TO adminstrategia;

--
-- Name: demographicvalueset; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.demographicvalueset (
    iddemographicvalueset integer DEFAULT nextval('public.demographicvalueset_seq'::regclass) NOT NULL,
    iddemographicquestiontext integer NOT NULL,
    weight integer,
    value character varying(255) DEFAULT NULL::character varying,
    hidden boolean DEFAULT false NOT NULL,
    lang jsonb
);


ALTER TABLE public.demographicvalueset OWNER TO adminstrategia;

--
-- Name: demgraphicgroups; Type: VIEW; Schema: public; Owner: adminstrategia
--

CREATE VIEW public.demgraphicgroups AS
 SELECT a.idassessment,
    dq.enumerator AS demographicgroup,
    dqt.label AS demographicgrouplabel,
    dvs.rangeids AS valueids,
    dvs.rangelabels AS valuelabels
   FROM ((((public.assessment a
     JOIN public.assessmentdemographicquestion adq USING (idassessment))
     JOIN public.demographicquestion dq USING (iddemographicquestion))
     JOIN public.demographicquestiontext dqt USING (iddemographicquestion))
     JOIN ( SELECT dvs_1.iddemographicquestiontext,
            json_agg(dvs_1.iddemographicvalueset) AS rangeids,
            json_agg(dvs_1.value) AS rangelabels
           FROM public.demographicvalueset dvs_1
          GROUP BY dvs_1.iddemographicquestiontext) dvs USING (iddemographicquestiontext));


ALTER TABLE public.demgraphicgroups OWNER TO adminstrategia;

--
-- Name: demographicgroups; Type: VIEW; Schema: public; Owner: adminstrategia
--

CREATE VIEW public.demographicgroups AS
 SELECT a.idassessment,
    dq.crosstabcolname AS demographicgroup,
    dq.weight,
    dqt.label AS demographicgrouplabel,
    dvs.rangeids AS valueids,
    dvs.rangelabels AS valuelabels,
    dvs.rangeweights AS valueweights,
    dqt.question,
    dqt.label,
    dqt.iddemographicquestion,
    dqt.lang
   FROM ((((public.assessment a
     JOIN public.assessmentdemographicquestion adq USING (idassessment))
     JOIN public.demographicquestion dq USING (iddemographicquestion))
     JOIN public.demographicquestiontext dqt USING (iddemographicquestion))
     JOIN ( SELECT dvs_1.iddemographicquestiontext,
            json_agg(dvs_1.iddemographicvalueset ORDER BY dvs_1.weight) AS rangeids,
            json_agg(dvs_1.value ORDER BY dvs_1.weight) AS rangelabels,
            json_agg(dvs_1.weight ORDER BY dvs_1.weight) AS rangeweights
           FROM public.demographicvalueset dvs_1
          GROUP BY dvs_1.iddemographicquestiontext) dvs USING (iddemographicquestiontext));


ALTER TABLE public.demographicgroups OWNER TO adminstrategia;

--
-- Name: demographicquestionresponse_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.demographicquestionresponse_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demographicquestionresponse_seq OWNER TO adminstrategia;

--
-- Name: demographicquestionresponse; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.demographicquestionresponse (
    iddemographicquestionresponse integer DEFAULT nextval('public.demographicquestionresponse_seq'::regclass) NOT NULL,
    iddemographicquestion integer NOT NULL,
    idassessmentresponse integer NOT NULL,
    iddemographicvalueset integer,
    rawtextvalue text DEFAULT NULL::character varying
);


ALTER TABLE public.demographicquestionresponse OWNER TO adminstrategia;

--
-- Name: demographicgroupsalt; Type: VIEW; Schema: public; Owner: adminstrategia
--

CREATE VIEW public.demographicgroupsalt AS
 SELECT a.idassessment,
    dq.crosstabcolname AS demographicgroup,
    dq.weight,
    dqt.label AS demographicgrouplabel,
    dvs.groupvalues
   FROM ((((public.assessment a
     JOIN public.assessmentdemographicquestion adq USING (idassessment))
     JOIN public.demographicquestion dq USING (iddemographicquestion))
     JOIN public.demographicquestiontext dqt USING (iddemographicquestion))
     JOIN ( SELECT dvs_1.iddemographicquestiontext,
            json_agg(json_build_object('id', dvs_1.iddemographicvalueset, 'label', dvs_1.value, 'weight', dvs_1.weight)) AS groupvalues
           FROM public.demographicvalueset dvs_1
          GROUP BY dvs_1.iddemographicquestiontext) dvs USING (iddemographicquestiontext))
  WHERE ((dq.type)::text <> 'textbox'::text)
UNION ALL
 SELECT ar.idassessment,
    dq.crosstabcolname AS demographicgroup,
    dq.weight,
    dqt.label AS demographicgrouplabel,
    json_agg(DISTINCT dqr.rawtextvalue ORDER BY dqr.rawtextvalue) AS groupvalues
   FROM (((public.demographicquestionresponse dqr
     JOIN public.assessmentresponse ar USING (idassessmentresponse))
     JOIN public.demographicquestion dq USING (iddemographicquestion))
     JOIN public.demographicquestiontext dqt USING (iddemographicquestion))
  WHERE ((dq.type)::text = 'textbox'::text)
  GROUP BY ar.idassessment, dq.crosstabcolname, dq.weight, dqt.label;


ALTER TABLE public.demographicgroupsalt OWNER TO adminstrategia;

--
-- Name: demographicsbyassessmentvw; Type: VIEW; Schema: public; Owner: adminstrategia
--

CREATE VIEW public.demographicsbyassessmentvw AS
 SELECT assessmentresponse.idassessment,
    dqr.idassessmentresponse,
    dq.enumerator AS demographicquestion,
    dq.crosstabcolname,
    dqr.iddemographicvalueset,
    dqr.rawtextvalue
   FROM (((public.demographicquestion dq
     JOIN public.demographicquestiontext dqt USING (iddemographicquestion))
     LEFT JOIN public.demographicquestionresponse dqr USING (iddemographicquestion))
     JOIN public.assessmentresponse USING (idassessmentresponse));


ALTER TABLE public.demographicsbyassessmentvw OWNER TO adminstrategia;

--
-- Name: filter_id_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filter_id_seq OWNER TO adminstrategia;

--
-- Name: filter; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.filter (
    id integer DEFAULT nextval('public.filter_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    state character varying(255)
);


ALTER TABLE public.filter OWNER TO adminstrategia;

--
-- Name: getdemographictab; Type: VIEW; Schema: public; Owner: adminstrategia
--

CREATE VIEW public.getdemographictab AS
 SELECT b.idassessment,
    (((('WITH DEOGRAPHICSVW AS (SELECT a.idassessmentresponse '::text || b.fieldsel) || ' from assessmentresponse a '::text) || b.fieldjoin) || ')'::text) AS deographicsvw,
    b.demoflds AS demographicscolumns
   FROM ( SELECT a.idassessment,
            string_agg(a.demoflds, ' '::text) AS demoflds,
            string_agg(a.fieldsel, ' '::text) AS fieldsel,
            string_agg(a.fieldjoin, ' '::text) AS fieldjoin
           FROM ( SELECT a_1.idassessment,
                    q.iddemographicquestion,
                    t.label,
                    ((',d."'::text || (t.label)::text) || '"'::text) AS demoflds,
                    ((((', r'::text || q.iddemographicquestion) || '.value as "'::text) || (t.label)::text) || '"'::text) AS fieldsel,
                    (((((('left join (Select r.idassessmentresponse, s.value FROM demographicquestionresponse r inner join demographicquestiontext t on t.iddemographicquestion=r.iddemographicquestion inner join demographicvalueset s on s.iddemographicvalueset=r.iddemographicvalueset AND s.iddemographicquestiontext=t.iddemographicquestiontext where r.iddemographicquestion='::text || q.iddemographicquestion) || ') r'::text) || q.iddemographicquestion) || ' on r'::text) || q.iddemographicquestion) || '.idassessmentresponse=a.idassessmentresponse'::text) AS fieldjoin
                   FROM ((public.assessmentdemographicquestion a_1
                     JOIN public.demographicquestion q ON ((q.iddemographicquestion = a_1.iddemographicquestion)))
                     JOIN public.demographicquestiontext t ON ((t.iddemographicquestion = q.iddemographicquestion)))
                  ORDER BY q.weight) a
          GROUP BY a.idassessment) b;


ALTER TABLE public.getdemographictab OWNER TO adminstrategia;

--
-- Name: oldassessmentsresponse; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.oldassessmentsresponse (
    idassessmentquestionresponse integer NOT NULL,
    reverse boolean NOT NULL,
    value integer NOT NULL,
    originalvalue integer NOT NULL
);


ALTER TABLE public.oldassessmentsresponse OWNER TO adminstrategia;

--
-- Name: people_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.people_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_seq OWNER TO adminstrategia;

--
-- Name: people; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.people (
    idpeople integer DEFAULT nextval('public.people_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    lastname character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    passhash character(100) DEFAULT NULL::bpchar,
    salt character(50) DEFAULT NULL::bpchar,
    state character varying(255) DEFAULT 'active'::character varying NOT NULL,
    isadmin boolean DEFAULT false NOT NULL
);


ALTER TABLE public.people OWNER TO adminstrategia;

--
-- Name: peoplecode_id_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.peoplecode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.peoplecode_id_seq OWNER TO adminstrategia;

--
-- Name: peoplecode; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.peoplecode (
    idcode integer DEFAULT nextval('public.peoplecode_id_seq'::regclass) NOT NULL,
    idpeople integer NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    codehash character varying NOT NULL,
    state character varying(255) DEFAULT 'unconfirmed'::character varying NOT NULL,
    isadmin boolean DEFAULT false NOT NULL
);


ALTER TABLE public.peoplecode OWNER TO adminstrategia;

--
-- Name: peoplerole; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.peoplerole (
    idpeople integer NOT NULL,
    idrole integer NOT NULL,
    idclient integer NOT NULL
);


ALTER TABLE public.peoplerole OWNER TO adminstrategia;

--
-- Name: permission_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_seq OWNER TO adminstrategia;

--
-- Name: permission; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.permission (
    idpermission integer DEFAULT nextval('public.permission_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    machinename character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.permission OWNER TO adminstrategia;

--
-- Name: project_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.project_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_seq OWNER TO adminstrategia;

--
-- Name: project; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.project (
    idproject integer DEFAULT nextval('public.project_seq'::regclass) NOT NULL,
    idclient integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    primarycontact integer,
    status integer
);


ALTER TABLE public.project OWNER TO adminstrategia;

--
-- Name: role_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_seq OWNER TO adminstrategia;

--
-- Name: role; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.role (
    idrole integer DEFAULT nextval('public.role_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.role OWNER TO adminstrategia;

--
-- Name: slcqanswer; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.slcqanswer (
    idslcqanswer integer NOT NULL,
    answer text,
    enumerator integer,
    reversed boolean,
    lang text
);


ALTER TABLE public.slcqanswer OWNER TO adminstrategia;

--
-- Name: slcqassessmentquestionresponse_seq; Type: SEQUENCE; Schema: public; Owner: adminstrategia
--

CREATE SEQUENCE public.slcqassessmentquestionresponse_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.slcqassessmentquestionresponse_seq OWNER TO adminstrategia;

--
-- Name: slcqassessmentquestionresponse; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.slcqassessmentquestionresponse (
    idslcqassessmentquestionresponse integer DEFAULT nextval('public.slcqassessmentquestionresponse_seq'::regclass) NOT NULL,
    idassessmentresponse integer,
    idslcqquestion integer,
    value integer
);


ALTER TABLE public.slcqassessmentquestionresponse OWNER TO adminstrategia;

--
-- Name: slcqquadrant; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.slcqquadrant (
    idslcqquadrant integer NOT NULL,
    quadrantname text,
    quadrantphrase1 text,
    quadrantphrase2 text,
    idslcqscaleyaxis integer,
    idslcqscalexaxis integer,
    q1line1 text,
    q1line2 text,
    q2line1 text,
    q2line2 text,
    q3line1 text,
    q3line2 text,
    q4line1 text,
    q4line2 text,
    "order" integer,
    lang text
);


ALTER TABLE public.slcqquadrant OWNER TO adminstrategia;

--
-- Name: slcqquestion; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.slcqquestion (
    idslcqquestion integer NOT NULL,
    idslcqscale integer,
    questiontext text,
    enumerator integer,
    reversed boolean,
    lang text
);


ALTER TABLE public.slcqquestion OWNER TO adminstrategia;

--
-- Name: slcqscale; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.slcqscale (
    idslcqscale integer NOT NULL,
    sectionname text,
    scalename text,
    "left" text,
    "right" text,
    "order" integer,
    lang text
);


ALTER TABLE public.slcqscale OWNER TO adminstrategia;

--
-- Name: systemtranslate; Type: TABLE; Schema: public; Owner: adminstrategia
--

CREATE TABLE public.systemtranslate (
    lang character varying(100) DEFAULT NULL::character varying,
    label character varying(100) DEFAULT NULL::character varying,
    prefix character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public.systemtranslate OWNER TO adminstrategia;
