--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

-- Started on 2019-01-18 22:57:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 16595)
-- Name: clientes; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA clientes;


ALTER SCHEMA clientes OWNER TO postgres;

--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA clientes; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA clientes IS 'Esquema que reune la información de los clientes';


--
-- TOC entry 6 (class 2615 OID 16486)
-- Name: generales; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA generales;


ALTER SCHEMA generales OWNER TO postgres;

--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA generales; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA generales IS 'Esquema que agrupa las tablas que contienen la información de tipo general';


--
-- TOC entry 14 (class 2615 OID 16577)
-- Name: inmuebles; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inmuebles;


ALTER SCHEMA inmuebles OWNER TO postgres;

--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA inmuebles; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inmuebles IS 'Esquema que agrupa la información de los inmuebles';


--
-- TOC entry 13 (class 2615 OID 16538)
-- Name: rrhh; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA rrhh;


ALTER SCHEMA rrhh OWNER TO postgres;

--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA rrhh; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA rrhh IS 'Esquema que agrupa las tablas con información relacionada al personal interno de la empresa';


--
-- TOC entry 9 (class 2615 OID 16435)
-- Name: session; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA session;


ALTER SCHEMA session OWNER TO postgres;

--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA session; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA session IS 'Esquema que agrupa las tablas que intervienen en la sesión del usuario para acceso a la aplicación.';


--
-- TOC entry 8 (class 2615 OID 16586)
-- Name: solicitudes; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA solicitudes;


ALTER SCHEMA solicitudes OWNER TO postgres;

--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA solicitudes; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA solicitudes IS 'Esquema que agrupa las solicitudes y su información';


--
-- TOC entry 4 (class 2615 OID 16426)
-- Name: tipos; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tipos;


ALTER SCHEMA tipos OWNER TO postgres;

--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA tipos; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tipos IS 'Este esquema agrupa todas las tablas de tipos como tipos de identificación, tipos de inmuebles, etc.';


--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 225 (class 1259 OID 16596)
-- Name: tb_clientes; Type: TABLE; Schema: clientes; Owner: postgres
--

CREATE TABLE clientes.tb_clientes (
    id_cliente integer NOT NULL,
    nombres character varying(100),
    apellidos character varying(100),
    id_tipo_identificacion integer,
    numero_identificacion character varying(30),
    numero_telefono character varying(30),
    numero_celular character varying(30),
    correo_electronico character varying(100),
    profesion character varying(100),
    ocupacion character varying(100),
    "fecha_cumpleaños" date,
    id_estado_civil integer,
    otra_info character varying(200),
    id_tipo_notificacion integer,
    id_user integer,
    direccion character varying(150),
    id_ciudad integer,
    id_departamento integer,
    id_pais integer,
    id_tipo_cliente integer,
    fecha_creacion timestamp with time zone DEFAULT now(),
    id_user_mod integer,
    fecha_modificacion timestamp with time zone
);


ALTER TABLE clientes.tb_clientes OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE tb_clientes; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON TABLE clientes.tb_clientes IS 'Tabla que contiene la información de los clientes';


--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_cliente; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_cliente IS 'Id de la tabla de clientes';


--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.nombres; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.nombres IS 'Nombres del cliente';


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.apellidos; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.apellidos IS 'Apellidos del cliente';


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_tipo_identificacion; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_tipo_identificacion IS 'LLave que relaciona el tipo de identificación del cliente ';


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.numero_identificacion; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.numero_identificacion IS 'Número de identificación de la persona';


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.numero_telefono; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.numero_telefono IS 'Número de teléfono del cliente';


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.numero_celular; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.numero_celular IS 'Número de teléfono celular del cliente';


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.correo_electronico; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.correo_electronico IS 'Correo electrónico del cliente';


--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.profesion; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.profesion IS 'Profesión del cliente';


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.ocupacion; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.ocupacion IS 'Ocupación u oficio de la persona';


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes."fecha_cumpleaños"; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes."fecha_cumpleaños" IS 'Fecha de cumpleaños de la persona';


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_estado_civil; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_estado_civil IS 'Estado civil de la persona';


--
-- TOC entry 3341 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.otra_info; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.otra_info IS 'Otra información del cliente';


--
-- TOC entry 3342 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_tipo_notificacion; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_tipo_notificacion IS 'Llave foránea que relaciona el tipo de notificación que recibirá el cliente';


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_user; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_user IS 'Llave foránea que relaciona el usuario que crea el cliente (cuando es un usuario interno)';


--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.direccion; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.direccion IS 'Dirección actual en la que reside el cliente.';


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_ciudad; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_ciudad IS 'Llave foránea que relaciona la ciudad en la que reside el cliente.';


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_departamento; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_departamento IS 'Departamento en el que reside el cliente';


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_pais; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_pais IS 'Llave foránea que relaciona el país de residencia del cliente';


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_tipo_cliente; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_tipo_cliente IS 'Llave foránea que relaciona el tipo de cliente';


--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.fecha_creacion; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.fecha_creacion IS 'Fecha en la que se crea el registro del cliente';


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.id_user_mod; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.id_user_mod IS 'Llave foránea que relaciona el usuario que midifica la información del cliente';


--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_clientes.fecha_modificacion; Type: COMMENT; Schema: clientes; Owner: postgres
--

COMMENT ON COLUMN clientes.tb_clientes.fecha_modificacion IS 'Fecha en la que se realiza la modificación de los datos del cliente';


--
-- TOC entry 226 (class 1259 OID 16599)
-- Name: tb_clientes_id_cliente_seq; Type: SEQUENCE; Schema: clientes; Owner: postgres
--

CREATE SEQUENCE clientes.tb_clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE clientes.tb_clientes_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_clientes_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: clientes; Owner: postgres
--

ALTER SEQUENCE clientes.tb_clientes_id_cliente_seq OWNED BY clientes.tb_clientes.id_cliente;


--
-- TOC entry 268 (class 1259 OID 17013)
-- Name: tb_aut_externas; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_aut_externas (
    id_aut_externas integer NOT NULL,
    id_api text,
    token_api text,
    provider character varying(100),
    uri text
);


ALTER TABLE generales.tb_aut_externas OWNER TO postgres;

--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE tb_aut_externas; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_aut_externas IS 'Tabla que contiene los datos de autenticación para consumo de las apis externas';


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN tb_aut_externas.id_aut_externas; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas.id_aut_externas IS 'Llave primaria ID de la tabla de datos de autenticación a apis externas.';


--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN tb_aut_externas.id_api; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas.id_api IS 'Valor de ID para acceder a la api, este valor lleva también el nombre del id como lo recibe la Api.';


--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN tb_aut_externas.token_api; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas.token_api IS 'Valor del token de acceso a la Api, lleva también el nombre del parámetro token como lo recibe el servicio. ';


--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN tb_aut_externas.provider; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas.provider IS 'Nombre del proveedor o servicio Web';


--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN tb_aut_externas.uri; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas.uri IS 'URI del Endpoint del web service que se consume. ';


--
-- TOC entry 267 (class 1259 OID 17011)
-- Name: tb_aut_externas_id_aut_externas_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_aut_externas_id_aut_externas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_aut_externas_id_aut_externas_seq OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 267
-- Name: tb_aut_externas_id_aut_externas_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_aut_externas_id_aut_externas_seq OWNED BY generales.tb_aut_externas.id_aut_externas;


--
-- TOC entry 270 (class 1259 OID 17024)
-- Name: tb_aut_externas_services; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_aut_externas_services (
    id_aut_externas_services integer NOT NULL,
    name_service character varying(100),
    uri_compl text,
    id_aut_externas integer
);


ALTER TABLE generales.tb_aut_externas_services OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 270
-- Name: TABLE tb_aut_externas_services; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_aut_externas_services IS 'Tabla que contiene el complemento de la dirección URI de la API, que corresponde con el servicio solicitado.';


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN tb_aut_externas_services.id_aut_externas_services; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas_services.id_aut_externas_services IS 'ID llave primaria de la tabla de Servicios de las APIs externas.';


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN tb_aut_externas_services.name_service; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas_services.name_service IS 'Nombre del servicio a consumir.';


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN tb_aut_externas_services.uri_compl; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas_services.uri_compl IS 'Complemento de la uri para acceder al servicio';


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN tb_aut_externas_services.id_aut_externas; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_aut_externas_services.id_aut_externas IS 'Llave foránea que relaciona la API correspondiente.';


--
-- TOC entry 269 (class 1259 OID 17022)
-- Name: tb_aut_externas_services_id_aut_externas_services_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_aut_externas_services_id_aut_externas_services_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_aut_externas_services_id_aut_externas_services_seq OWNER TO postgres;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 269
-- Name: tb_aut_externas_services_id_aut_externas_services_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_aut_externas_services_id_aut_externas_services_seq OWNED BY generales.tb_aut_externas_services.id_aut_externas_services;


