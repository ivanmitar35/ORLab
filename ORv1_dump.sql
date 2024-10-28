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
    x numeric(18,15),
    y numeric(17,15),
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
4	Trešnjevka - jug
5	Peščenica - Žitnjak
6	Trešnjevka - sjever
7	Trnje
8	Donji Grad
9	Stenjevec
10	Podsused - Vrapče
11	Sesvete
12	Črnomerec
13	Maksimir
14	Donja Dubrava
15	Gornji Grad - Medveščak
16	Gornja Dubrava
17	Podsljeme
\.


--
-- Data for Name: vatrogasnodrustvo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vatrogasnodrustvo (id, naziv, adresa, telefon, fax, email, web, nadlezan, izvor, izradio, x, y, gradskacetvrtid) FROM stdin;
1	DVD Lipnica	Lipnička cesta 36, Lipnica	01 6250 338	None	lipnica@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.921805455000026	45.630673096000066	1
2	DVD Dragonožec	Donjodragonoška cesta 30, Donji Dragonožec	01 6215 276	None	dragonozec@vzgz.hr	https://dvd-dragonozec.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.944682669000030	45.664250758000040	1
3	DVD Trupci	Trpučanska cesta 28, Donji Trpuci	01 6213 663	None	trpuci@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.928984773000025	45.667332097000040	1
4	DVD Kupinečki Kraljevec	Matički 27, Kupinečki Kraljevec	01 6587 778	None	kupinecki-kraljevec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.836234317000049	45.688187103000075	1
5	DVD Horvati	Horvaćanski trg 2, Horvati	01 6539 191	None	horvati@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.818283226000062	45.712646927000040	1
6	DVD Odranski Obrež	Obreška cesta 119, Odranski Obrež	01 6537 631	None	odranski-obrez@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.942668543000025	45.715953193000075	1
7	DVD Brezovica	Brezovička cesta 100, Brezovica	01 6538 602	01 653 8602	brezovica@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.907586519000063	45.724334399000040	1
8	DVD Mala Mlaka	Malomlačka ulica 91, Mala Mlaka	01 6233 550	None	mala-mlaka@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.977197251000064	45.728818031000060	2
9	DVD Odra	Odranska ulica 82A, Odra	01 6262 600	None	odra@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.994473913000036	45.730236046000070	2
10	DVD Hrašće	Trg Jurja Muliha 8, Hrašće Turopoljsko	01 6261 033	None	hrasce@vzgz.hrNULL	www.dvd-hrasce.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.004083621000063	45.730709980000030	2
11	DVD Botinec	Ulica Zlatarova zlata 79	01 6524 681	None	botinec@vzgz.hr	http://www.dvdbotinec.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.937528196000073	45.752878865000070	2
12	DVD Sveta Klara	Mrkšina ulica 38	01 6570 374	None	sveta-klara@vzgz.hr	http://dvd-svetaklara.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.971149592000074	45.756798280000055	2
13	DVD Blato	Karlovačka cesta 195B	01 6140 886	01 614 0886	blato@vzgz.hr	http://www.dvdblato-zagreb.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.911955129000035	45.759405417000040	2
14	Vatrogasna postaja Novi Zagreb	Ulica Radoslava Cimermana 84	01 4896 140	None	postaja.novi-zagreb@vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.964982168000063	45.779322835000070	2
15	DVD Buzin	Buzinska Cesta 20, Buzin	01 6608 461	None	buzin@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.994323278000024	45.751523176000035	3
16	DVD Jakuševec	Gata 1	01 6609 532	None	jakusevec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.015803133000077	45.760806371000060	3
17	DVD Hrelić	Ulica sv. Mateja 91	01 6602 695	01 660 2695	hrelic@vzgz.hr	http://www.dvd-hrelic.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.001331737000044	45.763950664000050	3
18	DVD Jarun	Ulica don Petra Šimića 2	01 3832 356	None	jarun@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.927941951000037	45.786943931000050	4
19	Vatrogasna zajednica Grada Zagreba	Našička ulica 14	01 4628 720	01 467 7969	vzgz@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.932145987000070	45.791081842000040	4
20	DVD Prečko	Jarnovićeva ulica 19	01 3865 010	None	precko@vzgz.hr	www.dvdprecko.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.898050732000058	45.791684909000026	4
21	Vatrogasna postaja Žitnjak	Capraška ulica 2	01 4896 120	None	postaja.zitnjak @vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.015044458000034	45.795081768000045	5
22	DVD Ivanja Reka	Ivanjorečka cesta 5, Ivanja Reka	01 2024 570	None	ivanja-rijeka@vzgz.hr	http://dvdivanjarijeka.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.119081628000060	45.798091053000064	5
23	DVD Resnik - Zagreb	I. Resnik 48	01 2024 444	01 202 4444	resnik@vzgz.hr	http://www.dvd-resnik-zagreb.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.081521823000060	45.802949305000030	5
24	DVD Trešnjevka	Selska cesta 116	01 3634 052	None	tresnjevka@vzgz.hr	http://www.dvdtresnjevka.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.942999457000042	45.797913537000056	6
25	DVD Trnje	Ulica Pere Budmanija 9	01 6184 524	None	trnje@vzgz.hr	https://dvdtrnje.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.000656899000035	45.802227621000040	7
26	Vatrogasna postaja Centar	Savska cesta 1/3	01 4896 111	01 489 6176	postaja.centar@vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.968558470000062	45.806613938000055	8
27	DVD Zapad (Vrapče Jug)	Medarska ulica 80	01 3886 089	None	zapad@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.910790772000041	45.807560487000046	9
28	Vatrogasna postaja Jankomir	Jankomir 2	01 4896 130	None	postaja.jankomir@vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.878744781000023	45.810774421000076	9
29	DVD Vrapče	Ilica 421/2	01 3456 577	None	vrapce@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.905703201000051	45.812585862000050	10
30	DVD Sesvetski Kraljevec	Željeznička ulica 13, Sesvete	01 2046 569	None	sesvetski-kraljevec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.174099235000030	45.814283881000050	11
31	DVD Sesvetska Selnica	Selnička ulica 69, Sesvete	01 2005 010	None	sesvetska-selnica@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.134012742000040	45.816624441000044	11
32	DVD Kobiljak	Kobiljačka ulica 75, Sesvete	01 2046 156	None	kobiljak@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.161335273000077	45.822141641000030	11
33	DVD Sesvete	Varaždinska cesta 42, Sesvete	01 2000 125	01 200 0125	sesvete@vzgz.hr	http://www.dvd-sesvete.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.116435522000074	45.830366821000040	11
34	DVD Glavničica	Glavničica 6	01 2008 528	None	glavnicica@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.212062776000040	45.847487293000030	11
35	DVD Šašinovec	Ulica Ivana Granđe 75, Šašinovec	01 2056 560	None	sasinovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.165370572000030	45.850004934000026	11
36	DVD Vugrovec	Ulica Augusta Šenoe 49, Vugrovec	01 2045 136	None	vugrovec-donji@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.108874285000070	45.880523979000030	11
37	DVD Belovar	Varaždinska ulica 36, Belovar	01 2042 422	None	belovar@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.175402827000028	45.882267896000030	11
38	DVD Lužan	Augusta Šenoe 46, Lužan	01 2043 310	None	luzan@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.196052088000044	45.885745392000050	11
39	DVD Adamovec	Ulica Dragutina M. Domjanića 56, Adamovec	None	None	adamovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.163547284000060	45.904232009000054	11
40	DVD Kašina	Cesta Ivana Mažuranića 18A	01 2056 126	None	kasina@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.125594471000056	45.905788634000030	11
41	DVD Kučilovina	Kučilovečka cesta 52, Kučilovina	01 2044 792	01 204 4792	kucilovina@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.091729680000070	45.912614191000046	11
42	DVD Kašina Gornja	Cesta Ivana Mažuranića 152, Kašina	01 2056 154	None	kasina-gornja@vzgz.hr	www.dvdkg.com	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.119284491000030	45.923455182000055	11
43	DVD Planina Donja	Ulica 9. maja 1, Planina Donja	01 2007 650	None	planina-donja@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.090881848000038	45.926563834000035	11
44	DVD Blaguša	Blaguška ulica 63, Blaguša	01 2004 897	None	blagusa@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.130081665000034	45.928958316000035	11
45	DVD Moravče	Prigorska ulica 88, Moravče	01 2043 144	01 204 3144	moravce@vzgz.hr	www.dvdmoravce.hr	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.167703582000060	45.936036549000050	11
46	DVD Planina Gornja	Sesvetska ulica 19, Planina Gornja	01 2055 481	None	planina-gornja@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.079311898000070	45.937259033000030	11
47	DVD Cerje	Podolnica 15, Cerje	01 2009 695	None	cerje@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.189279631000034	45.830128615000035	11
48	DVD Črnomerec	Ilica 259	01 3750 014	None	crnomerec@vzgz.hr	http://dvd-crnomerec.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.931685554000069	45.814245001000074	12
49	DVD Kustošija	Ilica 259	01 3750 006	None	kustosija@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.931685554000069	45.814245001000074	12
50	DVD Bijenik	Bijenik 162	01 3738 452	None	bijenik@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.938840050000067	45.846935358000050	12
51	DVD Maksimir	Maksimirska cesta 51A	01 2312 016	01 231 2016	maksimir@vzgz.hr	http://dvd-maksimir.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.003082917000030	45.816759186000070	13
52	DVD Bukovac	IX. Bukovački ogranak 2	01 2341 178	01 234 1178	bukovac@vzgz.hr	http://www.dvd-bukovac.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.006965939000054	45.843432621000034	13
53	DVD Dubrava	Vrpoljska ulica 10	01 2995 095	None	dubrava@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.053060314000050	45.828287973000045	14
54	DVD Zagreb	Mlinarska cesta 42	01 4677 970	None	zagreb@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.977998869000032	45.828602269000044	15
55	Vatrogasna postaja Dubrava	Klin 19	01 4896 150	None	postaja.dubrava@vatrogasci-zagreb.hr	https://vatrogasci.zagreb.hr/	Ministarstvo unutarnjih poslova	Javna vatrogasna postrojba Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.063037859000076	45.831227764000060	16
56	DVD Granešina	Granešina 18	01 2984 077	None	granesina@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.054246490000025	45.848763115000054	16
57	DVD Granešinski Novaki	Novačka ulica 200	01 2912 337	None	granesinski-novaki@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.035126970000020	45.851036999000030	16
58	DVD Branovec	Branovečka cesta 94	01 2985 387	None	branovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.074464255000066	45.857107092000035	16
59	DVD Miroševac	Miroševečka cesta 131	01 2980 339	None	mirosevac@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.036536210000065	45.867923006000070	16
60	DVD Dankovec	Čopci 32	01 2984 075	None	dankovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.053570120000074	45.873014329000060	16
61	DVD Čučerje	Talani Čučerski 1	01 2986 539	None	cucerje@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.058495812000046	45.893761602000040	16
62	DVD Šestine	Šestinski vijenac 2	01 4674 211	None	sestine@vzgz.hr	http://www.dvd-sestine.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.949958069000047	45.852222144000050	17
63	DVD Gračani	Gračanski Mihaljevac 3	01 4674 029	01 467 4029	gracani@vzgz.hr	http://dvdgracani.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	15.973785357000054	45.853791566000040	17
64	DVD Vidovec	Vidovec 111	01 2980 902	None	vidovec@vzgz.hr	http://www.vzgz.hr/	Ministarstvo unutarnjih poslova	Vatrogasna zajednica Grada Zagreba	Gradski ured za gospodarstvo, ekološku održivost i strategijsko planiranje	16.035884920000058	45.902155144000060	17
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

