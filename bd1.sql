--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8
-- Dumped by pg_dump version 14.8

-- Started on 2023-06-04 13:11:21

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
-- TOC entry 211 (class 1259 OID 16410)
-- Name: almacen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.almacen (
    id integer NOT NULL,
    codigo integer NOT NULL,
    nombre character varying(20) NOT NULL,
    direccion character varying(30) NOT NULL,
    nombre_gerente character varying(10) NOT NULL,
    articulo integer NOT NULL
);


ALTER TABLE public.almacen OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16400)
-- Name: articulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articulo (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    unidad_medida character varying(30) NOT NULL,
    existencia character varying(10) NOT NULL,
    cantidad_maxima character varying(20) NOT NULL,
    cantidad_minima character varying(15) NOT NULL,
    grupo integer NOT NULL,
    proveedor integer NOT NULL
);


ALTER TABLE public.articulo OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16435)
-- Name: ciudad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciudad (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    almacen character varying(10) NOT NULL
);


ALTER TABLE public.ciudad OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16405)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    cedula integer NOT NULL,
    nombre character varying(20) NOT NULL,
    direccion character varying(30) NOT NULL,
    telefono integer NOT NULL,
    ventas integer NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16460)
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra (
    id integer NOT NULL,
    "#factura" integer NOT NULL,
    nombre character varying(20) NOT NULL,
    fecha character varying(10) NOT NULL,
    "valor_Tcompra" integer NOT NULL,
    tipo_tarjeta character varying(30) NOT NULL,
    articulos integer NOT NULL
);


ALTER TABLE public.compra OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16440)
-- Name: grupo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grupo (
    id integer NOT NULL,
    codigo character varying(20) NOT NULL,
    descripcion character varying(10) NOT NULL
);


ALTER TABLE public.grupo OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16430)
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    id integer NOT NULL,
    numero integer NOT NULL,
    fecha character varying(10) NOT NULL,
    articulo integer NOT NULL
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16415)
-- Name: precio_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.precio_venta (
    id integer NOT NULL,
    codigo integer NOT NULL,
    promociones character varying(20) NOT NULL,
    por_mayor integer NOT NULL,
    por_detal integer NOT NULL,
    descripcion character varying(30) NOT NULL,
    ventas integer NOT NULL
);


ALTER TABLE public.precio_venta OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16425)
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    id integer NOT NULL,
    "NIT" character varying(20) NOT NULL,
    nombre character varying(30) NOT NULL,
    direccion bit varying(10) NOT NULL,
    telefono integer NOT NULL
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16450)
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id integer NOT NULL,
    "#factura" integer NOT NULL,
    fecha character varying(10) NOT NULL,
    "valor_Tcompra" integer NOT NULL,
    tipo_tarjeta character varying(20) NOT NULL,
    articulo integer NOT NULL
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 16410)
-- Dependencies: 211
-- Data for Name: almacen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.almacen (id, codigo, nombre, direccion, nombre_gerente, articulo) FROM stdin;
1	1432	JR	20-4	carlos 	20
2	1436	el carmen	8-16	marcos	18
3	1438	paris	8-14	miguel	16
4	1440	 el remate	12-9	dariana	14
5	1442	casa verde	9-2	lucas	12
\.


--
-- TOC entry 3358 (class 0 OID 16400)
-- Dependencies: 209
-- Data for Name: articulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articulo (id, nombre, unidad_medida, existencia, cantidad_maxima, cantidad_minima, grupo, proveedor) FROM stdin;
1	Arroz	4,7	1400	127	57	9	2
2	Cebolla	500	1800	2	1,5	8	4
3	Carne	4 x3	500	1000	500	7	6
4	pollo	4,202	400	10.000	600	6	8
5	Azucar	500gr	1900	2.000	6.000	8	10
\.


--
-- TOC entry 3364 (class 0 OID 16435)
-- Dependencies: 215
-- Data for Name: ciudad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciudad (id, nombre, almacen) FROM stdin;
1	barranquilla	JR
2	medellìn	el carmen
3	cucuta	paris
4	huila	casa verde
5	Boyaca	campesino
\.