--
-- TOC entry 257 (class 1259 OID 16818)
-- Name: tb_cargos; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_cargos (
    id_cargo integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE generales.tb_cargos OWNER TO postgres;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 257
-- Name: TABLE tb_cargos; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_cargos IS 'Tabla que contiene la información de los cargos asociados a los empleados de la empresa';


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN tb_cargos.id_cargo; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_cargos.id_cargo IS 'Id llave primaria de la tabla cargo';


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN tb_cargos.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_cargos.descripcion IS 'Descripción o denominación del cargo';


--
-- TOC entry 256 (class 1259 OID 16816)
-- Name: tb_cargos_id_cargo_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_cargos_id_cargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_cargos_id_cargo_seq OWNER TO postgres;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 256
-- Name: tb_cargos_id_cargo_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_cargos_id_cargo_seq OWNED BY generales.tb_cargos.id_cargo;


--
-- TOC entry 217 (class 1259 OID 16505)
-- Name: tb_ciudades; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_ciudades (
    id_ciudad integer NOT NULL,
    codigo_ciudad character varying(20),
    nombre_ciudad character varying(50),
    id_departamento integer
);


ALTER TABLE generales.tb_ciudades OWNER TO postgres;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE tb_ciudades; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_ciudades IS 'Tabla que contiene las ciudades';


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tb_ciudades.id_ciudad; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_ciudades.id_ciudad IS 'Llave primaria de la tabla de las ciudades.';


--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tb_ciudades.codigo_ciudad; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_ciudades.codigo_ciudad IS 'Código CGN de la ciudad';


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tb_ciudades.nombre_ciudad; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_ciudades.nombre_ciudad IS 'Nombre de la ciudad';


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tb_ciudades.id_departamento; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_ciudades.id_departamento IS 'Llave foránea hacia la tabla de departamentos';


--
-- TOC entry 216 (class 1259 OID 16503)
-- Name: tb_ciudades_id_ciudad_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_ciudades_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_ciudades_id_ciudad_seq OWNER TO postgres;

--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 216
-- Name: tb_ciudades_id_ciudad_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_ciudades_id_ciudad_seq OWNED BY generales.tb_ciudades.id_ciudad;


--
-- TOC entry 276 (class 1259 OID 17132)
-- Name: tb_criterios_diligenciamiento; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_criterios_diligenciamiento (
    id_criterio_diligenciamiento integer NOT NULL,
    descripcion character varying(20)
);


ALTER TABLE generales.tb_criterios_diligenciamiento OWNER TO postgres;

--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 276
-- Name: TABLE tb_criterios_diligenciamiento; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_criterios_diligenciamiento IS 'Tabla que contiene los tipos de criterio de almacenamiento de un dato';


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN tb_criterios_diligenciamiento.id_criterio_diligenciamiento; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_criterios_diligenciamiento.id_criterio_diligenciamiento IS 'Llave primaria o ID de la tabla que contiene los criterios de almacenamiento';


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN tb_criterios_diligenciamiento.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_criterios_diligenciamiento.descripcion IS 'Descripción o nmibre del criterio de diligenciamiento';


--
-- TOC entry 275 (class 1259 OID 17130)
-- Name: tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq OWNER TO postgres;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 275
-- Name: tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq OWNED BY generales.tb_criterios_diligenciamiento.id_criterio_diligenciamiento;


--
-- TOC entry 213 (class 1259 OID 16489)
-- Name: tb_departamentos; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_departamentos (
    id_departamento integer NOT NULL,
    codigo_departamento character varying(20),
    nombre_departamento character varying(50),
    id_pais integer
);


ALTER TABLE generales.tb_departamentos OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE tb_departamentos; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_departamentos IS 'Tabla de departamentos';


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN tb_departamentos.id_departamento; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_departamentos.id_departamento IS 'Id de la tabla de departamentos';


--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN tb_departamentos.codigo_departamento; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_departamentos.codigo_departamento IS 'Código CGN del departamento';


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN tb_departamentos.nombre_departamento; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_departamentos.nombre_departamento IS 'Nombre del departamento';


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN tb_departamentos.id_pais; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_departamentos.id_pais IS 'Llave foránea que relaciona a los departamentos con su respectivo país.';


--
-- TOC entry 212 (class 1259 OID 16487)
-- Name: tb_departamentos_id_departamento_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_departamentos_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_departamentos_id_departamento_seq OWNER TO postgres;

--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 212
-- Name: tb_departamentos_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_departamentos_id_departamento_seq OWNED BY generales.tb_departamentos.id_departamento;


--
-- TOC entry 258 (class 1259 OID 16859)
-- Name: tb_estado_agenda; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_estado_agenda (
    id_estado_agenda integer NOT NULL,
    descripcion character varying(50)
);


ALTER TABLE generales.tb_estado_agenda OWNER TO postgres;

--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 258
-- Name: TABLE tb_estado_agenda; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_estado_agenda IS 'Tabla que contiene los datos de los estados que puede tener una cita o agendamiento';


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 258
-- Name: COLUMN tb_estado_agenda.id_estado_agenda; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_estado_agenda.id_estado_agenda IS 'Id llave primaria de la tabla de estados de agendas.';


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 258
-- Name: COLUMN tb_estado_agenda.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_estado_agenda.descripcion IS 'Descripción o denominación del estado de la agenda.';


--
-- TOC entry 259 (class 1259 OID 16862)
-- Name: tb_estado_agenda_id_estado_agenda_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_estado_agenda_id_estado_agenda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_estado_agenda_id_estado_agenda_seq OWNER TO postgres;

--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 259
-- Name: tb_estado_agenda_id_estado_agenda_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_estado_agenda_id_estado_agenda_seq OWNED BY generales.tb_estado_agenda.id_estado_agenda;


--
-- TOC entry 228 (class 1259 OID 16610)
-- Name: tb_estados_civiles; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_estados_civiles (
    id_estado_civil integer NOT NULL,
    descripcion character varying(15)
);


ALTER TABLE generales.tb_estados_civiles OWNER TO postgres;

--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE tb_estados_civiles; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_estados_civiles IS 'Tabla que contiene los estados civiles posibles que puede tener una persona.';


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN tb_estados_civiles.id_estado_civil; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_estados_civiles.id_estado_civil IS 'Id de estado civil';


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN tb_estados_civiles.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_estados_civiles.descripcion IS 'Descripción o denominación del estado civil';


--
-- TOC entry 227 (class 1259 OID 16608)
-- Name: tb_estados_civiles_id_estado_civil_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_estados_civiles_id_estado_civil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_estados_civiles_id_estado_civil_seq OWNER TO postgres;

--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 227
-- Name: tb_estados_civiles_id_estado_civil_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_estados_civiles_id_estado_civil_seq OWNED BY generales.tb_estados_civiles.id_estado_civil;


--
-- TOC entry 262 (class 1259 OID 16947)
-- Name: tb_formas_pago; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_formas_pago (
    id_forma_pago integer NOT NULL,
    descripcion character varying(20)
);


ALTER TABLE generales.tb_formas_pago OWNER TO postgres;

--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE tb_formas_pago; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_formas_pago IS 'Tabla que contiene las formas de pago';


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN tb_formas_pago.id_forma_pago; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_formas_pago.id_forma_pago IS 'Id llave primaria de la tabla de formas de pago';


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN tb_formas_pago.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_formas_pago.descripcion IS 'Descripción o denominación de la forma de pago.';


--
-- TOC entry 261 (class 1259 OID 16945)
-- Name: tb_formas_pago_id_forma_pago_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_formas_pago_id_forma_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_formas_pago_id_forma_pago_seq OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 261
-- Name: tb_formas_pago_id_forma_pago_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_formas_pago_id_forma_pago_seq OWNED BY generales.tb_formas_pago.id_forma_pago;


--
-- TOC entry 249 (class 1259 OID 16710)
-- Name: tb_inmuebles_estados; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_inmuebles_estados (
    id_inmueble_estado integer NOT NULL,
    descripcion character varying(30)
);


ALTER TABLE generales.tb_inmuebles_estados OWNER TO postgres;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE tb_inmuebles_estados; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_inmuebles_estados IS 'Tabla que contiene la información de los estados que se pueden asignar a un inmueble';


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN tb_inmuebles_estados.id_inmueble_estado; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_inmuebles_estados.id_inmueble_estado IS 'Id llave primaria de la tabla de estado de inmueble';


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN tb_inmuebles_estados.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_inmuebles_estados.descripcion IS 'Descripción del estado del inmueble';


--
-- TOC entry 248 (class 1259 OID 16708)
-- Name: tb_inmuebles_estados_id_inmueble_estado_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_inmuebles_estados_id_inmueble_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_inmuebles_estados_id_inmueble_estado_seq OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 248
-- Name: tb_inmuebles_estados_id_inmueble_estado_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_inmuebles_estados_id_inmueble_estado_seq OWNED BY generales.tb_inmuebles_estados.id_inmueble_estado;


--
-- TOC entry 238 (class 1259 OID 16658)
-- Name: tb_intereses; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_intereses (
    id_interes integer NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE generales.tb_intereses OWNER TO postgres;

--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 238
-- Name: TABLE tb_intereses; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_intereses IS 'Tabla que contiene los intereses que pueden asociarse a una solicitud';


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 238
-- Name: COLUMN tb_intereses.id_interes; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_intereses.id_interes IS 'Id de la tabla de intereses';


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 238
-- Name: COLUMN tb_intereses.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_intereses.descripcion IS 'Descripción o nombre del interés';


--
-- TOC entry 237 (class 1259 OID 16656)
-- Name: tb_intereses_id_interes_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_intereses_id_interes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_intereses_id_interes_seq OWNER TO postgres;

--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 237
-- Name: tb_intereses_id_interes_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_intereses_id_interes_seq OWNED BY generales.tb_intereses.id_interes;


--
-- TOC entry 253 (class 1259 OID 16726)
-- Name: tb_jornadas; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_jornadas (
    id_jornada integer NOT NULL,
    dia character varying(15)
);


ALTER TABLE generales.tb_jornadas OWNER TO postgres;

--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 253
-- Name: TABLE tb_jornadas; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_jornadas IS 'Tabla que contiene la información de las jornadas de muestra de los inmuebles.';


--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN tb_jornadas.id_jornada; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_jornadas.id_jornada IS 'ID llave primaria de la tabla de jornadas.';


--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN tb_jornadas.dia; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_jornadas.dia IS 'Descripción o dia de la semana';


--
-- TOC entry 252 (class 1259 OID 16724)
-- Name: tb_jornadas_id_jornada_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_jornadas_id_jornada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_jornadas_id_jornada_seq OWNER TO postgres;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 252
-- Name: tb_jornadas_id_jornada_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_jornadas_id_jornada_seq OWNED BY generales.tb_jornadas.id_jornada;


--
-- TOC entry 215 (class 1259 OID 16497)
-- Name: tb_paises; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_paises (
    id_pais integer NOT NULL,
    codigo_pais character varying(20),
    nombre_pais character varying(50)
);


ALTER TABLE generales.tb_paises OWNER TO postgres;

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN tb_paises.id_pais; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_paises.id_pais IS 'Id llave primaria de la tabla paises';


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN tb_paises.codigo_pais; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_paises.codigo_pais IS 'Código del país';


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN tb_paises.nombre_pais; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_paises.nombre_pais IS 'Nombre del país';


--
-- TOC entry 214 (class 1259 OID 16495)
-- Name: tb_paises_id_pais_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_paises_id_pais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_paises_id_pais_seq OWNER TO postgres;

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 214
-- Name: tb_paises_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_paises_id_pais_seq OWNED BY generales.tb_paises.id_pais;


--
-- TOC entry 236 (class 1259 OID 16650)
-- Name: tb_solicitudes_estados; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_solicitudes_estados (
    id_solicitud_estado integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE generales.tb_solicitudes_estados OWNER TO postgres;

--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 236
-- Name: TABLE tb_solicitudes_estados; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_solicitudes_estados IS 'Tabla que contiene los estados posibles que pueden asignarse a una solicitud.';


--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tb_solicitudes_estados.id_solicitud_estado; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_solicitudes_estados.id_solicitud_estado IS 'Llave primaria de la tabla de estados de solicitudes';


--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tb_solicitudes_estados.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_solicitudes_estados.descripcion IS 'Descripción del estado de la solicitud';


--
-- TOC entry 235 (class 1259 OID 16648)
-- Name: tb_solicitudes_estados_id_solicitud_estado_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_solicitudes_estados_id_solicitud_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_solicitudes_estados_id_solicitud_estado_seq OWNER TO postgres;

--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 235
-- Name: tb_solicitudes_estados_id_solicitud_estado_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_solicitudes_estados_id_solicitud_estado_seq OWNED BY generales.tb_solicitudes_estados.id_solicitud_estado;


--
-- TOC entry 264 (class 1259 OID 16961)
-- Name: tb_urgencias; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_urgencias (
    id_urgencia integer NOT NULL,
    descripcion character varying(20)
);


ALTER TABLE generales.tb_urgencias OWNER TO postgres;

--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 264
-- Name: TABLE tb_urgencias; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_urgencias IS 'Tabla que contiene los valores posibles que indiquen urgencia de adquisición del inmueble.';


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN tb_urgencias.id_urgencia; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_urgencias.id_urgencia IS 'ID llave primaria de la tabla de urgencias. ';


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN tb_urgencias.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_urgencias.descripcion IS 'Descripción o denominación de la urgencia';


--
-- TOC entry 263 (class 1259 OID 16959)
-- Name: tb_urgencias_id_urgencia_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_urgencias_id_urgencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_urgencias_id_urgencia_seq OWNER TO postgres;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 263
-- Name: tb_urgencias_id_urgencia_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_urgencias_id_urgencia_seq OWNED BY generales.tb_urgencias.id_urgencia;


--
-- TOC entry 255 (class 1259 OID 16804)
-- Name: tb_zonas; Type: TABLE; Schema: generales; Owner: postgres
--

CREATE TABLE generales.tb_zonas (
    id_zona integer NOT NULL,
    descripcion character varying(30)
);


ALTER TABLE generales.tb_zonas OWNER TO postgres;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 255
-- Name: TABLE tb_zonas; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON TABLE generales.tb_zonas IS 'Zonas de la ciudad en las que se ubican los inmuebles';


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN tb_zonas.id_zona; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_zonas.id_zona IS 'ID llave primaria de la tabla de zonas';


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN tb_zonas.descripcion; Type: COMMENT; Schema: generales; Owner: postgres
--

COMMENT ON COLUMN generales.tb_zonas.descripcion IS 'Descripción o denominación de la zona';


--
-- TOC entry 254 (class 1259 OID 16802)
-- Name: tb_zonas_id_zona_seq; Type: SEQUENCE; Schema: generales; Owner: postgres
--

CREATE SEQUENCE generales.tb_zonas_id_zona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generales.tb_zonas_id_zona_seq OWNER TO postgres;

--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 254
-- Name: tb_zonas_id_zona_seq; Type: SEQUENCE OWNED BY; Schema: generales; Owner: postgres
--

ALTER SEQUENCE generales.tb_zonas_id_zona_seq OWNED BY generales.tb_zonas.id_zona;


--
-- TOC entry 222 (class 1259 OID 16580)
-- Name: tb_caracteristicas_inmuebles; Type: TABLE; Schema: inmuebles; Owner: postgres
--

CREATE TABLE inmuebles.tb_caracteristicas_inmuebles (
    id_caracterisitica_inmueble integer NOT NULL,
    "nombre_característica" character varying(100),
    id_tipo_inmueble integer,
    tipo_caracteristica integer
);


ALTER TABLE inmuebles.tb_caracteristicas_inmuebles OWNER TO postgres;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE tb_caracteristicas_inmuebles; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON TABLE inmuebles.tb_caracteristicas_inmuebles IS 'Tabla que contiene las características de los inmuebles';


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tb_caracteristicas_inmuebles.id_caracterisitica_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_inmuebles.id_caracterisitica_inmueble IS 'Id de la tabla que tiene las características de los inmuebles.';


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tb_caracteristicas_inmuebles."nombre_característica"; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_inmuebles."nombre_característica" IS 'Nombre de la característica asociada al inmueble';


--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tb_caracteristicas_inmuebles.id_tipo_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_inmuebles.id_tipo_inmueble IS 'Id llave foránea hacia la tabla tipo de inmueble';


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tb_caracteristicas_inmuebles.tipo_caracteristica; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_inmuebles.tipo_caracteristica IS 'Indica el tipo de característica asociada, si es descriptiva o cuantitativa';


--
-- TOC entry 221 (class 1259 OID 16578)
-- Name: tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq; Type: SEQUENCE; Schema: inmuebles; Owner: postgres
--

CREATE SEQUENCE inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq OWNER TO postgres;

--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 221
-- Name: tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq; Type: SEQUENCE OWNED BY; Schema: inmuebles; Owner: postgres
--

ALTER SEQUENCE inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq OWNED BY inmuebles.tb_caracteristicas_inmuebles.id_caracterisitica_inmueble;


--
-- TOC entry 278 (class 1259 OID 17140)
-- Name: tb_caracteristicas_tipo_inmueble; Type: TABLE; Schema: inmuebles; Owner: postgres
--

CREATE TABLE inmuebles.tb_caracteristicas_tipo_inmueble (
    id_caracteristicas_tipo_inmueble integer NOT NULL,
    id_tipo_inmueble integer NOT NULL,
    id_caracteristica integer,
    id_criterio_diligenciamiento integer,
    id_tipos_caracteristicas_inmuebles integer NOT NULL,
    id_user_creacion integer,
    id_user_modificacion integer,
    estado character(1),
    fecha_creacion timestamp with time zone DEFAULT now(),
    fecha_modificacion timestamp with time zone,
    descripcion character varying(300)
);


ALTER TABLE inmuebles.tb_caracteristicas_tipo_inmueble OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 278
-- Name: TABLE tb_caracteristicas_tipo_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON TABLE inmuebles.tb_caracteristicas_tipo_inmueble IS 'Tabla que contiene la información de las características asociadas a cada tipo de inmueble';


--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.id_caracteristicas_tipo_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_caracteristicas_tipo_inmueble IS 'ID llave primaria de la tabla que contiene las caracteristicas asociadas a cada tipo de inmueble';


--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.id_tipo_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_tipo_inmueble IS 'Llave foránea que relaciona el tipo de inmueble';


--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.id_caracteristica; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_caracteristica IS 'Llave foránea que relaciona la caracteristica del tipo de inmueble';


--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.id_criterio_diligenciamiento; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_criterio_diligenciamiento IS 'Llave foránea que relaciona el criterio de diligenciamiento de la característica.';


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.id_tipos_caracteristicas_inmuebles; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_tipos_caracteristicas_inmuebles IS 'Llave foránea que relaciona el tipo de valor de la característica';


--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.id_user_creacion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_user_creacion IS 'Llave foránea que relaciona el usuario que crea la asociación de la característica';


--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.id_user_modificacion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_user_modificacion IS 'Llave foránea que relaciona el usuario que modifica la asociación de la característica';


--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.estado; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.estado IS 'Estado de la característica asociada al tipo de inmueble. 1 = activo, 0 = inactivo';


--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.fecha_creacion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.fecha_creacion IS 'Fecha en la que se crea la asociación del tipo inmueble con la característica. ';


--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.fecha_modificacion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.fecha_modificacion IS 'Fecha en la que se realiza la modificación de la característica asociada al tipo de inmueble';


--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN tb_caracteristicas_tipo_inmueble.descripcion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.descripcion IS 'Descripción o información adicional que se ingresa a una característica';


--
-- TOC entry 277 (class 1259 OID 17138)
-- Name: tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq; Type: SEQUENCE; Schema: inmuebles; Owner: postgres
--

CREATE SEQUENCE inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq OWNER TO postgres;

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 277
-- Name: tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq; Type: SEQUENCE OWNED BY; Schema: inmuebles; Owner: postgres
--

ALTER SEQUENCE inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq OWNED BY inmuebles.tb_caracteristicas_tipo_inmueble.id_caracteristicas_tipo_inmueble;


--
-- TOC entry 247 (class 1259 OID 16702)
-- Name: tb_estados_inmuebles; Type: TABLE; Schema: inmuebles; Owner: postgres
--

CREATE TABLE inmuebles.tb_estados_inmuebles (
    id_estado_inmueble integer NOT NULL,
    id_inmueble_estado integer,
    id_persona integer,
    fecha_creacion timestamp with time zone
);


ALTER TABLE inmuebles.tb_estados_inmuebles OWNER TO postgres;

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 247
-- Name: TABLE tb_estados_inmuebles; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON TABLE inmuebles.tb_estados_inmuebles IS 'Tabla que contiene la información de los estados de los inmuebles';


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN tb_estados_inmuebles.id_estado_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_estados_inmuebles.id_estado_inmueble IS 'Llave primaria de la tabla de estado de inmuebles';


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN tb_estados_inmuebles.id_inmueble_estado; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_estados_inmuebles.id_inmueble_estado IS 'Llave foránea hacia la tabla de ';


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN tb_estados_inmuebles.id_persona; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_estados_inmuebles.id_persona IS 'Llave foránea que relaciona la persona que actualiza el estado del inmueble';


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN tb_estados_inmuebles.fecha_creacion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_estados_inmuebles.fecha_creacion IS 'Fecha en que se crea el estado del inmueble';


--
-- TOC entry 246 (class 1259 OID 16700)
-- Name: tb_estados_inmuebles_id_estado_inmueble_seq; Type: SEQUENCE; Schema: inmuebles; Owner: postgres
--

CREATE SEQUENCE inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq OWNER TO postgres;

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 246
-- Name: tb_estados_inmuebles_id_estado_inmueble_seq; Type: SEQUENCE OWNED BY; Schema: inmuebles; Owner: postgres
--

ALTER SEQUENCE inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq OWNED BY inmuebles.tb_estados_inmuebles.id_estado_inmueble;


--
-- TOC entry 251 (class 1259 OID 16718)
-- Name: tb_horarios_inmuebles; Type: TABLE; Schema: inmuebles; Owner: postgres
--

CREATE TABLE inmuebles.tb_horarios_inmuebles (
    id_horario_inmueble integer NOT NULL,
    hora_inicial integer,
    minuto_inicial integer,
    hora_final integer,
    minuto_final integer,
    id_jornada integer,
    id_inmueble integer,
    id_persona_crea integer,
    fecha_creacion timestamp with time zone
);


ALTER TABLE inmuebles.tb_horarios_inmuebles OWNER TO postgres;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 251
-- Name: TABLE tb_horarios_inmuebles; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON TABLE inmuebles.tb_horarios_inmuebles IS 'Tabla que contiene la información de los horarios en los que se muestra un inmueble a los posibles compradores';


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.id_horario_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.id_horario_inmueble IS 'Id llave primaria de la tabla de horarios de muestra de inmuebles';


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.hora_inicial; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.hora_inicial IS 'Hora inicial en la que se empieza a mostrar un inmueble dentro del horario fijado';


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.minuto_inicial; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.minuto_inicial IS 'Minuto en el que se empieza a mostrar el inmueble';


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.hora_final; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.hora_final IS 'Hora en la que se finaliza la muestra de un inmueble dentro del horario fijado';


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.minuto_final; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.minuto_final IS 'Minuto dentro del horario fijado en que se termina de mostrar un inmueble';


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.id_jornada; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.id_jornada IS 'Llave foránea que relaciona la jornada en la que se enseña el inmueble.';


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.id_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.id_inmueble IS 'Llave foránea que relaciona el inmueble';


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.id_persona_crea; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.id_persona_crea IS 'Llave foránea que relaciona la persona que crea la solicitud';


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN tb_horarios_inmuebles.fecha_creacion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.fecha_creacion IS 'Fecha en la que se crea el horario de muestrea del inmueble';


--
-- TOC entry 250 (class 1259 OID 16716)
-- Name: tb_horarios_inmuebles_id_horario_inmueble_seq; Type: SEQUENCE; Schema: inmuebles; Owner: postgres
--

CREATE SEQUENCE inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 250
-- Name: tb_horarios_inmuebles_id_horario_inmueble_seq; Type: SEQUENCE OWNED BY; Schema: inmuebles; Owner: postgres
--

ALTER SEQUENCE inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq OWNED BY inmuebles.tb_horarios_inmuebles.id_horario_inmueble;


--
-- TOC entry 245 (class 1259 OID 16694)
-- Name: tb_inmuebles_registrados; Type: TABLE; Schema: inmuebles; Owner: postgres
--

CREATE TABLE inmuebles.tb_inmuebles_registrados (
    id_inmueble_registrado integer NOT NULL,
    id_tipo_inmueble integer,
    id_cliente integer,
    id_personal integer,
    valor_inmueble integer,
    fecha_creacion timestamp with time zone,
    direccion_inmueble character varying(150),
    id_ciudad integer,
    id_zona integer,
    observacion character varying(300),
    id_estado_inmueble integer
);


ALTER TABLE inmuebles.tb_inmuebles_registrados OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 245
-- Name: TABLE tb_inmuebles_registrados; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON TABLE inmuebles.tb_inmuebles_registrados IS 'Tabla que almacena la información correspondiente a los inmuebles registrados para ser vendidos';


--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.id_inmueble_registrado; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_inmueble_registrado IS 'Id llave primaria de la tabla de inmuebles registrados';


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.id_tipo_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_tipo_inmueble IS 'Llave foránea que relaciona el tipo de inmueble';


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.id_cliente; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_cliente IS 'Llave foránea que relaciona el cliente vendedor del inmueble';


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.id_personal; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_personal IS 'Llave foránea que relaciona el empleado de la empresa que registra el inmueble';


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.valor_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.valor_inmueble IS 'Valor en pesos del inmueble';


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.fecha_creacion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.fecha_creacion IS 'Fecha en que se crea el inmueble';


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.direccion_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.direccion_inmueble IS 'Dirección física en donde se encuentra ubicado el inmueble';


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.id_ciudad; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_ciudad IS 'Llave foránea que relaciona la ciudad';


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.id_zona; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_zona IS 'Llave foránea que relaciona la zona a la que pertenece la ciudad';


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.observacion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.observacion IS 'Observación o información adicional del inmueble';


--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN tb_inmuebles_registrados.id_estado_inmueble; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_estado_inmueble IS 'Llave foránea a la tabla de estados de inmuebles';


--
-- TOC entry 244 (class 1259 OID 16692)
-- Name: tb_inmuebles_registrados_id_inmueble_registrado_seq; Type: SEQUENCE; Schema: inmuebles; Owner: postgres
--

CREATE SEQUENCE inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq OWNER TO postgres;

--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 244
-- Name: tb_inmuebles_registrados_id_inmueble_registrado_seq; Type: SEQUENCE OWNED BY; Schema: inmuebles; Owner: postgres
--

ALTER SEQUENCE inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq OWNED BY inmuebles.tb_inmuebles_registrados.id_inmueble_registrado;


--
-- TOC entry 274 (class 1259 OID 17124)
-- Name: tb_tipos_caracteristicas_inmuebles; Type: TABLE; Schema: inmuebles; Owner: postgres
--

CREATE TABLE inmuebles.tb_tipos_caracteristicas_inmuebles (
    id_tipos_caracteristicas_inmuebles integer NOT NULL,
    descripcion character varying(20)
);


ALTER TABLE inmuebles.tb_tipos_caracteristicas_inmuebles OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 274
-- Name: TABLE tb_tipos_caracteristicas_inmuebles; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON TABLE inmuebles.tb_tipos_caracteristicas_inmuebles IS 'Tabla que contiene los valores de tipos de características asociadas a los tipos de inmuebles';


--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN tb_tipos_caracteristicas_inmuebles.id_tipos_caracteristicas_inmuebles; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_tipos_caracteristicas_inmuebles.id_tipos_caracteristicas_inmuebles IS 'ID o llave primaria de la tabla de los tipos de características de inmuebles.';


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN tb_tipos_caracteristicas_inmuebles.descripcion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_tipos_caracteristicas_inmuebles.descripcion IS 'Descripción o nombre del tipo de característica del inmueble.';


--
-- TOC entry 273 (class 1259 OID 17122)
-- Name: tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq; Type: SEQUENCE; Schema: inmuebles; Owner: postgres
--

CREATE SEQUENCE inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 273
-- Name: tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq; Type: SEQUENCE OWNED BY; Schema: inmuebles; Owner: postgres
--

ALTER SEQUENCE inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq OWNED BY inmuebles.tb_tipos_caracteristicas_inmuebles.id_tipos_caracteristicas_inmuebles;


--
-- TOC entry 230 (class 1259 OID 16626)
-- Name: tb_tipos_inmuebles; Type: TABLE; Schema: inmuebles; Owner: postgres
--

CREATE TABLE inmuebles.tb_tipos_inmuebles (
    id_tipos_inmuebles integer NOT NULL,
    descripcion character varying(50)
);


ALTER TABLE inmuebles.tb_tipos_inmuebles OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 230
-- Name: TABLE tb_tipos_inmuebles; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON TABLE inmuebles.tb_tipos_inmuebles IS 'Tabla que contiene la información de los tipos de inmuebles';


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN tb_tipos_inmuebles.id_tipos_inmuebles; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_tipos_inmuebles.id_tipos_inmuebles IS 'Id llave primaria de la tabla de tipos de inmuebles';


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN tb_tipos_inmuebles.descripcion; Type: COMMENT; Schema: inmuebles; Owner: postgres
--

COMMENT ON COLUMN inmuebles.tb_tipos_inmuebles.descripcion IS 'Descripción del tipo de inmueble';


--
-- TOC entry 229 (class 1259 OID 16624)
-- Name: tb_tipos_inmuebles_id_tipos_inmuebles_seq; Type: SEQUENCE; Schema: inmuebles; Owner: postgres
--

CREATE SEQUENCE inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq OWNER TO postgres;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 229
-- Name: tb_tipos_inmuebles_id_tipos_inmuebles_seq; Type: SEQUENCE OWNED BY; Schema: inmuebles; Owner: postgres
--

ALTER SEQUENCE inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq OWNED BY inmuebles.tb_tipos_inmuebles.id_tipos_inmuebles;


--
-- TOC entry 219 (class 1259 OID 16541)
-- Name: tb_personal; Type: TABLE; Schema: rrhh; Owner: postgres
--

CREATE TABLE rrhh.tb_personal (
    id_personal integer NOT NULL,
    id_tipo_identificacion integer,
    nombres character varying(100),
    apellidos character varying(100),
    numero_identificacion character varying(30),
    numero_telefono character varying(25),
    correo_electronico character varying(150),
    id_ciudad integer,
    id_cargo_persona integer,
    porcentaje_ganancia numeric(3,2)
);


ALTER TABLE rrhh.tb_personal OWNER TO postgres;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE tb_personal; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON TABLE rrhh.tb_personal IS 'Tabla que contiene la información del personal de la empresa que usa el aplicativo.';


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.id_personal; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.id_personal IS 'Id llave primaria de la tabla personal';


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.id_tipo_identificacion; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.id_tipo_identificacion IS 'Llave foránea que relaciona el tipo de identificación de la persona';


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.nombres; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.nombres IS 'Nombres de la persona';


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.apellidos; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.apellidos IS 'Apellidos de la persona';


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.numero_identificacion; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.numero_identificacion IS 'Número de identificación de la persona';


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.numero_telefono; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.numero_telefono IS 'Número de teléfono de la persona';


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.correo_electronico; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.correo_electronico IS 'Correo electrónico de la persona';


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.id_ciudad; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.id_ciudad IS 'Llave foránea que relaciona la ciudad de la persona';


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.id_cargo_persona; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.id_cargo_persona IS 'Llave foránea a la tabla de cargos de personas dentro de la empresa';


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_personal.porcentaje_ganancia; Type: COMMENT; Schema: rrhh; Owner: postgres
--

COMMENT ON COLUMN rrhh.tb_personal.porcentaje_ganancia IS 'Porcentaje de ganancia de la persona en cada uno de los negocios que realice';


--
-- TOC entry 218 (class 1259 OID 16539)
-- Name: tb_personal_id_personal_seq; Type: SEQUENCE; Schema: rrhh; Owner: postgres
--

CREATE SEQUENCE rrhh.tb_personal_id_personal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rrhh.tb_personal_id_personal_seq OWNER TO postgres;

--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 218
-- Name: tb_personal_id_personal_seq; Type: SEQUENCE OWNED BY; Schema: rrhh; Owner: postgres
--

ALTER SEQUENCE rrhh.tb_personal_id_personal_seq OWNED BY rrhh.tb_personal.id_personal;


--
-- TOC entry 208 (class 1259 OID 16449)
-- Name: tb_users_access; Type: TABLE; Schema: session; Owner: postgres
--

CREATE TABLE session.tb_users_access (
    id_user_access integer NOT NULL,
    id_user_app integer NOT NULL,
    fecha_acceso timestamp with time zone DEFAULT now(),
    datos_sesion jsonb NOT NULL,
    id_acceso text NOT NULL,
    datos_host_remoto jsonb,
    fecha_salida timestamp with time zone
);


ALTER TABLE session.tb_users_access OWNER TO postgres;

--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 208
-- Name: TABLE tb_users_access; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON TABLE session.tb_users_access IS 'Tabla que guarda la información de los accesos a la aplicación realizados por los usuarios autorizados';


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN tb_users_access.id_user_access; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_access.id_user_access IS 'Llave primaria de la tabla de los registros de acceso al aplicativo';


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN tb_users_access.id_user_app; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_access.id_user_app IS 'Llave foránea a la tabla tb_users_app para relacionar el usuario que inicia sesión';


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN tb_users_access.fecha_acceso; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_access.fecha_acceso IS 'Fecha y hora en las que el usuario accede al aplicativo';


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN tb_users_access.datos_sesion; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_access.datos_sesion IS 'Cadena JSON que contiene los datos de sesión del usuario al momento en que accede.';


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN tb_users_access.id_acceso; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_access.id_acceso IS 'Id de acceso a la aplicación generado por el inicio de sesión';


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN tb_users_access.datos_host_remoto; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_access.datos_host_remoto IS 'Datos obtenidos del host remoto que accede a la aplicación';


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN tb_users_access.fecha_salida; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_access.fecha_salida IS 'Fecha y hora en la que el usuario cierra sesión ';


--
-- TOC entry 207 (class 1259 OID 16447)
-- Name: tb_users_access_id_user_access_seq; Type: SEQUENCE; Schema: session; Owner: postgres
--

CREATE SEQUENCE session.tb_users_access_id_user_access_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE session.tb_users_access_id_user_access_seq OWNER TO postgres;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 207
-- Name: tb_users_access_id_user_access_seq; Type: SEQUENCE OWNED BY; Schema: session; Owner: postgres
--

ALTER SEQUENCE session.tb_users_access_id_user_access_seq OWNED BY session.tb_users_access.id_user_access;


--
-- TOC entry 209 (class 1259 OID 16463)
-- Name: tb_users_access_id_user_seq; Type: SEQUENCE; Schema: session; Owner: postgres
--

CREATE SEQUENCE session.tb_users_access_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE session.tb_users_access_id_user_seq OWNER TO postgres;

--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_users_access_id_user_seq; Type: SEQUENCE OWNED BY; Schema: session; Owner: postgres
--

ALTER SEQUENCE session.tb_users_access_id_user_seq OWNED BY session.tb_users_access.id_user_app;


--
-- TOC entry 206 (class 1259 OID 16438)
-- Name: tb_users_app; Type: TABLE; Schema: session; Owner: postgres
--

CREATE TABLE session.tb_users_app (
    id_user integer NOT NULL,
    userlogin character varying(8) NOT NULL,
    password text NOT NULL,
    estado integer,
    fecha_creacion timestamp without time zone DEFAULT now(),
    id_persona integer,
    id_user_app_externo integer
);


ALTER TABLE session.tb_users_app OWNER TO postgres;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN tb_users_app.id_user; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app.id_user IS 'Llave primaria de la tabla de usuarios';


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN tb_users_app.userlogin; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app.userlogin IS 'Identificador o nombre único de usuario asignado a cada persona o sistema externo que accede a la aplicación';


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN tb_users_app.password; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app.password IS 'Password o contraseña asignados a cada usuario que accede al aplicativo';


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN tb_users_app.estado; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app.estado IS 'Indica el estado del usuario, 1= activo. 0=inactivo';


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN tb_users_app.fecha_creacion; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app.fecha_creacion IS 'Fecha en la que se crea el usuario en la base de datos';


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN tb_users_app.id_persona; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app.id_persona IS 'Llave foránea hacia la tabla de personal para relacionar el usuario con la persona propietaria.';


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN tb_users_app.id_user_app_externo; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app.id_user_app_externo IS 'Llave foránea a la tabla de usuarios externos';


--
-- TOC entry 211 (class 1259 OID 16480)
-- Name: tb_users_app_externo; Type: TABLE; Schema: session; Owner: postgres
--

CREATE TABLE session.tb_users_app_externo (
    id_user_app_externo integer NOT NULL,
    nombres_siglas character varying(100),
    apellidos_razon_social character varying(100),
    numero_identificacion character varying(30) NOT NULL,
    id_tipo_identificacion integer,
    numero_telefono character varying(25),
    correo_electronico character varying(100),
    id_ciudad integer
);


ALTER TABLE session.tb_users_app_externo OWNER TO postgres;

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE tb_users_app_externo; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON TABLE session.tb_users_app_externo IS 'Tabla que contiene la información relacionada con los usuarios externos al aplicativo.';


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN tb_users_app_externo.id_user_app_externo; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app_externo.id_user_app_externo IS 'Id llave primaria de la tabla de usuarios externos';


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN tb_users_app_externo.nombres_siglas; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app_externo.nombres_siglas IS 'Nombres de la persona o siglas empresa relacionada a un usuario de acceso. ';


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN tb_users_app_externo.apellidos_razon_social; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app_externo.apellidos_razon_social IS 'Apellidos o razón social de la persona o empresa externa que accede al aplicativo';


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN tb_users_app_externo.numero_identificacion; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app_externo.numero_identificacion IS 'Número de identificación del usuario que accede a la aplicación';


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN tb_users_app_externo.id_tipo_identificacion; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app_externo.id_tipo_identificacion IS 'Id foráneo que relaciona el tipo de identificación del usuario externo';


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN tb_users_app_externo.numero_telefono; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app_externo.numero_telefono IS 'Número de teléfono del usuario externo del aplicativo';


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN tb_users_app_externo.correo_electronico; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app_externo.correo_electronico IS 'Email del usuario o empresa que accede al aplicativo';


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN tb_users_app_externo.id_ciudad; Type: COMMENT; Schema: session; Owner: postgres
--

COMMENT ON COLUMN session.tb_users_app_externo.id_ciudad IS 'LLave foránea que relaciona con la tabla de ciudades';


--
-- TOC entry 210 (class 1259 OID 16478)
-- Name: tb_users_app_externo_id_user_app_externo_seq; Type: SEQUENCE; Schema: session; Owner: postgres
--

CREATE SEQUENCE session.tb_users_app_externo_id_user_app_externo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE session.tb_users_app_externo_id_user_app_externo_seq OWNER TO postgres;

--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 210
-- Name: tb_users_app_externo_id_user_app_externo_seq; Type: SEQUENCE OWNED BY; Schema: session; Owner: postgres
--

ALTER SEQUENCE session.tb_users_app_externo_id_user_app_externo_seq OWNED BY session.tb_users_app_externo.id_user_app_externo;


--
-- TOC entry 205 (class 1259 OID 16436)
-- Name: tb_users_id_usuario_seq; Type: SEQUENCE; Schema: session; Owner: postgres
--

CREATE SEQUENCE session.tb_users_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE session.tb_users_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 205
-- Name: tb_users_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: session; Owner: postgres
--

ALTER SEQUENCE session.tb_users_id_usuario_seq OWNED BY session.tb_users_app.id_user;


--
-- TOC entry 243 (class 1259 OID 16685)
-- Name: tb_agendas_solicitudes; Type: TABLE; Schema: solicitudes; Owner: postgres
--

CREATE TABLE solicitudes.tb_agendas_solicitudes (
    id_agenda_solicitud integer NOT NULL,
    id_solicitud integer,
    fecha_programada timestamp with time zone,
    id_persona integer,
    id_vendedor integer,
    fecha_creacion time without time zone,
    id_persona_creacion integer,
    id_estado_agenda integer,
    fecha_modificacion timestamp with time zone,
    observacion character varying(300),
    id_cliente integer
);


ALTER TABLE solicitudes.tb_agendas_solicitudes OWNER TO postgres;

--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE tb_agendas_solicitudes; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON TABLE solicitudes.tb_agendas_solicitudes IS 'Tabla que contiene la información de los agendamientos realizados por cada solicitud.';


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.id_agenda_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_agenda_solicitud IS 'Id llave primaria de la tabla de agendas';


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.id_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_solicitud IS 'Llave foránea hacia la tabla de solicitudes';


--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.fecha_programada; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.fecha_programada IS 'Fecha en la que se programa el agendamiento';


--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.id_persona; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_persona IS 'Llave foránea que relaciona la persona encargada de atender el agendamiento';


--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.id_vendedor; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_vendedor IS 'Llave foránea hacia la tabla de clientes vendedores de inmuebles';


--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.fecha_creacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.fecha_creacion IS 'Fecha y hora en que se crea la cita o agendamiento';


--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.id_persona_creacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_persona_creacion IS 'Llave foránea que relaciona el empleado que crea la cita o agendamiento';


--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.id_estado_agenda; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_estado_agenda IS 'Llave que relaciona el estado de la agenda';


--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.fecha_modificacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.fecha_modificacion IS 'Fecha en que se actualiza el estado o se atiende la cita o agendamiento';


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.observacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.observacion IS 'Observación o información sobre la cita realizada o modificada en su estado';


--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_agendas_solicitudes.id_cliente; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_cliente IS 'Llave foránea que relaciona el cliente o posible comprador';


--
-- TOC entry 242 (class 1259 OID 16683)
-- Name: tb_agendas_solicitudes_id_agenda_solicitud_seq; Type: SEQUENCE; Schema: solicitudes; Owner: postgres
--

CREATE SEQUENCE solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 242
-- Name: tb_agendas_solicitudes_id_agenda_solicitud_seq; Type: SEQUENCE OWNED BY; Schema: solicitudes; Owner: postgres
--

ALTER SEQUENCE solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq OWNED BY solicitudes.tb_agendas_solicitudes.id_agenda_solicitud;


--
-- TOC entry 234 (class 1259 OID 16642)
-- Name: tb_caracteristicas_solicitudes; Type: TABLE; Schema: solicitudes; Owner: postgres
--

CREATE TABLE solicitudes.tb_caracteristicas_solicitudes (
    id_caracteristicas_solicitud integer NOT NULL,
    id_caracteristica_inmueble integer,
    id_solicitud integer,
    valor_caracteristica character varying(150)
);


ALTER TABLE solicitudes.tb_caracteristicas_solicitudes OWNER TO postgres;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 234
-- Name: TABLE tb_caracteristicas_solicitudes; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON TABLE solicitudes.tb_caracteristicas_solicitudes IS 'Tabla que contiene la información de las características que tendrá una solicitud';


--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_caracteristicas_solicitudes.id_caracteristicas_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_caracteristicas_solicitudes.id_caracteristicas_solicitud IS 'Llave primaria ID de la tabla que reune las caracteristicas de las solicitudes';


--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_caracteristicas_solicitudes.id_caracteristica_inmueble; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_caracteristicas_solicitudes.id_caracteristica_inmueble IS 'id_solicitudes_inmuebles';


--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_caracteristicas_solicitudes.id_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_caracteristicas_solicitudes.id_solicitud IS 'Llave foránea que asocia la solicitud';


--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_caracteristicas_solicitudes.valor_caracteristica; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_caracteristicas_solicitudes.valor_caracteristica IS 'Valor de la característica';


--
-- TOC entry 233 (class 1259 OID 16640)
-- Name: tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq; Type: SEQUENCE; Schema: solicitudes; Owner: postgres
--

CREATE SEQUENCE solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 233
-- Name: tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq; Type: SEQUENCE OWNED BY; Schema: solicitudes; Owner: postgres
--

ALTER SEQUENCE solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq OWNED BY solicitudes.tb_caracteristicas_solicitudes.id_caracteristicas_solicitud;


--
-- TOC entry 232 (class 1259 OID 16634)
-- Name: tb_estados_solicitudes; Type: TABLE; Schema: solicitudes; Owner: postgres
--

CREATE TABLE solicitudes.tb_estados_solicitudes (
    id_estado_solicitud integer NOT NULL,
    id_solicitud_estado integer,
    id_persona integer,
    observacion character varying(300),
    fecha_creacion timestamp with time zone,
    id_tipo_actividad integer,
    actividad_programada character(2),
    fecha_programada timestamp with time zone,
    valor_negocio integer,
    porcentaje_comision numeric(3,2),
    id_solicitud integer
);


ALTER TABLE solicitudes.tb_estados_solicitudes OWNER TO postgres;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE tb_estados_solicitudes; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON TABLE solicitudes.tb_estados_solicitudes IS 'Tabla de estados de las solicitudes';


--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.id_estado_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_estado_solicitud IS 'ID llave primaria de la tabla de estado de solicitudes';


--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.id_solicitud_estado; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_solicitud_estado IS 'Llave foránea que relaciona el estado actual que tiene la solicitud';


--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.id_persona; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_persona IS 'Llave foránea que relaciona el asesor o persona de la empresa que actualiza el estado de la solicitud';


--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.observacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.observacion IS 'Observación sobre el estado adicionado a la solicitud';


--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.fecha_creacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.fecha_creacion IS 'Fecha en la que se crea el estado';


--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.id_tipo_actividad; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_tipo_actividad IS 'Llave foránea que relaciona el tipo de actividad efectuada';


--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.actividad_programada; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.actividad_programada IS 'Valor que indica si fue una actividad programada ';


--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.fecha_programada; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.fecha_programada IS 'Fecha y hora en las que son programadas las actividades';


--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.valor_negocio; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.valor_negocio IS 'Valor real por el que se realiza el negocio o venta del inmueble';


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.porcentaje_comision; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.porcentaje_comision IS 'Porcentaje de comisión de ganancia sobre el negocio';


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_estados_solicitudes.id_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_solicitud IS 'Llave foránea que relaciona la solicitud';


--
-- TOC entry 231 (class 1259 OID 16632)
-- Name: tb_estados_solicitudes_id_estado_solicitud_seq; Type: SEQUENCE; Schema: solicitudes; Owner: postgres
--

CREATE SEQUENCE solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq OWNER TO postgres;

--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 231
-- Name: tb_estados_solicitudes_id_estado_solicitud_seq; Type: SEQUENCE OWNED BY; Schema: solicitudes; Owner: postgres
--

ALTER SEQUENCE solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq OWNED BY solicitudes.tb_estados_solicitudes.id_estado_solicitud;


--
-- TOC entry 240 (class 1259 OID 16666)
-- Name: tb_intereses_solicitudes; Type: TABLE; Schema: solicitudes; Owner: postgres
--

CREATE TABLE solicitudes.tb_intereses_solicitudes (
    id_interes_solicitud integer NOT NULL,
    id_interes integer,
    id_solicitud integer,
    observacion character varying(150)
);


ALTER TABLE solicitudes.tb_intereses_solicitudes OWNER TO postgres;

--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE tb_intereses_solicitudes; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON TABLE solicitudes.tb_intereses_solicitudes IS 'Tabla que asocia los intereses de los clientes con las solicitudes';


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_intereses_solicitudes.id_interes_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_intereses_solicitudes.id_interes_solicitud IS 'Llave primaria de la tabla de intereses de la solicitud';


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_intereses_solicitudes.id_interes; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_intereses_solicitudes.id_interes IS 'Llave foránea que relaciona los intereses asociados a la solicitud';


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_intereses_solicitudes.id_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_intereses_solicitudes.id_solicitud IS 'Llave foránea hacia la tabla de solicitudes de compra';


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_intereses_solicitudes.observacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_intereses_solicitudes.observacion IS 'Observación o valor del interés adicional ingresado a la solicitud.';


--
-- TOC entry 239 (class 1259 OID 16664)
-- Name: tb_intereses_solicitudes_id_interes_solicitud_seq; Type: SEQUENCE; Schema: solicitudes; Owner: postgres
--

CREATE SEQUENCE solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq OWNER TO postgres;

--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 239
-- Name: tb_intereses_solicitudes_id_interes_solicitud_seq; Type: SEQUENCE OWNED BY; Schema: solicitudes; Owner: postgres
--

ALTER SEQUENCE solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq OWNED BY solicitudes.tb_intereses_solicitudes.id_interes_solicitud;


--
-- TOC entry 224 (class 1259 OID 16589)
-- Name: tb_solicitudes_compra; Type: TABLE; Schema: solicitudes; Owner: postgres
--

CREATE TABLE solicitudes.tb_solicitudes_compra (
    id_solicitudes integer NOT NULL,
    id_cliente integer,
    id_tipo_inmueble integer,
    observaciones character varying(300),
    valor_inmueble integer,
    id_forma_pago integer,
    id_urgencia integer,
    id_zona integer,
    fecha_creacion timestamp with time zone,
    id_usuario_creacion integer,
    id_usuario_modifica integer,
    fecha_modificacion timestamp with time zone,
    id_estado_solicitud integer,
    numero_solicitud character varying(15),
    cantidad_ninos integer,
    cantidad_adultos integer,
    cantidad_adultos_mayores integer,
    fecha_requerida date
);


ALTER TABLE solicitudes.tb_solicitudes_compra OWNER TO postgres;

--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE tb_solicitudes_compra; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON TABLE solicitudes.tb_solicitudes_compra IS 'Tabla que contiene la información de las solicitudes';


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_solicitudes; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_solicitudes IS 'Id de la tabla de solicitudes';


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_cliente; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_cliente IS 'Llave foránea a la tabla de clientes';


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_tipo_inmueble; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_tipo_inmueble IS 'Llave foránea a la tabla de inmuebles';


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.observaciones; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.observaciones IS 'Observaciones adicionales de la solicitud';


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.valor_inmueble; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.valor_inmueble IS 'Valor del inmueble buscado por el cliente';


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_forma_pago; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_forma_pago IS 'Llave foránea a la tabla de forma de pago';


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_urgencia; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_urgencia IS 'Llave foránea a la tabla de urgencia con la que se requiere el inmueble';


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_zona; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_zona IS 'Zona de la ciudad en la que se solicita el inmueble.';


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.fecha_creacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.fecha_creacion IS 'Fecha en la que se crea la solicitud';


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_usuario_creacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_usuario_creacion IS 'Id del empleado que crea la solicitud';


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_usuario_modifica; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_usuario_modifica IS 'Id del empleado que modifica la solicitud';


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.fecha_modificacion; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.fecha_modificacion IS 'Fecha de modificación de la solicitud';


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.id_estado_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_estado_solicitud IS 'Llave foránea que relaciona con la tabla de estados de solicitudes';


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.numero_solicitud; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.numero_solicitud IS 'Número consecutivo de la solicitud';


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.cantidad_ninos; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.cantidad_ninos IS 'Cantidad de niños que habitarán el inmueble';


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.cantidad_adultos; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.cantidad_adultos IS 'Cantidad de adultos que habitarán el inmueble';


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.cantidad_adultos_mayores; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.cantidad_adultos_mayores IS 'Cantidad de adultos mayores que habitarán el inmueble';


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tb_solicitudes_compra.fecha_requerida; Type: COMMENT; Schema: solicitudes; Owner: postgres
--

COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.fecha_requerida IS 'Fecha en la que se requiere adquirir el inmueble';


--
-- TOC entry 223 (class 1259 OID 16587)
-- Name: tb_solicitudes_id_solicitudes_seq; Type: SEQUENCE; Schema: solicitudes; Owner: postgres
--

CREATE SEQUENCE solicitudes.tb_solicitudes_id_solicitudes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE solicitudes.tb_solicitudes_id_solicitudes_seq OWNER TO postgres;

--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_solicitudes_id_solicitudes_seq; Type: SEQUENCE OWNED BY; Schema: solicitudes; Owner: postgres
--

ALTER SEQUENCE solicitudes.tb_solicitudes_id_solicitudes_seq OWNED BY solicitudes.tb_solicitudes_compra.id_solicitudes;


--
-- TOC entry 241 (class 1259 OID 16680)
-- Name: tb_tipos_actividades; Type: TABLE; Schema: tipos; Owner: postgres
--

CREATE TABLE tipos.tb_tipos_actividades (
    id_tipo_actividad integer NOT NULL,
    descripcion character varying(50)
);


ALTER TABLE tipos.tb_tipos_actividades OWNER TO postgres;

--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 241
-- Name: TABLE tb_tipos_actividades; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON TABLE tipos.tb_tipos_actividades IS 'Tabla que contiene los tipos de actividades que se efectúan en cada estado';


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN tb_tipos_actividades.id_tipo_actividad; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tipos_actividades.id_tipo_actividad IS 'Id llave primaria de la tabla de tipos de actividades';


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN tb_tipos_actividades.descripcion; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tipos_actividades.descripcion IS 'Descripción o denominación del tipo de actividad.';


--
-- TOC entry 260 (class 1259 OID 16909)
-- Name: tb_tipos_actividades_id_tipo_actividad_seq; Type: SEQUENCE; Schema: tipos; Owner: postgres
--

CREATE SEQUENCE tipos.tb_tipos_actividades_id_tipo_actividad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipos.tb_tipos_actividades_id_tipo_actividad_seq OWNER TO postgres;

--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 260
-- Name: tb_tipos_actividades_id_tipo_actividad_seq; Type: SEQUENCE OWNED BY; Schema: tipos; Owner: postgres
--

ALTER SEQUENCE tipos.tb_tipos_actividades_id_tipo_actividad_seq OWNED BY tipos.tb_tipos_actividades.id_tipo_actividad;


--
-- TOC entry 272 (class 1259 OID 17042)
-- Name: tb_tipos_clientes; Type: TABLE; Schema: tipos; Owner: postgres
--

CREATE TABLE tipos.tb_tipos_clientes (
    id_tipo_cliente integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE tipos.tb_tipos_clientes OWNER TO postgres;

--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE tb_tipos_clientes; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON TABLE tipos.tb_tipos_clientes IS 'Tabla que contiene la información de los tipos de clientes que se registran en el sistema.';


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN tb_tipos_clientes.id_tipo_cliente; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tipos_clientes.id_tipo_cliente IS 'ID llave primaria de la tabla.';


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN tb_tipos_clientes.descripcion; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tipos_clientes.descripcion IS 'Descripción o denominación del tipo de cliente.';


--
-- TOC entry 271 (class 1259 OID 17040)
-- Name: tb_tipos_clientes_id_tipo_cliente_seq; Type: SEQUENCE; Schema: tipos; Owner: postgres
--

CREATE SEQUENCE tipos.tb_tipos_clientes_id_tipo_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipos.tb_tipos_clientes_id_tipo_cliente_seq OWNER TO postgres;

--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 271
-- Name: tb_tipos_clientes_id_tipo_cliente_seq; Type: SEQUENCE OWNED BY; Schema: tipos; Owner: postgres
--

ALTER SEQUENCE tipos.tb_tipos_clientes_id_tipo_cliente_seq OWNED BY tipos.tb_tipos_clientes.id_tipo_cliente;


--
-- TOC entry 220 (class 1259 OID 16571)
-- Name: tb_tipos_inmuebles; Type: TABLE; Schema: tipos; Owner: postgres
--

CREATE TABLE tipos.tb_tipos_inmuebles (
    id_tipo_inmueble integer NOT NULL,
    nombre character varying(100)
);


ALTER TABLE tipos.tb_tipos_inmuebles OWNER TO postgres;

--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE tb_tipos_inmuebles; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON TABLE tipos.tb_tipos_inmuebles IS 'Tabla que contiene los tipos de inmuebles que se ofrecen a la venta o alquiler.';


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN tb_tipos_inmuebles.id_tipo_inmueble; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tipos_inmuebles.id_tipo_inmueble IS 'Id de la tabla que es la llave primaria de la misma';


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN tb_tipos_inmuebles.nombre; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tipos_inmuebles.nombre IS 'Nombre del tipo de inmueble';


--
-- TOC entry 266 (class 1259 OID 16999)
-- Name: tb_tipos_notificacion; Type: TABLE; Schema: tipos; Owner: postgres
--

CREATE TABLE tipos.tb_tipos_notificacion (
    id_tipo_notificacion integer NOT NULL,
    descripcion character varying(30)
);


ALTER TABLE tipos.tb_tipos_notificacion OWNER TO postgres;

--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 266
-- Name: TABLE tb_tipos_notificacion; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON TABLE tipos.tb_tipos_notificacion IS 'Tabla que contiene la información de los tipos de notificación';


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN tb_tipos_notificacion.descripcion; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tipos_notificacion.descripcion IS 'descripcion o denominación del tipo de notificación';


--
-- TOC entry 265 (class 1259 OID 16997)
-- Name: tb_tipos_notificacion_id_tipo_notificacion_seq; Type: SEQUENCE; Schema: tipos; Owner: postgres
--

CREATE SEQUENCE tipos.tb_tipos_notificacion_id_tipo_notificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipos.tb_tipos_notificacion_id_tipo_notificacion_seq OWNER TO postgres;

--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 265
-- Name: tb_tipos_notificacion_id_tipo_notificacion_seq; Type: SEQUENCE OWNED BY; Schema: tipos; Owner: postgres
--

ALTER SEQUENCE tipos.tb_tipos_notificacion_id_tipo_notificacion_seq OWNED BY tipos.tb_tipos_notificacion.id_tipo_notificacion;


--
-- TOC entry 204 (class 1259 OID 16429)
-- Name: tb_tiposidentificacion; Type: TABLE; Schema: tipos; Owner: postgres
--

CREATE TABLE tipos.tb_tiposidentificacion (
    id_tipo_ident integer NOT NULL,
    desc_tipo_id character varying(25) NOT NULL,
    abreviatura character varying(5)
);


ALTER TABLE tipos.tb_tiposidentificacion OWNER TO postgres;

--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE tb_tiposidentificacion; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON TABLE tipos.tb_tiposidentificacion IS 'Tabla que contiene los tipos de documento de una persona y su respectivo ID ';


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN tb_tiposidentificacion.id_tipo_ident; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tiposidentificacion.id_tipo_ident IS 'Id primary key de la tabla tb_tiposidentificacion';


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN tb_tiposidentificacion.desc_tipo_id; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tiposidentificacion.desc_tipo_id IS 'Descripción o nombre del tipo de documento';


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN tb_tiposidentificacion.abreviatura; Type: COMMENT; Schema: tipos; Owner: postgres
--

COMMENT ON COLUMN tipos.tb_tiposidentificacion.abreviatura IS 'Abreviatura del tipo de identificación.';


--
-- TOC entry 203 (class 1259 OID 16427)
-- Name: tb_tiposdocumento_id_tipo_ident_seq; Type: SEQUENCE; Schema: tipos; Owner: postgres
--

CREATE SEQUENCE tipos.tb_tiposdocumento_id_tipo_ident_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipos.tb_tiposdocumento_id_tipo_ident_seq OWNER TO postgres;

--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 203
-- Name: tb_tiposdocumento_id_tipo_ident_seq; Type: SEQUENCE OWNED BY; Schema: tipos; Owner: postgres
--

ALTER SEQUENCE tipos.tb_tiposdocumento_id_tipo_ident_seq OWNED BY tipos.tb_tiposidentificacion.id_tipo_ident;


--
-- TOC entry 2917 (class 2604 OID 16601)
-- Name: tb_clientes id_cliente; Type: DEFAULT; Schema: clientes; Owner: postgres
--

ALTER TABLE ONLY clientes.tb_clientes ALTER COLUMN id_cliente SET DEFAULT nextval('clientes.tb_clientes_id_cliente_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 17016)
-- Name: tb_aut_externas id_aut_externas; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_aut_externas ALTER COLUMN id_aut_externas SET DEFAULT nextval('generales.tb_aut_externas_id_aut_externas_seq'::regclass);


--
-- TOC entry 2940 (class 2604 OID 17027)
-- Name: tb_aut_externas_services id_aut_externas_services; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_aut_externas_services ALTER COLUMN id_aut_externas_services SET DEFAULT nextval('generales.tb_aut_externas_services_id_aut_externas_services_seq'::regclass);


--
-- TOC entry 2934 (class 2604 OID 16821)
-- Name: tb_cargos id_cargo; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_cargos ALTER COLUMN id_cargo SET DEFAULT nextval('generales.tb_cargos_id_cargo_seq'::regclass);


--
-- TOC entry 2913 (class 2604 OID 16508)
-- Name: tb_ciudades id_ciudad; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_ciudades ALTER COLUMN id_ciudad SET DEFAULT nextval('generales.tb_ciudades_id_ciudad_seq'::regclass);


--
-- TOC entry 2943 (class 2604 OID 17135)
-- Name: tb_criterios_diligenciamiento id_criterio_diligenciamiento; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_criterios_diligenciamiento ALTER COLUMN id_criterio_diligenciamiento SET DEFAULT nextval('generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq'::regclass);


--
-- TOC entry 2911 (class 2604 OID 16492)
-- Name: tb_departamentos id_departamento; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('generales.tb_departamentos_id_departamento_seq'::regclass);


--
-- TOC entry 2935 (class 2604 OID 16864)
-- Name: tb_estado_agenda id_estado_agenda; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_estado_agenda ALTER COLUMN id_estado_agenda SET DEFAULT nextval('generales.tb_estado_agenda_id_estado_agenda_seq'::regclass);


--
-- TOC entry 2919 (class 2604 OID 16613)
-- Name: tb_estados_civiles id_estado_civil; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_estados_civiles ALTER COLUMN id_estado_civil SET DEFAULT nextval('generales.tb_estados_civiles_id_estado_civil_seq'::regclass);


--
-- TOC entry 2936 (class 2604 OID 16950)
-- Name: tb_formas_pago id_forma_pago; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_formas_pago ALTER COLUMN id_forma_pago SET DEFAULT nextval('generales.tb_formas_pago_id_forma_pago_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 16713)
-- Name: tb_inmuebles_estados id_inmueble_estado; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_inmuebles_estados ALTER COLUMN id_inmueble_estado SET DEFAULT nextval('generales.tb_inmuebles_estados_id_inmueble_estado_seq'::regclass);


--
-- TOC entry 2924 (class 2604 OID 16661)
-- Name: tb_intereses id_interes; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_intereses ALTER COLUMN id_interes SET DEFAULT nextval('generales.tb_intereses_id_interes_seq'::regclass);


--
-- TOC entry 2932 (class 2604 OID 16729)
-- Name: tb_jornadas id_jornada; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_jornadas ALTER COLUMN id_jornada SET DEFAULT nextval('generales.tb_jornadas_id_jornada_seq'::regclass);


--
-- TOC entry 2912 (class 2604 OID 16500)
-- Name: tb_paises id_pais; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_paises ALTER COLUMN id_pais SET DEFAULT nextval('generales.tb_paises_id_pais_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 16653)
-- Name: tb_solicitudes_estados id_solicitud_estado; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_solicitudes_estados ALTER COLUMN id_solicitud_estado SET DEFAULT nextval('generales.tb_solicitudes_estados_id_solicitud_estado_seq'::regclass);


--
-- TOC entry 2937 (class 2604 OID 16964)
-- Name: tb_urgencias id_urgencia; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_urgencias ALTER COLUMN id_urgencia SET DEFAULT nextval('generales.tb_urgencias_id_urgencia_seq'::regclass);


--
-- TOC entry 2933 (class 2604 OID 16807)
-- Name: tb_zonas id_zona; Type: DEFAULT; Schema: generales; Owner: postgres
--

ALTER TABLE ONLY generales.tb_zonas ALTER COLUMN id_zona SET DEFAULT nextval('generales.tb_zonas_id_zona_seq'::regclass);


--
-- TOC entry 2915 (class 2604 OID 16583)
-- Name: tb_caracteristicas_inmuebles id_caracterisitica_inmueble; Type: DEFAULT; Schema: inmuebles; Owner: postgres
--

ALTER TABLE ONLY inmuebles.tb_caracteristicas_inmuebles ALTER COLUMN id_caracterisitica_inmueble SET DEFAULT nextval('inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq'::regclass);


--
-- TOC entry 2944 (class 2604 OID 17143)
-- Name: tb_caracteristicas_tipo_inmueble id_caracteristicas_tipo_inmueble; Type: DEFAULT; Schema: inmuebles; Owner: postgres
--

ALTER TABLE ONLY inmuebles.tb_caracteristicas_tipo_inmueble ALTER COLUMN id_caracteristicas_tipo_inmueble SET DEFAULT nextval('inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 16705)
-- Name: tb_estados_inmuebles id_estado_inmueble; Type: DEFAULT; Schema: inmuebles; Owner: postgres
--

ALTER TABLE ONLY inmuebles.tb_estados_inmuebles ALTER COLUMN id_estado_inmueble SET DEFAULT nextval('inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq'::regclass);


--
-- TOC entry 2931 (class 2604 OID 16721)
-- Name: tb_horarios_inmuebles id_horario_inmueble; Type: DEFAULT; Schema: inmuebles; Owner: postgres
--

ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles ALTER COLUMN id_horario_inmueble SET DEFAULT nextval('inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 16697)
-- Name: tb_inmuebles_registrados id_inmueble_registrado; Type: DEFAULT; Schema: inmuebles; Owner: postgres
--

ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados ALTER COLUMN id_inmueble_registrado SET DEFAULT nextval('inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq'::regclass);


--
-- TOC entry 2942 (class 2604 OID 17127)
-- Name: tb_tipos_caracteristicas_inmuebles id_tipos_caracteristicas_inmuebles; Type: DEFAULT; Schema: inmuebles; Owner: postgres
--

ALTER TABLE ONLY inmuebles.tb_tipos_caracteristicas_inmuebles ALTER COLUMN id_tipos_caracteristicas_inmuebles SET DEFAULT nextval('inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq'::regclass);


--
-- TOC entry 2920 (class 2604 OID 16629)
-- Name: tb_tipos_inmuebles id_tipos_inmuebles; Type: DEFAULT; Schema: inmuebles; Owner: postgres
--

ALTER TABLE ONLY inmuebles.tb_tipos_inmuebles ALTER COLUMN id_tipos_inmuebles SET DEFAULT nextval('inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq'::regclass);


--
-- TOC entry 2914 (class 2604 OID 16544)
-- Name: tb_personal id_personal; Type: DEFAULT; Schema: rrhh; Owner: postgres
--

ALTER TABLE ONLY rrhh.tb_personal ALTER COLUMN id_personal SET DEFAULT nextval('rrhh.tb_personal_id_personal_seq'::regclass);


--
-- TOC entry 2907 (class 2604 OID 16452)
-- Name: tb_users_access id_user_access; Type: DEFAULT; Schema: session; Owner: postgres
--

ALTER TABLE ONLY session.tb_users_access ALTER COLUMN id_user_access SET DEFAULT nextval('session.tb_users_access_id_user_access_seq'::regclass);


--
-- TOC entry 2908 (class 2604 OID 16465)
-- Name: tb_users_access id_user_app; Type: DEFAULT; Schema: session; Owner: postgres
--

ALTER TABLE ONLY session.tb_users_access ALTER COLUMN id_user_app SET DEFAULT nextval('session.tb_users_access_id_user_seq'::regclass);


--
-- TOC entry 2905 (class 2604 OID 16441)
-- Name: tb_users_app id_user; Type: DEFAULT; Schema: session; Owner: postgres
--

ALTER TABLE ONLY session.tb_users_app ALTER COLUMN id_user SET DEFAULT nextval('session.tb_users_id_usuario_seq'::regclass);


--
-- TOC entry 2910 (class 2604 OID 16483)
-- Name: tb_users_app_externo id_user_app_externo; Type: DEFAULT; Schema: session; Owner: postgres
--

ALTER TABLE ONLY session.tb_users_app_externo ALTER COLUMN id_user_app_externo SET DEFAULT nextval('session.tb_users_app_externo_id_user_app_externo_seq'::regclass);


--
-- TOC entry 2927 (class 2604 OID 16688)
-- Name: tb_agendas_solicitudes id_agenda_solicitud; Type: DEFAULT; Schema: solicitudes; Owner: postgres
--

ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes ALTER COLUMN id_agenda_solicitud SET DEFAULT nextval('solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq'::regclass);


--
-- TOC entry 2922 (class 2604 OID 16645)
-- Name: tb_caracteristicas_solicitudes id_caracteristicas_solicitud; Type: DEFAULT; Schema: solicitudes; Owner: postgres
--

ALTER TABLE ONLY solicitudes.tb_caracteristicas_solicitudes ALTER COLUMN id_caracteristicas_solicitud SET DEFAULT nextval('solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq'::regclass);


--
-- TOC entry 2921 (class 2604 OID 16637)
-- Name: tb_estados_solicitudes id_estado_solicitud; Type: DEFAULT; Schema: solicitudes; Owner: postgres
--

ALTER TABLE ONLY solicitudes.tb_estados_solicitudes ALTER COLUMN id_estado_solicitud SET DEFAULT nextval('solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq'::regclass);


--
-- TOC entry 2925 (class 2604 OID 16669)
-- Name: tb_intereses_solicitudes id_interes_solicitud; Type: DEFAULT; Schema: solicitudes; Owner: postgres
--

ALTER TABLE ONLY solicitudes.tb_intereses_solicitudes ALTER COLUMN id_interes_solicitud SET DEFAULT nextval('solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq'::regclass);


--
-- TOC entry 2916 (class 2604 OID 16592)
-- Name: tb_solicitudes_compra id_solicitudes; Type: DEFAULT; Schema: solicitudes; Owner: postgres
--

ALTER TABLE ONLY solicitudes.tb_solicitudes_compra ALTER COLUMN id_solicitudes SET DEFAULT nextval('solicitudes.tb_solicitudes_id_solicitudes_seq'::regclass);


--
-- TOC entry 2926 (class 2604 OID 16911)
-- Name: tb_tipos_actividades id_tipo_actividad; Type: DEFAULT; Schema: tipos; Owner: postgres
--

ALTER TABLE ONLY tipos.tb_tipos_actividades ALTER COLUMN id_tipo_actividad SET DEFAULT nextval('tipos.tb_tipos_actividades_id_tipo_actividad_seq'::regclass);


--
-- TOC entry 2941 (class 2604 OID 17045)
-- Name: tb_tipos_clientes id_tipo_cliente; Type: DEFAULT; Schema: tipos; Owner: postgres
--

ALTER TABLE ONLY tipos.tb_tipos_clientes ALTER COLUMN id_tipo_cliente SET DEFAULT nextval('tipos.tb_tipos_clientes_id_tipo_cliente_seq'::regclass);


--
-- TOC entry 2938 (class 2604 OID 17002)
-- Name: tb_tipos_notificacion id_tipo_notificacion; Type: DEFAULT; Schema: tipos; Owner: postgres
--

ALTER TABLE ONLY tipos.tb_tipos_notificacion ALTER COLUMN id_tipo_notificacion SET DEFAULT nextval('tipos.tb_tipos_notificacion_id_tipo_notificacion_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 16432)
-- Name: tb_tiposidentificacion id_tipo_ident; Type: DEFAULT; Schema: tipos; Owner: postgres
--

ALTER TABLE ONLY tipos.tb_tiposidentificacion ALTER COLUMN id_tipo_ident SET DEFAULT nextval('tipos.tb_tiposdocumento_id_tipo_ident_seq'::regclass);


--
-- TOC entry 3259 (class 0 OID 16596)
-- Dependencies: 225
-- Data for Name: tb_clientes; Type: TABLE DATA; Schema: clientes; Owner: postgres
--

INSERT INTO clientes.tb_clientes (id_cliente, nombres, apellidos, id_tipo_identificacion, numero_identificacion, numero_telefono, numero_celular, correo_electronico, profesion, ocupacion, "fecha_cumpleaños", id_estado_civil, otra_info, id_tipo_notificacion, id_user, direccion, id_ciudad, id_departamento, id_pais, id_tipo_cliente, fecha_creacion, id_user_mod, fecha_modificacion) VALUES (18, 'PEPITO', 'PEREZ BERNAL', 2, '16706437', '', '3217461973', 'LEQUIROGA@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, 1, 1, '', 132, 32, 1, 1, '2019-01-12 22:03:50.395252-05', NULL, NULL);
INSERT INTO clientes.tb_clientes (id_cliente, nombres, apellidos, id_tipo_identificacion, numero_identificacion, numero_telefono, numero_celular, correo_electronico, profesion, ocupacion, "fecha_cumpleaños", id_estado_civil, otra_info, id_tipo_notificacion, id_user, direccion, id_ciudad, id_departamento, id_pais, id_tipo_cliente, fecha_creacion, id_user_mod, fecha_modificacion) VALUES (16, 'FRANCISCO', 'QUIROGA', 2, '16706443', '3151816', '3217461973', 'LEQUIROGA@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, 2, 1, 'CALLE FALSA 123', 423875, 1610, 89, 1, '2018-12-23 16:10:01.624987-05', 1, '2018-12-29 17:46:28.21504-05');
INSERT INTO clientes.tb_clientes (id_cliente, nombres, apellidos, id_tipo_identificacion, numero_identificacion, numero_telefono, numero_celular, correo_electronico, profesion, ocupacion, "fecha_cumpleaños", id_estado_civil, otra_info, id_tipo_notificacion, id_user, direccion, id_ciudad, id_departamento, id_pais, id_tipo_cliente, fecha_creacion, id_user_mod, fecha_modificacion) VALUES (17, 'PAULA', 'AGREDO', 2, '31951273', '', '3217461973', 'LEQUIROGA@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, 3, 1, '', 556466, 1804, 103, 2, '2018-12-29 17:50:54.730283-05', 1, '2019-01-12 21:55:57.273191-05');


--
-- TOC entry 3302 (class 0 OID 17013)
-- Dependencies: 268
-- Data for Name: tb_aut_externas; Type: TABLE DATA; Schema: generales; Owner: postgres
--

INSERT INTO generales.tb_aut_externas (id_aut_externas, id_api, token_api, provider, uri) VALUES (1, 'id_company=1942092', 'wasi_token=0Stz_CkOK_PWxU_wlr6', 'wasi', 'https://api.wasi.co/v1/');
INSERT INTO generales.tb_aut_externas (id_aut_externas, id_api, token_api, provider, uri) VALUES (2, NULL, NULL, 'dolartoday', 'https://s3.amazonaws.com/dolartoday/data.json');
INSERT INTO generales.tb_aut_externas (id_aut_externas, id_api, token_api, provider, uri) VALUES (3, NULL, NULL, 'GetTRM', 'http://app.docm.co/prod/Dmservices/Utilities.svc/');


--
-- TOC entry 3304 (class 0 OID 17024)
-- Dependencies: 270
-- Data for Name: tb_aut_externas_services; Type: TABLE DATA; Schema: generales; Owner: postgres
--

INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (1, 'tipo_inmuebles', 'property-type/all', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (2, 'ciudades_depto', 'location/cities-from-region/', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (3, 'lista_paises', 'location/all-countries', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (4, 'deptos_pais', 'location/regions-from-country/', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (5, 'lista_zonas', 'location/locations-from-city/', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (6, 'lista_sectores', 'location/zones-from-city/', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (7, 'lista_caracteristicas', 'feature/all', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (8, 'tipos_clientes', 'client-type/all', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (9, 'lista_monedas', 'property/currency-all', 1);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (10, 'conversion_monedas', '', 2);
INSERT INTO generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) VALUES (11, 'trm', 'GetTRM', 3);


--
-- TOC entry 3291 (class 0 OID 16818)
-- Dependencies: 257
-- Data for Name: tb_cargos; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3251 (class 0 OID 16505)
-- Dependencies: 217
-- Data for Name: tb_ciudades; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3310 (class 0 OID 17132)
-- Dependencies: 276
-- Data for Name: tb_criterios_diligenciamiento; Type: TABLE DATA; Schema: generales; Owner: postgres
--

INSERT INTO generales.tb_criterios_diligenciamiento (id_criterio_diligenciamiento, descripcion) VALUES (2, 'Obligatorio');
INSERT INTO generales.tb_criterios_diligenciamiento (id_criterio_diligenciamiento, descripcion) VALUES (3, 'Opcional');


--
-- TOC entry 3247 (class 0 OID 16489)
-- Dependencies: 213
-- Data for Name: tb_departamentos; Type: TABLE DATA; Schema: generales; Owner: postgres
--

INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (21, '110808000', 'ATLANTICO', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (22, '119191000', 'AMAZONAS', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (23, '110505000', 'ANTIOQUIA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (24, '118181000', 'ARAUCA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (25, '118888000', 'ARCHIPIELAGO DE SAN ANDRES', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (26, '111313000', 'BOLIVAR', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (27, '111515000', 'BOYACA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (28, '111717000', 'CALDAS', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (29, '111818000', 'CAQUETA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (30, '118585000', 'CASANARE', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (31, '111919000', 'CAUCA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (32, '112020000', 'CESAR', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (33, '112727000', 'CHOCO', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (34, '112323000', 'CORDOBA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (35, '112525000', 'CUNDINAMARCA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (36, '119494000', 'GUAINIA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (37, '114444000', 'GUAJIRA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (38, '119595000', 'GUAVIARE', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (39, '114141000', 'HUILA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (40, '114747000', 'MAGDALENA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (41, '115050000', 'META', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (42, '115252000', 'NARIŃO', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (43, '115454000', 'NORTE DE SANTANDER', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (44, '118686000', 'PUTUMAYO', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (45, '116363000', 'QUINDIO', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (46, '116666000', 'RISARALDA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (47, '116868000', 'SANTANDER', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (48, '117070000', 'SUCRE', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (49, '117373000', 'TOLIMA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (50, '117676000', 'VALLE DEL CAUCA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (51, '119797000', 'VAUPES', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (52, '119999000', 'VICHADA', 1);
INSERT INTO generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) VALUES (53, NULL, NULL, 1);


--
-- TOC entry 3292 (class 0 OID 16859)
-- Dependencies: 258
-- Data for Name: tb_estado_agenda; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3262 (class 0 OID 16610)
-- Dependencies: 228
-- Data for Name: tb_estados_civiles; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3296 (class 0 OID 16947)
-- Dependencies: 262
-- Data for Name: tb_formas_pago; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3283 (class 0 OID 16710)
-- Dependencies: 249
-- Data for Name: tb_inmuebles_estados; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3272 (class 0 OID 16658)
-- Dependencies: 238
-- Data for Name: tb_intereses; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3287 (class 0 OID 16726)
-- Dependencies: 253
-- Data for Name: tb_jornadas; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3249 (class 0 OID 16497)
-- Dependencies: 215
-- Data for Name: tb_paises; Type: TABLE DATA; Schema: generales; Owner: postgres
--

INSERT INTO generales.tb_paises (id_pais, codigo_pais, nombre_pais) VALUES (1, '57', 'COLOMBIA');


--
-- TOC entry 3270 (class 0 OID 16650)
-- Dependencies: 236
-- Data for Name: tb_solicitudes_estados; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3298 (class 0 OID 16961)
-- Dependencies: 264
-- Data for Name: tb_urgencias; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3289 (class 0 OID 16804)
-- Dependencies: 255
-- Data for Name: tb_zonas; Type: TABLE DATA; Schema: generales; Owner: postgres
--



--
-- TOC entry 3256 (class 0 OID 16580)
-- Dependencies: 222
-- Data for Name: tb_caracteristicas_inmuebles; Type: TABLE DATA; Schema: inmuebles; Owner: postgres
--



--
-- TOC entry 3312 (class 0 OID 17140)
-- Dependencies: 278
-- Data for Name: tb_caracteristicas_tipo_inmueble; Type: TABLE DATA; Schema: inmuebles; Owner: postgres
--

INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (4, 4, 2, 3, 3, 1, NULL, '1', '2019-01-06 22:41:53.910644-05', NULL, 'Indica si la oficina tiene alarma');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (5, 4, 4, 3, 3, 1, NULL, '1', '2019-01-06 23:31:23.24448-05', NULL, 'Indica si la oficina es amoblada');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (6, 1, 9, 2, 1, 1, 1, '1', '2019-01-07 08:43:48.471946-05', '2019-01-07 08:43:57.062169-05', 'Cantidad de alcobas que tiene la casa');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (7, 1, 6, 3, 3, 1, NULL, '1', '2019-01-07 08:52:21.816734-05', NULL, 'Indica si la casa tiene baño auxiliar');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (9, 1, 24, 3, 2, 1, NULL, '1', '2019-01-07 09:03:04.104471-05', NULL, 'Descripción del piso o suelo de la casa');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (10, 1, 8, 3, 3, 1, NULL, '1', '2019-01-07 09:05:27.448669-05', NULL, 'Indica si la casa tiene habitación para personal de servicio');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (12, 1, 19, 2, 3, 1, NULL, '1', '2019-01-07 09:09:59.191212-05', NULL, 'Indica si la casa tiene servicio de gas domiciliario');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (13, 1, 98, 3, 1, 1, NULL, '1', '2019-01-07 09:12:56.09033-05', NULL, 'Cantidad de closets que tiene la casa');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (14, 2, 9, 2, 1, 1, NULL, '1', '2019-01-07 09:15:24.716831-05', NULL, 'Cantidad de habitaciones');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (15, 2, 14, 3, 3, 1, NULL, '1', '2019-01-07 09:16:58.343186-05', NULL, 'Indica si el apartamento cuenta con citófono');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (16, 2, 98, 2, 1, 1, NULL, '1', '2019-01-07 18:28:43.785747-05', NULL, 'Indica la cantidad de closets que tiene el apartamento.');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (11, 1, 13, 3, 3, 1, NULL, '0', '2019-01-07 09:07:37.290096-05', NULL, 'Indica si la casa tiene chimenea');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (1, 4, 1, 3, 3, 1, 1, '1', '2019-01-06 01:12:13.512378-05', '2019-01-07 19:27:44.574364-05', 'Indica si la oficina tiene o no aire acondicionado');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (17, 1, 30, 3, 3, 1, NULL, '1', '2019-01-07 19:34:36.40792-05', NULL, 'Indica si la casa tiene patio');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (8, 1, 5, 3, 3, 1, NULL, '0', '2019-01-07 08:57:37.363782-05', NULL, 'Indica si la casa tiene o no balcón');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (19, 14, 70, 2, 2, 1, NULL, '0', '2019-01-11 01:24:03.013081-05', NULL, 'Indica si el apartaestudio se encuentra en una zona cercana a colegios o universidades');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (20, 13, 87, 3, 3, 1, NULL, '1', '2019-01-11 01:27:04.040832-05', NULL, 'Indica si se encuentra en zona montañosa');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (21, 13, 9, 2, 1, 1, NULL, '1', '2019-01-11 01:28:52.904233-05', NULL, 'Cantidad de alcobas que tiene la finca - hotel');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (22, 13, 34, 3, 2, 1, NULL, '1', '2019-01-11 01:29:53.201643-05', NULL, 'Descripción de las zonas verdes');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (18, 2, 44, 3, 3, 1, NULL, '0', '2019-01-07 21:34:17.732832-05', NULL, 'Indica si la torre o edificio donde se ubica el apartamento cuenta con ascensor');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (24, 20, 1, 3, 1, 1, NULL, '1', '2019-01-12 22:10:15.665288-05', NULL, 'Indica la cantidad de airtes acondicionados');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (25, 20, 24, 2, 2, 1, NULL, '1', '2019-01-12 22:11:07.114231-05', NULL, 'Descripción del piso o suelo del apartamento duplex');
INSERT INTO inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) VALUES (23, 20, 43, 2, 3, 1, NULL, '0', '2019-01-12 22:07:59.407494-05', NULL, 'Indica si el apartamento duplesx se ubica en edificio con porteria');


--
-- TOC entry 3281 (class 0 OID 16702)
-- Dependencies: 247
-- Data for Name: tb_estados_inmuebles; Type: TABLE DATA; Schema: inmuebles; Owner: postgres
--



--
-- TOC entry 3285 (class 0 OID 16718)
-- Dependencies: 251
-- Data for Name: tb_horarios_inmuebles; Type: TABLE DATA; Schema: inmuebles; Owner: postgres
--



--
-- TOC entry 3279 (class 0 OID 16694)
-- Dependencies: 245
-- Data for Name: tb_inmuebles_registrados; Type: TABLE DATA; Schema: inmuebles; Owner: postgres
--



--
-- TOC entry 3308 (class 0 OID 17124)
-- Dependencies: 274
-- Data for Name: tb_tipos_caracteristicas_inmuebles; Type: TABLE DATA; Schema: inmuebles; Owner: postgres
--

INSERT INTO inmuebles.tb_tipos_caracteristicas_inmuebles (id_tipos_caracteristicas_inmuebles, descripcion) VALUES (1, 'Numérico');
INSERT INTO inmuebles.tb_tipos_caracteristicas_inmuebles (id_tipos_caracteristicas_inmuebles, descripcion) VALUES (2, 'Descriptivo');
INSERT INTO inmuebles.tb_tipos_caracteristicas_inmuebles (id_tipos_caracteristicas_inmuebles, descripcion) VALUES (3, 'Booleano (SI/NO)');


--
-- TOC entry 3264 (class 0 OID 16626)
-- Dependencies: 230
-- Data for Name: tb_tipos_inmuebles; Type: TABLE DATA; Schema: inmuebles; Owner: postgres
--



--
-- TOC entry 3253 (class 0 OID 16541)
-- Dependencies: 219
-- Data for Name: tb_personal; Type: TABLE DATA; Schema: rrhh; Owner: postgres
--



--
-- TOC entry 3242 (class 0 OID 16449)
-- Dependencies: 208
-- Data for Name: tb_users_access; Type: TABLE DATA; Schema: session; Owner: postgres
--



--
-- TOC entry 3240 (class 0 OID 16438)
-- Dependencies: 206
-- Data for Name: tb_users_app; Type: TABLE DATA; Schema: session; Owner: postgres
--

INSERT INTO session.tb_users_app (id_user, userlogin, password, estado, fecha_creacion, id_persona, id_user_app_externo) VALUES (1, 'lquiroga', 'e78caf56938df35dc210cca36f591e38', 1, '2018-12-09 15:27:50.105712', NULL, NULL);


--
-- TOC entry 3245 (class 0 OID 16480)
-- Dependencies: 211
-- Data for Name: tb_users_app_externo; Type: TABLE DATA; Schema: session; Owner: postgres
--



--
-- TOC entry 3277 (class 0 OID 16685)
-- Dependencies: 243
-- Data for Name: tb_agendas_solicitudes; Type: TABLE DATA; Schema: solicitudes; Owner: postgres
--



--
-- TOC entry 3268 (class 0 OID 16642)
-- Dependencies: 234
-- Data for Name: tb_caracteristicas_solicitudes; Type: TABLE DATA; Schema: solicitudes; Owner: postgres
--



--
-- TOC entry 3266 (class 0 OID 16634)
-- Dependencies: 232
-- Data for Name: tb_estados_solicitudes; Type: TABLE DATA; Schema: solicitudes; Owner: postgres
--



--
-- TOC entry 3274 (class 0 OID 16666)
-- Dependencies: 240
-- Data for Name: tb_intereses_solicitudes; Type: TABLE DATA; Schema: solicitudes; Owner: postgres
--



--
-- TOC entry 3258 (class 0 OID 16589)
-- Dependencies: 224
-- Data for Name: tb_solicitudes_compra; Type: TABLE DATA; Schema: solicitudes; Owner: postgres
--



--
-- TOC entry 3275 (class 0 OID 16680)
-- Dependencies: 241
-- Data for Name: tb_tipos_actividades; Type: TABLE DATA; Schema: tipos; Owner: postgres
--



--
-- TOC entry 3306 (class 0 OID 17042)
-- Dependencies: 272
-- Data for Name: tb_tipos_clientes; Type: TABLE DATA; Schema: tipos; Owner: postgres
--

INSERT INTO tipos.tb_tipos_clientes (id_tipo_cliente, descripcion) VALUES (1, 'COMPRADOR');
INSERT INTO tipos.tb_tipos_clientes (id_tipo_cliente, descripcion) VALUES (2, 'VENDEDOR');


--
-- TOC entry 3254 (class 0 OID 16571)
-- Dependencies: 220
-- Data for Name: tb_tipos_inmuebles; Type: TABLE DATA; Schema: tipos; Owner: postgres
--



--
-- TOC entry 3300 (class 0 OID 16999)
-- Dependencies: 266
-- Data for Name: tb_tipos_notificacion; Type: TABLE DATA; Schema: tipos; Owner: postgres
--

INSERT INTO tipos.tb_tipos_notificacion (id_tipo_notificacion, descripcion) VALUES (1, 'CORREO ELECTRÓNICO');
INSERT INTO tipos.tb_tipos_notificacion (id_tipo_notificacion, descripcion) VALUES (2, 'MENSAJE SMS');
INSERT INTO tipos.tb_tipos_notificacion (id_tipo_notificacion, descripcion) VALUES (3, 'MENSAJE SMS Y CORREO');


--
-- TOC entry 3238 (class 0 OID 16429)
-- Dependencies: 204
-- Data for Name: tb_tiposidentificacion; Type: TABLE DATA; Schema: tipos; Owner: postgres
--

INSERT INTO tipos.tb_tiposidentificacion (id_tipo_ident, desc_tipo_id, abreviatura) VALUES (2, 'CÉDULA DE CIUDADANÍA', 'CC');
INSERT INTO tipos.tb_tiposidentificacion (id_tipo_ident, desc_tipo_id, abreviatura) VALUES (3, 'CÉDULA DE EXTRANJERÍA', 'CE');
INSERT INTO tipos.tb_tiposidentificacion (id_tipo_ident, desc_tipo_id, abreviatura) VALUES (4, 'NIT', 'NIT');
INSERT INTO tipos.tb_tiposidentificacion (id_tipo_ident, desc_tipo_id, abreviatura) VALUES (5, 'TARJETA DE IDENTIDAD', 'TI');
INSERT INTO tipos.tb_tiposidentificacion (id_tipo_ident, desc_tipo_id, abreviatura) VALUES (6, 'REGISTRO CIVIL', 'RC');
INSERT INTO tipos.tb_tiposidentificacion (id_tipo_ident, desc_tipo_id, abreviatura) VALUES (7, 'NUIP', 'NUIP');
INSERT INTO tipos.tb_tiposidentificacion (id_tipo_ident, desc_tipo_id, abreviatura) VALUES (8, 'PASAPORTE', 'PA');


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_clientes_id_cliente_seq; Type: SEQUENCE SET; Schema: clientes; Owner: postgres
--

SELECT pg_catalog.setval('clientes.tb_clientes_id_cliente_seq', 18, true);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 267
-- Name: tb_aut_externas_id_aut_externas_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_aut_externas_id_aut_externas_seq', 3, true);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 269
-- Name: tb_aut_externas_services_id_aut_externas_services_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_aut_externas_services_id_aut_externas_services_seq', 11, true);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 256
-- Name: tb_cargos_id_cargo_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_cargos_id_cargo_seq', 1, false);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 216
-- Name: tb_ciudades_id_ciudad_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_ciudades_id_ciudad_seq', 1, false);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 275
-- Name: tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq', 3, true);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 212
-- Name: tb_departamentos_id_departamento_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_departamentos_id_departamento_seq', 53, true);


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 259
-- Name: tb_estado_agenda_id_estado_agenda_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_estado_agenda_id_estado_agenda_seq', 1, false);


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 227
-- Name: tb_estados_civiles_id_estado_civil_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_estados_civiles_id_estado_civil_seq', 1, false);


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 261
-- Name: tb_formas_pago_id_forma_pago_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_formas_pago_id_forma_pago_seq', 1, false);


--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 248
-- Name: tb_inmuebles_estados_id_inmueble_estado_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_inmuebles_estados_id_inmueble_estado_seq', 1, false);


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 237
-- Name: tb_intereses_id_interes_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_intereses_id_interes_seq', 1, false);


--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 252
-- Name: tb_jornadas_id_jornada_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_jornadas_id_jornada_seq', 1, false);


--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 214
-- Name: tb_paises_id_pais_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_paises_id_pais_seq', 1, true);


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 235
-- Name: tb_solicitudes_estados_id_solicitud_estado_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_solicitudes_estados_id_solicitud_estado_seq', 1, false);


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 263
-- Name: tb_urgencias_id_urgencia_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_urgencias_id_urgencia_seq', 1, false);


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 254
-- Name: tb_zonas_id_zona_seq; Type: SEQUENCE SET; Schema: generales; Owner: postgres
--

SELECT pg_catalog.setval('generales.tb_zonas_id_zona_seq', 1, false);


--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 221
-- Name: tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq; Type: SEQUENCE SET; Schema: inmuebles; Owner: postgres
--

SELECT pg_catalog.setval('inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq', 1, false);


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 277
-- Name: tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq; Type: SEQUENCE SET; Schema: inmuebles; Owner: postgres
--

SELECT pg_catalog.setval('inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq', 25, true);


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 246
-- Name: tb_estados_inmuebles_id_estado_inmueble_seq; Type: SEQUENCE SET; Schema: inmuebles; Owner: postgres
--

SELECT pg_catalog.setval('inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq', 1, false);


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 250
-- Name: tb_horarios_inmuebles_id_horario_inmueble_seq; Type: SEQUENCE SET; Schema: inmuebles; Owner: postgres
--

SELECT pg_catalog.setval('inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq', 1, false);


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 244
-- Name: tb_inmuebles_registrados_id_inmueble_registrado_seq; Type: SEQUENCE SET; Schema: inmuebles; Owner: postgres
--

SELECT pg_catalog.setval('inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq', 1, false);


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 273
-- Name: tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq; Type: SEQUENCE SET; Schema: inmuebles; Owner: postgres
--

SELECT pg_catalog.setval('inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq', 3, true);


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 229
-- Name: tb_tipos_inmuebles_id_tipos_inmuebles_seq; Type: SEQUENCE SET; Schema: inmuebles; Owner: postgres
--

SELECT pg_catalog.setval('inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq', 1, false);


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 218
-- Name: tb_personal_id_personal_seq; Type: SEQUENCE SET; Schema: rrhh; Owner: postgres
--

SELECT pg_catalog.setval('rrhh.tb_personal_id_personal_seq', 1, false);


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 207
-- Name: tb_users_access_id_user_access_seq; Type: SEQUENCE SET; Schema: session; Owner: postgres
--

SELECT pg_catalog.setval('session.tb_users_access_id_user_access_seq', 1, false);


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_users_access_id_user_seq; Type: SEQUENCE SET; Schema: session; Owner: postgres
--

SELECT pg_catalog.setval('session.tb_users_access_id_user_seq', 1, false);


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 210
-- Name: tb_users_app_externo_id_user_app_externo_seq; Type: SEQUENCE SET; Schema: session; Owner: postgres
--

SELECT pg_catalog.setval('session.tb_users_app_externo_id_user_app_externo_seq', 1, false);


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 205
-- Name: tb_users_id_usuario_seq; Type: SEQUENCE SET; Schema: session; Owner: postgres
--

SELECT pg_catalog.setval('session.tb_users_id_usuario_seq', 1, true);


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 242
-- Name: tb_agendas_solicitudes_id_agenda_solicitud_seq; Type: SEQUENCE SET; Schema: solicitudes; Owner: postgres
--

SELECT pg_catalog.setval('solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq', 1, false);


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 233
-- Name: tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq; Type: SEQUENCE SET; Schema: solicitudes; Owner: postgres
--

SELECT pg_catalog.setval('solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq', 1, false);


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 231
-- Name: tb_estados_solicitudes_id_estado_solicitud_seq; Type: SEQUENCE SET; Schema: solicitudes; Owner: postgres
--

SELECT pg_catalog.setval('solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq', 1, false);


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 239
-- Name: tb_intereses_solicitudes_id_interes_solicitud_seq; Type: SEQUENCE SET; Schema: solicitudes; Owner: postgres
--

SELECT pg_catalog.setval('solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq', 1, false);


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_solicitudes_id_solicitudes_seq; Type: SEQUENCE SET; Schema: solicitudes; Owner: postgres
--

SELECT pg_catalog.setval('solicitudes.tb_solicitudes_id_solicitudes_seq', 1, false);


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 260
-- Name: tb_tipos_actividades_id_tipo_actividad_seq; Type: SEQUENCE SET; Schema: tipos; Owner: postgres
--

SELECT pg_catalog.setval('tipos.tb_tipos_actividades_id_tipo_actividad_seq', 1, false);


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 271
-- Name: tb_tipos_clientes_id_tipo_cliente_seq; Type: SEQUENCE SET; Schema: tipos; Owner: postgres
--

SELECT pg_catalog.setval('tipos.tb_tipos_clientes_id_tipo_cliente_seq', 2, true);


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 265
-- Name: tb_tipos_notificacion_id_tipo_notificacion_seq; Type: SEQUENCE SET; Schema: tipos; Owner: postgres
--

SELECT pg_catalog.setval('tipos.tb_tipos_notificacion_id_tipo_notificacion_seq', 3, true);


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 203
-- Name: tb_tiposdocumento_id_tipo_ident_seq; Type: SEQUENCE SET; Schema: tipos; Owner: postgres
--

SELECT pg_catalog.setval('tipos.tb_tiposdocumento_id_tipo_ident_seq', 8, true);


-- Completed on 2019-01-18 22:57:25

--
-- PostgreSQL database dump complete
--
