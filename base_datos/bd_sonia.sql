PGDMP         -                 w            montesavibd    10.6    10.6 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16425    montesavibd    DATABASE     �   CREATE DATABASE montesavibd WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE montesavibd;
             postgres    false                        2615    16595    clientes    SCHEMA        CREATE SCHEMA clientes;
    DROP SCHEMA clientes;
             postgres    false            �           0    0    SCHEMA clientes    COMMENT     S   COMMENT ON SCHEMA clientes IS 'Esquema que reune la información de los clientes';
                  postgres    false    7                        2615    16486 	   generales    SCHEMA        CREATE SCHEMA generales;
    DROP SCHEMA generales;
             postgres    false            �           0    0    SCHEMA generales    COMMENT     n   COMMENT ON SCHEMA generales IS 'Esquema que agrupa las tablas que contienen la información de tipo general';
                  postgres    false    6                        2615    16577 	   inmuebles    SCHEMA        CREATE SCHEMA inmuebles;
    DROP SCHEMA inmuebles;
             postgres    false            �           0    0    SCHEMA inmuebles    COMMENT     V   COMMENT ON SCHEMA inmuebles IS 'Esquema que agrupa la información de los inmuebles';
                  postgres    false    14                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        2615    16538    rrhh    SCHEMA        CREATE SCHEMA rrhh;
    DROP SCHEMA rrhh;
             postgres    false            �           0    0    SCHEMA rrhh    COMMENT     z   COMMENT ON SCHEMA rrhh IS 'Esquema que agrupa las tablas con información relacionada al personal interno de la empresa';
                  postgres    false    13            	            2615    16435    session    SCHEMA        CREATE SCHEMA session;
    DROP SCHEMA session;
             postgres    false            �           0    0    SCHEMA session    COMMENT     �   COMMENT ON SCHEMA session IS 'Esquema que agrupa las tablas que intervienen en la sesión del usuario para acceso a la aplicación.';
                  postgres    false    9                        2615    16586    solicitudes    SCHEMA        CREATE SCHEMA solicitudes;
    DROP SCHEMA solicitudes;
             postgres    false            �           0    0    SCHEMA solicitudes    COMMENT     Y   COMMENT ON SCHEMA solicitudes IS 'Esquema que agrupa las solicitudes y su información';
                  postgres    false    8                        2615    16426    tipos    SCHEMA        CREATE SCHEMA tipos;
    DROP SCHEMA tipos;
             postgres    false            �           0    0    SCHEMA tipos    COMMENT     �   COMMENT ON SCHEMA tipos IS 'Este esquema agrupa todas las tablas de tipos como tipos de identificación, tipos de inmuebles, etc.';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16596    tb_clientes    TABLE     _  CREATE TABLE clientes.tb_clientes (
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
 !   DROP TABLE clientes.tb_clientes;
       clientes         postgres    false    7                        0    0    TABLE tb_clientes    COMMENT     _   COMMENT ON TABLE clientes.tb_clientes IS 'Tabla que contiene la información de los clientes';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.id_cliente    COMMENT     S   COMMENT ON COLUMN clientes.tb_clientes.id_cliente IS 'Id de la tabla de clientes';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.nombres    COMMENT     I   COMMENT ON COLUMN clientes.tb_clientes.nombres IS 'Nombres del cliente';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.apellidos    COMMENT     M   COMMENT ON COLUMN clientes.tb_clientes.apellidos IS 'Apellidos del cliente';
            clientes       postgres    false    225                       0    0 )   COLUMN tb_clientes.id_tipo_identificacion    COMMENT     �   COMMENT ON COLUMN clientes.tb_clientes.id_tipo_identificacion IS 'LLave que relaciona el tipo de identificación del cliente ';
            clientes       postgres    false    225                       0    0 (   COLUMN tb_clientes.numero_identificacion    COMMENT     l   COMMENT ON COLUMN clientes.tb_clientes.numero_identificacion IS 'Número de identificación de la persona';
            clientes       postgres    false    225                       0    0 "   COLUMN tb_clientes.numero_telefono    COMMENT     ^   COMMENT ON COLUMN clientes.tb_clientes.numero_telefono IS 'Número de teléfono del cliente';
            clientes       postgres    false    225                       0    0 !   COLUMN tb_clientes.numero_celular    COMMENT     e   COMMENT ON COLUMN clientes.tb_clientes.numero_celular IS 'Número de teléfono celular del cliente';
            clientes       postgres    false    225                       0    0 %   COLUMN tb_clientes.correo_electronico    COMMENT     `   COMMENT ON COLUMN clientes.tb_clientes.correo_electronico IS 'Correo electrónico del cliente';
            clientes       postgres    false    225            	           0    0    COLUMN tb_clientes.profesion    COMMENT     N   COMMENT ON COLUMN clientes.tb_clientes.profesion IS 'Profesión del cliente';
            clientes       postgres    false    225            
           0    0    COLUMN tb_clientes.ocupacion    COMMENT     Y   COMMENT ON COLUMN clientes.tb_clientes.ocupacion IS 'Ocupación u oficio de la persona';
            clientes       postgres    false    225                       0    0 &   COLUMN tb_clientes."fecha_cumpleaños"    COMMENT     d   COMMENT ON COLUMN clientes.tb_clientes."fecha_cumpleaños" IS 'Fecha de cumpleaños de la persona';
            clientes       postgres    false    225                       0    0 "   COLUMN tb_clientes.id_estado_civil    COMMENT     X   COMMENT ON COLUMN clientes.tb_clientes.id_estado_civil IS 'Estado civil de la persona';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.otra_info    COMMENT     U   COMMENT ON COLUMN clientes.tb_clientes.otra_info IS 'Otra información del cliente';
            clientes       postgres    false    225                       0    0 '   COLUMN tb_clientes.id_tipo_notificacion    COMMENT     �   COMMENT ON COLUMN clientes.tb_clientes.id_tipo_notificacion IS 'Llave foránea que relaciona el tipo de notificación que recibirá el cliente';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.id_user    COMMENT     �   COMMENT ON COLUMN clientes.tb_clientes.id_user IS 'Llave foránea que relaciona el usuario que crea el cliente (cuando es un usuario interno)';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.direccion    COMMENT     f   COMMENT ON COLUMN clientes.tb_clientes.direccion IS 'Dirección actual en la que reside el cliente.';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.id_ciudad    COMMENT     {   COMMENT ON COLUMN clientes.tb_clientes.id_ciudad IS 'Llave foránea que relaciona la ciudad en la que reside el cliente.';
            clientes       postgres    false    225                       0    0 "   COLUMN tb_clientes.id_departamento    COMMENT     f   COMMENT ON COLUMN clientes.tb_clientes.id_departamento IS 'Departamento en el que reside el cliente';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.id_pais    COMMENT     u   COMMENT ON COLUMN clientes.tb_clientes.id_pais IS 'Llave foránea que relaciona el país de residencia del cliente';
            clientes       postgres    false    225                       0    0 "   COLUMN tb_clientes.id_tipo_cliente    COMMENT     m   COMMENT ON COLUMN clientes.tb_clientes.id_tipo_cliente IS 'Llave foránea que relaciona el tipo de cliente';
            clientes       postgres    false    225                       0    0 !   COLUMN tb_clientes.fecha_creacion    COMMENT     l   COMMENT ON COLUMN clientes.tb_clientes.fecha_creacion IS 'Fecha en la que se crea el registro del cliente';
            clientes       postgres    false    225                       0    0    COLUMN tb_clientes.id_user_mod    COMMENT     �   COMMENT ON COLUMN clientes.tb_clientes.id_user_mod IS 'Llave foránea que relaciona el usuario que midifica la información del cliente';
            clientes       postgres    false    225                       0    0 %   COLUMN tb_clientes.fecha_modificacion    COMMENT     �   COMMENT ON COLUMN clientes.tb_clientes.fecha_modificacion IS 'Fecha en la que se realiza la modificación de los datos del cliente';
            clientes       postgres    false    225            �            1259    16599    tb_clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE clientes.tb_clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE clientes.tb_clientes_id_cliente_seq;
       clientes       postgres    false    7    225                       0    0    tb_clientes_id_cliente_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE clientes.tb_clientes_id_cliente_seq OWNED BY clientes.tb_clientes.id_cliente;
            clientes       postgres    false    226                       1259    17013    tb_aut_externas    TABLE     �   CREATE TABLE generales.tb_aut_externas (
    id_aut_externas integer NOT NULL,
    id_api text,
    token_api text,
    provider character varying(100),
    uri text
);
 &   DROP TABLE generales.tb_aut_externas;
    	   generales         postgres    false    6                       0    0    TABLE tb_aut_externas    COMMENT     �   COMMENT ON TABLE generales.tb_aut_externas IS 'Tabla que contiene los datos de autenticación para consumo de las apis externas';
         	   generales       postgres    false    268                       0    0 &   COLUMN tb_aut_externas.id_aut_externas    COMMENT     �   COMMENT ON COLUMN generales.tb_aut_externas.id_aut_externas IS 'Llave primaria ID de la tabla de datos de autenticación a apis externas.';
         	   generales       postgres    false    268                       0    0    COLUMN tb_aut_externas.id_api    COMMENT     �   COMMENT ON COLUMN generales.tb_aut_externas.id_api IS 'Valor de ID para acceder a la api, este valor lleva también el nombre del id como lo recibe la Api.';
         	   generales       postgres    false    268                       0    0     COLUMN tb_aut_externas.token_api    COMMENT     �   COMMENT ON COLUMN generales.tb_aut_externas.token_api IS 'Valor del token de acceso a la Api, lleva también el nombre del parámetro token como lo recibe el servicio. ';
         	   generales       postgres    false    268                       0    0    COLUMN tb_aut_externas.provider    COMMENT     _   COMMENT ON COLUMN generales.tb_aut_externas.provider IS 'Nombre del proveedor o servicio Web';
         	   generales       postgres    false    268                       0    0    COLUMN tb_aut_externas.uri    COMMENT     h   COMMENT ON COLUMN generales.tb_aut_externas.uri IS 'URI del Endpoint del web service que se consume. ';
         	   generales       postgres    false    268                       1259    17011 #   tb_aut_externas_id_aut_externas_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_aut_externas_id_aut_externas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE generales.tb_aut_externas_id_aut_externas_seq;
    	   generales       postgres    false    268    6                       0    0 #   tb_aut_externas_id_aut_externas_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE generales.tb_aut_externas_id_aut_externas_seq OWNED BY generales.tb_aut_externas.id_aut_externas;
         	   generales       postgres    false    267                       1259    17024    tb_aut_externas_services    TABLE     �   CREATE TABLE generales.tb_aut_externas_services (
    id_aut_externas_services integer NOT NULL,
    name_service character varying(100),
    uri_compl text,
    id_aut_externas integer
);
 /   DROP TABLE generales.tb_aut_externas_services;
    	   generales         postgres    false    6                        0    0    TABLE tb_aut_externas_services    COMMENT     �   COMMENT ON TABLE generales.tb_aut_externas_services IS 'Tabla que contiene el complemento de la dirección URI de la API, que corresponde con el servicio solicitado.';
         	   generales       postgres    false    270            !           0    0 8   COLUMN tb_aut_externas_services.id_aut_externas_services    COMMENT     �   COMMENT ON COLUMN generales.tb_aut_externas_services.id_aut_externas_services IS 'ID llave primaria de la tabla de Servicios de las APIs externas.';
         	   generales       postgres    false    270            "           0    0 ,   COLUMN tb_aut_externas_services.name_service    COMMENT     h   COMMENT ON COLUMN generales.tb_aut_externas_services.name_service IS 'Nombre del servicio a consumir.';
         	   generales       postgres    false    270            #           0    0 )   COLUMN tb_aut_externas_services.uri_compl    COMMENT     t   COMMENT ON COLUMN generales.tb_aut_externas_services.uri_compl IS 'Complemento de la uri para acceder al servicio';
         	   generales       postgres    false    270            $           0    0 /   COLUMN tb_aut_externas_services.id_aut_externas    COMMENT     �   COMMENT ON COLUMN generales.tb_aut_externas_services.id_aut_externas IS 'Llave foránea que relaciona la API correspondiente.';
         	   generales       postgres    false    270                       1259    17022 5   tb_aut_externas_services_id_aut_externas_services_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_aut_externas_services_id_aut_externas_services_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 O   DROP SEQUENCE generales.tb_aut_externas_services_id_aut_externas_services_seq;
    	   generales       postgres    false    6    270            %           0    0 5   tb_aut_externas_services_id_aut_externas_services_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE generales.tb_aut_externas_services_id_aut_externas_services_seq OWNED BY generales.tb_aut_externas_services.id_aut_externas_services;
         	   generales       postgres    false    269                       1259    16818 	   tb_cargos    TABLE     l   CREATE TABLE generales.tb_cargos (
    id_cargo integer NOT NULL,
    descripcion character varying(100)
);
     DROP TABLE generales.tb_cargos;
    	   generales         postgres    false    6            &           0    0    TABLE tb_cargos    COMMENT     �   COMMENT ON TABLE generales.tb_cargos IS 'Tabla que contiene la información de los cargos asociados a los empleados de la empresa';
         	   generales       postgres    false    257            '           0    0    COLUMN tb_cargos.id_cargo    COMMENT     Y   COMMENT ON COLUMN generales.tb_cargos.id_cargo IS 'Id llave primaria de la tabla cargo';
         	   generales       postgres    false    257            (           0    0    COLUMN tb_cargos.descripcion    COMMENT     _   COMMENT ON COLUMN generales.tb_cargos.descripcion IS 'Descripción o denominación del cargo';
         	   generales       postgres    false    257                        1259    16816    tb_cargos_id_cargo_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_cargos_id_cargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE generales.tb_cargos_id_cargo_seq;
    	   generales       postgres    false    6    257            )           0    0    tb_cargos_id_cargo_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE generales.tb_cargos_id_cargo_seq OWNED BY generales.tb_cargos.id_cargo;
         	   generales       postgres    false    256            �            1259    16505    tb_ciudades    TABLE     �   CREATE TABLE generales.tb_ciudades (
    id_ciudad integer NOT NULL,
    codigo_ciudad character varying(20),
    nombre_ciudad character varying(50),
    id_departamento integer
);
 "   DROP TABLE generales.tb_ciudades;
    	   generales         postgres    false    6            *           0    0    TABLE tb_ciudades    COMMENT     M   COMMENT ON TABLE generales.tb_ciudades IS 'Tabla que contiene las ciudades';
         	   generales       postgres    false    217            +           0    0    COLUMN tb_ciudades.id_ciudad    COMMENT     d   COMMENT ON COLUMN generales.tb_ciudades.id_ciudad IS 'Llave primaria de la tabla de las ciudades.';
         	   generales       postgres    false    217            ,           0    0     COLUMN tb_ciudades.codigo_ciudad    COMMENT     U   COMMENT ON COLUMN generales.tb_ciudades.codigo_ciudad IS 'Código CGN de la ciudad';
         	   generales       postgres    false    217            -           0    0     COLUMN tb_ciudades.nombre_ciudad    COMMENT     P   COMMENT ON COLUMN generales.tb_ciudades.nombre_ciudad IS 'Nombre de la ciudad';
         	   generales       postgres    false    217            .           0    0 "   COLUMN tb_ciudades.id_departamento    COMMENT     m   COMMENT ON COLUMN generales.tb_ciudades.id_departamento IS 'Llave foránea hacia la tabla de departamentos';
         	   generales       postgres    false    217            �            1259    16503    tb_ciudades_id_ciudad_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_ciudades_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE generales.tb_ciudades_id_ciudad_seq;
    	   generales       postgres    false    217    6            /           0    0    tb_ciudades_id_ciudad_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE generales.tb_ciudades_id_ciudad_seq OWNED BY generales.tb_ciudades.id_ciudad;
         	   generales       postgres    false    216                       1259    17132    tb_criterios_diligenciamiento    TABLE     �   CREATE TABLE generales.tb_criterios_diligenciamiento (
    id_criterio_diligenciamiento integer NOT NULL,
    descripcion character varying(20)
);
 4   DROP TABLE generales.tb_criterios_diligenciamiento;
    	   generales         postgres    false    6            0           0    0 #   TABLE tb_criterios_diligenciamiento    COMMENT     �   COMMENT ON TABLE generales.tb_criterios_diligenciamiento IS 'Tabla que contiene los tipos de criterio de almacenamiento de un dato';
         	   generales       postgres    false    276            1           0    0 A   COLUMN tb_criterios_diligenciamiento.id_criterio_diligenciamiento    COMMENT     �   COMMENT ON COLUMN generales.tb_criterios_diligenciamiento.id_criterio_diligenciamiento IS 'Llave primaria o ID de la tabla que contiene los criterios de almacenamiento';
         	   generales       postgres    false    276            2           0    0 0   COLUMN tb_criterios_diligenciamiento.descripcion    COMMENT     �   COMMENT ON COLUMN generales.tb_criterios_diligenciamiento.descripcion IS 'Descripción o nmibre del criterio de diligenciamiento';
         	   generales       postgres    false    276                       1259    17130 >   tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 X   DROP SEQUENCE generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq;
    	   generales       postgres    false    6    276            3           0    0 >   tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq OWNED BY generales.tb_criterios_diligenciamiento.id_criterio_diligenciamiento;
         	   generales       postgres    false    275            �            1259    16489    tb_departamentos    TABLE     �   CREATE TABLE generales.tb_departamentos (
    id_departamento integer NOT NULL,
    codigo_departamento character varying(20),
    nombre_departamento character varying(50),
    id_pais integer
);
 '   DROP TABLE generales.tb_departamentos;
    	   generales         postgres    false    6            4           0    0    TABLE tb_departamentos    COMMENT     I   COMMENT ON TABLE generales.tb_departamentos IS 'Tabla de departamentos';
         	   generales       postgres    false    213            5           0    0 '   COLUMN tb_departamentos.id_departamento    COMMENT     c   COMMENT ON COLUMN generales.tb_departamentos.id_departamento IS 'Id de la tabla de departamentos';
         	   generales       postgres    false    213            6           0    0 +   COLUMN tb_departamentos.codigo_departamento    COMMENT     d   COMMENT ON COLUMN generales.tb_departamentos.codigo_departamento IS 'Código CGN del departamento';
         	   generales       postgres    false    213            7           0    0 +   COLUMN tb_departamentos.nombre_departamento    COMMENT     _   COMMENT ON COLUMN generales.tb_departamentos.nombre_departamento IS 'Nombre del departamento';
         	   generales       postgres    false    213            8           0    0    COLUMN tb_departamentos.id_pais    COMMENT     �   COMMENT ON COLUMN generales.tb_departamentos.id_pais IS 'Llave foránea que relaciona a los departamentos con su respectivo país.';
         	   generales       postgres    false    213            �            1259    16487 $   tb_departamentos_id_departamento_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_departamentos_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE generales.tb_departamentos_id_departamento_seq;
    	   generales       postgres    false    213    6            9           0    0 $   tb_departamentos_id_departamento_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE generales.tb_departamentos_id_departamento_seq OWNED BY generales.tb_departamentos.id_departamento;
         	   generales       postgres    false    212                       1259    16859    tb_estado_agenda    TABLE     z   CREATE TABLE generales.tb_estado_agenda (
    id_estado_agenda integer NOT NULL,
    descripcion character varying(50)
);
 '   DROP TABLE generales.tb_estado_agenda;
    	   generales         postgres    false    6            :           0    0    TABLE tb_estado_agenda    COMMENT     �   COMMENT ON TABLE generales.tb_estado_agenda IS 'Tabla que contiene los datos de los estados que puede tener una cita o agendamiento';
         	   generales       postgres    false    258            ;           0    0 (   COLUMN tb_estado_agenda.id_estado_agenda    COMMENT     y   COMMENT ON COLUMN generales.tb_estado_agenda.id_estado_agenda IS 'Id llave primaria de la tabla de estados de agendas.';
         	   generales       postgres    false    258            <           0    0 #   COLUMN tb_estado_agenda.descripcion    COMMENT     u   COMMENT ON COLUMN generales.tb_estado_agenda.descripcion IS 'Descripción o denominación del estado de la agenda.';
         	   generales       postgres    false    258                       1259    16862 %   tb_estado_agenda_id_estado_agenda_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_estado_agenda_id_estado_agenda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE generales.tb_estado_agenda_id_estado_agenda_seq;
    	   generales       postgres    false    6    258            =           0    0 %   tb_estado_agenda_id_estado_agenda_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE generales.tb_estado_agenda_id_estado_agenda_seq OWNED BY generales.tb_estado_agenda.id_estado_agenda;
         	   generales       postgres    false    259            �            1259    16610    tb_estados_civiles    TABLE     {   CREATE TABLE generales.tb_estados_civiles (
    id_estado_civil integer NOT NULL,
    descripcion character varying(15)
);
 )   DROP TABLE generales.tb_estados_civiles;
    	   generales         postgres    false    6            >           0    0    TABLE tb_estados_civiles    COMMENT     �   COMMENT ON TABLE generales.tb_estados_civiles IS 'Tabla que contiene los estados civiles posibles que puede tener una persona.';
         	   generales       postgres    false    228            ?           0    0 )   COLUMN tb_estados_civiles.id_estado_civil    COMMENT     X   COMMENT ON COLUMN generales.tb_estados_civiles.id_estado_civil IS 'Id de estado civil';
         	   generales       postgres    false    228            @           0    0 %   COLUMN tb_estados_civiles.descripcion    COMMENT     o   COMMENT ON COLUMN generales.tb_estados_civiles.descripcion IS 'Descripción o denominación del estado civil';
         	   generales       postgres    false    228            �            1259    16608 &   tb_estados_civiles_id_estado_civil_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_estados_civiles_id_estado_civil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE generales.tb_estados_civiles_id_estado_civil_seq;
    	   generales       postgres    false    228    6            A           0    0 &   tb_estados_civiles_id_estado_civil_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE generales.tb_estados_civiles_id_estado_civil_seq OWNED BY generales.tb_estados_civiles.id_estado_civil;
         	   generales       postgres    false    227                       1259    16947    tb_formas_pago    TABLE     u   CREATE TABLE generales.tb_formas_pago (
    id_forma_pago integer NOT NULL,
    descripcion character varying(20)
);
 %   DROP TABLE generales.tb_formas_pago;
    	   generales         postgres    false    6            B           0    0    TABLE tb_formas_pago    COMMENT     V   COMMENT ON TABLE generales.tb_formas_pago IS 'Tabla que contiene las formas de pago';
         	   generales       postgres    false    262            C           0    0 #   COLUMN tb_formas_pago.id_forma_pago    COMMENT     o   COMMENT ON COLUMN generales.tb_formas_pago.id_forma_pago IS 'Id llave primaria de la tabla de formas de pago';
         	   generales       postgres    false    262            D           0    0 !   COLUMN tb_formas_pago.descripcion    COMMENT     o   COMMENT ON COLUMN generales.tb_formas_pago.descripcion IS 'Descripción o denominación de la forma de pago.';
         	   generales       postgres    false    262                       1259    16945     tb_formas_pago_id_forma_pago_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_formas_pago_id_forma_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE generales.tb_formas_pago_id_forma_pago_seq;
    	   generales       postgres    false    262    6            E           0    0     tb_formas_pago_id_forma_pago_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE generales.tb_formas_pago_id_forma_pago_seq OWNED BY generales.tb_formas_pago.id_forma_pago;
         	   generales       postgres    false    261            �            1259    16710    tb_inmuebles_estados    TABLE     �   CREATE TABLE generales.tb_inmuebles_estados (
    id_inmueble_estado integer NOT NULL,
    descripcion character varying(30)
);
 +   DROP TABLE generales.tb_inmuebles_estados;
    	   generales         postgres    false    6            F           0    0    TABLE tb_inmuebles_estados    COMMENT     �   COMMENT ON TABLE generales.tb_inmuebles_estados IS 'Tabla que contiene la información de los estados que se pueden asignar a un inmueble';
         	   generales       postgres    false    249            G           0    0 .   COLUMN tb_inmuebles_estados.id_inmueble_estado    COMMENT     ~   COMMENT ON COLUMN generales.tb_inmuebles_estados.id_inmueble_estado IS 'Id llave primaria de la tabla de estado de inmueble';
         	   generales       postgres    false    249            H           0    0 '   COLUMN tb_inmuebles_estados.descripcion    COMMENT     h   COMMENT ON COLUMN generales.tb_inmuebles_estados.descripcion IS 'Descripción del estado del inmueble';
         	   generales       postgres    false    249            �            1259    16708 +   tb_inmuebles_estados_id_inmueble_estado_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_inmuebles_estados_id_inmueble_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE generales.tb_inmuebles_estados_id_inmueble_estado_seq;
    	   generales       postgres    false    249    6            I           0    0 +   tb_inmuebles_estados_id_inmueble_estado_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE generales.tb_inmuebles_estados_id_inmueble_estado_seq OWNED BY generales.tb_inmuebles_estados.id_inmueble_estado;
         	   generales       postgres    false    248            �            1259    16658    tb_intereses    TABLE     q   CREATE TABLE generales.tb_intereses (
    id_interes integer NOT NULL,
    descripcion character varying(200)
);
 #   DROP TABLE generales.tb_intereses;
    	   generales         postgres    false    6            J           0    0    TABLE tb_intereses    COMMENT     t   COMMENT ON TABLE generales.tb_intereses IS 'Tabla que contiene los intereses que pueden asociarse a una solicitud';
         	   generales       postgres    false    238            K           0    0    COLUMN tb_intereses.id_interes    COMMENT     V   COMMENT ON COLUMN generales.tb_intereses.id_interes IS 'Id de la tabla de intereses';
         	   generales       postgres    false    238            L           0    0    COLUMN tb_intereses.descripcion    COMMENT     ^   COMMENT ON COLUMN generales.tb_intereses.descripcion IS 'Descripción o nombre del interés';
         	   generales       postgres    false    238            �            1259    16656    tb_intereses_id_interes_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_intereses_id_interes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE generales.tb_intereses_id_interes_seq;
    	   generales       postgres    false    238    6            M           0    0    tb_intereses_id_interes_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE generales.tb_intereses_id_interes_seq OWNED BY generales.tb_intereses.id_interes;
         	   generales       postgres    false    237            �            1259    16726    tb_jornadas    TABLE     g   CREATE TABLE generales.tb_jornadas (
    id_jornada integer NOT NULL,
    dia character varying(15)
);
 "   DROP TABLE generales.tb_jornadas;
    	   generales         postgres    false    6            N           0    0    TABLE tb_jornadas    COMMENT     }   COMMENT ON TABLE generales.tb_jornadas IS 'Tabla que contiene la información de las jornadas de muestra de los inmuebles.';
         	   generales       postgres    false    253            O           0    0    COLUMN tb_jornadas.id_jornada    COMMENT     d   COMMENT ON COLUMN generales.tb_jornadas.id_jornada IS 'ID llave primaria de la tabla de jornadas.';
         	   generales       postgres    false    253            P           0    0    COLUMN tb_jornadas.dia    COMMENT     R   COMMENT ON COLUMN generales.tb_jornadas.dia IS 'Descripción o dia de la semana';
         	   generales       postgres    false    253            �            1259    16724    tb_jornadas_id_jornada_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_jornadas_id_jornada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE generales.tb_jornadas_id_jornada_seq;
    	   generales       postgres    false    6    253            Q           0    0    tb_jornadas_id_jornada_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE generales.tb_jornadas_id_jornada_seq OWNED BY generales.tb_jornadas.id_jornada;
         	   generales       postgres    false    252            �            1259    16497 	   tb_paises    TABLE     �   CREATE TABLE generales.tb_paises (
    id_pais integer NOT NULL,
    codigo_pais character varying(20),
    nombre_pais character varying(50)
);
     DROP TABLE generales.tb_paises;
    	   generales         postgres    false    6            R           0    0    COLUMN tb_paises.id_pais    COMMENT     Y   COMMENT ON COLUMN generales.tb_paises.id_pais IS 'Id llave primaria de la tabla paises';
         	   generales       postgres    false    215            S           0    0    COLUMN tb_paises.codigo_pais    COMMENT     J   COMMENT ON COLUMN generales.tb_paises.codigo_pais IS 'Código del país';
         	   generales       postgres    false    215            T           0    0    COLUMN tb_paises.nombre_pais    COMMENT     I   COMMENT ON COLUMN generales.tb_paises.nombre_pais IS 'Nombre del país';
         	   generales       postgres    false    215            �            1259    16495    tb_paises_id_pais_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_paises_id_pais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE generales.tb_paises_id_pais_seq;
    	   generales       postgres    false    215    6            U           0    0    tb_paises_id_pais_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE generales.tb_paises_id_pais_seq OWNED BY generales.tb_paises.id_pais;
         	   generales       postgres    false    214            �            1259    16650    tb_solicitudes_estados    TABLE     �   CREATE TABLE generales.tb_solicitudes_estados (
    id_solicitud_estado integer NOT NULL,
    descripcion character varying(100)
);
 -   DROP TABLE generales.tb_solicitudes_estados;
    	   generales         postgres    false    6            V           0    0    TABLE tb_solicitudes_estados    COMMENT     �   COMMENT ON TABLE generales.tb_solicitudes_estados IS 'Tabla que contiene los estados posibles que pueden asignarse a una solicitud.';
         	   generales       postgres    false    236            W           0    0 1   COLUMN tb_solicitudes_estados.id_solicitud_estado    COMMENT     �   COMMENT ON COLUMN generales.tb_solicitudes_estados.id_solicitud_estado IS 'Llave primaria de la tabla de estados de solicitudes';
         	   generales       postgres    false    236            X           0    0 )   COLUMN tb_solicitudes_estados.descripcion    COMMENT     m   COMMENT ON COLUMN generales.tb_solicitudes_estados.descripcion IS 'Descripción del estado de la solicitud';
         	   generales       postgres    false    236            �            1259    16648 .   tb_solicitudes_estados_id_solicitud_estado_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_solicitudes_estados_id_solicitud_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE generales.tb_solicitudes_estados_id_solicitud_estado_seq;
    	   generales       postgres    false    6    236            Y           0    0 .   tb_solicitudes_estados_id_solicitud_estado_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE generales.tb_solicitudes_estados_id_solicitud_estado_seq OWNED BY generales.tb_solicitudes_estados.id_solicitud_estado;
         	   generales       postgres    false    235                       1259    16961    tb_urgencias    TABLE     q   CREATE TABLE generales.tb_urgencias (
    id_urgencia integer NOT NULL,
    descripcion character varying(20)
);
 #   DROP TABLE generales.tb_urgencias;
    	   generales         postgres    false    6            Z           0    0    TABLE tb_urgencias    COMMENT     �   COMMENT ON TABLE generales.tb_urgencias IS 'Tabla que contiene los valores posibles que indiquen urgencia de adquisición del inmueble.';
         	   generales       postgres    false    264            [           0    0    COLUMN tb_urgencias.id_urgencia    COMMENT     h   COMMENT ON COLUMN generales.tb_urgencias.id_urgencia IS 'ID llave primaria de la tabla de urgencias. ';
         	   generales       postgres    false    264            \           0    0    COLUMN tb_urgencias.descripcion    COMMENT     g   COMMENT ON COLUMN generales.tb_urgencias.descripcion IS 'Descripción o denominación de la urgencia';
         	   generales       postgres    false    264                       1259    16959    tb_urgencias_id_urgencia_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_urgencias_id_urgencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE generales.tb_urgencias_id_urgencia_seq;
    	   generales       postgres    false    6    264            ]           0    0    tb_urgencias_id_urgencia_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE generales.tb_urgencias_id_urgencia_seq OWNED BY generales.tb_urgencias.id_urgencia;
         	   generales       postgres    false    263            �            1259    16804    tb_zonas    TABLE     i   CREATE TABLE generales.tb_zonas (
    id_zona integer NOT NULL,
    descripcion character varying(30)
);
    DROP TABLE generales.tb_zonas;
    	   generales         postgres    false    6            ^           0    0    TABLE tb_zonas    COMMENT     `   COMMENT ON TABLE generales.tb_zonas IS 'Zonas de la ciudad en las que se ubican los inmuebles';
         	   generales       postgres    false    255            _           0    0    COLUMN tb_zonas.id_zona    COMMENT     Z   COMMENT ON COLUMN generales.tb_zonas.id_zona IS 'ID llave primaria de la tabla de zonas';
         	   generales       postgres    false    255            `           0    0    COLUMN tb_zonas.descripcion    COMMENT     _   COMMENT ON COLUMN generales.tb_zonas.descripcion IS 'Descripción o denominación de la zona';
         	   generales       postgres    false    255            �            1259    16802    tb_zonas_id_zona_seq    SEQUENCE     �   CREATE SEQUENCE generales.tb_zonas_id_zona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE generales.tb_zonas_id_zona_seq;
    	   generales       postgres    false    6    255            a           0    0    tb_zonas_id_zona_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE generales.tb_zonas_id_zona_seq OWNED BY generales.tb_zonas.id_zona;
         	   generales       postgres    false    254            �            1259    16580    tb_caracteristicas_inmuebles    TABLE     �   CREATE TABLE inmuebles.tb_caracteristicas_inmuebles (
    id_caracterisitica_inmueble integer NOT NULL,
    "nombre_característica" character varying(100),
    id_tipo_inmueble integer,
    tipo_caracteristica integer
);
 3   DROP TABLE inmuebles.tb_caracteristicas_inmuebles;
    	   inmuebles         postgres    false    14            b           0    0 "   TABLE tb_caracteristicas_inmuebles    COMMENT     w   COMMENT ON TABLE inmuebles.tb_caracteristicas_inmuebles IS 'Tabla que contiene las características de los inmuebles';
         	   inmuebles       postgres    false    222            c           0    0 ?   COLUMN tb_caracteristicas_inmuebles.id_caracterisitica_inmueble    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_inmuebles.id_caracterisitica_inmueble IS 'Id de la tabla que tiene las características de los inmuebles.';
         	   inmuebles       postgres    false    222            d           0    0 <   COLUMN tb_caracteristicas_inmuebles."nombre_característica"    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_inmuebles."nombre_característica" IS 'Nombre de la característica asociada al inmueble';
         	   inmuebles       postgres    false    222            e           0    0 4   COLUMN tb_caracteristicas_inmuebles.id_tipo_inmueble    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_inmuebles.id_tipo_inmueble IS 'Id llave foránea hacia la tabla tipo de inmueble';
         	   inmuebles       postgres    false    222            f           0    0 7   COLUMN tb_caracteristicas_inmuebles.tipo_caracteristica    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_inmuebles.tipo_caracteristica IS 'Indica el tipo de característica asociada, si es descriptiva o cuantitativa';
         	   inmuebles       postgres    false    222            �            1259    16578 ?   tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq    SEQUENCE     �   CREATE SEQUENCE inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Y   DROP SEQUENCE inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq;
    	   inmuebles       postgres    false    222    14            g           0    0 ?   tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq OWNED BY inmuebles.tb_caracteristicas_inmuebles.id_caracterisitica_inmueble;
         	   inmuebles       postgres    false    221                       1259    17140     tb_caracteristicas_tipo_inmueble    TABLE     	  CREATE TABLE inmuebles.tb_caracteristicas_tipo_inmueble (
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
 7   DROP TABLE inmuebles.tb_caracteristicas_tipo_inmueble;
    	   inmuebles         postgres    false    14            h           0    0 &   TABLE tb_caracteristicas_tipo_inmueble    COMMENT     �   COMMENT ON TABLE inmuebles.tb_caracteristicas_tipo_inmueble IS 'Tabla que contiene la información de las características asociadas a cada tipo de inmueble';
         	   inmuebles       postgres    false    278            i           0    0 H   COLUMN tb_caracteristicas_tipo_inmueble.id_caracteristicas_tipo_inmueble    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_caracteristicas_tipo_inmueble IS 'ID llave primaria de la tabla que contiene las caracteristicas asociadas a cada tipo de inmueble';
         	   inmuebles       postgres    false    278            j           0    0 8   COLUMN tb_caracteristicas_tipo_inmueble.id_tipo_inmueble    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_tipo_inmueble IS 'Llave foránea que relaciona el tipo de inmueble';
         	   inmuebles       postgres    false    278            k           0    0 9   COLUMN tb_caracteristicas_tipo_inmueble.id_caracteristica    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_caracteristica IS 'Llave foránea que relaciona la caracteristica del tipo de inmueble';
         	   inmuebles       postgres    false    278            l           0    0 D   COLUMN tb_caracteristicas_tipo_inmueble.id_criterio_diligenciamiento    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_criterio_diligenciamiento IS 'Llave foránea que relaciona el criterio de diligenciamiento de la característica.';
         	   inmuebles       postgres    false    278            m           0    0 J   COLUMN tb_caracteristicas_tipo_inmueble.id_tipos_caracteristicas_inmuebles    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_tipos_caracteristicas_inmuebles IS 'Llave foránea que relaciona el tipo de valor de la característica';
         	   inmuebles       postgres    false    278            n           0    0 8   COLUMN tb_caracteristicas_tipo_inmueble.id_user_creacion    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_user_creacion IS 'Llave foránea que relaciona el usuario que crea la asociación de la característica';
         	   inmuebles       postgres    false    278            o           0    0 <   COLUMN tb_caracteristicas_tipo_inmueble.id_user_modificacion    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.id_user_modificacion IS 'Llave foránea que relaciona el usuario que modifica la asociación de la característica';
         	   inmuebles       postgres    false    278            p           0    0 .   COLUMN tb_caracteristicas_tipo_inmueble.estado    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.estado IS 'Estado de la característica asociada al tipo de inmueble. 1 = activo, 0 = inactivo';
         	   inmuebles       postgres    false    278            q           0    0 6   COLUMN tb_caracteristicas_tipo_inmueble.fecha_creacion    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.fecha_creacion IS 'Fecha en la que se crea la asociación del tipo inmueble con la característica. ';
         	   inmuebles       postgres    false    278            r           0    0 :   COLUMN tb_caracteristicas_tipo_inmueble.fecha_modificacion    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.fecha_modificacion IS 'Fecha en la que se realiza la modificación de la característica asociada al tipo de inmueble';
         	   inmuebles       postgres    false    278            s           0    0 3   COLUMN tb_caracteristicas_tipo_inmueble.descripcion    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_caracteristicas_tipo_inmueble.descripcion IS 'Descripción o información adicional que se ingresa a una característica';
         	   inmuebles       postgres    false    278                       1259    17138 ?   tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq    SEQUENCE     �   CREATE SEQUENCE inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Y   DROP SEQUENCE inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq;
    	   inmuebles       postgres    false    14    278            t           0    0 ?   tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq OWNED BY inmuebles.tb_caracteristicas_tipo_inmueble.id_caracteristicas_tipo_inmueble;
         	   inmuebles       postgres    false    277            �            1259    16702    tb_estados_inmuebles    TABLE     �   CREATE TABLE inmuebles.tb_estados_inmuebles (
    id_estado_inmueble integer NOT NULL,
    id_inmueble_estado integer,
    id_persona integer,
    fecha_creacion timestamp with time zone
);
 +   DROP TABLE inmuebles.tb_estados_inmuebles;
    	   inmuebles         postgres    false    14            u           0    0    TABLE tb_estados_inmuebles    COMMENT     y   COMMENT ON TABLE inmuebles.tb_estados_inmuebles IS 'Tabla que contiene la información de los estados de los inmuebles';
         	   inmuebles       postgres    false    247            v           0    0 .   COLUMN tb_estados_inmuebles.id_estado_inmueble    COMMENT     |   COMMENT ON COLUMN inmuebles.tb_estados_inmuebles.id_estado_inmueble IS 'Llave primaria de la tabla de estado de inmuebles';
         	   inmuebles       postgres    false    247            w           0    0 .   COLUMN tb_estados_inmuebles.id_inmueble_estado    COMMENT     l   COMMENT ON COLUMN inmuebles.tb_estados_inmuebles.id_inmueble_estado IS 'Llave foránea hacia la tabla de ';
         	   inmuebles       postgres    false    247            x           0    0 &   COLUMN tb_estados_inmuebles.id_persona    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_estados_inmuebles.id_persona IS 'Llave foránea que relaciona la persona que actualiza el estado del inmueble';
         	   inmuebles       postgres    false    247            y           0    0 *   COLUMN tb_estados_inmuebles.fecha_creacion    COMMENT     r   COMMENT ON COLUMN inmuebles.tb_estados_inmuebles.fecha_creacion IS 'Fecha en que se crea el estado del inmueble';
         	   inmuebles       postgres    false    247            �            1259    16700 +   tb_estados_inmuebles_id_estado_inmueble_seq    SEQUENCE     �   CREATE SEQUENCE inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq;
    	   inmuebles       postgres    false    247    14            z           0    0 +   tb_estados_inmuebles_id_estado_inmueble_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq OWNED BY inmuebles.tb_estados_inmuebles.id_estado_inmueble;
         	   inmuebles       postgres    false    246            �            1259    16718    tb_horarios_inmuebles    TABLE     >  CREATE TABLE inmuebles.tb_horarios_inmuebles (
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
 ,   DROP TABLE inmuebles.tb_horarios_inmuebles;
    	   inmuebles         postgres    false    14            {           0    0    TABLE tb_horarios_inmuebles    COMMENT     �   COMMENT ON TABLE inmuebles.tb_horarios_inmuebles IS 'Tabla que contiene la información de los horarios en los que se muestra un inmueble a los posibles compradores';
         	   inmuebles       postgres    false    251            |           0    0 0   COLUMN tb_horarios_inmuebles.id_horario_inmueble    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.id_horario_inmueble IS 'Id llave primaria de la tabla de horarios de muestra de inmuebles';
         	   inmuebles       postgres    false    251            }           0    0 )   COLUMN tb_horarios_inmuebles.hora_inicial    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.hora_inicial IS 'Hora inicial en la que se empieza a mostrar un inmueble dentro del horario fijado';
         	   inmuebles       postgres    false    251            ~           0    0 +   COLUMN tb_horarios_inmuebles.minuto_inicial    COMMENT     y   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.minuto_inicial IS 'Minuto en el que se empieza a mostrar el inmueble';
         	   inmuebles       postgres    false    251                       0    0 '   COLUMN tb_horarios_inmuebles.hora_final    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.hora_final IS 'Hora en la que se finaliza la muestra de un inmueble dentro del horario fijado';
         	   inmuebles       postgres    false    251            �           0    0 )   COLUMN tb_horarios_inmuebles.minuto_final    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.minuto_final IS 'Minuto dentro del horario fijado en que se termina de mostrar un inmueble';
         	   inmuebles       postgres    false    251            �           0    0 '   COLUMN tb_horarios_inmuebles.id_jornada    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.id_jornada IS 'Llave foránea que relaciona la jornada en la que se enseña el inmueble.';
         	   inmuebles       postgres    false    251            �           0    0 (   COLUMN tb_horarios_inmuebles.id_inmueble    COMMENT     m   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.id_inmueble IS 'Llave foránea que relaciona el inmueble';
         	   inmuebles       postgres    false    251            �           0    0 ,   COLUMN tb_horarios_inmuebles.id_persona_crea    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.id_persona_crea IS 'Llave foránea que relaciona la persona que crea la solicitud';
         	   inmuebles       postgres    false    251            �           0    0 +   COLUMN tb_horarios_inmuebles.fecha_creacion    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_horarios_inmuebles.fecha_creacion IS 'Fecha en la que se crea el horario de muestrea del inmueble';
         	   inmuebles       postgres    false    251            �            1259    16716 -   tb_horarios_inmuebles_id_horario_inmueble_seq    SEQUENCE     �   CREATE SEQUENCE inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq;
    	   inmuebles       postgres    false    251    14            �           0    0 -   tb_horarios_inmuebles_id_horario_inmueble_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq OWNED BY inmuebles.tb_horarios_inmuebles.id_horario_inmueble;
         	   inmuebles       postgres    false    250            �            1259    16694    tb_inmuebles_registrados    TABLE     �  CREATE TABLE inmuebles.tb_inmuebles_registrados (
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
 /   DROP TABLE inmuebles.tb_inmuebles_registrados;
    	   inmuebles         postgres    false    14            �           0    0    TABLE tb_inmuebles_registrados    COMMENT     �   COMMENT ON TABLE inmuebles.tb_inmuebles_registrados IS 'Tabla que almacena la información correspondiente a los inmuebles registrados para ser vendidos';
         	   inmuebles       postgres    false    245            �           0    0 6   COLUMN tb_inmuebles_registrados.id_inmueble_registrado    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_inmueble_registrado IS 'Id llave primaria de la tabla de inmuebles registrados';
         	   inmuebles       postgres    false    245            �           0    0 0   COLUMN tb_inmuebles_registrados.id_tipo_inmueble    COMMENT     }   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_tipo_inmueble IS 'Llave foránea que relaciona el tipo de inmueble';
         	   inmuebles       postgres    false    245            �           0    0 *   COLUMN tb_inmuebles_registrados.id_cliente    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_cliente IS 'Llave foránea que relaciona el cliente vendedor del inmueble';
         	   inmuebles       postgres    false    245            �           0    0 +   COLUMN tb_inmuebles_registrados.id_personal    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_personal IS 'Llave foránea que relaciona el empleado de la empresa que registra el inmueble';
         	   inmuebles       postgres    false    245            �           0    0 .   COLUMN tb_inmuebles_registrados.valor_inmueble    COMMENT     f   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.valor_inmueble IS 'Valor en pesos del inmueble';
         	   inmuebles       postgres    false    245            �           0    0 .   COLUMN tb_inmuebles_registrados.fecha_creacion    COMMENT     k   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.fecha_creacion IS 'Fecha en que se crea el inmueble';
         	   inmuebles       postgres    false    245            �           0    0 2   COLUMN tb_inmuebles_registrados.direccion_inmueble    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.direccion_inmueble IS 'Dirección física en donde se encuentra ubicado el inmueble';
         	   inmuebles       postgres    false    245            �           0    0 )   COLUMN tb_inmuebles_registrados.id_ciudad    COMMENT     l   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_ciudad IS 'Llave foránea que relaciona la ciudad';
         	   inmuebles       postgres    false    245            �           0    0 '   COLUMN tb_inmuebles_registrados.id_zona    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_zona IS 'Llave foránea que relaciona la zona a la que pertenece la ciudad';
         	   inmuebles       postgres    false    245            �           0    0 +   COLUMN tb_inmuebles_registrados.observacion    COMMENT     z   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.observacion IS 'Observación o información adicional del inmueble';
         	   inmuebles       postgres    false    245            �           0    0 2   COLUMN tb_inmuebles_registrados.id_estado_inmueble    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_inmuebles_registrados.id_estado_inmueble IS 'Llave foránea a la tabla de estados de inmuebles';
         	   inmuebles       postgres    false    245            �            1259    16692 3   tb_inmuebles_registrados_id_inmueble_registrado_seq    SEQUENCE     �   CREATE SEQUENCE inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq;
    	   inmuebles       postgres    false    14    245            �           0    0 3   tb_inmuebles_registrados_id_inmueble_registrado_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq OWNED BY inmuebles.tb_inmuebles_registrados.id_inmueble_registrado;
         	   inmuebles       postgres    false    244                       1259    17124 "   tb_tipos_caracteristicas_inmuebles    TABLE     �   CREATE TABLE inmuebles.tb_tipos_caracteristicas_inmuebles (
    id_tipos_caracteristicas_inmuebles integer NOT NULL,
    descripcion character varying(20)
);
 9   DROP TABLE inmuebles.tb_tipos_caracteristicas_inmuebles;
    	   inmuebles         postgres    false    14            �           0    0 (   TABLE tb_tipos_caracteristicas_inmuebles    COMMENT     �   COMMENT ON TABLE inmuebles.tb_tipos_caracteristicas_inmuebles IS 'Tabla que contiene los valores de tipos de características asociadas a los tipos de inmuebles';
         	   inmuebles       postgres    false    274            �           0    0 L   COLUMN tb_tipos_caracteristicas_inmuebles.id_tipos_caracteristicas_inmuebles    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_tipos_caracteristicas_inmuebles.id_tipos_caracteristicas_inmuebles IS 'ID o llave primaria de la tabla de los tipos de características de inmuebles.';
         	   inmuebles       postgres    false    274            �           0    0 5   COLUMN tb_tipos_caracteristicas_inmuebles.descripcion    COMMENT     �   COMMENT ON COLUMN inmuebles.tb_tipos_caracteristicas_inmuebles.descripcion IS 'Descripción o nombre del tipo de característica del inmueble.';
         	   inmuebles       postgres    false    274                       1259    17122 ?   tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq    SEQUENCE     �   CREATE SEQUENCE inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Y   DROP SEQUENCE inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq;
    	   inmuebles       postgres    false    274    14            �           0    0 ?   tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq OWNED BY inmuebles.tb_tipos_caracteristicas_inmuebles.id_tipos_caracteristicas_inmuebles;
         	   inmuebles       postgres    false    273            �            1259    16626    tb_tipos_inmuebles    TABLE     ~   CREATE TABLE inmuebles.tb_tipos_inmuebles (
    id_tipos_inmuebles integer NOT NULL,
    descripcion character varying(50)
);
 )   DROP TABLE inmuebles.tb_tipos_inmuebles;
    	   inmuebles         postgres    false    14            �           0    0    TABLE tb_tipos_inmuebles    COMMENT     q   COMMENT ON TABLE inmuebles.tb_tipos_inmuebles IS 'Tabla que contiene la información de los tipos de inmuebles';
         	   inmuebles       postgres    false    230            �           0    0 ,   COLUMN tb_tipos_inmuebles.id_tipos_inmuebles    COMMENT     |   COMMENT ON COLUMN inmuebles.tb_tipos_inmuebles.id_tipos_inmuebles IS 'Id llave primaria de la tabla de tipos de inmuebles';
         	   inmuebles       postgres    false    230            �           0    0 %   COLUMN tb_tipos_inmuebles.descripcion    COMMENT     c   COMMENT ON COLUMN inmuebles.tb_tipos_inmuebles.descripcion IS 'Descripción del tipo de inmueble';
         	   inmuebles       postgres    false    230            �            1259    16624 )   tb_tipos_inmuebles_id_tipos_inmuebles_seq    SEQUENCE     �   CREATE SEQUENCE inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq;
    	   inmuebles       postgres    false    230    14            �           0    0 )   tb_tipos_inmuebles_id_tipos_inmuebles_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq OWNED BY inmuebles.tb_tipos_inmuebles.id_tipos_inmuebles;
         	   inmuebles       postgres    false    229            �            1259    16541    tb_personal    TABLE     �  CREATE TABLE rrhh.tb_personal (
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
    DROP TABLE rrhh.tb_personal;
       rrhh         postgres    false    13            �           0    0    TABLE tb_personal    COMMENT     }   COMMENT ON TABLE rrhh.tb_personal IS 'Tabla que contiene la información del personal de la empresa que usa el aplicativo.';
            rrhh       postgres    false    219            �           0    0    COLUMN tb_personal.id_personal    COMMENT     \   COMMENT ON COLUMN rrhh.tb_personal.id_personal IS 'Id llave primaria de la tabla personal';
            rrhh       postgres    false    219            �           0    0 )   COLUMN tb_personal.id_tipo_identificacion    COMMENT     �   COMMENT ON COLUMN rrhh.tb_personal.id_tipo_identificacion IS 'Llave foránea que relaciona el tipo de identificación de la persona';
            rrhh       postgres    false    219            �           0    0    COLUMN tb_personal.nombres    COMMENT     G   COMMENT ON COLUMN rrhh.tb_personal.nombres IS 'Nombres de la persona';
            rrhh       postgres    false    219            �           0    0    COLUMN tb_personal.apellidos    COMMENT     K   COMMENT ON COLUMN rrhh.tb_personal.apellidos IS 'Apellidos de la persona';
            rrhh       postgres    false    219            �           0    0 (   COLUMN tb_personal.numero_identificacion    COMMENT     h   COMMENT ON COLUMN rrhh.tb_personal.numero_identificacion IS 'Número de identificación de la persona';
            rrhh       postgres    false    219            �           0    0 "   COLUMN tb_personal.numero_telefono    COMMENT     \   COMMENT ON COLUMN rrhh.tb_personal.numero_telefono IS 'Número de teléfono de la persona';
            rrhh       postgres    false    219            �           0    0 %   COLUMN tb_personal.correo_electronico    COMMENT     ^   COMMENT ON COLUMN rrhh.tb_personal.correo_electronico IS 'Correo electrónico de la persona';
            rrhh       postgres    false    219            �           0    0    COLUMN tb_personal.id_ciudad    COMMENT     h   COMMENT ON COLUMN rrhh.tb_personal.id_ciudad IS 'Llave foránea que relaciona la ciudad de la persona';
            rrhh       postgres    false    219            �           0    0 #   COLUMN tb_personal.id_cargo_persona    COMMENT        COMMENT ON COLUMN rrhh.tb_personal.id_cargo_persona IS 'Llave foránea a la tabla de cargos de personas dentro de la empresa';
            rrhh       postgres    false    219            �           0    0 &   COLUMN tb_personal.porcentaje_ganancia    COMMENT     �   COMMENT ON COLUMN rrhh.tb_personal.porcentaje_ganancia IS 'Porcentaje de ganancia de la persona en cada uno de los negocios que realice';
            rrhh       postgres    false    219            �            1259    16539    tb_personal_id_personal_seq    SEQUENCE     �   CREATE SEQUENCE rrhh.tb_personal_id_personal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE rrhh.tb_personal_id_personal_seq;
       rrhh       postgres    false    219    13            �           0    0    tb_personal_id_personal_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE rrhh.tb_personal_id_personal_seq OWNED BY rrhh.tb_personal.id_personal;
            rrhh       postgres    false    218            �            1259    16449    tb_users_access    TABLE     /  CREATE TABLE session.tb_users_access (
    id_user_access integer NOT NULL,
    id_user_app integer NOT NULL,
    fecha_acceso timestamp with time zone DEFAULT now(),
    datos_sesion jsonb NOT NULL,
    id_acceso text NOT NULL,
    datos_host_remoto jsonb,
    fecha_salida timestamp with time zone
);
 $   DROP TABLE session.tb_users_access;
       session         postgres    false    9            �           0    0    TABLE tb_users_access    COMMENT     �   COMMENT ON TABLE session.tb_users_access IS 'Tabla que guarda la información de los accesos a la aplicación realizados por los usuarios autorizados';
            session       postgres    false    208            �           0    0 %   COLUMN tb_users_access.id_user_access    COMMENT     �   COMMENT ON COLUMN session.tb_users_access.id_user_access IS 'Llave primaria de la tabla de los registros de acceso al aplicativo';
            session       postgres    false    208            �           0    0 "   COLUMN tb_users_access.id_user_app    COMMENT     �   COMMENT ON COLUMN session.tb_users_access.id_user_app IS 'Llave foránea a la tabla tb_users_app para relacionar el usuario que inicia sesión';
            session       postgres    false    208            �           0    0 #   COLUMN tb_users_access.fecha_acceso    COMMENT     u   COMMENT ON COLUMN session.tb_users_access.fecha_acceso IS 'Fecha y hora en las que el usuario accede al aplicativo';
            session       postgres    false    208            �           0    0 #   COLUMN tb_users_access.datos_sesion    COMMENT     �   COMMENT ON COLUMN session.tb_users_access.datos_sesion IS 'Cadena JSON que contiene los datos de sesión del usuario al momento en que accede.';
            session       postgres    false    208            �           0    0     COLUMN tb_users_access.id_acceso    COMMENT     z   COMMENT ON COLUMN session.tb_users_access.id_acceso IS 'Id de acceso a la aplicación generado por el inicio de sesión';
            session       postgres    false    208            �           0    0 (   COLUMN tb_users_access.datos_host_remoto    COMMENT     ~   COMMENT ON COLUMN session.tb_users_access.datos_host_remoto IS 'Datos obtenidos del host remoto que accede a la aplicación';
            session       postgres    false    208            �           0    0 #   COLUMN tb_users_access.fecha_salida    COMMENT     o   COMMENT ON COLUMN session.tb_users_access.fecha_salida IS 'Fecha y hora en la que el usuario cierra sesión ';
            session       postgres    false    208            �            1259    16447 "   tb_users_access_id_user_access_seq    SEQUENCE     �   CREATE SEQUENCE session.tb_users_access_id_user_access_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE session.tb_users_access_id_user_access_seq;
       session       postgres    false    9    208            �           0    0 "   tb_users_access_id_user_access_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE session.tb_users_access_id_user_access_seq OWNED BY session.tb_users_access.id_user_access;
            session       postgres    false    207            �            1259    16463    tb_users_access_id_user_seq    SEQUENCE     �   CREATE SEQUENCE session.tb_users_access_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE session.tb_users_access_id_user_seq;
       session       postgres    false    9    208            �           0    0    tb_users_access_id_user_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE session.tb_users_access_id_user_seq OWNED BY session.tb_users_access.id_user_app;
            session       postgres    false    209            �            1259    16438    tb_users_app    TABLE       CREATE TABLE session.tb_users_app (
    id_user integer NOT NULL,
    userlogin character varying(8) NOT NULL,
    password text NOT NULL,
    estado integer,
    fecha_creacion timestamp without time zone DEFAULT now(),
    id_persona integer,
    id_user_app_externo integer
);
 !   DROP TABLE session.tb_users_app;
       session         postgres    false    9            �           0    0    COLUMN tb_users_app.id_user    COMMENT     \   COMMENT ON COLUMN session.tb_users_app.id_user IS 'Llave primaria de la tabla de usuarios';
            session       postgres    false    206            �           0    0    COLUMN tb_users_app.userlogin    COMMENT     �   COMMENT ON COLUMN session.tb_users_app.userlogin IS 'Identificador o nombre único de usuario asignado a cada persona o sistema externo que accede a la aplicación';
            session       postgres    false    206            �           0    0    COLUMN tb_users_app.password    COMMENT        COMMENT ON COLUMN session.tb_users_app.password IS 'Password o contraseña asignados a cada usuario que accede al aplicativo';
            session       postgres    false    206            �           0    0    COLUMN tb_users_app.estado    COMMENT     h   COMMENT ON COLUMN session.tb_users_app.estado IS 'Indica el estado del usuario, 1= activo. 0=inactivo';
            session       postgres    false    206            �           0    0 "   COLUMN tb_users_app.fecha_creacion    COMMENT     s   COMMENT ON COLUMN session.tb_users_app.fecha_creacion IS 'Fecha en la que se crea el usuario en la base de datos';
            session       postgres    false    206            �           0    0    COLUMN tb_users_app.id_persona    COMMENT     �   COMMENT ON COLUMN session.tb_users_app.id_persona IS 'Llave foránea hacia la tabla de personal para relacionar el usuario con la persona propietaria.';
            session       postgres    false    206            �           0    0 '   COLUMN tb_users_app.id_user_app_externo    COMMENT     p   COMMENT ON COLUMN session.tb_users_app.id_user_app_externo IS 'Llave foránea a la tabla de usuarios externos';
            session       postgres    false    206            �            1259    16480    tb_users_app_externo    TABLE     �  CREATE TABLE session.tb_users_app_externo (
    id_user_app_externo integer NOT NULL,
    nombres_siglas character varying(100),
    apellidos_razon_social character varying(100),
    numero_identificacion character varying(30) NOT NULL,
    id_tipo_identificacion integer,
    numero_telefono character varying(25),
    correo_electronico character varying(100),
    id_ciudad integer
);
 )   DROP TABLE session.tb_users_app_externo;
       session         postgres    false    9            �           0    0    TABLE tb_users_app_externo    COMMENT     �   COMMENT ON TABLE session.tb_users_app_externo IS 'Tabla que contiene la información relacionada con los usuarios externos al aplicativo.';
            session       postgres    false    211            �           0    0 /   COLUMN tb_users_app_externo.id_user_app_externo    COMMENT     |   COMMENT ON COLUMN session.tb_users_app_externo.id_user_app_externo IS 'Id llave primaria de la tabla de usuarios externos';
            session       postgres    false    211            �           0    0 *   COLUMN tb_users_app_externo.nombres_siglas    COMMENT     �   COMMENT ON COLUMN session.tb_users_app_externo.nombres_siglas IS 'Nombres de la persona o siglas empresa relacionada a un usuario de acceso. ';
            session       postgres    false    211            �           0    0 2   COLUMN tb_users_app_externo.apellidos_razon_social    COMMENT     �   COMMENT ON COLUMN session.tb_users_app_externo.apellidos_razon_social IS 'Apellidos o razón social de la persona o empresa externa que accede al aplicativo';
            session       postgres    false    211            �           0    0 1   COLUMN tb_users_app_externo.numero_identificacion    COMMENT     �   COMMENT ON COLUMN session.tb_users_app_externo.numero_identificacion IS 'Número de identificación del usuario que accede a la aplicación';
            session       postgres    false    211            �           0    0 2   COLUMN tb_users_app_externo.id_tipo_identificacion    COMMENT     �   COMMENT ON COLUMN session.tb_users_app_externo.id_tipo_identificacion IS 'Id foráneo que relaciona el tipo de identificación del usuario externo';
            session       postgres    false    211            �           0    0 +   COLUMN tb_users_app_externo.numero_telefono    COMMENT     }   COMMENT ON COLUMN session.tb_users_app_externo.numero_telefono IS 'Número de teléfono del usuario externo del aplicativo';
            session       postgres    false    211            �           0    0 .   COLUMN tb_users_app_externo.correo_electronico    COMMENT     }   COMMENT ON COLUMN session.tb_users_app_externo.correo_electronico IS 'Email del usuario o empresa que accede al aplicativo';
            session       postgres    false    211            �           0    0 %   COLUMN tb_users_app_externo.id_ciudad    COMMENT     u   COMMENT ON COLUMN session.tb_users_app_externo.id_ciudad IS 'LLave foránea que relaciona con la tabla de ciudades';
            session       postgres    false    211            �            1259    16478 ,   tb_users_app_externo_id_user_app_externo_seq    SEQUENCE     �   CREATE SEQUENCE session.tb_users_app_externo_id_user_app_externo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE session.tb_users_app_externo_id_user_app_externo_seq;
       session       postgres    false    211    9            �           0    0 ,   tb_users_app_externo_id_user_app_externo_seq    SEQUENCE OWNED BY        ALTER SEQUENCE session.tb_users_app_externo_id_user_app_externo_seq OWNED BY session.tb_users_app_externo.id_user_app_externo;
            session       postgres    false    210            �            1259    16436    tb_users_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE session.tb_users_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE session.tb_users_id_usuario_seq;
       session       postgres    false    206    9            �           0    0    tb_users_id_usuario_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE session.tb_users_id_usuario_seq OWNED BY session.tb_users_app.id_user;
            session       postgres    false    205            �            1259    16685    tb_agendas_solicitudes    TABLE     �  CREATE TABLE solicitudes.tb_agendas_solicitudes (
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
 /   DROP TABLE solicitudes.tb_agendas_solicitudes;
       solicitudes         postgres    false    8            �           0    0    TABLE tb_agendas_solicitudes    COMMENT     �   COMMENT ON TABLE solicitudes.tb_agendas_solicitudes IS 'Tabla que contiene la información de los agendamientos realizados por cada solicitud.';
            solicitudes       postgres    false    243            �           0    0 1   COLUMN tb_agendas_solicitudes.id_agenda_solicitud    COMMENT     x   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_agenda_solicitud IS 'Id llave primaria de la tabla de agendas';
            solicitudes       postgres    false    243            �           0    0 *   COLUMN tb_agendas_solicitudes.id_solicitud    COMMENT     u   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_solicitud IS 'Llave foránea hacia la tabla de solicitudes';
            solicitudes       postgres    false    243            �           0    0 .   COLUMN tb_agendas_solicitudes.fecha_programada    COMMENT     x   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.fecha_programada IS 'Fecha en la que se programa el agendamiento';
            solicitudes       postgres    false    243            �           0    0 (   COLUMN tb_agendas_solicitudes.id_persona    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_persona IS 'Llave foránea que relaciona la persona encargada de atender el agendamiento';
            solicitudes       postgres    false    243            �           0    0 )   COLUMN tb_agendas_solicitudes.id_vendedor    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_vendedor IS 'Llave foránea hacia la tabla de clientes vendedores de inmuebles';
            solicitudes       postgres    false    243            �           0    0 ,   COLUMN tb_agendas_solicitudes.fecha_creacion    COMMENT     }   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.fecha_creacion IS 'Fecha y hora en que se crea la cita o agendamiento';
            solicitudes       postgres    false    243            �           0    0 1   COLUMN tb_agendas_solicitudes.id_persona_creacion    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_persona_creacion IS 'Llave foránea que relaciona el empleado que crea la cita o agendamiento';
            solicitudes       postgres    false    243            �           0    0 .   COLUMN tb_agendas_solicitudes.id_estado_agenda    COMMENT     w   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_estado_agenda IS 'Llave que relaciona el estado de la agenda';
            solicitudes       postgres    false    243            �           0    0 0   COLUMN tb_agendas_solicitudes.fecha_modificacion    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.fecha_modificacion IS 'Fecha en que se actualiza el estado o se atiende la cita o agendamiento';
            solicitudes       postgres    false    243            �           0    0 )   COLUMN tb_agendas_solicitudes.observacion    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.observacion IS 'Observación o información sobre la cita realizada o modificada en su estado';
            solicitudes       postgres    false    243            �           0    0 (   COLUMN tb_agendas_solicitudes.id_cliente    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_agendas_solicitudes.id_cliente IS 'Llave foránea que relaciona el cliente o posible comprador';
            solicitudes       postgres    false    243            �            1259    16683 .   tb_agendas_solicitudes_id_agenda_solicitud_seq    SEQUENCE     �   CREATE SEQUENCE solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq;
       solicitudes       postgres    false    8    243            �           0    0 .   tb_agendas_solicitudes_id_agenda_solicitud_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq OWNED BY solicitudes.tb_agendas_solicitudes.id_agenda_solicitud;
            solicitudes       postgres    false    242            �            1259    16642    tb_caracteristicas_solicitudes    TABLE     �   CREATE TABLE solicitudes.tb_caracteristicas_solicitudes (
    id_caracteristicas_solicitud integer NOT NULL,
    id_caracteristica_inmueble integer,
    id_solicitud integer,
    valor_caracteristica character varying(150)
);
 7   DROP TABLE solicitudes.tb_caracteristicas_solicitudes;
       solicitudes         postgres    false    8            �           0    0 $   TABLE tb_caracteristicas_solicitudes    COMMENT     �   COMMENT ON TABLE solicitudes.tb_caracteristicas_solicitudes IS 'Tabla que contiene la información de las características que tendrá una solicitud';
            solicitudes       postgres    false    234            �           0    0 B   COLUMN tb_caracteristicas_solicitudes.id_caracteristicas_solicitud    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_caracteristicas_solicitudes.id_caracteristicas_solicitud IS 'Llave primaria ID de la tabla que reune las caracteristicas de las solicitudes';
            solicitudes       postgres    false    234            �           0    0 @   COLUMN tb_caracteristicas_solicitudes.id_caracteristica_inmueble    COMMENT     w   COMMENT ON COLUMN solicitudes.tb_caracteristicas_solicitudes.id_caracteristica_inmueble IS 'id_solicitudes_inmuebles';
            solicitudes       postgres    false    234            �           0    0 2   COLUMN tb_caracteristicas_solicitudes.id_solicitud    COMMENT     w   COMMENT ON COLUMN solicitudes.tb_caracteristicas_solicitudes.id_solicitud IS 'Llave foránea que asocia la solicitud';
            solicitudes       postgres    false    234            �           0    0 :   COLUMN tb_caracteristicas_solicitudes.valor_caracteristica    COMMENT     t   COMMENT ON COLUMN solicitudes.tb_caracteristicas_solicitudes.valor_caracteristica IS 'Valor de la característica';
            solicitudes       postgres    false    234            �            1259    16640 ?   tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq    SEQUENCE     �   CREATE SEQUENCE solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 [   DROP SEQUENCE solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq;
       solicitudes       postgres    false    234    8            �           0    0 ?   tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq OWNED BY solicitudes.tb_caracteristicas_solicitudes.id_caracteristicas_solicitud;
            solicitudes       postgres    false    233            �            1259    16634    tb_estados_solicitudes    TABLE     �  CREATE TABLE solicitudes.tb_estados_solicitudes (
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
 /   DROP TABLE solicitudes.tb_estados_solicitudes;
       solicitudes         postgres    false    8            �           0    0    TABLE tb_estados_solicitudes    COMMENT     ^   COMMENT ON TABLE solicitudes.tb_estados_solicitudes IS 'Tabla de estados de las solicitudes';
            solicitudes       postgres    false    232            �           0    0 1   COLUMN tb_estados_solicitudes.id_estado_solicitud    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_estado_solicitud IS 'ID llave primaria de la tabla de estado de solicitudes';
            solicitudes       postgres    false    232            �           0    0 1   COLUMN tb_estados_solicitudes.id_solicitud_estado    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_solicitud_estado IS 'Llave foránea que relaciona el estado actual que tiene la solicitud';
            solicitudes       postgres    false    232            �           0    0 (   COLUMN tb_estados_solicitudes.id_persona    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_persona IS 'Llave foránea que relaciona el asesor o persona de la empresa que actualiza el estado de la solicitud';
            solicitudes       postgres    false    232            �           0    0 )   COLUMN tb_estados_solicitudes.observacion    COMMENT     ~   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.observacion IS 'Observación sobre el estado adicionado a la solicitud';
            solicitudes       postgres    false    232            �           0    0 ,   COLUMN tb_estados_solicitudes.fecha_creacion    COMMENT     l   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.fecha_creacion IS 'Fecha en la que se crea el estado';
            solicitudes       postgres    false    232            �           0    0 /   COLUMN tb_estados_solicitudes.id_tipo_actividad    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_tipo_actividad IS 'Llave foránea que relaciona el tipo de actividad efectuada';
            solicitudes       postgres    false    232            �           0    0 2   COLUMN tb_estados_solicitudes.actividad_programada    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.actividad_programada IS 'Valor que indica si fue una actividad programada ';
            solicitudes       postgres    false    232            �           0    0 .   COLUMN tb_estados_solicitudes.fecha_programada    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.fecha_programada IS 'Fecha y hora en las que son programadas las actividades';
            solicitudes       postgres    false    232            �           0    0 +   COLUMN tb_estados_solicitudes.valor_negocio    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.valor_negocio IS 'Valor real por el que se realiza el negocio o venta del inmueble';
            solicitudes       postgres    false    232            �           0    0 1   COLUMN tb_estados_solicitudes.porcentaje_comision    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.porcentaje_comision IS 'Porcentaje de comisión de ganancia sobre el negocio';
            solicitudes       postgres    false    232            �           0    0 *   COLUMN tb_estados_solicitudes.id_solicitud    COMMENT     r   COMMENT ON COLUMN solicitudes.tb_estados_solicitudes.id_solicitud IS 'Llave foránea que relaciona la solicitud';
            solicitudes       postgres    false    232            �            1259    16632 .   tb_estados_solicitudes_id_estado_solicitud_seq    SEQUENCE     �   CREATE SEQUENCE solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq;
       solicitudes       postgres    false    232    8            �           0    0 .   tb_estados_solicitudes_id_estado_solicitud_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq OWNED BY solicitudes.tb_estados_solicitudes.id_estado_solicitud;
            solicitudes       postgres    false    231            �            1259    16666    tb_intereses_solicitudes    TABLE     �   CREATE TABLE solicitudes.tb_intereses_solicitudes (
    id_interes_solicitud integer NOT NULL,
    id_interes integer,
    id_solicitud integer,
    observacion character varying(150)
);
 1   DROP TABLE solicitudes.tb_intereses_solicitudes;
       solicitudes         postgres    false    8            �           0    0    TABLE tb_intereses_solicitudes    COMMENT        COMMENT ON TABLE solicitudes.tb_intereses_solicitudes IS 'Tabla que asocia los intereses de los clientes con las solicitudes';
            solicitudes       postgres    false    240            �           0    0 4   COLUMN tb_intereses_solicitudes.id_interes_solicitud    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_intereses_solicitudes.id_interes_solicitud IS 'Llave primaria de la tabla de intereses de la solicitud';
            solicitudes       postgres    false    240            �           0    0 *   COLUMN tb_intereses_solicitudes.id_interes    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_intereses_solicitudes.id_interes IS 'Llave foránea que relaciona los intereses asociados a la solicitud';
            solicitudes       postgres    false    240            �           0    0 ,   COLUMN tb_intereses_solicitudes.id_solicitud    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_intereses_solicitudes.id_solicitud IS 'Llave foránea hacia la tabla de solicitudes de compra';
            solicitudes       postgres    false    240            �           0    0 +   COLUMN tb_intereses_solicitudes.observacion    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_intereses_solicitudes.observacion IS 'Observación o valor del interés adicional ingresado a la solicitud.';
            solicitudes       postgres    false    240            �            1259    16664 1   tb_intereses_solicitudes_id_interes_solicitud_seq    SEQUENCE     �   CREATE SEQUENCE solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq;
       solicitudes       postgres    false    240    8            �           0    0 1   tb_intereses_solicitudes_id_interes_solicitud_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq OWNED BY solicitudes.tb_intereses_solicitudes.id_interes_solicitud;
            solicitudes       postgres    false    239            �            1259    16589    tb_solicitudes_compra    TABLE     �  CREATE TABLE solicitudes.tb_solicitudes_compra (
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
 .   DROP TABLE solicitudes.tb_solicitudes_compra;
       solicitudes         postgres    false    8            �           0    0    TABLE tb_solicitudes_compra    COMMENT     o   COMMENT ON TABLE solicitudes.tb_solicitudes_compra IS 'Tabla que contiene la información de las solicitudes';
            solicitudes       postgres    false    224            �           0    0 +   COLUMN tb_solicitudes_compra.id_solicitudes    COMMENT     g   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_solicitudes IS 'Id de la tabla de solicitudes';
            solicitudes       postgres    false    224            �           0    0 '   COLUMN tb_solicitudes_compra.id_cliente    COMMENT     k   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_cliente IS 'Llave foránea a la tabla de clientes';
            solicitudes       postgres    false    224            �           0    0 -   COLUMN tb_solicitudes_compra.id_tipo_inmueble    COMMENT     r   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_tipo_inmueble IS 'Llave foránea a la tabla de inmuebles';
            solicitudes       postgres    false    224            �           0    0 *   COLUMN tb_solicitudes_compra.observaciones    COMMENT     r   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.observaciones IS 'Observaciones adicionales de la solicitud';
            solicitudes       postgres    false    224            �           0    0 +   COLUMN tb_solicitudes_compra.valor_inmueble    COMMENT     s   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.valor_inmueble IS 'Valor del inmueble buscado por el cliente';
            solicitudes       postgres    false    224            �           0    0 *   COLUMN tb_solicitudes_compra.id_forma_pago    COMMENT     s   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_forma_pago IS 'Llave foránea a la tabla de forma de pago';
            solicitudes       postgres    false    224            �           0    0 (   COLUMN tb_solicitudes_compra.id_urgencia    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_urgencia IS 'Llave foránea a la tabla de urgencia con la que se requiere el inmueble';
            solicitudes       postgres    false    224            �           0    0 $   COLUMN tb_solicitudes_compra.id_zona    COMMENT     w   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_zona IS 'Zona de la ciudad en la que se solicita el inmueble.';
            solicitudes       postgres    false    224            �           0    0 +   COLUMN tb_solicitudes_compra.fecha_creacion    COMMENT     n   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.fecha_creacion IS 'Fecha en la que se crea la solicitud';
            solicitudes       postgres    false    224            �           0    0 0   COLUMN tb_solicitudes_compra.id_usuario_creacion    COMMENT     t   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_usuario_creacion IS 'Id del empleado que crea la solicitud';
            solicitudes       postgres    false    224            �           0    0 0   COLUMN tb_solicitudes_compra.id_usuario_modifica    COMMENT     x   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_usuario_modifica IS 'Id del empleado que modifica la solicitud';
            solicitudes       postgres    false    224            �           0    0 /   COLUMN tb_solicitudes_compra.fecha_modificacion    COMMENT     t   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.fecha_modificacion IS 'Fecha de modificación de la solicitud';
            solicitudes       postgres    false    224            �           0    0 0   COLUMN tb_solicitudes_compra.id_estado_solicitud    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.id_estado_solicitud IS 'Llave foránea que relaciona con la tabla de estados de solicitudes';
            solicitudes       postgres    false    224            �           0    0 -   COLUMN tb_solicitudes_compra.numero_solicitud    COMMENT     o   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.numero_solicitud IS 'Número consecutivo de la solicitud';
            solicitudes       postgres    false    224            �           0    0 +   COLUMN tb_solicitudes_compra.cantidad_ninos    COMMENT     w   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.cantidad_ninos IS 'Cantidad de niños que habitarán el inmueble';
            solicitudes       postgres    false    224            �           0    0 -   COLUMN tb_solicitudes_compra.cantidad_adultos    COMMENT     z   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.cantidad_adultos IS 'Cantidad de adultos que habitarán el inmueble';
            solicitudes       postgres    false    224            �           0    0 5   COLUMN tb_solicitudes_compra.cantidad_adultos_mayores    COMMENT     �   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.cantidad_adultos_mayores IS 'Cantidad de adultos mayores que habitarán el inmueble';
            solicitudes       postgres    false    224            �           0    0 ,   COLUMN tb_solicitudes_compra.fecha_requerida    COMMENT     {   COMMENT ON COLUMN solicitudes.tb_solicitudes_compra.fecha_requerida IS 'Fecha en la que se requiere adquirir el inmueble';
            solicitudes       postgres    false    224            �            1259    16587 !   tb_solicitudes_id_solicitudes_seq    SEQUENCE     �   CREATE SEQUENCE solicitudes.tb_solicitudes_id_solicitudes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE solicitudes.tb_solicitudes_id_solicitudes_seq;
       solicitudes       postgres    false    224    8            �           0    0 !   tb_solicitudes_id_solicitudes_seq    SEQUENCE OWNED BY     x   ALTER SEQUENCE solicitudes.tb_solicitudes_id_solicitudes_seq OWNED BY solicitudes.tb_solicitudes_compra.id_solicitudes;
            solicitudes       postgres    false    223            �            1259    16680    tb_tipos_actividades    TABLE     {   CREATE TABLE tipos.tb_tipos_actividades (
    id_tipo_actividad integer NOT NULL,
    descripcion character varying(50)
);
 '   DROP TABLE tipos.tb_tipos_actividades;
       tipos         postgres    false    4            �           0    0    TABLE tb_tipos_actividades    COMMENT     ~   COMMENT ON TABLE tipos.tb_tipos_actividades IS 'Tabla que contiene los tipos de actividades que se efectúan en cada estado';
            tipos       postgres    false    241            �           0    0 -   COLUMN tb_tipos_actividades.id_tipo_actividad    COMMENT     {   COMMENT ON COLUMN tipos.tb_tipos_actividades.id_tipo_actividad IS 'Id llave primaria de la tabla de tipos de actividades';
            tipos       postgres    false    241            �           0    0 '   COLUMN tb_tipos_actividades.descripcion    COMMENT     s   COMMENT ON COLUMN tipos.tb_tipos_actividades.descripcion IS 'Descripción o denominación del tipo de actividad.';
            tipos       postgres    false    241                       1259    16909 *   tb_tipos_actividades_id_tipo_actividad_seq    SEQUENCE     �   CREATE SEQUENCE tipos.tb_tipos_actividades_id_tipo_actividad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE tipos.tb_tipos_actividades_id_tipo_actividad_seq;
       tipos       postgres    false    241    4                        0    0 *   tb_tipos_actividades_id_tipo_actividad_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE tipos.tb_tipos_actividades_id_tipo_actividad_seq OWNED BY tipos.tb_tipos_actividades.id_tipo_actividad;
            tipos       postgres    false    260                       1259    17042    tb_tipos_clientes    TABLE     w   CREATE TABLE tipos.tb_tipos_clientes (
    id_tipo_cliente integer NOT NULL,
    descripcion character varying(100)
);
 $   DROP TABLE tipos.tb_tipos_clientes;
       tipos         postgres    false    4                       0    0    TABLE tb_tipos_clientes    COMMENT     �   COMMENT ON TABLE tipos.tb_tipos_clientes IS 'Tabla que contiene la información de los tipos de clientes que se registran en el sistema.';
            tipos       postgres    false    272                       0    0 (   COLUMN tb_tipos_clientes.id_tipo_cliente    COMMENT     _   COMMENT ON COLUMN tipos.tb_tipos_clientes.id_tipo_cliente IS 'ID llave primaria de la tabla.';
            tipos       postgres    false    272                       0    0 $   COLUMN tb_tipos_clientes.descripcion    COMMENT     n   COMMENT ON COLUMN tipos.tb_tipos_clientes.descripcion IS 'Descripción o denominación del tipo de cliente.';
            tipos       postgres    false    272                       1259    17040 %   tb_tipos_clientes_id_tipo_cliente_seq    SEQUENCE     �   CREATE SEQUENCE tipos.tb_tipos_clientes_id_tipo_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE tipos.tb_tipos_clientes_id_tipo_cliente_seq;
       tipos       postgres    false    4    272                       0    0 %   tb_tipos_clientes_id_tipo_cliente_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE tipos.tb_tipos_clientes_id_tipo_cliente_seq OWNED BY tipos.tb_tipos_clientes.id_tipo_cliente;
            tipos       postgres    false    271            �            1259    16571    tb_tipos_inmuebles    TABLE     t   CREATE TABLE tipos.tb_tipos_inmuebles (
    id_tipo_inmueble integer NOT NULL,
    nombre character varying(100)
);
 %   DROP TABLE tipos.tb_tipos_inmuebles;
       tipos         postgres    false    4                       0    0    TABLE tb_tipos_inmuebles    COMMENT     �   COMMENT ON TABLE tipos.tb_tipos_inmuebles IS 'Tabla que contiene los tipos de inmuebles que se ofrecen a la venta o alquiler.';
            tipos       postgres    false    220                       0    0 *   COLUMN tb_tipos_inmuebles.id_tipo_inmueble    COMMENT     v   COMMENT ON COLUMN tipos.tb_tipos_inmuebles.id_tipo_inmueble IS 'Id de la tabla que es la llave primaria de la misma';
            tipos       postgres    false    220                       0    0     COLUMN tb_tipos_inmuebles.nombre    COMMENT     T   COMMENT ON COLUMN tipos.tb_tipos_inmuebles.nombre IS 'Nombre del tipo de inmueble';
            tipos       postgres    false    220            
           1259    16999    tb_tipos_notificacion    TABLE        CREATE TABLE tipos.tb_tipos_notificacion (
    id_tipo_notificacion integer NOT NULL,
    descripcion character varying(30)
);
 (   DROP TABLE tipos.tb_tipos_notificacion;
       tipos         postgres    false    4                       0    0    TABLE tb_tipos_notificacion    COMMENT     t   COMMENT ON TABLE tipos.tb_tipos_notificacion IS 'Tabla que contiene la información de los tipos de notificación';
            tipos       postgres    false    266            	           0    0 (   COLUMN tb_tipos_notificacion.descripcion    COMMENT     v   COMMENT ON COLUMN tipos.tb_tipos_notificacion.descripcion IS 'descripcion o denominación del tipo de notificación';
            tipos       postgres    false    266            	           1259    16997 .   tb_tipos_notificacion_id_tipo_notificacion_seq    SEQUENCE     �   CREATE SEQUENCE tipos.tb_tipos_notificacion_id_tipo_notificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE tipos.tb_tipos_notificacion_id_tipo_notificacion_seq;
       tipos       postgres    false    4    266            
           0    0 .   tb_tipos_notificacion_id_tipo_notificacion_seq    SEQUENCE OWNED BY        ALTER SEQUENCE tipos.tb_tipos_notificacion_id_tipo_notificacion_seq OWNED BY tipos.tb_tipos_notificacion.id_tipo_notificacion;
            tipos       postgres    false    265            �            1259    16429    tb_tiposidentificacion    TABLE     �   CREATE TABLE tipos.tb_tiposidentificacion (
    id_tipo_ident integer NOT NULL,
    desc_tipo_id character varying(25) NOT NULL,
    abreviatura character varying(5)
);
 )   DROP TABLE tipos.tb_tiposidentificacion;
       tipos         postgres    false    4                       0    0    TABLE tb_tiposidentificacion    COMMENT     �   COMMENT ON TABLE tipos.tb_tiposidentificacion IS 'Tabla que contiene los tipos de documento de una persona y su respectivo ID ';
            tipos       postgres    false    204                       0    0 +   COLUMN tb_tiposidentificacion.id_tipo_ident    COMMENT     u   COMMENT ON COLUMN tipos.tb_tiposidentificacion.id_tipo_ident IS 'Id primary key de la tabla tb_tiposidentificacion';
            tipos       postgres    false    204                       0    0 *   COLUMN tb_tiposidentificacion.desc_tipo_id    COMMENT     n   COMMENT ON COLUMN tipos.tb_tiposidentificacion.desc_tipo_id IS 'Descripción o nombre del tipo de documento';
            tipos       postgres    false    204                       0    0 )   COLUMN tb_tiposidentificacion.abreviatura    COMMENT     j   COMMENT ON COLUMN tipos.tb_tiposidentificacion.abreviatura IS 'Abreviatura del tipo de identificación.';
            tipos       postgres    false    204            �            1259    16427 #   tb_tiposdocumento_id_tipo_ident_seq    SEQUENCE     �   CREATE SEQUENCE tipos.tb_tiposdocumento_id_tipo_ident_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE tipos.tb_tiposdocumento_id_tipo_ident_seq;
       tipos       postgres    false    4    204                       0    0 #   tb_tiposdocumento_id_tipo_ident_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE tipos.tb_tiposdocumento_id_tipo_ident_seq OWNED BY tipos.tb_tiposidentificacion.id_tipo_ident;
            tipos       postgres    false    203            e           2604    16601    tb_clientes id_cliente    DEFAULT     �   ALTER TABLE ONLY clientes.tb_clientes ALTER COLUMN id_cliente SET DEFAULT nextval('clientes.tb_clientes_id_cliente_seq'::regclass);
 G   ALTER TABLE clientes.tb_clientes ALTER COLUMN id_cliente DROP DEFAULT;
       clientes       postgres    false    226    225            {           2604    17016    tb_aut_externas id_aut_externas    DEFAULT     �   ALTER TABLE ONLY generales.tb_aut_externas ALTER COLUMN id_aut_externas SET DEFAULT nextval('generales.tb_aut_externas_id_aut_externas_seq'::regclass);
 Q   ALTER TABLE generales.tb_aut_externas ALTER COLUMN id_aut_externas DROP DEFAULT;
    	   generales       postgres    false    268    267    268            |           2604    17027 1   tb_aut_externas_services id_aut_externas_services    DEFAULT     �   ALTER TABLE ONLY generales.tb_aut_externas_services ALTER COLUMN id_aut_externas_services SET DEFAULT nextval('generales.tb_aut_externas_services_id_aut_externas_services_seq'::regclass);
 c   ALTER TABLE generales.tb_aut_externas_services ALTER COLUMN id_aut_externas_services DROP DEFAULT;
    	   generales       postgres    false    270    269    270            v           2604    16821    tb_cargos id_cargo    DEFAULT     ~   ALTER TABLE ONLY generales.tb_cargos ALTER COLUMN id_cargo SET DEFAULT nextval('generales.tb_cargos_id_cargo_seq'::regclass);
 D   ALTER TABLE generales.tb_cargos ALTER COLUMN id_cargo DROP DEFAULT;
    	   generales       postgres    false    257    256    257            a           2604    16508    tb_ciudades id_ciudad    DEFAULT     �   ALTER TABLE ONLY generales.tb_ciudades ALTER COLUMN id_ciudad SET DEFAULT nextval('generales.tb_ciudades_id_ciudad_seq'::regclass);
 G   ALTER TABLE generales.tb_ciudades ALTER COLUMN id_ciudad DROP DEFAULT;
    	   generales       postgres    false    216    217    217                       2604    17135 :   tb_criterios_diligenciamiento id_criterio_diligenciamiento    DEFAULT     �   ALTER TABLE ONLY generales.tb_criterios_diligenciamiento ALTER COLUMN id_criterio_diligenciamiento SET DEFAULT nextval('generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq'::regclass);
 l   ALTER TABLE generales.tb_criterios_diligenciamiento ALTER COLUMN id_criterio_diligenciamiento DROP DEFAULT;
    	   generales       postgres    false    276    275    276            _           2604    16492     tb_departamentos id_departamento    DEFAULT     �   ALTER TABLE ONLY generales.tb_departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('generales.tb_departamentos_id_departamento_seq'::regclass);
 R   ALTER TABLE generales.tb_departamentos ALTER COLUMN id_departamento DROP DEFAULT;
    	   generales       postgres    false    212    213    213            w           2604    16864 !   tb_estado_agenda id_estado_agenda    DEFAULT     �   ALTER TABLE ONLY generales.tb_estado_agenda ALTER COLUMN id_estado_agenda SET DEFAULT nextval('generales.tb_estado_agenda_id_estado_agenda_seq'::regclass);
 S   ALTER TABLE generales.tb_estado_agenda ALTER COLUMN id_estado_agenda DROP DEFAULT;
    	   generales       postgres    false    259    258            g           2604    16613 "   tb_estados_civiles id_estado_civil    DEFAULT     �   ALTER TABLE ONLY generales.tb_estados_civiles ALTER COLUMN id_estado_civil SET DEFAULT nextval('generales.tb_estados_civiles_id_estado_civil_seq'::regclass);
 T   ALTER TABLE generales.tb_estados_civiles ALTER COLUMN id_estado_civil DROP DEFAULT;
    	   generales       postgres    false    227    228    228            x           2604    16950    tb_formas_pago id_forma_pago    DEFAULT     �   ALTER TABLE ONLY generales.tb_formas_pago ALTER COLUMN id_forma_pago SET DEFAULT nextval('generales.tb_formas_pago_id_forma_pago_seq'::regclass);
 N   ALTER TABLE generales.tb_formas_pago ALTER COLUMN id_forma_pago DROP DEFAULT;
    	   generales       postgres    false    261    262    262            r           2604    16713 '   tb_inmuebles_estados id_inmueble_estado    DEFAULT     �   ALTER TABLE ONLY generales.tb_inmuebles_estados ALTER COLUMN id_inmueble_estado SET DEFAULT nextval('generales.tb_inmuebles_estados_id_inmueble_estado_seq'::regclass);
 Y   ALTER TABLE generales.tb_inmuebles_estados ALTER COLUMN id_inmueble_estado DROP DEFAULT;
    	   generales       postgres    false    248    249    249            l           2604    16661    tb_intereses id_interes    DEFAULT     �   ALTER TABLE ONLY generales.tb_intereses ALTER COLUMN id_interes SET DEFAULT nextval('generales.tb_intereses_id_interes_seq'::regclass);
 I   ALTER TABLE generales.tb_intereses ALTER COLUMN id_interes DROP DEFAULT;
    	   generales       postgres    false    238    237    238            t           2604    16729    tb_jornadas id_jornada    DEFAULT     �   ALTER TABLE ONLY generales.tb_jornadas ALTER COLUMN id_jornada SET DEFAULT nextval('generales.tb_jornadas_id_jornada_seq'::regclass);
 H   ALTER TABLE generales.tb_jornadas ALTER COLUMN id_jornada DROP DEFAULT;
    	   generales       postgres    false    252    253    253            `           2604    16500    tb_paises id_pais    DEFAULT     |   ALTER TABLE ONLY generales.tb_paises ALTER COLUMN id_pais SET DEFAULT nextval('generales.tb_paises_id_pais_seq'::regclass);
 C   ALTER TABLE generales.tb_paises ALTER COLUMN id_pais DROP DEFAULT;
    	   generales       postgres    false    215    214    215            k           2604    16653 *   tb_solicitudes_estados id_solicitud_estado    DEFAULT     �   ALTER TABLE ONLY generales.tb_solicitudes_estados ALTER COLUMN id_solicitud_estado SET DEFAULT nextval('generales.tb_solicitudes_estados_id_solicitud_estado_seq'::regclass);
 \   ALTER TABLE generales.tb_solicitudes_estados ALTER COLUMN id_solicitud_estado DROP DEFAULT;
    	   generales       postgres    false    236    235    236            y           2604    16964    tb_urgencias id_urgencia    DEFAULT     �   ALTER TABLE ONLY generales.tb_urgencias ALTER COLUMN id_urgencia SET DEFAULT nextval('generales.tb_urgencias_id_urgencia_seq'::regclass);
 J   ALTER TABLE generales.tb_urgencias ALTER COLUMN id_urgencia DROP DEFAULT;
    	   generales       postgres    false    263    264    264            u           2604    16807    tb_zonas id_zona    DEFAULT     z   ALTER TABLE ONLY generales.tb_zonas ALTER COLUMN id_zona SET DEFAULT nextval('generales.tb_zonas_id_zona_seq'::regclass);
 B   ALTER TABLE generales.tb_zonas ALTER COLUMN id_zona DROP DEFAULT;
    	   generales       postgres    false    254    255    255            c           2604    16583 8   tb_caracteristicas_inmuebles id_caracterisitica_inmueble    DEFAULT     �   ALTER TABLE ONLY inmuebles.tb_caracteristicas_inmuebles ALTER COLUMN id_caracterisitica_inmueble SET DEFAULT nextval('inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq'::regclass);
 j   ALTER TABLE inmuebles.tb_caracteristicas_inmuebles ALTER COLUMN id_caracterisitica_inmueble DROP DEFAULT;
    	   inmuebles       postgres    false    221    222    222            �           2604    17143 A   tb_caracteristicas_tipo_inmueble id_caracteristicas_tipo_inmueble    DEFAULT     �   ALTER TABLE ONLY inmuebles.tb_caracteristicas_tipo_inmueble ALTER COLUMN id_caracteristicas_tipo_inmueble SET DEFAULT nextval('inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq'::regclass);
 s   ALTER TABLE inmuebles.tb_caracteristicas_tipo_inmueble ALTER COLUMN id_caracteristicas_tipo_inmueble DROP DEFAULT;
    	   inmuebles       postgres    false    278    277    278            q           2604    16705 '   tb_estados_inmuebles id_estado_inmueble    DEFAULT     �   ALTER TABLE ONLY inmuebles.tb_estados_inmuebles ALTER COLUMN id_estado_inmueble SET DEFAULT nextval('inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq'::regclass);
 Y   ALTER TABLE inmuebles.tb_estados_inmuebles ALTER COLUMN id_estado_inmueble DROP DEFAULT;
    	   inmuebles       postgres    false    246    247    247            s           2604    16721 )   tb_horarios_inmuebles id_horario_inmueble    DEFAULT     �   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles ALTER COLUMN id_horario_inmueble SET DEFAULT nextval('inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq'::regclass);
 [   ALTER TABLE inmuebles.tb_horarios_inmuebles ALTER COLUMN id_horario_inmueble DROP DEFAULT;
    	   inmuebles       postgres    false    251    250    251            p           2604    16697 /   tb_inmuebles_registrados id_inmueble_registrado    DEFAULT     �   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados ALTER COLUMN id_inmueble_registrado SET DEFAULT nextval('inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq'::regclass);
 a   ALTER TABLE inmuebles.tb_inmuebles_registrados ALTER COLUMN id_inmueble_registrado DROP DEFAULT;
    	   inmuebles       postgres    false    244    245    245            ~           2604    17127 E   tb_tipos_caracteristicas_inmuebles id_tipos_caracteristicas_inmuebles    DEFAULT     �   ALTER TABLE ONLY inmuebles.tb_tipos_caracteristicas_inmuebles ALTER COLUMN id_tipos_caracteristicas_inmuebles SET DEFAULT nextval('inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq'::regclass);
 w   ALTER TABLE inmuebles.tb_tipos_caracteristicas_inmuebles ALTER COLUMN id_tipos_caracteristicas_inmuebles DROP DEFAULT;
    	   inmuebles       postgres    false    273    274    274            h           2604    16629 %   tb_tipos_inmuebles id_tipos_inmuebles    DEFAULT     �   ALTER TABLE ONLY inmuebles.tb_tipos_inmuebles ALTER COLUMN id_tipos_inmuebles SET DEFAULT nextval('inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq'::regclass);
 W   ALTER TABLE inmuebles.tb_tipos_inmuebles ALTER COLUMN id_tipos_inmuebles DROP DEFAULT;
    	   inmuebles       postgres    false    230    229    230            b           2604    16544    tb_personal id_personal    DEFAULT     ~   ALTER TABLE ONLY rrhh.tb_personal ALTER COLUMN id_personal SET DEFAULT nextval('rrhh.tb_personal_id_personal_seq'::regclass);
 D   ALTER TABLE rrhh.tb_personal ALTER COLUMN id_personal DROP DEFAULT;
       rrhh       postgres    false    218    219    219            [           2604    16452    tb_users_access id_user_access    DEFAULT     �   ALTER TABLE ONLY session.tb_users_access ALTER COLUMN id_user_access SET DEFAULT nextval('session.tb_users_access_id_user_access_seq'::regclass);
 N   ALTER TABLE session.tb_users_access ALTER COLUMN id_user_access DROP DEFAULT;
       session       postgres    false    208    207    208            \           2604    16465    tb_users_access id_user_app    DEFAULT     �   ALTER TABLE ONLY session.tb_users_access ALTER COLUMN id_user_app SET DEFAULT nextval('session.tb_users_access_id_user_seq'::regclass);
 K   ALTER TABLE session.tb_users_access ALTER COLUMN id_user_app DROP DEFAULT;
       session       postgres    false    209    208            Y           2604    16441    tb_users_app id_user    DEFAULT     }   ALTER TABLE ONLY session.tb_users_app ALTER COLUMN id_user SET DEFAULT nextval('session.tb_users_id_usuario_seq'::regclass);
 D   ALTER TABLE session.tb_users_app ALTER COLUMN id_user DROP DEFAULT;
       session       postgres    false    205    206    206            ^           2604    16483 (   tb_users_app_externo id_user_app_externo    DEFAULT     �   ALTER TABLE ONLY session.tb_users_app_externo ALTER COLUMN id_user_app_externo SET DEFAULT nextval('session.tb_users_app_externo_id_user_app_externo_seq'::regclass);
 X   ALTER TABLE session.tb_users_app_externo ALTER COLUMN id_user_app_externo DROP DEFAULT;
       session       postgres    false    210    211    211            o           2604    16688 *   tb_agendas_solicitudes id_agenda_solicitud    DEFAULT     �   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes ALTER COLUMN id_agenda_solicitud SET DEFAULT nextval('solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq'::regclass);
 ^   ALTER TABLE solicitudes.tb_agendas_solicitudes ALTER COLUMN id_agenda_solicitud DROP DEFAULT;
       solicitudes       postgres    false    242    243    243            j           2604    16645 ;   tb_caracteristicas_solicitudes id_caracteristicas_solicitud    DEFAULT     �   ALTER TABLE ONLY solicitudes.tb_caracteristicas_solicitudes ALTER COLUMN id_caracteristicas_solicitud SET DEFAULT nextval('solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq'::regclass);
 o   ALTER TABLE solicitudes.tb_caracteristicas_solicitudes ALTER COLUMN id_caracteristicas_solicitud DROP DEFAULT;
       solicitudes       postgres    false    234    233    234            i           2604    16637 *   tb_estados_solicitudes id_estado_solicitud    DEFAULT     �   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes ALTER COLUMN id_estado_solicitud SET DEFAULT nextval('solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq'::regclass);
 ^   ALTER TABLE solicitudes.tb_estados_solicitudes ALTER COLUMN id_estado_solicitud DROP DEFAULT;
       solicitudes       postgres    false    231    232    232            m           2604    16669 -   tb_intereses_solicitudes id_interes_solicitud    DEFAULT     �   ALTER TABLE ONLY solicitudes.tb_intereses_solicitudes ALTER COLUMN id_interes_solicitud SET DEFAULT nextval('solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq'::regclass);
 a   ALTER TABLE solicitudes.tb_intereses_solicitudes ALTER COLUMN id_interes_solicitud DROP DEFAULT;
       solicitudes       postgres    false    240    239    240            d           2604    16592 $   tb_solicitudes_compra id_solicitudes    DEFAULT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra ALTER COLUMN id_solicitudes SET DEFAULT nextval('solicitudes.tb_solicitudes_id_solicitudes_seq'::regclass);
 X   ALTER TABLE solicitudes.tb_solicitudes_compra ALTER COLUMN id_solicitudes DROP DEFAULT;
       solicitudes       postgres    false    224    223    224            n           2604    16911 &   tb_tipos_actividades id_tipo_actividad    DEFAULT     �   ALTER TABLE ONLY tipos.tb_tipos_actividades ALTER COLUMN id_tipo_actividad SET DEFAULT nextval('tipos.tb_tipos_actividades_id_tipo_actividad_seq'::regclass);
 T   ALTER TABLE tipos.tb_tipos_actividades ALTER COLUMN id_tipo_actividad DROP DEFAULT;
       tipos       postgres    false    260    241            }           2604    17045 !   tb_tipos_clientes id_tipo_cliente    DEFAULT     �   ALTER TABLE ONLY tipos.tb_tipos_clientes ALTER COLUMN id_tipo_cliente SET DEFAULT nextval('tipos.tb_tipos_clientes_id_tipo_cliente_seq'::regclass);
 O   ALTER TABLE tipos.tb_tipos_clientes ALTER COLUMN id_tipo_cliente DROP DEFAULT;
       tipos       postgres    false    272    271    272            z           2604    17002 *   tb_tipos_notificacion id_tipo_notificacion    DEFAULT     �   ALTER TABLE ONLY tipos.tb_tipos_notificacion ALTER COLUMN id_tipo_notificacion SET DEFAULT nextval('tipos.tb_tipos_notificacion_id_tipo_notificacion_seq'::regclass);
 X   ALTER TABLE tipos.tb_tipos_notificacion ALTER COLUMN id_tipo_notificacion DROP DEFAULT;
       tipos       postgres    false    266    265    266            X           2604    16432 $   tb_tiposidentificacion id_tipo_ident    DEFAULT     �   ALTER TABLE ONLY tipos.tb_tiposidentificacion ALTER COLUMN id_tipo_ident SET DEFAULT nextval('tipos.tb_tiposdocumento_id_tipo_ident_seq'::regclass);
 R   ALTER TABLE tipos.tb_tiposidentificacion ALTER COLUMN id_tipo_ident DROP DEFAULT;
       tipos       postgres    false    204    203    204            �          0    16596    tb_clientes 
   TABLE DATA               �  COPY clientes.tb_clientes (id_cliente, nombres, apellidos, id_tipo_identificacion, numero_identificacion, numero_telefono, numero_celular, correo_electronico, profesion, ocupacion, "fecha_cumpleaños", id_estado_civil, otra_info, id_tipo_notificacion, id_user, direccion, id_ciudad, id_departamento, id_pais, id_tipo_cliente, fecha_creacion, id_user_mod, fecha_modificacion) FROM stdin;
    clientes       postgres    false    225   �G      �          0    17013    tb_aut_externas 
   TABLE DATA               _   COPY generales.tb_aut_externas (id_aut_externas, id_api, token_api, provider, uri) FROM stdin;
 	   generales       postgres    false    268   
I      �          0    17024    tb_aut_externas_services 
   TABLE DATA               y   COPY generales.tb_aut_externas_services (id_aut_externas_services, name_service, uri_compl, id_aut_externas) FROM stdin;
 	   generales       postgres    false    270   �I      �          0    16818 	   tb_cargos 
   TABLE DATA               =   COPY generales.tb_cargos (id_cargo, descripcion) FROM stdin;
 	   generales       postgres    false    257   �J      �          0    16505    tb_ciudades 
   TABLE DATA               b   COPY generales.tb_ciudades (id_ciudad, codigo_ciudad, nombre_ciudad, id_departamento) FROM stdin;
 	   generales       postgres    false    217   �J      �          0    17132    tb_criterios_diligenciamiento 
   TABLE DATA               e   COPY generales.tb_criterios_diligenciamiento (id_criterio_diligenciamiento, descripcion) FROM stdin;
 	   generales       postgres    false    276   �J      �          0    16489    tb_departamentos 
   TABLE DATA               q   COPY generales.tb_departamentos (id_departamento, codigo_departamento, nombre_departamento, id_pais) FROM stdin;
 	   generales       postgres    false    213   /K      �          0    16859    tb_estado_agenda 
   TABLE DATA               L   COPY generales.tb_estado_agenda (id_estado_agenda, descripcion) FROM stdin;
 	   generales       postgres    false    258   �L      �          0    16610    tb_estados_civiles 
   TABLE DATA               M   COPY generales.tb_estados_civiles (id_estado_civil, descripcion) FROM stdin;
 	   generales       postgres    false    228   �L      �          0    16947    tb_formas_pago 
   TABLE DATA               G   COPY generales.tb_formas_pago (id_forma_pago, descripcion) FROM stdin;
 	   generales       postgres    false    262   M      �          0    16710    tb_inmuebles_estados 
   TABLE DATA               R   COPY generales.tb_inmuebles_estados (id_inmueble_estado, descripcion) FROM stdin;
 	   generales       postgres    false    249   ,M      �          0    16658    tb_intereses 
   TABLE DATA               B   COPY generales.tb_intereses (id_interes, descripcion) FROM stdin;
 	   generales       postgres    false    238   IM      �          0    16726    tb_jornadas 
   TABLE DATA               9   COPY generales.tb_jornadas (id_jornada, dia) FROM stdin;
 	   generales       postgres    false    253   fM      �          0    16497 	   tb_paises 
   TABLE DATA               I   COPY generales.tb_paises (id_pais, codigo_pais, nombre_pais) FROM stdin;
 	   generales       postgres    false    215   �M      �          0    16650    tb_solicitudes_estados 
   TABLE DATA               U   COPY generales.tb_solicitudes_estados (id_solicitud_estado, descripcion) FROM stdin;
 	   generales       postgres    false    236   �M      �          0    16961    tb_urgencias 
   TABLE DATA               C   COPY generales.tb_urgencias (id_urgencia, descripcion) FROM stdin;
 	   generales       postgres    false    264   �M      �          0    16804    tb_zonas 
   TABLE DATA               ;   COPY generales.tb_zonas (id_zona, descripcion) FROM stdin;
 	   generales       postgres    false    255   �M      �          0    16580    tb_caracteristicas_inmuebles 
   TABLE DATA               �   COPY inmuebles.tb_caracteristicas_inmuebles (id_caracterisitica_inmueble, "nombre_característica", id_tipo_inmueble, tipo_caracteristica) FROM stdin;
 	   inmuebles       postgres    false    222   N      �          0    17140     tb_caracteristicas_tipo_inmueble 
   TABLE DATA               '  COPY inmuebles.tb_caracteristicas_tipo_inmueble (id_caracteristicas_tipo_inmueble, id_tipo_inmueble, id_caracteristica, id_criterio_diligenciamiento, id_tipos_caracteristicas_inmuebles, id_user_creacion, id_user_modificacion, estado, fecha_creacion, fecha_modificacion, descripcion) FROM stdin;
 	   inmuebles       postgres    false    278   "N      �          0    16702    tb_estados_inmuebles 
   TABLE DATA               u   COPY inmuebles.tb_estados_inmuebles (id_estado_inmueble, id_inmueble_estado, id_persona, fecha_creacion) FROM stdin;
 	   inmuebles       postgres    false    247   �Q      �          0    16718    tb_horarios_inmuebles 
   TABLE DATA               �   COPY inmuebles.tb_horarios_inmuebles (id_horario_inmueble, hora_inicial, minuto_inicial, hora_final, minuto_final, id_jornada, id_inmueble, id_persona_crea, fecha_creacion) FROM stdin;
 	   inmuebles       postgres    false    251   �Q      �          0    16694    tb_inmuebles_registrados 
   TABLE DATA               �   COPY inmuebles.tb_inmuebles_registrados (id_inmueble_registrado, id_tipo_inmueble, id_cliente, id_personal, valor_inmueble, fecha_creacion, direccion_inmueble, id_ciudad, id_zona, observacion, id_estado_inmueble) FROM stdin;
 	   inmuebles       postgres    false    245   �Q      �          0    17124 "   tb_tipos_caracteristicas_inmuebles 
   TABLE DATA               p   COPY inmuebles.tb_tipos_caracteristicas_inmuebles (id_tipos_caracteristicas_inmuebles, descripcion) FROM stdin;
 	   inmuebles       postgres    false    274   �Q      �          0    16626    tb_tipos_inmuebles 
   TABLE DATA               P   COPY inmuebles.tb_tipos_inmuebles (id_tipos_inmuebles, descripcion) FROM stdin;
 	   inmuebles       postgres    false    230   )R      �          0    16541    tb_personal 
   TABLE DATA               �   COPY rrhh.tb_personal (id_personal, id_tipo_identificacion, nombres, apellidos, numero_identificacion, numero_telefono, correo_electronico, id_ciudad, id_cargo_persona, porcentaje_ganancia) FROM stdin;
    rrhh       postgres    false    219   FR      �          0    16449    tb_users_access 
   TABLE DATA               �   COPY session.tb_users_access (id_user_access, id_user_app, fecha_acceso, datos_sesion, id_acceso, datos_host_remoto, fecha_salida) FROM stdin;
    session       postgres    false    208   cR      �          0    16438    tb_users_app 
   TABLE DATA               ~   COPY session.tb_users_app (id_user, userlogin, password, estado, fecha_creacion, id_persona, id_user_app_externo) FROM stdin;
    session       postgres    false    206   �R      �          0    16480    tb_users_app_externo 
   TABLE DATA               �   COPY session.tb_users_app_externo (id_user_app_externo, nombres_siglas, apellidos_razon_social, numero_identificacion, id_tipo_identificacion, numero_telefono, correo_electronico, id_ciudad) FROM stdin;
    session       postgres    false    211   �R      �          0    16685    tb_agendas_solicitudes 
   TABLE DATA               �   COPY solicitudes.tb_agendas_solicitudes (id_agenda_solicitud, id_solicitud, fecha_programada, id_persona, id_vendedor, fecha_creacion, id_persona_creacion, id_estado_agenda, fecha_modificacion, observacion, id_cliente) FROM stdin;
    solicitudes       postgres    false    243   S      �          0    16642    tb_caracteristicas_solicitudes 
   TABLE DATA               �   COPY solicitudes.tb_caracteristicas_solicitudes (id_caracteristicas_solicitud, id_caracteristica_inmueble, id_solicitud, valor_caracteristica) FROM stdin;
    solicitudes       postgres    false    234    S      �          0    16634    tb_estados_solicitudes 
   TABLE DATA               �   COPY solicitudes.tb_estados_solicitudes (id_estado_solicitud, id_solicitud_estado, id_persona, observacion, fecha_creacion, id_tipo_actividad, actividad_programada, fecha_programada, valor_negocio, porcentaje_comision, id_solicitud) FROM stdin;
    solicitudes       postgres    false    232   =S      �          0    16666    tb_intereses_solicitudes 
   TABLE DATA               t   COPY solicitudes.tb_intereses_solicitudes (id_interes_solicitud, id_interes, id_solicitud, observacion) FROM stdin;
    solicitudes       postgres    false    240   ZS      �          0    16589    tb_solicitudes_compra 
   TABLE DATA               h  COPY solicitudes.tb_solicitudes_compra (id_solicitudes, id_cliente, id_tipo_inmueble, observaciones, valor_inmueble, id_forma_pago, id_urgencia, id_zona, fecha_creacion, id_usuario_creacion, id_usuario_modifica, fecha_modificacion, id_estado_solicitud, numero_solicitud, cantidad_ninos, cantidad_adultos, cantidad_adultos_mayores, fecha_requerida) FROM stdin;
    solicitudes       postgres    false    224   wS      �          0    16680    tb_tipos_actividades 
   TABLE DATA               M   COPY tipos.tb_tipos_actividades (id_tipo_actividad, descripcion) FROM stdin;
    tipos       postgres    false    241   �S      �          0    17042    tb_tipos_clientes 
   TABLE DATA               H   COPY tipos.tb_tipos_clientes (id_tipo_cliente, descripcion) FROM stdin;
    tipos       postgres    false    272   �S      �          0    16571    tb_tipos_inmuebles 
   TABLE DATA               E   COPY tipos.tb_tipos_inmuebles (id_tipo_inmueble, nombre) FROM stdin;
    tipos       postgres    false    220   �S      �          0    16999    tb_tipos_notificacion 
   TABLE DATA               Q   COPY tipos.tb_tipos_notificacion (id_tipo_notificacion, descripcion) FROM stdin;
    tipos       postgres    false    266   �S      �          0    16429    tb_tiposidentificacion 
   TABLE DATA               Y   COPY tipos.tb_tiposidentificacion (id_tipo_ident, desc_tipo_id, abreviatura) FROM stdin;
    tipos       postgres    false    204   IT                 0    0    tb_clientes_id_cliente_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('clientes.tb_clientes_id_cliente_seq', 18, true);
            clientes       postgres    false    226                       0    0 #   tb_aut_externas_id_aut_externas_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('generales.tb_aut_externas_id_aut_externas_seq', 3, true);
         	   generales       postgres    false    267                       0    0 5   tb_aut_externas_services_id_aut_externas_services_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('generales.tb_aut_externas_services_id_aut_externas_services_seq', 11, true);
         	   generales       postgres    false    269                       0    0    tb_cargos_id_cargo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('generales.tb_cargos_id_cargo_seq', 1, false);
         	   generales       postgres    false    256                       0    0    tb_ciudades_id_ciudad_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('generales.tb_ciudades_id_ciudad_seq', 1, false);
         	   generales       postgres    false    216                       0    0 >   tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('generales.tb_criterios_diligenciamiento_id_criterio_diligenciamiento_seq', 3, true);
         	   generales       postgres    false    275                       0    0 $   tb_departamentos_id_departamento_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('generales.tb_departamentos_id_departamento_seq', 53, true);
         	   generales       postgres    false    212                       0    0 %   tb_estado_agenda_id_estado_agenda_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('generales.tb_estado_agenda_id_estado_agenda_seq', 1, false);
         	   generales       postgres    false    259                       0    0 &   tb_estados_civiles_id_estado_civil_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('generales.tb_estados_civiles_id_estado_civil_seq', 1, false);
         	   generales       postgres    false    227                       0    0     tb_formas_pago_id_forma_pago_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('generales.tb_formas_pago_id_forma_pago_seq', 1, false);
         	   generales       postgres    false    261                       0    0 +   tb_inmuebles_estados_id_inmueble_estado_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('generales.tb_inmuebles_estados_id_inmueble_estado_seq', 1, false);
         	   generales       postgres    false    248                       0    0    tb_intereses_id_interes_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('generales.tb_intereses_id_interes_seq', 1, false);
         	   generales       postgres    false    237                       0    0    tb_jornadas_id_jornada_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('generales.tb_jornadas_id_jornada_seq', 1, false);
         	   generales       postgres    false    252                       0    0    tb_paises_id_pais_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('generales.tb_paises_id_pais_seq', 1, true);
         	   generales       postgres    false    214                       0    0 .   tb_solicitudes_estados_id_solicitud_estado_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('generales.tb_solicitudes_estados_id_solicitud_estado_seq', 1, false);
         	   generales       postgres    false    235                       0    0    tb_urgencias_id_urgencia_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('generales.tb_urgencias_id_urgencia_seq', 1, false);
         	   generales       postgres    false    263                        0    0    tb_zonas_id_zona_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('generales.tb_zonas_id_zona_seq', 1, false);
         	   generales       postgres    false    254            !           0    0 ?   tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq    SEQUENCE SET     q   SELECT pg_catalog.setval('inmuebles.tb_caracteristicas_inmuebles_id_tb_caracterisitica_inmueble_seq', 1, false);
         	   inmuebles       postgres    false    221            "           0    0 ?   tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq    SEQUENCE SET     q   SELECT pg_catalog.setval('inmuebles.tb_caracteristicas_tipo_inmue_id_caracteristicas_tipo_inmue_seq', 25, true);
         	   inmuebles       postgres    false    277            #           0    0 +   tb_estados_inmuebles_id_estado_inmueble_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('inmuebles.tb_estados_inmuebles_id_estado_inmueble_seq', 1, false);
         	   inmuebles       postgres    false    246            $           0    0 -   tb_horarios_inmuebles_id_horario_inmueble_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('inmuebles.tb_horarios_inmuebles_id_horario_inmueble_seq', 1, false);
         	   inmuebles       postgres    false    250            %           0    0 3   tb_inmuebles_registrados_id_inmueble_registrado_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('inmuebles.tb_inmuebles_registrados_id_inmueble_registrado_seq', 1, false);
         	   inmuebles       postgres    false    244            &           0    0 ?   tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq    SEQUENCE SET     p   SELECT pg_catalog.setval('inmuebles.tb_tipos_caracteristicas_inmu_id_tipos_caracteristicas_inmu_seq', 3, true);
         	   inmuebles       postgres    false    273            '           0    0 )   tb_tipos_inmuebles_id_tipos_inmuebles_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('inmuebles.tb_tipos_inmuebles_id_tipos_inmuebles_seq', 1, false);
         	   inmuebles       postgres    false    229            (           0    0    tb_personal_id_personal_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('rrhh.tb_personal_id_personal_seq', 1, false);
            rrhh       postgres    false    218            )           0    0 "   tb_users_access_id_user_access_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('session.tb_users_access_id_user_access_seq', 1, false);
            session       postgres    false    207            *           0    0    tb_users_access_id_user_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('session.tb_users_access_id_user_seq', 1, false);
            session       postgres    false    209            +           0    0 ,   tb_users_app_externo_id_user_app_externo_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('session.tb_users_app_externo_id_user_app_externo_seq', 1, false);
            session       postgres    false    210            ,           0    0    tb_users_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('session.tb_users_id_usuario_seq', 1, true);
            session       postgres    false    205            -           0    0 .   tb_agendas_solicitudes_id_agenda_solicitud_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('solicitudes.tb_agendas_solicitudes_id_agenda_solicitud_seq', 1, false);
            solicitudes       postgres    false    242            .           0    0 ?   tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq    SEQUENCE SET     s   SELECT pg_catalog.setval('solicitudes.tb_caracteristicas_solicitudes_id_caracteristicas_solicitud_seq', 1, false);
            solicitudes       postgres    false    233            /           0    0 .   tb_estados_solicitudes_id_estado_solicitud_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('solicitudes.tb_estados_solicitudes_id_estado_solicitud_seq', 1, false);
            solicitudes       postgres    false    231            0           0    0 1   tb_intereses_solicitudes_id_interes_solicitud_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('solicitudes.tb_intereses_solicitudes_id_interes_solicitud_seq', 1, false);
            solicitudes       postgres    false    239            1           0    0 !   tb_solicitudes_id_solicitudes_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('solicitudes.tb_solicitudes_id_solicitudes_seq', 1, false);
            solicitudes       postgres    false    223            2           0    0 *   tb_tipos_actividades_id_tipo_actividad_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('tipos.tb_tipos_actividades_id_tipo_actividad_seq', 1, false);
            tipos       postgres    false    260            3           0    0 %   tb_tipos_clientes_id_tipo_cliente_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('tipos.tb_tipos_clientes_id_tipo_cliente_seq', 2, true);
            tipos       postgres    false    271            4           0    0 .   tb_tipos_notificacion_id_tipo_notificacion_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('tipos.tb_tipos_notificacion_id_tipo_notificacion_seq', 3, true);
            tipos       postgres    false    265            5           0    0 #   tb_tiposdocumento_id_tipo_ident_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('tipos.tb_tiposdocumento_id_tipo_ident_seq', 8, true);
            tipos       postgres    false    203            �           2606    16623    tb_clientes tb_clientes_pk 
   CONSTRAINT     b   ALTER TABLE ONLY clientes.tb_clientes
    ADD CONSTRAINT tb_clientes_pk PRIMARY KEY (id_cliente);
 F   ALTER TABLE ONLY clientes.tb_clientes DROP CONSTRAINT tb_clientes_pk;
       clientes         postgres    false    225            6           0    0 (   CONSTRAINT tb_clientes_pk ON tb_clientes    COMMENT     g   COMMENT ON CONSTRAINT tb_clientes_pk ON clientes.tb_clientes IS 'LLave primaria de la tabla clientes';
            clientes       postgres    false    2993            �           2606    17021 $   tb_aut_externas tb_aut_externas_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY generales.tb_aut_externas
    ADD CONSTRAINT tb_aut_externas_pkey PRIMARY KEY (id_aut_externas);
 Q   ALTER TABLE ONLY generales.tb_aut_externas DROP CONSTRAINT tb_aut_externas_pkey;
    	   generales         postgres    false    268            �           2606    17029 6   tb_aut_externas_services tb_aut_externas_services_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY generales.tb_aut_externas_services
    ADD CONSTRAINT tb_aut_externas_services_pkey PRIMARY KEY (id_aut_externas_services);
 c   ALTER TABLE ONLY generales.tb_aut_externas_services DROP CONSTRAINT tb_aut_externas_services_pkey;
    	   generales         postgres    false    270            �           2606    16823    tb_cargos tb_cargos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY generales.tb_cargos
    ADD CONSTRAINT tb_cargos_pkey PRIMARY KEY (id_cargo);
 E   ALTER TABLE ONLY generales.tb_cargos DROP CONSTRAINT tb_cargos_pkey;
    	   generales         postgres    false    257            �           2606    16510    tb_ciudades tb_ciudades_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY generales.tb_ciudades
    ADD CONSTRAINT tb_ciudades_pkey PRIMARY KEY (id_ciudad);
 I   ALTER TABLE ONLY generales.tb_ciudades DROP CONSTRAINT tb_ciudades_pkey;
    	   generales         postgres    false    217            �           2606    17137 @   tb_criterios_diligenciamiento tb_criterios_diligenciamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY generales.tb_criterios_diligenciamiento
    ADD CONSTRAINT tb_criterios_diligenciamiento_pkey PRIMARY KEY (id_criterio_diligenciamiento);
 m   ALTER TABLE ONLY generales.tb_criterios_diligenciamiento DROP CONSTRAINT tb_criterios_diligenciamiento_pkey;
    	   generales         postgres    false    276            �           2606    16494 &   tb_departamentos tb_departamentos_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY generales.tb_departamentos
    ADD CONSTRAINT tb_departamentos_pkey PRIMARY KEY (id_departamento);
 S   ALTER TABLE ONLY generales.tb_departamentos DROP CONSTRAINT tb_departamentos_pkey;
    	   generales         postgres    false    213            �           2606    16869 $   tb_estado_agenda tb_estado_agenda_pk 
   CONSTRAINT     s   ALTER TABLE ONLY generales.tb_estado_agenda
    ADD CONSTRAINT tb_estado_agenda_pk PRIMARY KEY (id_estado_agenda);
 Q   ALTER TABLE ONLY generales.tb_estado_agenda DROP CONSTRAINT tb_estado_agenda_pk;
    	   generales         postgres    false    258            7           0    0 2   CONSTRAINT tb_estado_agenda_pk ON tb_estado_agenda    COMMENT     ~   COMMENT ON CONSTRAINT tb_estado_agenda_pk ON generales.tb_estado_agenda IS 'Llave primaria de la tabla de estados de agenda';
         	   generales       postgres    false    3046            �           2606    16615 *   tb_estados_civiles tb_estados_civiles_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY generales.tb_estados_civiles
    ADD CONSTRAINT tb_estados_civiles_pkey PRIMARY KEY (id_estado_civil);
 W   ALTER TABLE ONLY generales.tb_estados_civiles DROP CONSTRAINT tb_estados_civiles_pkey;
    	   generales         postgres    false    228            �           2606    16952 "   tb_formas_pago tb_formas_pago_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY generales.tb_formas_pago
    ADD CONSTRAINT tb_formas_pago_pkey PRIMARY KEY (id_forma_pago);
 O   ALTER TABLE ONLY generales.tb_formas_pago DROP CONSTRAINT tb_formas_pago_pkey;
    	   generales         postgres    false    262            �           2606    16715 .   tb_inmuebles_estados tb_inmuebles_estados_pkey 
   CONSTRAINT        ALTER TABLE ONLY generales.tb_inmuebles_estados
    ADD CONSTRAINT tb_inmuebles_estados_pkey PRIMARY KEY (id_inmueble_estado);
 [   ALTER TABLE ONLY generales.tb_inmuebles_estados DROP CONSTRAINT tb_inmuebles_estados_pkey;
    	   generales         postgres    false    249            �           2606    16663    tb_intereses tb_intereses_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY generales.tb_intereses
    ADD CONSTRAINT tb_intereses_pkey PRIMARY KEY (id_interes);
 K   ALTER TABLE ONLY generales.tb_intereses DROP CONSTRAINT tb_intereses_pkey;
    	   generales         postgres    false    238            �           2606    16731    tb_jornadas tb_jornadas_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY generales.tb_jornadas
    ADD CONSTRAINT tb_jornadas_pkey PRIMARY KEY (id_jornada);
 I   ALTER TABLE ONLY generales.tb_jornadas DROP CONSTRAINT tb_jornadas_pkey;
    	   generales         postgres    false    253            �           2606    16502    tb_paises tb_paises_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY generales.tb_paises
    ADD CONSTRAINT tb_paises_pkey PRIMARY KEY (id_pais);
 E   ALTER TABLE ONLY generales.tb_paises DROP CONSTRAINT tb_paises_pkey;
    	   generales         postgres    false    215            �           2606    16655 2   tb_solicitudes_estados tb_solicitudes_estados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY generales.tb_solicitudes_estados
    ADD CONSTRAINT tb_solicitudes_estados_pkey PRIMARY KEY (id_solicitud_estado);
 _   ALTER TABLE ONLY generales.tb_solicitudes_estados DROP CONSTRAINT tb_solicitudes_estados_pkey;
    	   generales         postgres    false    236            �           2606    16966    tb_urgencias tb_urgencias_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY generales.tb_urgencias
    ADD CONSTRAINT tb_urgencias_pkey PRIMARY KEY (id_urgencia);
 K   ALTER TABLE ONLY generales.tb_urgencias DROP CONSTRAINT tb_urgencias_pkey;
    	   generales         postgres    false    264            �           2606    16809    tb_zonas tb_zonas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY generales.tb_zonas
    ADD CONSTRAINT tb_zonas_pkey PRIMARY KEY (id_zona);
 C   ALTER TABLE ONLY generales.tb_zonas DROP CONSTRAINT tb_zonas_pkey;
    	   generales         postgres    false    255            �           2606    17150 A   tb_caracteristicas_tipo_inmueble id_caracteristicas_tipo_inmueble 
   CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_caracteristicas_tipo_inmueble
    ADD CONSTRAINT id_caracteristicas_tipo_inmueble PRIMARY KEY (id_caracteristicas_tipo_inmueble);
 n   ALTER TABLE ONLY inmuebles.tb_caracteristicas_tipo_inmueble DROP CONSTRAINT id_caracteristicas_tipo_inmueble;
    	   inmuebles         postgres    false    278            8           0    0 O   CONSTRAINT id_caracteristicas_tipo_inmueble ON tb_caracteristicas_tipo_inmueble    COMMENT     �   COMMENT ON CONSTRAINT id_caracteristicas_tipo_inmueble ON inmuebles.tb_caracteristicas_tipo_inmueble IS 'ID llave primaria de la tabla de características de tipos de inmuebles';
         	   inmuebles       postgres    false    3065            �           2606    16585 >   tb_caracteristicas_inmuebles tb_caracteristicas_inmuebles_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_caracteristicas_inmuebles
    ADD CONSTRAINT tb_caracteristicas_inmuebles_pkey PRIMARY KEY (id_caracterisitica_inmueble);
 k   ALTER TABLE ONLY inmuebles.tb_caracteristicas_inmuebles DROP CONSTRAINT tb_caracteristicas_inmuebles_pkey;
    	   inmuebles         postgres    false    222            �           2606    16707 .   tb_estados_inmuebles tb_estados_inmuebles_pkey 
   CONSTRAINT        ALTER TABLE ONLY inmuebles.tb_estados_inmuebles
    ADD CONSTRAINT tb_estados_inmuebles_pkey PRIMARY KEY (id_estado_inmueble);
 [   ALTER TABLE ONLY inmuebles.tb_estados_inmuebles DROP CONSTRAINT tb_estados_inmuebles_pkey;
    	   inmuebles         postgres    false    247            �           2606    16723 0   tb_horarios_inmuebles tb_horarios_inmuebles_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles
    ADD CONSTRAINT tb_horarios_inmuebles_pkey PRIMARY KEY (id_horario_inmueble);
 ]   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles DROP CONSTRAINT tb_horarios_inmuebles_pkey;
    	   inmuebles         postgres    false    251            �           2606    16699 6   tb_inmuebles_registrados tb_inmuebles_registrados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados
    ADD CONSTRAINT tb_inmuebles_registrados_pkey PRIMARY KEY (id_inmueble_registrado);
 c   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados DROP CONSTRAINT tb_inmuebles_registrados_pkey;
    	   inmuebles         postgres    false    245            �           2606    17129 J   tb_tipos_caracteristicas_inmuebles tb_tipos_caracteristicas_inmuebles_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_tipos_caracteristicas_inmuebles
    ADD CONSTRAINT tb_tipos_caracteristicas_inmuebles_pkey PRIMARY KEY (id_tipos_caracteristicas_inmuebles);
 w   ALTER TABLE ONLY inmuebles.tb_tipos_caracteristicas_inmuebles DROP CONSTRAINT tb_tipos_caracteristicas_inmuebles_pkey;
    	   inmuebles         postgres    false    274            �           2606    16631 *   tb_tipos_inmuebles tb_tipos_inmuebles_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY inmuebles.tb_tipos_inmuebles
    ADD CONSTRAINT tb_tipos_inmuebles_pkey PRIMARY KEY (id_tipos_inmuebles);
 W   ALTER TABLE ONLY inmuebles.tb_tipos_inmuebles DROP CONSTRAINT tb_tipos_inmuebles_pkey;
    	   inmuebles         postgres    false    230            �           2606    16546    tb_personal tb_personal_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY rrhh.tb_personal
    ADD CONSTRAINT tb_personal_pkey PRIMARY KEY (id_personal);
 D   ALTER TABLE ONLY rrhh.tb_personal DROP CONSTRAINT tb_personal_pkey;
       rrhh         postgres    false    219            �           2606    16454 $   tb_users_access tb_users_access_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY session.tb_users_access
    ADD CONSTRAINT tb_users_access_pkey PRIMARY KEY (id_user_access);
 O   ALTER TABLE ONLY session.tb_users_access DROP CONSTRAINT tb_users_access_pkey;
       session         postgres    false    208            �           2606    16485 .   tb_users_app_externo tb_users_app_externo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY session.tb_users_app_externo
    ADD CONSTRAINT tb_users_app_externo_pkey PRIMARY KEY (id_user_app_externo);
 Y   ALTER TABLE ONLY session.tb_users_app_externo DROP CONSTRAINT tb_users_app_externo_pkey;
       session         postgres    false    211            �           2606    16443    tb_users_app tb_users_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY session.tb_users_app
    ADD CONSTRAINT tb_users_pkey PRIMARY KEY (id_user);
 E   ALTER TABLE ONLY session.tb_users_app DROP CONSTRAINT tb_users_pkey;
       session         postgres    false    206            �           2606    16690 2   tb_agendas_solicitudes tb_agendas_solicitudes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes
    ADD CONSTRAINT tb_agendas_solicitudes_pkey PRIMARY KEY (id_agenda_solicitud);
 a   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes DROP CONSTRAINT tb_agendas_solicitudes_pkey;
       solicitudes         postgres    false    243            �           2606    16647 B   tb_caracteristicas_solicitudes tb_caracteristicas_solicitudes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_caracteristicas_solicitudes
    ADD CONSTRAINT tb_caracteristicas_solicitudes_pkey PRIMARY KEY (id_caracteristicas_solicitud);
 q   ALTER TABLE ONLY solicitudes.tb_caracteristicas_solicitudes DROP CONSTRAINT tb_caracteristicas_solicitudes_pkey;
       solicitudes         postgres    false    234            �           2606    16639 2   tb_estados_solicitudes tb_estados_solicitudes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes
    ADD CONSTRAINT tb_estados_solicitudes_pkey PRIMARY KEY (id_estado_solicitud);
 a   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes DROP CONSTRAINT tb_estados_solicitudes_pkey;
       solicitudes         postgres    false    232            �           2606    16671 6   tb_intereses_solicitudes tb_intereses_solicitudes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_intereses_solicitudes
    ADD CONSTRAINT tb_intereses_solicitudes_pkey PRIMARY KEY (id_interes_solicitud);
 e   ALTER TABLE ONLY solicitudes.tb_intereses_solicitudes DROP CONSTRAINT tb_intereses_solicitudes_pkey;
       solicitudes         postgres    false    240            �           2606    16594 )   tb_solicitudes_compra tb_solicitudes_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT tb_solicitudes_pkey PRIMARY KEY (id_solicitudes);
 X   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT tb_solicitudes_pkey;
       solicitudes         postgres    false    224            �           2606    16916 ,   tb_tipos_actividades tb_tipos_actividades_pk 
   CONSTRAINT     x   ALTER TABLE ONLY tipos.tb_tipos_actividades
    ADD CONSTRAINT tb_tipos_actividades_pk PRIMARY KEY (id_tipo_actividad);
 U   ALTER TABLE ONLY tipos.tb_tipos_actividades DROP CONSTRAINT tb_tipos_actividades_pk;
       tipos         postgres    false    241            9           0    0 :   CONSTRAINT tb_tipos_actividades_pk ON tb_tipos_actividades    COMMENT     �   COMMENT ON CONSTRAINT tb_tipos_actividades_pk ON tipos.tb_tipos_actividades IS 'Llave primaria de la tabla de tipos de actividades ';
            tipos       postgres    false    3014            �           2606    17047 (   tb_tipos_clientes tb_tipos_clientes_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY tipos.tb_tipos_clientes
    ADD CONSTRAINT tb_tipos_clientes_pkey PRIMARY KEY (id_tipo_cliente);
 Q   ALTER TABLE ONLY tipos.tb_tipos_clientes DROP CONSTRAINT tb_tipos_clientes_pkey;
       tipos         postgres    false    272            �           2606    16575 *   tb_tipos_inmuebles tb_tipos_inmuebles_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY tipos.tb_tipos_inmuebles
    ADD CONSTRAINT tb_tipos_inmuebles_pkey PRIMARY KEY (id_tipo_inmueble);
 S   ALTER TABLE ONLY tipos.tb_tipos_inmuebles DROP CONSTRAINT tb_tipos_inmuebles_pkey;
       tipos         postgres    false    220            �           2606    17004 0   tb_tipos_notificacion tb_tipos_notificacion_pkey 
   CONSTRAINT        ALTER TABLE ONLY tipos.tb_tipos_notificacion
    ADD CONSTRAINT tb_tipos_notificacion_pkey PRIMARY KEY (id_tipo_notificacion);
 Y   ALTER TABLE ONLY tipos.tb_tipos_notificacion DROP CONSTRAINT tb_tipos_notificacion_pkey;
       tipos         postgres    false    266            �           2606    16434 -   tb_tiposidentificacion tb_tiposdocumento_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY tipos.tb_tiposidentificacion
    ADD CONSTRAINT tb_tiposdocumento_pkey PRIMARY KEY (id_tipo_ident);
 V   ALTER TABLE ONLY tipos.tb_tiposidentificacion DROP CONSTRAINT tb_tiposdocumento_pkey;
       tipos         postgres    false    204            �           1259    17071    fki_id_ciudad    INDEX     L   CREATE INDEX fki_id_ciudad ON clientes.tb_clientes USING btree (id_ciudad);
 #   DROP INDEX clientes.fki_id_ciudad;
       clientes         postgres    false    225            �           1259    17065    fki_id_departamento    INDEX     X   CREATE INDEX fki_id_departamento ON clientes.tb_clientes USING btree (id_departamento);
 )   DROP INDEX clientes.fki_id_departamento;
       clientes         postgres    false    225            �           1259    17082    fki_id_estado_civ    INDEX     V   CREATE INDEX fki_id_estado_civ ON clientes.tb_clientes USING btree (id_estado_civil);
 '   DROP INDEX clientes.fki_id_estado_civ;
       clientes         postgres    false    225            �           1259    16621    fki_id_estado_civil    INDEX     S   CREATE INDEX fki_id_estado_civil ON clientes.tb_clientes USING btree (id_cliente);
 )   DROP INDEX clientes.fki_id_estado_civil;
       clientes         postgres    false    225            �           1259    17059    fki_id_pais    INDEX     H   CREATE INDEX fki_id_pais ON clientes.tb_clientes USING btree (id_pais);
 !   DROP INDEX clientes.fki_id_pais;
       clientes         postgres    false    225            �           1259    17010    fki_id_tipo_notificacion    INDEX     b   CREATE INDEX fki_id_tipo_notificacion ON clientes.tb_clientes USING btree (id_tipo_notificacion);
 .   DROP INDEX clientes.fki_id_tipo_notificacion;
       clientes         postgres    false    225            �           1259    17104    fki_id_user_mod    INDEX     P   CREATE INDEX fki_id_user_mod ON clientes.tb_clientes USING btree (id_user_mod);
 %   DROP INDEX clientes.fki_id_user_mod;
       clientes         postgres    false    225            �           1259    16737    fki_tb_tipo_id    INDEX     Z   CREATE INDEX fki_tb_tipo_id ON clientes.tb_clientes USING btree (id_tipo_identificacion);
 $   DROP INDEX clientes.fki_tb_tipo_id;
       clientes         postgres    false    225            �           1259    17053    fki_tb_user_fk    INDEX     K   CREATE INDEX fki_tb_user_fk ON clientes.tb_clientes USING btree (id_user);
 $   DROP INDEX clientes.fki_tb_user_fk;
       clientes         postgres    false    225            �           1259    17039    fki_id_aut_externas    INDEX     f   CREATE INDEX fki_id_aut_externas ON generales.tb_aut_externas_services USING btree (id_aut_externas);
 *   DROP INDEX generales.fki_id_aut_externas;
    	   generales         postgres    false    270            �           1259    16516    fki_id_departamento    INDEX     Y   CREATE INDEX fki_id_departamento ON generales.tb_ciudades USING btree (id_departamento);
 *   DROP INDEX generales.fki_id_departamento;
    	   generales         postgres    false    217            �           1259    16522    fki_id_pais    INDEX     N   CREATE INDEX fki_id_pais ON generales.tb_departamentos USING btree (id_pais);
 "   DROP INDEX generales.fki_id_pais;
    	   generales         postgres    false    213            �           1259    16783    fki_id_ciudad    INDEX     Z   CREATE INDEX fki_id_ciudad ON inmuebles.tb_inmuebles_registrados USING btree (id_ciudad);
 $   DROP INDEX inmuebles.fki_id_ciudad;
    	   inmuebles         postgres    false    245            �           1259    16789    fki_id_cliente    INDEX     \   CREATE INDEX fki_id_cliente ON inmuebles.tb_inmuebles_registrados USING btree (id_cliente);
 %   DROP INDEX inmuebles.fki_id_cliente;
    	   inmuebles         postgres    false    245            �           1259    16777    fki_id_estado_inmueble    INDEX     l   CREATE INDEX fki_id_estado_inmueble ON inmuebles.tb_inmuebles_registrados USING btree (id_estado_inmueble);
 -   DROP INDEX inmuebles.fki_id_estado_inmueble;
    	   inmuebles         postgres    false    245            �           1259    16749    fki_id_inmueble_estado    INDEX     h   CREATE INDEX fki_id_inmueble_estado ON inmuebles.tb_estados_inmuebles USING btree (id_inmueble_estado);
 -   DROP INDEX inmuebles.fki_id_inmueble_estado;
    	   inmuebles         postgres    false    247            �           1259    16765    fki_id_jornada    INDEX     Y   CREATE INDEX fki_id_jornada ON inmuebles.tb_horarios_inmuebles USING btree (id_jornada);
 %   DROP INDEX inmuebles.fki_id_jornada;
    	   inmuebles         postgres    false    251            �           1259    16771    fki_id_persona_crea    INDEX     c   CREATE INDEX fki_id_persona_crea ON inmuebles.tb_horarios_inmuebles USING btree (id_persona_crea);
 *   DROP INDEX inmuebles.fki_id_persona_crea;
    	   inmuebles         postgres    false    251            �           1259    16795    fki_id_personal    INDEX     ^   CREATE INDEX fki_id_personal ON inmuebles.tb_inmuebles_registrados USING btree (id_personal);
 &   DROP INDEX inmuebles.fki_id_personal;
    	   inmuebles         postgres    false    245            �           1259    16801    fki_id_tipo_inmueble    INDEX     h   CREATE INDEX fki_id_tipo_inmueble ON inmuebles.tb_inmuebles_registrados USING btree (id_tipo_inmueble);
 +   DROP INDEX inmuebles.fki_id_tipo_inmueble;
    	   inmuebles         postgres    false    245            �           1259    16815    fki_id_zona    INDEX     V   CREATE INDEX fki_id_zona ON inmuebles.tb_inmuebles_registrados USING btree (id_zona);
 "   DROP INDEX inmuebles.fki_id_zona;
    	   inmuebles         postgres    false    245            �           1259    16743    fki_tb_tipo_inmueble_fk    INDEX     o   CREATE INDEX fki_tb_tipo_inmueble_fk ON inmuebles.tb_caracteristicas_inmuebles USING btree (id_tipo_inmueble);
 .   DROP INDEX inmuebles.fki_tb_tipo_inmueble_fk;
    	   inmuebles         postgres    false    222            �           1259    16829    fki_id_cargo_persona    INDEX     V   CREATE INDEX fki_id_cargo_persona ON rrhh.tb_personal USING btree (id_cargo_persona);
 &   DROP INDEX rrhh.fki_id_cargo_persona;
       rrhh         postgres    false    219            �           1259    16558    fki_id_ciudad    INDEX     H   CREATE INDEX fki_id_ciudad ON rrhh.tb_personal USING btree (id_ciudad);
    DROP INDEX rrhh.fki_id_ciudad;
       rrhh         postgres    false    219            �           1259    16552    fki_id_tipo_identificacion    INDEX     b   CREATE INDEX fki_id_tipo_identificacion ON rrhh.tb_personal USING btree (id_tipo_identificacion);
 ,   DROP INDEX rrhh.fki_id_tipo_identificacion;
       rrhh         postgres    false    219            �           1259    16564    fki_id_persona    INDEX     N   CREATE INDEX fki_id_persona ON session.tb_users_app USING btree (id_persona);
 #   DROP INDEX session.fki_id_persona;
       session         postgres    false    206            �           1259    16570    fki_id_user_app_externo    INDEX     `   CREATE INDEX fki_id_user_app_externo ON session.tb_users_app USING btree (id_user_app_externo);
 ,   DROP INDEX session.fki_id_user_app_externo;
       session         postgres    false    206            �           1259    16881    fki_id_caracteristica_inmueble    INDEX     �   CREATE INDEX fki_id_caracteristica_inmueble ON solicitudes.tb_caracteristicas_solicitudes USING btree (id_caracteristica_inmueble);
 7   DROP INDEX solicitudes.fki_id_caracteristica_inmueble;
       solicitudes         postgres    false    234            �           1259    16852    fki_id_cliente    INDEX     \   CREATE INDEX fki_id_cliente ON solicitudes.tb_agendas_solicitudes USING btree (id_cliente);
 '   DROP INDEX solicitudes.fki_id_cliente;
       solicitudes         postgres    false    243            �           1259    16875    fki_id_estado_agenda    INDEX     h   CREATE INDEX fki_id_estado_agenda ON solicitudes.tb_agendas_solicitudes USING btree (id_estado_agenda);
 -   DROP INDEX solicitudes.fki_id_estado_agenda;
       solicitudes         postgres    false    243            �           1259    16996    fki_id_estado_solicitud    INDEX     m   CREATE INDEX fki_id_estado_solicitud ON solicitudes.tb_solicitudes_compra USING btree (id_estado_solicitud);
 0   DROP INDEX solicitudes.fki_id_estado_solicitud;
       solicitudes         postgres    false    224            �           1259    16958    fki_id_forma_pago    INDEX     a   CREATE INDEX fki_id_forma_pago ON solicitudes.tb_solicitudes_compra USING btree (id_forma_pago);
 *   DROP INDEX solicitudes.fki_id_forma_pago;
       solicitudes         postgres    false    224            �           1259    16933    fki_id_interes    INDEX     ^   CREATE INDEX fki_id_interes ON solicitudes.tb_intereses_solicitudes USING btree (id_interes);
 '   DROP INDEX solicitudes.fki_id_interes;
       solicitudes         postgres    false    240            �           1259    16840    fki_id_persona    INDEX     \   CREATE INDEX fki_id_persona ON solicitudes.tb_agendas_solicitudes USING btree (id_persona);
 '   DROP INDEX solicitudes.fki_id_persona;
       solicitudes         postgres    false    243            �           1259    16858    fki_id_persona_creacion    INDEX     n   CREATE INDEX fki_id_persona_creacion ON solicitudes.tb_agendas_solicitudes USING btree (id_persona_creacion);
 0   DROP INDEX solicitudes.fki_id_persona_creacion;
       solicitudes         postgres    false    243            �           1259    16892    fki_id_solicitud    INDEX     h   CREATE INDEX fki_id_solicitud ON solicitudes.tb_caracteristicas_solicitudes USING btree (id_solicitud);
 )   DROP INDEX solicitudes.fki_id_solicitud;
       solicitudes         postgres    false    234            �           1259    16903    fki_id_solicitud_estado    INDEX     n   CREATE INDEX fki_id_solicitud_estado ON solicitudes.tb_estados_solicitudes USING btree (id_solicitud_estado);
 0   DROP INDEX solicitudes.fki_id_solicitud_estado;
       solicitudes         postgres    false    232            �           1259    16922    fki_id_tipo_actividad    INDEX     j   CREATE INDEX fki_id_tipo_actividad ON solicitudes.tb_estados_solicitudes USING btree (id_tipo_actividad);
 .   DROP INDEX solicitudes.fki_id_tipo_actividad;
       solicitudes         postgres    false    232            �           1259    16944    fki_id_tipo_inmueble    INDEX     g   CREATE INDEX fki_id_tipo_inmueble ON solicitudes.tb_solicitudes_compra USING btree (id_tipo_inmueble);
 -   DROP INDEX solicitudes.fki_id_tipo_inmueble;
       solicitudes         postgres    false    224            �           1259    16972    fki_id_urgencia    INDEX     ]   CREATE INDEX fki_id_urgencia ON solicitudes.tb_solicitudes_compra USING btree (id_urgencia);
 (   DROP INDEX solicitudes.fki_id_urgencia;
       solicitudes         postgres    false    224            �           1259    16984    fki_id_usuario_creacion    INDEX     m   CREATE INDEX fki_id_usuario_creacion ON solicitudes.tb_solicitudes_compra USING btree (id_usuario_creacion);
 0   DROP INDEX solicitudes.fki_id_usuario_creacion;
       solicitudes         postgres    false    224            �           1259    16990    fki_id_usuario_modifica    INDEX     m   CREATE INDEX fki_id_usuario_modifica ON solicitudes.tb_solicitudes_compra USING btree (id_usuario_modifica);
 0   DROP INDEX solicitudes.fki_id_usuario_modifica;
       solicitudes         postgres    false    224            �           1259    16846    fki_id_vendedor    INDEX     ^   CREATE INDEX fki_id_vendedor ON solicitudes.tb_agendas_solicitudes USING btree (id_vendedor);
 (   DROP INDEX solicitudes.fki_id_vendedor;
       solicitudes         postgres    false    243            �           1259    16978    fki_id_zona    INDEX     U   CREATE INDEX fki_id_zona ON solicitudes.tb_solicitudes_compra USING btree (id_zona);
 $   DROP INDEX solicitudes.fki_id_zona;
       solicitudes         postgres    false    224                       2606    17072    tb_clientes id_estado_civil    FK CONSTRAINT     �   ALTER TABLE ONLY clientes.tb_clientes
    ADD CONSTRAINT id_estado_civil FOREIGN KEY (id_estado_civil) REFERENCES generales.tb_estados_civiles(id_estado_civil);
 G   ALTER TABLE ONLY clientes.tb_clientes DROP CONSTRAINT id_estado_civil;
       clientes       postgres    false    225    2995    228            :           0    0 )   CONSTRAINT id_estado_civil ON tb_clientes    COMMENT     }   COMMENT ON CONSTRAINT id_estado_civil ON clientes.tb_clientes IS 'Llave foránea que relaciona el estado civil del cliente';
            clientes       postgres    false    3088                       2606    17005     tb_clientes id_tipo_notificacion    FK CONSTRAINT     �   ALTER TABLE ONLY clientes.tb_clientes
    ADD CONSTRAINT id_tipo_notificacion FOREIGN KEY (id_tipo_notificacion) REFERENCES tipos.tb_tipos_notificacion(id_tipo_notificacion);
 L   ALTER TABLE ONLY clientes.tb_clientes DROP CONSTRAINT id_tipo_notificacion;
       clientes       postgres    false    3052    225    266            ;           0    0 .   CONSTRAINT id_tipo_notificacion ON tb_clientes    COMMENT     �   COMMENT ON CONSTRAINT id_tipo_notificacion ON clientes.tb_clientes IS 'Llave foránea que relaciona el tipo de notificación que recibirá el cliente';
            clientes       postgres    false    3086                       2606    17099    tb_clientes id_user_mod    FK CONSTRAINT     �   ALTER TABLE ONLY clientes.tb_clientes
    ADD CONSTRAINT id_user_mod FOREIGN KEY (id_user_mod) REFERENCES session.tb_users_app(id_user);
 C   ALTER TABLE ONLY clientes.tb_clientes DROP CONSTRAINT id_user_mod;
       clientes       postgres    false    206    2951    225            <           0    0 %   CONSTRAINT id_user_mod ON tb_clientes    COMMENT     �   COMMENT ON CONSTRAINT id_user_mod ON clientes.tb_clientes IS 'Llave foránea que relaciona el usuario que modifica los datos del cliente.';
            clientes       postgres    false    3089                       2606    16732    tb_clientes tb_tipo_id    FK CONSTRAINT     �   ALTER TABLE ONLY clientes.tb_clientes
    ADD CONSTRAINT tb_tipo_id FOREIGN KEY (id_tipo_identificacion) REFERENCES tipos.tb_tiposidentificacion(id_tipo_ident);
 B   ALTER TABLE ONLY clientes.tb_clientes DROP CONSTRAINT tb_tipo_id;
       clientes       postgres    false    225    204    2947            =           0    0 $   CONSTRAINT tb_tipo_id ON tb_clientes    COMMENT     w   COMMENT ON CONSTRAINT tb_tipo_id ON clientes.tb_clientes IS 'Llave foránea con la tabla de tipos de identificación';
            clientes       postgres    false    3085                       2606    17048    tb_clientes tb_user_fk    FK CONSTRAINT     �   ALTER TABLE ONLY clientes.tb_clientes
    ADD CONSTRAINT tb_user_fk FOREIGN KEY (id_user) REFERENCES session.tb_users_app(id_user);
 B   ALTER TABLE ONLY clientes.tb_clientes DROP CONSTRAINT tb_user_fk;
       clientes       postgres    false    2951    206    225            >           0    0 $   CONSTRAINT tb_user_fk ON tb_clientes    COMMENT     �   COMMENT ON CONSTRAINT tb_user_fk ON clientes.tb_clientes IS 'Llave foránea que relaciona el usuario que realiza la creación del cliente.';
            clientes       postgres    false    3087            +           2606    17034 (   tb_aut_externas_services id_aut_externas    FK CONSTRAINT     �   ALTER TABLE ONLY generales.tb_aut_externas_services
    ADD CONSTRAINT id_aut_externas FOREIGN KEY (id_aut_externas) REFERENCES generales.tb_aut_externas(id_aut_externas);
 U   ALTER TABLE ONLY generales.tb_aut_externas_services DROP CONSTRAINT id_aut_externas;
    	   generales       postgres    false    270    3054    268                        2606    16511    tb_ciudades id_departamento    FK CONSTRAINT     �   ALTER TABLE ONLY generales.tb_ciudades
    ADD CONSTRAINT id_departamento FOREIGN KEY (id_departamento) REFERENCES generales.tb_departamentos(id_departamento);
 H   ALTER TABLE ONLY generales.tb_ciudades DROP CONSTRAINT id_departamento;
    	   generales       postgres    false    213    217    2958            ?           0    0 )   CONSTRAINT id_departamento ON tb_ciudades    COMMENT     �   COMMENT ON CONSTRAINT id_departamento ON generales.tb_ciudades IS 'Llave foránea que relaciona las ciudades con los departamentos';
         	   generales       postgres    false    3072            �           2606    16517    tb_departamentos id_pais    FK CONSTRAINT     �   ALTER TABLE ONLY generales.tb_departamentos
    ADD CONSTRAINT id_pais FOREIGN KEY (id_pais) REFERENCES generales.tb_paises(id_pais);
 E   ALTER TABLE ONLY generales.tb_departamentos DROP CONSTRAINT id_pais;
    	   generales       postgres    false    215    213    2960            @           0    0 &   CONSTRAINT id_pais ON tb_departamentos    COMMENT     k   COMMENT ON CONSTRAINT id_pais ON generales.tb_departamentos IS 'Llave foránea hacia la tabla de países';
         	   generales       postgres    false    3071            !           2606    16778 "   tb_inmuebles_registrados id_ciudad    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados
    ADD CONSTRAINT id_ciudad FOREIGN KEY (id_ciudad) REFERENCES generales.tb_ciudades(id_ciudad);
 O   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados DROP CONSTRAINT id_ciudad;
    	   inmuebles       postgres    false    245    217    2963            A           0    0 0   CONSTRAINT id_ciudad ON tb_inmuebles_registrados    COMMENT     �   COMMENT ON CONSTRAINT id_ciudad ON inmuebles.tb_inmuebles_registrados IS 'Llave foránea que relaciona la ciudad en la que está situado el inmueble';
         	   inmuebles       postgres    false    3105            "           2606    16784 #   tb_inmuebles_registrados id_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados
    ADD CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES clientes.tb_clientes(id_cliente);
 P   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados DROP CONSTRAINT id_cliente;
    	   inmuebles       postgres    false    245    225    2993            B           0    0 1   CONSTRAINT id_cliente ON tb_inmuebles_registrados    COMMENT     �   COMMENT ON CONSTRAINT id_cliente ON inmuebles.tb_inmuebles_registrados IS 'Llave foránea que relaciona el id de cliente vendedor del inmueble';
         	   inmuebles       postgres    false    3106                        2606    16772 +   tb_inmuebles_registrados id_estado_inmueble    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados
    ADD CONSTRAINT id_estado_inmueble FOREIGN KEY (id_estado_inmueble) REFERENCES generales.tb_inmuebles_estados(id_inmueble_estado);
 X   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados DROP CONSTRAINT id_estado_inmueble;
    	   inmuebles       postgres    false    245    249    3034            C           0    0 9   CONSTRAINT id_estado_inmueble ON tb_inmuebles_registrados    COMMENT     �   COMMENT ON CONSTRAINT id_estado_inmueble ON inmuebles.tb_inmuebles_registrados IS 'Llave foránea que relaciona el estado del inmueble asignado';
         	   inmuebles       postgres    false    3104            (           2606    16755 !   tb_horarios_inmuebles id_inmueble    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles
    ADD CONSTRAINT id_inmueble FOREIGN KEY (id_horario_inmueble) REFERENCES inmuebles.tb_inmuebles_registrados(id_inmueble_registrado);
 N   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles DROP CONSTRAINT id_inmueble;
    	   inmuebles       postgres    false    251    245    3029            D           0    0 /   CONSTRAINT id_inmueble ON tb_horarios_inmuebles    COMMENT     �   COMMENT ON CONSTRAINT id_inmueble ON inmuebles.tb_horarios_inmuebles IS 'Llave foránea que relaciona los inmuebles con los horarios que se establezcan';
         	   inmuebles       postgres    false    3112            &           2606    16744 '   tb_estados_inmuebles id_inmueble_estado    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_estados_inmuebles
    ADD CONSTRAINT id_inmueble_estado FOREIGN KEY (id_inmueble_estado) REFERENCES generales.tb_inmuebles_estados(id_inmueble_estado);
 T   ALTER TABLE ONLY inmuebles.tb_estados_inmuebles DROP CONSTRAINT id_inmueble_estado;
    	   inmuebles       postgres    false    249    247    3034            E           0    0 5   CONSTRAINT id_inmueble_estado ON tb_estados_inmuebles    COMMENT     �   COMMENT ON CONSTRAINT id_inmueble_estado ON inmuebles.tb_estados_inmuebles IS 'Llave foránea hacia la tabla de los estados de los inmuebles, para relacionar el estado';
         	   inmuebles       postgres    false    3110            )           2606    16760     tb_horarios_inmuebles id_jornada    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles
    ADD CONSTRAINT id_jornada FOREIGN KEY (id_jornada) REFERENCES generales.tb_jornadas(id_jornada);
 M   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles DROP CONSTRAINT id_jornada;
    	   inmuebles       postgres    false    251    253    3040            F           0    0 .   CONSTRAINT id_jornada ON tb_horarios_inmuebles    COMMENT     �   COMMENT ON CONSTRAINT id_jornada ON inmuebles.tb_horarios_inmuebles IS 'Llave foránea que relaciona las jornadas o días en los que un inmueble es mostrado';
         	   inmuebles       postgres    false    3113            '           2606    16750    tb_estados_inmuebles id_persona    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_estados_inmuebles
    ADD CONSTRAINT id_persona FOREIGN KEY (id_estado_inmueble) REFERENCES rrhh.tb_personal(id_personal);
 L   ALTER TABLE ONLY inmuebles.tb_estados_inmuebles DROP CONSTRAINT id_persona;
    	   inmuebles       postgres    false    219    247    2968            G           0    0 -   CONSTRAINT id_persona ON tb_estados_inmuebles    COMMENT     o   COMMENT ON CONSTRAINT id_persona ON inmuebles.tb_estados_inmuebles IS 'Llave foránea hacia la tabla persona';
         	   inmuebles       postgres    false    3111            *           2606    16766 %   tb_horarios_inmuebles id_persona_crea    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles
    ADD CONSTRAINT id_persona_crea FOREIGN KEY (id_persona_crea) REFERENCES rrhh.tb_personal(id_personal);
 R   ALTER TABLE ONLY inmuebles.tb_horarios_inmuebles DROP CONSTRAINT id_persona_crea;
    	   inmuebles       postgres    false    251    219    2968            H           0    0 3   CONSTRAINT id_persona_crea ON tb_horarios_inmuebles    COMMENT     �   COMMENT ON CONSTRAINT id_persona_crea ON inmuebles.tb_horarios_inmuebles IS 'Llave foránea que relaciona las personas que crean los horarios';
         	   inmuebles       postgres    false    3114            #           2606    16790 $   tb_inmuebles_registrados id_personal    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados
    ADD CONSTRAINT id_personal FOREIGN KEY (id_personal) REFERENCES rrhh.tb_personal(id_personal);
 Q   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados DROP CONSTRAINT id_personal;
    	   inmuebles       postgres    false    245    219    2968            I           0    0 2   CONSTRAINT id_personal ON tb_inmuebles_registrados    COMMENT     �   COMMENT ON CONSTRAINT id_personal ON inmuebles.tb_inmuebles_registrados IS 'Llave foránea que relaciona el empleado que registra el inmueble en el sistema';
         	   inmuebles       postgres    false    3107            $           2606    16796 )   tb_inmuebles_registrados id_tipo_inmueble    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados
    ADD CONSTRAINT id_tipo_inmueble FOREIGN KEY (id_tipo_inmueble) REFERENCES tipos.tb_tipos_inmuebles(id_tipo_inmueble);
 V   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados DROP CONSTRAINT id_tipo_inmueble;
    	   inmuebles       postgres    false    245    2970    220            J           0    0 7   CONSTRAINT id_tipo_inmueble ON tb_inmuebles_registrados    COMMENT     �   COMMENT ON CONSTRAINT id_tipo_inmueble ON inmuebles.tb_inmuebles_registrados IS 'Llave foránea que relaciona el tipo de inmueble al que pertenece el que se registra';
         	   inmuebles       postgres    false    3108            %           2606    16810     tb_inmuebles_registrados id_zona    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados
    ADD CONSTRAINT id_zona FOREIGN KEY (id_zona) REFERENCES generales.tb_zonas(id_zona);
 M   ALTER TABLE ONLY inmuebles.tb_inmuebles_registrados DROP CONSTRAINT id_zona;
    	   inmuebles       postgres    false    245    3042    255            K           0    0 .   CONSTRAINT id_zona ON tb_inmuebles_registrados    COMMENT     �   COMMENT ON CONSTRAINT id_zona ON inmuebles.tb_inmuebles_registrados IS 'Llave foránea que relaciona la zona en la que se ubica el inmueble';
         	   inmuebles       postgres    false    3109                       2606    16738 0   tb_caracteristicas_inmuebles tb_tipo_inmueble_fk    FK CONSTRAINT     �   ALTER TABLE ONLY inmuebles.tb_caracteristicas_inmuebles
    ADD CONSTRAINT tb_tipo_inmueble_fk FOREIGN KEY (id_tipo_inmueble) REFERENCES tipos.tb_tipos_inmuebles(id_tipo_inmueble);
 ]   ALTER TABLE ONLY inmuebles.tb_caracteristicas_inmuebles DROP CONSTRAINT tb_tipo_inmueble_fk;
    	   inmuebles       postgres    false    220    222    2970            L           0    0 >   CONSTRAINT tb_tipo_inmueble_fk ON tb_caracteristicas_inmuebles    COMMENT     �   COMMENT ON CONSTRAINT tb_tipo_inmueble_fk ON inmuebles.tb_caracteristicas_inmuebles IS 'Llave foránea hacia la tabla tb_tipo_inmueble';
         	   inmuebles       postgres    false    3076                       2606    16824    tb_personal id_cargo_persona    FK CONSTRAINT     �   ALTER TABLE ONLY rrhh.tb_personal
    ADD CONSTRAINT id_cargo_persona FOREIGN KEY (id_cargo_persona) REFERENCES generales.tb_cargos(id_cargo);
 D   ALTER TABLE ONLY rrhh.tb_personal DROP CONSTRAINT id_cargo_persona;
       rrhh       postgres    false    3044    219    257            M           0    0 *   CONSTRAINT id_cargo_persona ON tb_personal    COMMENT     z   COMMENT ON CONSTRAINT id_cargo_persona ON rrhh.tb_personal IS 'Llave foránea que relaciona los cargos con las personas';
            rrhh       postgres    false    3075                       2606    16553    tb_personal id_ciudad    FK CONSTRAINT     �   ALTER TABLE ONLY rrhh.tb_personal
    ADD CONSTRAINT id_ciudad FOREIGN KEY (id_ciudad) REFERENCES generales.tb_ciudades(id_ciudad);
 =   ALTER TABLE ONLY rrhh.tb_personal DROP CONSTRAINT id_ciudad;
       rrhh       postgres    false    217    219    2963            N           0    0 #   CONSTRAINT id_ciudad ON tb_personal    COMMENT     _   COMMENT ON CONSTRAINT id_ciudad ON rrhh.tb_personal IS 'Llave foránea de la tabla ciudades.';
            rrhh       postgres    false    3074                       2606    16547 "   tb_personal id_tipo_identificacion    FK CONSTRAINT     �   ALTER TABLE ONLY rrhh.tb_personal
    ADD CONSTRAINT id_tipo_identificacion FOREIGN KEY (id_tipo_identificacion) REFERENCES tipos.tb_tiposidentificacion(id_tipo_ident);
 J   ALTER TABLE ONLY rrhh.tb_personal DROP CONSTRAINT id_tipo_identificacion;
       rrhh       postgres    false    204    219    2947            O           0    0 0   CONSTRAINT id_tipo_identificacion ON tb_personal    COMMENT     }   COMMENT ON CONSTRAINT id_tipo_identificacion ON rrhh.tb_personal IS 'LLave foránea a la tabla de tipos de identificación';
            rrhh       postgres    false    3073            �           2606    16528    tb_users_app_externo id_ciudad    FK CONSTRAINT     �   ALTER TABLE ONLY session.tb_users_app_externo
    ADD CONSTRAINT id_ciudad FOREIGN KEY (id_user_app_externo) REFERENCES generales.tb_ciudades(id_ciudad);
 I   ALTER TABLE ONLY session.tb_users_app_externo DROP CONSTRAINT id_ciudad;
       session       postgres    false    217    211    2963            P           0    0 ,   CONSTRAINT id_ciudad ON tb_users_app_externo    COMMENT     �   COMMENT ON CONSTRAINT id_ciudad ON session.tb_users_app_externo IS 'Llave foránea que relaciona los usuarios a sus respectivas ciudades';
            session       postgres    false    3070            �           2606    16559    tb_users_app id_persona    FK CONSTRAINT     �   ALTER TABLE ONLY session.tb_users_app
    ADD CONSTRAINT id_persona FOREIGN KEY (id_persona) REFERENCES rrhh.tb_personal(id_personal);
 B   ALTER TABLE ONLY session.tb_users_app DROP CONSTRAINT id_persona;
       session       postgres    false    219    206    2968            Q           0    0 %   CONSTRAINT id_persona ON tb_users_app    COMMENT     a   COMMENT ON CONSTRAINT id_persona ON session.tb_users_app IS 'Llave foránea a la tabla persona';
            session       postgres    false    3066            �           2606    16523 +   tb_users_app_externo id_tipo_identificacion    FK CONSTRAINT     �   ALTER TABLE ONLY session.tb_users_app_externo
    ADD CONSTRAINT id_tipo_identificacion FOREIGN KEY (id_user_app_externo) REFERENCES generales.tb_ciudades(id_ciudad);
 V   ALTER TABLE ONLY session.tb_users_app_externo DROP CONSTRAINT id_tipo_identificacion;
       session       postgres    false    217    211    2963            R           0    0 9   CONSTRAINT id_tipo_identificacion ON tb_users_app_externo    COMMENT     �   COMMENT ON CONSTRAINT id_tipo_identificacion ON session.tb_users_app_externo IS 'Llave foránea que relaciona con la tabla de tipos de identificación';
            session       postgres    false    3069            �           2606    16533    tb_users_access id_user_app    FK CONSTRAINT     �   ALTER TABLE ONLY session.tb_users_access
    ADD CONSTRAINT id_user_app FOREIGN KEY (id_user_access) REFERENCES session.tb_users_app_externo(id_user_app_externo);
 F   ALTER TABLE ONLY session.tb_users_access DROP CONSTRAINT id_user_app;
       session       postgres    false    2955    208    211            S           0    0 )   CONSTRAINT id_user_app ON tb_users_access    COMMENT     �   COMMENT ON CONSTRAINT id_user_app ON session.tb_users_access IS 'Llave foránea que relaciona con la tabla de usuarios externos de la aplicación.';
            session       postgres    false    3068            �           2606    16565     tb_users_app id_user_app_externo    FK CONSTRAINT     �   ALTER TABLE ONLY session.tb_users_app
    ADD CONSTRAINT id_user_app_externo FOREIGN KEY (id_user_app_externo) REFERENCES session.tb_users_app_externo(id_user_app_externo);
 K   ALTER TABLE ONLY session.tb_users_app DROP CONSTRAINT id_user_app_externo;
       session       postgres    false    206    211    2955            T           0    0 .   CONSTRAINT id_user_app_externo ON tb_users_app    COMMENT     k   COMMENT ON CONSTRAINT id_user_app_externo ON session.tb_users_app IS 'Id hacia la tabla user app externo';
            session       postgres    false    3067                       2606    16876 9   tb_caracteristicas_solicitudes id_caracteristica_inmueble    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_caracteristicas_solicitudes
    ADD CONSTRAINT id_caracteristica_inmueble FOREIGN KEY (id_caracteristica_inmueble) REFERENCES inmuebles.tb_caracteristicas_inmuebles(id_caracterisitica_inmueble);
 h   ALTER TABLE ONLY solicitudes.tb_caracteristicas_solicitudes DROP CONSTRAINT id_caracteristica_inmueble;
       solicitudes       postgres    false    222    234    2973            U           0    0 G   CONSTRAINT id_caracteristica_inmueble ON tb_caracteristicas_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_caracteristica_inmueble ON solicitudes.tb_caracteristicas_solicitudes IS 'Llave foránea que relaciona la característica.';
            solicitudes       postgres    false    3094                       2606    16847 !   tb_agendas_solicitudes id_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes
    ADD CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES clientes.tb_clientes(id_cliente);
 P   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes DROP CONSTRAINT id_cliente;
       solicitudes       postgres    false    243    2993    225            V           0    0 /   CONSTRAINT id_cliente ON tb_agendas_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_cliente ON solicitudes.tb_agendas_solicitudes IS 'Llave foránea que relaciona al posible cliente o comprador';
            solicitudes       postgres    false    3101                       2606    16934     tb_solicitudes_compra id_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES clientes.tb_clientes(id_cliente);
 O   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT id_cliente;
       solicitudes       postgres    false    225    224    2993            W           0    0 .   CONSTRAINT id_cliente ON tb_solicitudes_compra    COMMENT     u   COMMENT ON CONSTRAINT id_cliente ON solicitudes.tb_solicitudes_compra IS 'Llave foránea que relaciona el cliente.';
            solicitudes       postgres    false    3077                       2606    16870 '   tb_agendas_solicitudes id_estado_agenda    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes
    ADD CONSTRAINT id_estado_agenda FOREIGN KEY (id_estado_agenda) REFERENCES generales.tb_estado_agenda(id_estado_agenda);
 V   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes DROP CONSTRAINT id_estado_agenda;
       solicitudes       postgres    false    258    243    3046            X           0    0 5   CONSTRAINT id_estado_agenda ON tb_agendas_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_estado_agenda ON solicitudes.tb_agendas_solicitudes IS 'Llave foránea que relaciona el estado de agenda.';
            solicitudes       postgres    false    3103                       2606    16991 )   tb_solicitudes_compra id_estado_solicitud    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT id_estado_solicitud FOREIGN KEY (id_estado_solicitud) REFERENCES generales.tb_solicitudes_estados(id_solicitud_estado);
 X   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT id_estado_solicitud;
       solicitudes       postgres    false    224    236    3007            Y           0    0 7   CONSTRAINT id_estado_solicitud ON tb_solicitudes_compra    COMMENT     �   COMMENT ON CONSTRAINT id_estado_solicitud ON solicitudes.tb_solicitudes_compra IS 'Llave foránea que relaciona el último estado de la solicitud';
            solicitudes       postgres    false    3084                       2606    16953 #   tb_solicitudes_compra id_forma_pago    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT id_forma_pago FOREIGN KEY (id_forma_pago) REFERENCES generales.tb_formas_pago(id_forma_pago);
 R   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT id_forma_pago;
       solicitudes       postgres    false    3048    224    262            Z           0    0 1   CONSTRAINT id_forma_pago ON tb_solicitudes_compra    COMMENT     |   COMMENT ON CONSTRAINT id_forma_pago ON solicitudes.tb_solicitudes_compra IS 'Llave foránea que relaciona el tipo de pago';
            solicitudes       postgres    false    3079                       2606    16928 #   tb_intereses_solicitudes id_interes    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_intereses_solicitudes
    ADD CONSTRAINT id_interes FOREIGN KEY (id_interes) REFERENCES generales.tb_intereses(id_interes);
 R   ALTER TABLE ONLY solicitudes.tb_intereses_solicitudes DROP CONSTRAINT id_interes;
       solicitudes       postgres    false    238    240    3009            [           0    0 1   CONSTRAINT id_interes ON tb_intereses_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_interes ON solicitudes.tb_intereses_solicitudes IS 'Llave foránea que relaciona el interés adicionado a la solicitud.';
            solicitudes       postgres    false    3097                       2606    16835 !   tb_agendas_solicitudes id_persona    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes
    ADD CONSTRAINT id_persona FOREIGN KEY (id_persona) REFERENCES rrhh.tb_personal(id_personal);
 P   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes DROP CONSTRAINT id_persona;
       solicitudes       postgres    false    2968    243    219            \           0    0 /   CONSTRAINT id_persona ON tb_agendas_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_persona ON solicitudes.tb_agendas_solicitudes IS 'Llave foránea que relaciona la persona que atenderá el agendamiento o cita';
            solicitudes       postgres    false    3099                       2606    16904 !   tb_estados_solicitudes id_persona    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes
    ADD CONSTRAINT id_persona FOREIGN KEY (id_persona) REFERENCES rrhh.tb_personal(id_personal);
 P   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes DROP CONSTRAINT id_persona;
       solicitudes       postgres    false    2968    232    219            ]           0    0 /   CONSTRAINT id_persona ON tb_estados_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_persona ON solicitudes.tb_estados_solicitudes IS 'Llave foránea que relaciona el empleado creador del estado';
            solicitudes       postgres    false    3092                       2606    16853 *   tb_agendas_solicitudes id_persona_creacion    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes
    ADD CONSTRAINT id_persona_creacion FOREIGN KEY (id_persona_creacion) REFERENCES rrhh.tb_personal(id_personal);
 Y   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes DROP CONSTRAINT id_persona_creacion;
       solicitudes       postgres    false    243    2968    219            ^           0    0 8   CONSTRAINT id_persona_creacion ON tb_agendas_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_persona_creacion ON solicitudes.tb_agendas_solicitudes IS 'Llave foránea que relaciona la persona que crea el registro de cita o agendamiento.';
            solicitudes       postgres    false    3102                       2606    16830 #   tb_agendas_solicitudes id_solicitud    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes
    ADD CONSTRAINT id_solicitud FOREIGN KEY (id_agenda_solicitud) REFERENCES solicitudes.tb_solicitudes_compra(id_solicitudes);
 R   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes DROP CONSTRAINT id_solicitud;
       solicitudes       postgres    false    2982    224    243            _           0    0 1   CONSTRAINT id_solicitud ON tb_agendas_solicitudes    COMMENT     y   COMMENT ON CONSTRAINT id_solicitud ON solicitudes.tb_agendas_solicitudes IS 'Llave foránea que relaciona la solicitud';
            solicitudes       postgres    false    3098                       2606    16887 +   tb_caracteristicas_solicitudes id_solicitud    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_caracteristicas_solicitudes
    ADD CONSTRAINT id_solicitud FOREIGN KEY (id_solicitud) REFERENCES solicitudes.tb_solicitudes_compra(id_solicitudes);
 Z   ALTER TABLE ONLY solicitudes.tb_caracteristicas_solicitudes DROP CONSTRAINT id_solicitud;
       solicitudes       postgres    false    2982    234    224            `           0    0 9   CONSTRAINT id_solicitud ON tb_caracteristicas_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_solicitud ON solicitudes.tb_caracteristicas_solicitudes IS 'Llave foránea que relaciona la solicitud';
            solicitudes       postgres    false    3095                       2606    16893 #   tb_estados_solicitudes id_solicitud    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes
    ADD CONSTRAINT id_solicitud FOREIGN KEY (id_solicitud) REFERENCES solicitudes.tb_solicitudes_compra(id_solicitudes);
 R   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes DROP CONSTRAINT id_solicitud;
       solicitudes       postgres    false    232    224    2982            a           0    0 1   CONSTRAINT id_solicitud ON tb_estados_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_solicitud ON solicitudes.tb_estados_solicitudes IS 'Llave foránea que relaciona la solicitud a la cual pertenece el estado';
            solicitudes       postgres    false    3090                       2606    16923 %   tb_intereses_solicitudes id_solicitud    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_intereses_solicitudes
    ADD CONSTRAINT id_solicitud FOREIGN KEY (id_solicitud) REFERENCES solicitudes.tb_solicitudes_compra(id_solicitudes);
 T   ALTER TABLE ONLY solicitudes.tb_intereses_solicitudes DROP CONSTRAINT id_solicitud;
       solicitudes       postgres    false    224    240    2982            b           0    0 3   CONSTRAINT id_solicitud ON tb_intereses_solicitudes    COMMENT     {   COMMENT ON CONSTRAINT id_solicitud ON solicitudes.tb_intereses_solicitudes IS 'Llave foránea que relaciona la solicitud';
            solicitudes       postgres    false    3096                       2606    16898 *   tb_estados_solicitudes id_solicitud_estado    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes
    ADD CONSTRAINT id_solicitud_estado FOREIGN KEY (id_solicitud_estado) REFERENCES generales.tb_solicitudes_estados(id_solicitud_estado);
 Y   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes DROP CONSTRAINT id_solicitud_estado;
       solicitudes       postgres    false    3007    232    236            c           0    0 8   CONSTRAINT id_solicitud_estado ON tb_estados_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_solicitud_estado ON solicitudes.tb_estados_solicitudes IS 'Llave foránea que relaciona la tabla de estados de solicitud ';
            solicitudes       postgres    false    3091                       2606    16917 (   tb_estados_solicitudes id_tipo_actividad    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes
    ADD CONSTRAINT id_tipo_actividad FOREIGN KEY (id_tipo_actividad) REFERENCES tipos.tb_tipos_actividades(id_tipo_actividad);
 W   ALTER TABLE ONLY solicitudes.tb_estados_solicitudes DROP CONSTRAINT id_tipo_actividad;
       solicitudes       postgres    false    241    232    3014            d           0    0 6   CONSTRAINT id_tipo_actividad ON tb_estados_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_tipo_actividad ON solicitudes.tb_estados_solicitudes IS 'Llave foránea que relaciona el tipo de actividad. ';
            solicitudes       postgres    false    3093                       2606    16939 &   tb_solicitudes_compra id_tipo_inmueble    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT id_tipo_inmueble FOREIGN KEY (id_tipo_inmueble) REFERENCES tipos.tb_tipos_inmuebles(id_tipo_inmueble);
 U   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT id_tipo_inmueble;
       solicitudes       postgres    false    2970    224    220            e           0    0 4   CONSTRAINT id_tipo_inmueble ON tb_solicitudes_compra    COMMENT     �   COMMENT ON CONSTRAINT id_tipo_inmueble ON solicitudes.tb_solicitudes_compra IS 'Llave foránea que relaciona el tipo de inmueble en la solicitud.';
            solicitudes       postgres    false    3078                       2606    16967 !   tb_solicitudes_compra id_urgencia    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT id_urgencia FOREIGN KEY (id_urgencia) REFERENCES generales.tb_urgencias(id_urgencia);
 P   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT id_urgencia;
       solicitudes       postgres    false    264    224    3050            f           0    0 /   CONSTRAINT id_urgencia ON tb_solicitudes_compra    COMMENT     �   COMMENT ON CONSTRAINT id_urgencia ON solicitudes.tb_solicitudes_compra IS 'Llave foránea que relaciona los posibles valores de urgencia en compra del inmueble.';
            solicitudes       postgres    false    3080            
           2606    16979 )   tb_solicitudes_compra id_usuario_creacion    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT id_usuario_creacion FOREIGN KEY (id_usuario_creacion) REFERENCES rrhh.tb_personal(id_personal);
 X   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT id_usuario_creacion;
       solicitudes       postgres    false    219    224    2968            g           0    0 7   CONSTRAINT id_usuario_creacion ON tb_solicitudes_compra    COMMENT     �   COMMENT ON CONSTRAINT id_usuario_creacion ON solicitudes.tb_solicitudes_compra IS 'Llave foránea que relaciona la persona que crea la solicitud';
            solicitudes       postgres    false    3082                       2606    16985 )   tb_solicitudes_compra id_usuario_modifica    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT id_usuario_modifica FOREIGN KEY (id_usuario_modifica) REFERENCES rrhh.tb_personal(id_personal);
 X   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT id_usuario_modifica;
       solicitudes       postgres    false    2968    224    219            h           0    0 7   CONSTRAINT id_usuario_modifica ON tb_solicitudes_compra    COMMENT     �   COMMENT ON CONSTRAINT id_usuario_modifica ON solicitudes.tb_solicitudes_compra IS 'Llave foránea que relaciona la persona que modifica por ultima vez la solicitud';
            solicitudes       postgres    false    3083                       2606    16841 "   tb_agendas_solicitudes id_vendedor    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes
    ADD CONSTRAINT id_vendedor FOREIGN KEY (id_vendedor) REFERENCES clientes.tb_clientes(id_cliente);
 Q   ALTER TABLE ONLY solicitudes.tb_agendas_solicitudes DROP CONSTRAINT id_vendedor;
       solicitudes       postgres    false    2993    243    225            i           0    0 0   CONSTRAINT id_vendedor ON tb_agendas_solicitudes    COMMENT     �   COMMENT ON CONSTRAINT id_vendedor ON solicitudes.tb_agendas_solicitudes IS 'Llave foránea que relaciona el vendedor del inmueble que se encuentra en la tabla de clientes';
            solicitudes       postgres    false    3100            	           2606    16973    tb_solicitudes_compra id_zona    FK CONSTRAINT     �   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra
    ADD CONSTRAINT id_zona FOREIGN KEY (id_zona) REFERENCES generales.tb_zonas(id_zona);
 L   ALTER TABLE ONLY solicitudes.tb_solicitudes_compra DROP CONSTRAINT id_zona;
       solicitudes       postgres    false    255    224    3042            j           0    0 +   CONSTRAINT id_zona ON tb_solicitudes_compra    COMMENT     �   COMMENT ON CONSTRAINT id_zona ON solicitudes.tb_solicitudes_compra IS 'Llave foránea que relaciona la zona en la que se solicita el inmueble.';
            solicitudes       postgres    false    3081            �   �   x���In�0E��)|���iU�uJ�:ͦ���Q�)�f��pxD��t������w�>��R�	>X�$	#8����y���Xގ�2W3.'�������o�i��=s���I�ʃ��LO�����:.�G���@[�k&,�N���k��B�%m�a)��^lnK�a����R�޿z���a�u��!Х�j�r\���I���EWٮ����h�J[�LW�ՙ ���v�q�U���H����Ža�      �   �   x�E�K�0��͏��*��'�x�6��]Z��k�(�i曙<�X�	��,������Z�`��2��vev��ɴe=���*�x