--
-- TOC entry 3359 (class 0 OID 16405)
-- Dependencies: 210
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id, cedula, nombre, direccion, telefono, ventas) FROM stdin;
1	43546	angel	12-4	31674	1
2	45465	franck	14-16	32071	2
3	34364	cristian	13-4	31146	3
4	33244	mario	1-14	31451	4
5	45678	dayana	19-7	31062	5
\.


--
-- TOC entry 3367 (class 0 OID 16460)
-- Dependencies: 218
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compra (id, "#factura", nombre, fecha, "valor_Tcompra", tipo_tarjeta, articulos) FROM stdin;
5	20	lacteos	12/02/2023	50000	debito	18
4	16	yogurt	14/02/2023	40000	credito	14
3	14	mantequilla	13/02/2023	30000	debito	12
2	18	crema_leche	16/02/2023	60000	credito	10
1	12	queso	13/02/2023	40000	debito	16
\.


--
-- TOC entry 3365 (class 0 OID 16440)
-- Dependencies: 216
-- Data for Name: grupo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grupo (id, codigo, descripcion) FROM stdin;
5	1416	eficiente
4	4331	p_bajo
3	5381	A_calidad
2	1281	rebaja
\.


--
-- TOC entry 3363 (class 0 OID 16430)
-- Dependencies: 214
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (id, numero, fecha, articulo) FROM stdin;
5	3457	14/02/2023	20
4	3241	12/02/2023	18
3	4032	16/02/2023	16
2	7324	18/02/2023	14
1	2024	10/02/2023	12
\.


--
-- TOC entry 3361 (class 0 OID 16415)
-- Dependencies: 212
-- Data for Name: precio_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.precio_venta (id, codigo, promociones, por_mayor, por_detal, descripcion, ventas) FROM stdin;
1	1298	lenovo	100	80	laptop 	10
2	1910	asus	90	70	laptop	8
3	1920	samsung	100	68	smartv	6
4	1024	apple	100	90	phone	4
5	1028	sony	80	40	audifonos	2
\.


--
-- TOC entry 3362 (class 0 OID 16425)
-- Dependencies: 213
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor (id, "NIT", nombre, direccion, telefono) FROM stdin;
1	1634	la casa del campo	0101	3127
2	9113	zona D	0010	3165
4	3456	la casa del remate	0000	3105
5	2333	tiendasD1	0001	3114
\.


--
-- TOC entry 3366 (class 0 OID 16450)
-- Dependencies: 217
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id, "#factura", fecha, "valor_Tcompra", tipo_tarjeta, articulo) FROM stdin;
5	20	12/02/2023	20000	debito	18
4	30	14/02/2023	60000	credito	16
3	40	16/02/2023	80000	debito	14
2	15	13/02/2023	35000	credito	13
\.


--
-- TOC entry 3204 (class 2606 OID 16414)
-- Name: almacen almacen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.almacen
    ADD CONSTRAINT almacen_pkey PRIMARY KEY (nombre_gerente);


--
-- TOC entry 3200 (class 2606 OID 16404)
-- Name: articulo articulo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pkey PRIMARY KEY (nombre);


--
-- TOC entry 3212 (class 2606 OID 16439)
-- Name: ciudad ciudad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (nombre);


--
-- TOC entry 3202 (class 2606 OID 16409)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (nombre);


--
-- TOC entry 3218 (class 2606 OID 16464)
-- Name: compra compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (nombre);


--
-- TOC entry 3214 (class 2606 OID 16444)
-- Name: grupo grupo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT grupo_pkey PRIMARY KEY (codigo, descripcion);


--
-- TOC entry 3210 (class 2606 OID 16434)
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (fecha);


--
-- TOC entry 3206 (class 2606 OID 16419)
-- Name: precio_venta precio_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precio_venta
    ADD CONSTRAINT precio_venta_pkey PRIMARY KEY (promociones);


--
-- TOC entry 3208 (class 2606 OID 16429)
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY ("NIT");


--
-- TOC entry 3216 (class 2606 OID 16454)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (fecha);


-- Completed on 2023-06-04 13:11:22

--
-- PostgreSQL database dump complete
--

