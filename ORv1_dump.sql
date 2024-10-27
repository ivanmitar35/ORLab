--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: gradskacetvrt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gradskacetvrt (
    id integer NOT NULL,
    naziv character varying(255) NOT NULL
);


ALTER TABLE public.gradskacetvrt OWNER TO postgres;

--
-- Name: gradskacetvrt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gradskacetvrt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gradskacetvrt_id_seq OWNER TO postgres;

--
-- Name: gradskacetvrt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gradskacetvrt_id_seq OWNED BY public.gradskacetvrt.id;


--
-- Name: vatrogasnodrustvo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vatrogasnodrustvo (
    id integer NOT NULL,
    naziv character varying(255) NOT NULL,
    adresa character varying(255),
    telefon character varying(50),
    fax character varying(50),
    email character varying(255),
    web character varying(255),
    nadlezan character varying(255),
    izvor character varying(255),
    izradio character varying(255),
    x numeric(15,10),
    y numeric(15,10),
    gradskacetvrtid integer
);


ALTER TABLE public.vatrogasnodrustvo OWNER TO postgres;

--
-- Name: vatrogasnodrustvo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vatrogasnodrustvo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vatrogasnodrustvo_id_seq OWNER TO postgres;

--
-- Name: vatrogasnodrustvo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vatrogasnodrustvo_id_seq OWNED BY public.vatrogasnodrustvo.id;


--
-- Name: gradskacetvrt id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gradskacetvrt ALTER COLUMN id SET DEFAULT nextval('public.gradskacetvrt_id_seq'::regclass);


--
-- Name: vatrogasnodrustvo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatrogasnodrustvo ALTER COLUMN id SET DEFAULT nextval('public.vatrogasnodrustvo_id_seq'::regclass);


--
-- Data for Name: gradskacetvrt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gradskacetvrt (id, naziv) FROM stdin;
1	Brezovica
2	Novi Zagreb - zapad
3	Novi Zagreb - istok
4	Tresnjevka - jug
5	Pescenica - Zitnjak
6	Tresnjevka - sjever
7	Trnje
8	Donji Grad
9	Stenjevec
10	Podsused - Vrapce
11	Sesvete
12	Crnomerec
13	Maksimir
14	Donja Dubrava
15	Gornji Grad - Medvescak
16	Gornja Dubrava
17	Podsljeme
\.