�)��Ж��A�e��Q������ƈ/����πCA}c���;��rܯ�r��#��T��Ed_7�z���2H𬹱�.Z)���H~      �   �   x�]��j�0E��if���YuS�,W��cY)�__M�̄�ds(��s'�
T K�$:7:gj}й O���eMz�[de*�Y��}_��?BࢾϞ�)���LST��q���ްUT�+?_��U�����۰X��҅P��ϰ<���+�^<*�=mə�N���UzLQM���^�h������$B�f�{�H�]t���TF8�~����}�9�� ��      �      x������ � �      �      x������ � �      �   &   x�3��O��LO,�/���2��/H���K������ ���      �   �  x�U�Mr� ���)r���3�R������̴���l�W�D�(��I��jPjZ8�i�#Q>�V5j͉�CW�,���~pй���HHXN,���6QT>]�.�C�s9��t�|��� �g�TFT��T!{�N�.Po�@��C�(���
�=t����f���.�Tt����ݰ���$b��	h�u��RdB��h1����Wi b�t���=f_������"wn��΀��y�o���խ�)?��70-�K�	���[�x��N)dI���}"�l�O#�|���Y'>r�Gxn��-�ʒ�eFŭ�J�'�g3�,�A0�����@����U!bn#��w������ml썗�?�+z8��K������H�կ���M^��g�GԸ]H�83|e|j�z��H�m      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�45�t����u�t����� &��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   V  x��UKn�:\G��B�I�m�mf3'�-1��'J����a���M�lO�v$������A?��_���~����Ga�����U܃0Z?�����4�>���X~J}�[R�"c���iS��T��N*.���d,,��nCh�x�N_ -�Ӫӎk^B����\	�ӧ_´�!l���������
8@Jh,���h+;	܁���a�w�����������#kȾ���и�	��X�9���k©GvH%����Lk���p��Ԉ�v�r����3�sإ%)a�璧0_��O<Rn`;��Tg�]�9x� ?a<���ɐ��+iFD���FS%ٵ�/�:�s?��ڝ���V%�܂q
*�g��K-�ԝ3]��
��R�P�%��d֯��������)O(��iݍq�u��έk���������lQSoۈ�����\z!��6����F��N�A6L oA*�><Z�Ӛ�f�l��SD�M�4c�Q��l5���X+q�Bȡt������z��!B{K"��M"ep���wXH��#�>�w��7d �Jjl
.@	��˲���6Ga���VT�?���qFWFF㏔�N�'�������\�lM��,�*Kh�����7�}Foc-b �f�jO�Զ�-�ѮV�S����=�%�������{�����ߌV��EԲ�^jC� �P�Ǘ@^˭�5Yp�%�3�=��X|hU�A���nB(}�J�|H�<�ZI�7l0nL+�����^��q��S鹒��=��:�\]�5��1�4R�VoO����u�O	FS��'�Z^�i9��L
2�;��|�M��͋]�      �      x������ � �      �      x������ � �      �      x������ � �      �   :   x�3��+�=��(39�ˈ�%�8�(��$�,�˘�)??'51/_A#�S��_�+F��� �#U      �      x������ � �      �      x������ � �      �      x������ � �      �   V   x���	�0��
Hطa�+�%�#� 
��À��=�k�4bjuj�>��7�V}��1|"�0��X�t��*;�F��o�3�|��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   !   x�3�t��rt��2�s�sq1c���� `�0      �      x������ � �      �   :   x�3�t�
r�Wp�qu	:<���ٟˈ���/���U!�7����� ������ -�/      �   w   x�M�;
�@Dk�>����VH��y��!E.�"��Ų�*�ox'��-u�At`�BB~|������A�ht�x�����f����5��Bg�3��~�
�8�W+���v*[�����E&%     