--
-- Data for Name: vatrogasnodrustvo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vatrogasnodrustvo (id, naziv, adresa, telefon, fax, email, web, nadlezan, izvor, izradio, x, y, gradskacetvrtid) FROM stdin;
1	DVD Lipnica	Lipnicka cesta 36, Lipnica	01 6250 338	None	lipnica@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9218054550	45.6306730960	1
2	DVD Dragonozec	Donjodragonoska cesta 30, Donji Dragonozec	01 6215 276	None	dragonozec@vzgz.hr	https://dvd-dragonozec.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9446826690	45.6642507580	1
3	DVD Trupci	Trpucanska cesta 28, Donji Trpuci	01 6213 663	None	trpuci@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9289847730	45.6673320970	1
4	DVD Kupinecki Kraljevec	Maticki 27, Kupinecki Kraljevec	01 6587 778	None	kupinecki-kraljevec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.8362343170	45.6881871030	1
5	DVD Horvati	Horvacanski trg 2, Horvati	01 6539 191	None	horvati@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.8182832260	45.7126469270	1
6	DVD Odranski Obrez	Obreska cesta 119, Odranski Obrez	01 6537 631	None	odranski-obrez@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9426685430	45.7159531930	1
7	DVD Brezovica	Brezovicka cesta 100, Brezovica	01 6538 602	01 653 8602	brezovica@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9075865190	45.7243343990	1
8	DVD Mala Mlaka	Malomlacka ulica 91, Mala Mlaka	01 6233 550	None	mala-mlaka@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9771972510	45.7288180310	2
9	DVD Odra	Odranska ulica 82A, Odra	01 6262 600	None	odra@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9944739130	45.7302360460	2
10	DVD Hrasce	Trg Jurja Muliha 8, Hrasce Turopoljsko	01 6261 033	None	hrasce@vzgz.hrNULL	www.dvd-hrasce.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0040836210	45.7307099800	2
11	DVD Botinec	Ulica Zlatarova zlata 79	01 6524 681	None	botinec@vzgz.hr	http://www.dvdbotinec.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9375281960	45.7528788650	2
12	DVD Sveta Klara	Mrksina ulica 38	01 6570 374	None	sveta-klara@vzgz.hr	http://dvd-svetaklara.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9711495920	45.7567982800	2
13	DVD Blato	Karlovacka cesta 195B	01 6140 886	01 614 0886	blato@vzgz.hr	http://www.dvdblato-zagreb.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9119551290	45.7594054170	2
14	Vatrogasna postaja Novi Zagreb	Ulica Radoslava Cimermana 84	01 4896 140	None	postaja.novi-zagreb@vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9649821680	45.7793228350	2
15	DVD Buzin	Buzinska Cesta 20, Buzin	01 6608 461	None	buzin@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9943232780	45.7515231760	3
16	DVD Jakusevec	Gata 1	01 6609 532	None	jakusevec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0158031330	45.7608063710	3
17	DVD Hrelic	Ulica sv. Mateja 91	01 6602 695	01 660 2695	hrelic@vzgz.hr	http://www.dvd-hrelic.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0013317370	45.7639506640	3
18	DVD Jarun	Ulica don Petra Simica 2	01 3832 356	None	jarun@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9279419510	45.7869439310	4
19	Vatrogasna zajednica Grada Zagreba	Nasicka ulica 14	01 4628 720	01 467 7969	vzgz@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9321459870	45.7910818420	4
20	DVD Precko	Jarnoviceva ulica 19	01 3865 010	None	precko@vzgz.hr	www.dvdprecko.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.8980507320	45.7916849090	4
21	Vatrogasna postaja Zitnjak	Capraska ulica 2	01 4896 120	None	postaja.zitnjak @vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0150444580	45.7950817680	5
22	DVD Ivanja Reka	Ivanjorecka cesta 5, Ivanja Reka	01 2024 570	None	ivanja-rijeka@vzgz.hr	http://dvdivanjarijeka.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1190816280	45.7980910530	5
23	DVD Resnik - Zagreb	I. Resnik 48	01 2024 444	01 202 4444	resnik@vzgz.hr	http://www.dvd-resnik-zagreb.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0815218230	45.8029493050	5
24	DVD Tresnjevka	Selska cesta 116	01 3634 052	None	tresnjevka@vzgz.hr	http://www.dvdtresnjevka.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9429994570	45.7979135370	6
25	DVD Trnje	Ulica Pere Budmanija 9	01 6184 524	None	trnje@vzgz.hr	https://dvdtrnje.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0006568990	45.8022276210	7
26	Vatrogasna postaja Centar	Savska cesta 1/3	01 4896 111	01 489 6176	postaja.centar@vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9685584700	45.8066139380	8
27	DVD Zapad (Vrapce Jug)	Medarska ulica 80	01 3886 089	None	zapad@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9107907720	45.8075604870	9
28	Vatrogasna postaja Jankomir	Jankomir 2	01 4896 130	None	postaja.jankomir@vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.8787447810	45.8107744210	9
29	DVD Vrapce	Ilica 421/2	01 3456 577	None	vrapce@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9057032010	45.8125858620	10
30	DVD Sesvetski Kraljevec	Zeljeznicka ulica 13, Sesvete	01 2046 569	None	sesvetski-kraljevec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1740992350	45.8142838810	11
31	DVD Sesvetska Selnica	Selnicka ulica 69, Sesvete	01 2005 010	None	sesvetska-selnica@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1340127420	45.8166244410	11
32	DVD Kobiljak	Kobiljacka ulica 75, Sesvete	01 2046 156	None	kobiljak@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1613352730	45.8221416410	11
33	DVD Sesvete	Varazdinska cesta 42, Sesvete	01 2000 125	01 200 0125	sesvete@vzgz.hr	http://www.dvd-sesvete.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1164355220	45.8303668210	11
34	DVD Glavnicica	Glavnicica 6	01 2008 528	None	glavnicica@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.2120627760	45.8474872930	11
35	DVD Sasinovec	Ulica Ivana Grande 75, Sasinovec	01 2056 560	None	sasinovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1653705720	45.8500049340	11
36	DVD Vugrovec	Ulica Augusta Senoe 49, Vugrovec	01 2045 136	None	vugrovec-donji@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1088742850	45.8805239790	11
37	DVD Belovar	Varazdinska ulica 36, Belovar	01 2042 422	None	belovar@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1754028270	45.8822678960	11
38	DVD Luzan	Augusta Senoe 46, Luzan	01 2043 310	None	luzan@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1960520880	45.8857453920	11
39	DVD Adamovec	Ulica Dragutina M. Domjanica 56, Adamovec	None	None	adamovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1635472840	45.9042320090	11
40	DVD Kasina	Cesta Ivana Mazuranica 18A	01 2056 126	None	kasina@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1255944710	45.9057886340	11
41	DVD Kucilovina	Kucilovecka cesta 52, Kucilovina	01 2044 792	01 204 4792	kucilovina@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0917296800	45.9126141910	11
42	DVD Kasina Gornja	Cesta Ivana Mazuranica 152, Kasina	01 2056 154	None	kasina-gornja@vzgz.hr	www.dvdkg.com	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1192844910	45.9234551820	11
43	DVD Planina Donja	Ulica 9. maja 1, Planina Donja	01 2007 650	None	planina-donja@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0908818480	45.9265638340	11
44	DVD Blagusa	Blaguska ulica 63, Blagusa	01 2004 897	None	blagusa@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1300816650	45.9289583160	11
45	DVD Moravce	Prigorska ulica 88, Moravce	01 2043 144	01 204 3144	moravce@vzgz.hr	www.dvdmoravce.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1677035820	45.9360365490	11
46	DVD Planina Gornja	Sesvetska ulica 19, Planina Gornja	01 2055 481	None	planina-gornja@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0793118980	45.9372590330	11
47	DVD Cerje	Podolnica 15, Cerje	01 2009 695	None	cerje@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.1892796310	45.8301286150	11
48	DVD Crnomerec	Ilica 259	01 3750 014	None	crnomerec@vzgz.hr	http://dvd-crnomerec.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9316855540	45.8142450010	12
49	DVD Kustosija	Ilica 259	01 3750 006	None	kustosija@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9316855540	45.8142450010	12
50	DVD Bijenik	Bijenik 162	01 3738 452	None	bijenik@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9388400500	45.8469353580	12
51	DVD Maksimir	Maksimirska cesta 51A	01 2312 016	01 231 2016	maksimir@vzgz.hr	http://dvd-maksimir.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0030829170	45.8167591860	13
52	DVD Bukovac	IX. Bukovacki ogranak 2	01 2341 178	01 234 1178	bukovac@vzgz.hr	http://www.dvd-bukovac.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0069659390	45.8434326210	13
53	DVD Dubrava	Vrpoljska ulica 10	01 2995 095	None	dubrava@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0530603140	45.8282879730	14
54	DVD Zagreb	Mlinarska cesta 42	01 4677 970	None	zagreb@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9779988690	45.8286022690	15
55	Vatrogasna postaja Dubrava	Klin 19	01 4896 150	None	postaja.dubrava@vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0630378590	45.8312277640	16
56	DVD Granesina	Granesina 18	01 2984 077	None	granesina@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0542464900	45.8487631150	16
57	DVD Granesinski Novaki	Novacka ulica 200	01 2912 337	None	granesinski-novaki@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0351269700	45.8510369990	16
58	DVD Branovec	Branovecka cesta 94	01 2985 387	None	branovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0744642550	45.8571070920	16
59	DVD Mirosevac	Mirosevecka cesta 131	01 2980 339	None	mirosevac@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0365362100	45.8679230060	16
60	DVD Dankovec	Copci 32	01 2984 075	None	dankovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0535701200	45.8730143290	16
61	DVD Cucerje	Talani Cucerski 1	01 2986 539	None	cucerje@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0584958120	45.8937616020	16
62	DVD Sestine	Sestinski vijenac 2	01 4674 211	None	sestine@vzgz.hr	http://www.dvd-sestine.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9499580690	45.8522221440	17
63	DVD Gracani	Gracanski Mihaljevac 3	01 4674 029	01 467 4029	gracani@vzgz.hr	http://dvdgracani.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	15.9737853570	45.8537915660	17
64	DVD Vidovec	Vidovec 111	01 2980 902	None	vidovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekolosku odrzivost i strategijsko planiranje	16.0358849200	45.9021551440	17
\.


--
-- Name: gradskacetvrt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gradskacetvrt_id_seq', 17, true);


--
-- Name: vatrogasnodrustvo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vatrogasnodrustvo_id_seq', 64, true);


--
-- Name: gradskacetvrt gradskacetvrt_naziv_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gradskacetvrt
    ADD CONSTRAINT gradskacetvrt_naziv_key UNIQUE (naziv);


--
-- Name: gradskacetvrt gradskacetvrt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gradskacetvrt
    ADD CONSTRAINT gradskacetvrt_pkey PRIMARY KEY (id);


--
-- Name: vatrogasnodrustvo vatrogasnodrustvo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatrogasnodrustvo
    ADD CONSTRAINT vatrogasnodrustvo_pkey PRIMARY KEY (id);


--
-- Name: vatrogasnodrustvo vatrogasnodrustvo_gradskacetvrtid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatrogasnodrustvo
    ADD CONSTRAINT vatrogasnodrustvo_gradskacetvrtid_fkey FOREIGN KEY (gradskacetvrtid) REFERENCES public.gradskacetvrt(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

