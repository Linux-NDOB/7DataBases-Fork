PGDMP                         z            pabellon    14.2    14.2 ^    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17549    pabellon    DATABASE     d   CREATE DATABASE pabellon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE pabellon;
                postgres    false            �            1259    17550    agendar_cirugia    TABLE     3  CREATE TABLE public.agendar_cirugia (
    idagenda integer NOT NULL,
    cirugias_idcirugias integer NOT NULL,
    arsenalero_idarsenalero integer NOT NULL,
    anestesista_idanestesista integer NOT NULL,
    cirujano_idcirujano integer NOT NULL,
    horarios_pabellones_numero_pabellon integer NOT NULL
);
 #   DROP TABLE public.agendar_cirugia;
       public         heap    postgres    false            �            1259    17560    agendar_cirugia_has_realizadas    TABLE     �   CREATE TABLE public.agendar_cirugia_has_realizadas (
    realizadas_idrealizadas integer NOT NULL,
    agendar_cirugia_idagenda integer NOT NULL
);
 2   DROP TABLE public.agendar_cirugia_has_realizadas;
       public         heap    postgres    false            �            1259    17568    anestesista    TABLE     u   CREATE TABLE public.anestesista (
    idanestesista integer NOT NULL,
    medicos_id_profesional integer NOT NULL
);
    DROP TABLE public.anestesista;
       public         heap    postgres    false            �            1259    17567    anestesista_idanestesista_seq    SEQUENCE     �   CREATE SEQUENCE public.anestesista_idanestesista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.anestesista_idanestesista_seq;
       public          postgres    false    212            �           0    0    anestesista_idanestesista_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.anestesista_idanestesista_seq OWNED BY public.anestesista.idanestesista;
          public          postgres    false    211            �            1259    17576 
   arsenalero    TABLE     s   CREATE TABLE public.arsenalero (
    idarsenalero integer NOT NULL,
    medicos_id_profesional integer NOT NULL
);
    DROP TABLE public.arsenalero;
       public         heap    postgres    false            �            1259    17575    arsenalero_idarsenalero_seq    SEQUENCE     �   CREATE SEQUENCE public.arsenalero_idarsenalero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.arsenalero_idarsenalero_seq;
       public          postgres    false    214            �           0    0    arsenalero_idarsenalero_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.arsenalero_idarsenalero_seq OWNED BY public.arsenalero.idarsenalero;
          public          postgres    false    213            �            1259    17583    cirugias    TABLE     �  CREATE TABLE public.cirugias (
    idcirugias integer NOT NULL,
    modulo_idmodulo integer NOT NULL,
    equipo_medico_idequipo_medico integer NOT NULL,
    insumos_idinsumos integer NOT NULL,
    nombre_cirugia character varying(50) NOT NULL,
    descripcion_cirugia character varying(100) NOT NULL,
    finalidad_cirugia character varying(100) NOT NULL,
    duracion_minutos integer NOT NULL
);
    DROP TABLE public.cirugias;
       public         heap    postgres    false            �            1259    17592    cirujano    TABLE     o   CREATE TABLE public.cirujano (
    idcirujano integer NOT NULL,
    medicos_id_profesional integer NOT NULL
);
    DROP TABLE public.cirujano;
       public         heap    postgres    false            �            1259    17591    cirujano_idcirujano_seq    SEQUENCE     �   CREATE SEQUENCE public.cirujano_idcirujano_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cirujano_idcirujano_seq;
       public          postgres    false    217            �           0    0    cirujano_idcirujano_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cirujano_idcirujano_seq OWNED BY public.cirujano.idcirujano;
          public          postgres    false    216            �            1259    17599    en_pabellon    TABLE     w   CREATE TABLE public.en_pabellon (
    iden_pabellon integer NOT NULL,
    agendar_cirugia_idagenda integer NOT NULL
);
    DROP TABLE public.en_pabellon;
       public         heap    postgres    false            �            1259    17605    equipo_medico    TABLE     ?  CREATE TABLE public.equipo_medico (
    idequipo_medico integer NOT NULL,
    modulo_idmodulo integer NOT NULL,
    nombre_equipo character varying(50) NOT NULL,
    funcion_equipo character varying(50) NOT NULL,
    tipo_equipo character varying(50) NOT NULL,
    descripcion_equipo character varying(100) NOT NULL
);
 !   DROP TABLE public.equipo_medico;
       public         heap    postgres    false            �            1259    17611    historial_cirugias    TABLE     �   CREATE TABLE public.historial_cirugias (
    idhistorial_cirugias integer NOT NULL,
    realizadas_idrealizadas integer NOT NULL,
    pacientes_idpaciente integer NOT NULL
);
 &   DROP TABLE public.historial_cirugias;
       public         heap    postgres    false            �            1259    17618    horarios    TABLE     �   CREATE TABLE public.horarios (
    pabellones_numero_pabellon integer NOT NULL,
    hora character varying(45) NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    semana integer NOT NULL,
    estado character varying(50) NOT NULL
);
    DROP TABLE public.horarios;
       public         heap    postgres    false            �            1259    17624    instrumentos    TABLE     ,  CREATE TABLE public.instrumentos (
    idinstrumentos integer NOT NULL,
    modulo_idmodulo integer NOT NULL,
    cirugias_idcirugias integer NOT NULL,
    nombre_instrumento character varying(50) NOT NULL,
    uso_instrumento character varying(100) NOT NULL,
    p_hora double precision NOT NULL
);
     DROP TABLE public.instrumentos;
       public         heap    postgres    false            �            1259    17631    insumos    TABLE       CREATE TABLE public.insumos (
    idinsumos integer NOT NULL,
    modulo_idmodulo integer NOT NULL,
    nombre_insumo character varying(50) NOT NULL,
    tipo_insumo character varying(50) NOT NULL,
    p_unidad integer NOT NULL,
    cantidad_insumo integer NOT NULL
);
    DROP TABLE public.insumos;
       public         heap    postgres    false            �            1259    17637    medicos    TABLE     o   CREATE TABLE public.medicos (
    id_profesional integer NOT NULL,
    personas_id_persona integer NOT NULL
);
    DROP TABLE public.medicos;
       public         heap    postgres    false            �            1259    17643    modulo    TABLE     �   CREATE TABLE public.modulo (
    idmodulo integer NOT NULL,
    pabellones_numero_pabellon integer NOT NULL,
    nombre_modulo_2 character varying(50) NOT NULL,
    nombre_modulo character varying(50) NOT NULL
);
    DROP TABLE public.modulo;
       public         heap    postgres    false            �            1259    17649 
   pabellones    TABLE     �   CREATE TABLE public.pabellones (
    numero_pabellon integer NOT NULL,
    bloque integer NOT NULL,
    nombre character varying(50) NOT NULL,
    pisos integer NOT NULL
);
    DROP TABLE public.pabellones;
       public         heap    postgres    false            �            1259    17654 	   pacientes    TABLE     m   CREATE TABLE public.pacientes (
    idpaciente integer NOT NULL,
    personas_id_persona integer NOT NULL
);
    DROP TABLE public.pacientes;
       public         heap    postgres    false            �            1259    17660    personas    TABLE     �   CREATE TABLE public.personas (
    id_persona integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    edad character varying(50) NOT NULL
);
    DROP TABLE public.personas;
       public         heap    postgres    false            �            1259    17665 
   realizadas    TABLE     F   CREATE TABLE public.realizadas (
    idrealizadas integer NOT NULL
);
    DROP TABLE public.realizadas;
       public         heap    postgres    false            �           2604    17571    anestesista idanestesista    DEFAULT     �   ALTER TABLE ONLY public.anestesista ALTER COLUMN idanestesista SET DEFAULT nextval('public.anestesista_idanestesista_seq'::regclass);
 H   ALTER TABLE public.anestesista ALTER COLUMN idanestesista DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    17579    arsenalero idarsenalero    DEFAULT     �   ALTER TABLE ONLY public.arsenalero ALTER COLUMN idarsenalero SET DEFAULT nextval('public.arsenalero_idarsenalero_seq'::regclass);
 F   ALTER TABLE public.arsenalero ALTER COLUMN idarsenalero DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    17595    cirujano idcirujano    DEFAULT     z   ALTER TABLE ONLY public.cirujano ALTER COLUMN idcirujano SET DEFAULT nextval('public.cirujano_idcirujano_seq'::regclass);
 B   ALTER TABLE public.cirujano ALTER COLUMN idcirujano DROP DEFAULT;
       public          postgres    false    217    216    217            l          0    17550    agendar_cirugia 
   TABLE DATA           �   COPY public.agendar_cirugia (idagenda, cirugias_idcirugias, arsenalero_idarsenalero, anestesista_idanestesista, cirujano_idcirujano, horarios_pabellones_numero_pabellon) FROM stdin;
    public          postgres    false    209   �n       m          0    17560    agendar_cirugia_has_realizadas 
   TABLE DATA           k   COPY public.agendar_cirugia_has_realizadas (realizadas_idrealizadas, agendar_cirugia_idagenda) FROM stdin;
    public          postgres    false    210   :o       o          0    17568    anestesista 
   TABLE DATA           L   COPY public.anestesista (idanestesista, medicos_id_profesional) FROM stdin;
    public          postgres    false    212   so       q          0    17576 
   arsenalero 
   TABLE DATA           J   COPY public.arsenalero (idarsenalero, medicos_id_profesional) FROM stdin;
    public          postgres    false    214   �o       r          0    17583    cirugias 
   TABLE DATA           �   COPY public.cirugias (idcirugias, modulo_idmodulo, equipo_medico_idequipo_medico, insumos_idinsumos, nombre_cirugia, descripcion_cirugia, finalidad_cirugia, duracion_minutos) FROM stdin;
    public          postgres    false    215   �o       t          0    17592    cirujano 
   TABLE DATA           F   COPY public.cirujano (idcirujano, medicos_id_profesional) FROM stdin;
    public          postgres    false    217   �p       u          0    17599    en_pabellon 
   TABLE DATA           N   COPY public.en_pabellon (iden_pabellon, agendar_cirugia_idagenda) FROM stdin;
    public          postgres    false    218   q       v          0    17605    equipo_medico 
   TABLE DATA           �   COPY public.equipo_medico (idequipo_medico, modulo_idmodulo, nombre_equipo, funcion_equipo, tipo_equipo, descripcion_equipo) FROM stdin;
    public          postgres    false    219   Hq       w          0    17611    historial_cirugias 
   TABLE DATA           q   COPY public.historial_cirugias (idhistorial_cirugias, realizadas_idrealizadas, pacientes_idpaciente) FROM stdin;
    public          postgres    false    220   *r       x          0    17618    horarios 
   TABLE DATA           ^   COPY public.horarios (pabellones_numero_pabellon, hora, dia, mes, semana, estado) FROM stdin;
    public          postgres    false    221   lr       y          0    17624    instrumentos 
   TABLE DATA           �   COPY public.instrumentos (idinstrumentos, modulo_idmodulo, cirugias_idcirugias, nombre_instrumento, uso_instrumento, p_hora) FROM stdin;
    public          postgres    false    222   �r       z          0    17631    insumos 
   TABLE DATA           t   COPY public.insumos (idinsumos, modulo_idmodulo, nombre_insumo, tipo_insumo, p_unidad, cantidad_insumo) FROM stdin;
    public          postgres    false    223   �s       {          0    17637    medicos 
   TABLE DATA           F   COPY public.medicos (id_profesional, personas_id_persona) FROM stdin;
    public          postgres    false    224   t       |          0    17643    modulo 
   TABLE DATA           f   COPY public.modulo (idmodulo, pabellones_numero_pabellon, nombre_modulo_2, nombre_modulo) FROM stdin;
    public          postgres    false    225   bt       }          0    17649 
   pabellones 
   TABLE DATA           L   COPY public.pabellones (numero_pabellon, bloque, nombre, pisos) FROM stdin;
    public          postgres    false    226   �t       ~          0    17654 	   pacientes 
   TABLE DATA           D   COPY public.pacientes (idpaciente, personas_id_persona) FROM stdin;
    public          postgres    false    227   7u                 0    17660    personas 
   TABLE DATA           F   COPY public.personas (id_persona, nombre, apellido, edad) FROM stdin;
    public          postgres    false    228   mu       �          0    17665 
   realizadas 
   TABLE DATA           2   COPY public.realizadas (idrealizadas) FROM stdin;
    public          postgres    false    229   wv       �           0    0    anestesista_idanestesista_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.anestesista_idanestesista_seq', 1, false);
          public          postgres    false    211            �           0    0    arsenalero_idarsenalero_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.arsenalero_idarsenalero_seq', 1, false);
          public          postgres    false    213            �           0    0    cirujano_idcirujano_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cirujano_idcirujano_seq', 1, false);
          public          postgres    false    216            �           2606    17564 B   agendar_cirugia_has_realizadas agendar_cirugia_has_realizadas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.agendar_cirugia_has_realizadas
    ADD CONSTRAINT agendar_cirugia_has_realizadas_pkey PRIMARY KEY (realizadas_idrealizadas, agendar_cirugia_idagenda);
 l   ALTER TABLE ONLY public.agendar_cirugia_has_realizadas DROP CONSTRAINT agendar_cirugia_has_realizadas_pkey;
       public            postgres    false    210    210            �           2606    17554 $   agendar_cirugia agendar_cirugia_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.agendar_cirugia
    ADD CONSTRAINT agendar_cirugia_pkey PRIMARY KEY (idagenda);
 N   ALTER TABLE ONLY public.agendar_cirugia DROP CONSTRAINT agendar_cirugia_pkey;
       public            postgres    false    209            �           2606    17573    anestesista anestesista_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.anestesista
    ADD CONSTRAINT anestesista_pkey PRIMARY KEY (idanestesista);
 F   ALTER TABLE ONLY public.anestesista DROP CONSTRAINT anestesista_pkey;
       public            postgres    false    212            �           2606    17581    arsenalero arsenalero_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.arsenalero
    ADD CONSTRAINT arsenalero_pkey PRIMARY KEY (idarsenalero);
 D   ALTER TABLE ONLY public.arsenalero DROP CONSTRAINT arsenalero_pkey;
       public            postgres    false    214            �           2606    17587    cirugias cirugias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cirugias
    ADD CONSTRAINT cirugias_pkey PRIMARY KEY (idcirugias);
 @   ALTER TABLE ONLY public.cirugias DROP CONSTRAINT cirugias_pkey;
       public            postgres    false    215            �           2606    17597    cirujano cirujano_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cirujano
    ADD CONSTRAINT cirujano_pkey PRIMARY KEY (idcirujano);
 @   ALTER TABLE ONLY public.cirujano DROP CONSTRAINT cirujano_pkey;
       public            postgres    false    217            �           2606    17603    en_pabellon en_pabellon_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.en_pabellon
    ADD CONSTRAINT en_pabellon_pkey PRIMARY KEY (iden_pabellon);
 F   ALTER TABLE ONLY public.en_pabellon DROP CONSTRAINT en_pabellon_pkey;
       public            postgres    false    218            �           2606    17609     equipo_medico equipo_medico_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.equipo_medico
    ADD CONSTRAINT equipo_medico_pkey PRIMARY KEY (idequipo_medico);
 J   ALTER TABLE ONLY public.equipo_medico DROP CONSTRAINT equipo_medico_pkey;
       public            postgres    false    219            �           2606    17615 *   historial_cirugias historial_cirugias_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.historial_cirugias
    ADD CONSTRAINT historial_cirugias_pkey PRIMARY KEY (idhistorial_cirugias);
 T   ALTER TABLE ONLY public.historial_cirugias DROP CONSTRAINT historial_cirugias_pkey;
       public            postgres    false    220            �           2606    17622    horarios horarios_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.horarios
    ADD CONSTRAINT horarios_pkey PRIMARY KEY (pabellones_numero_pabellon);
 @   ALTER TABLE ONLY public.horarios DROP CONSTRAINT horarios_pkey;
       public            postgres    false    221            �           2606    17628    instrumentos instrumentos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.instrumentos
    ADD CONSTRAINT instrumentos_pkey PRIMARY KEY (idinstrumentos);
 H   ALTER TABLE ONLY public.instrumentos DROP CONSTRAINT instrumentos_pkey;
       public            postgres    false    222            �           2606    17635    insumos insumos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.insumos
    ADD CONSTRAINT insumos_pkey PRIMARY KEY (idinsumos);
 >   ALTER TABLE ONLY public.insumos DROP CONSTRAINT insumos_pkey;
       public            postgres    false    223            �           2606    17641    medicos medicos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT medicos_pkey PRIMARY KEY (id_profesional);
 >   ALTER TABLE ONLY public.medicos DROP CONSTRAINT medicos_pkey;
       public            postgres    false    224            �           2606    17647    modulo modulo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.modulo
    ADD CONSTRAINT modulo_pkey PRIMARY KEY (idmodulo);
 <   ALTER TABLE ONLY public.modulo DROP CONSTRAINT modulo_pkey;
       public            postgres    false    225            �           2606    17653    pabellones pabellones_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.pabellones
    ADD CONSTRAINT pabellones_pkey PRIMARY KEY (numero_pabellon);
 D   ALTER TABLE ONLY public.pabellones DROP CONSTRAINT pabellones_pkey;
       public            postgres    false    226            �           2606    17658    pacientes pacientes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (idpaciente);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public            postgres    false    227            �           2606    17664    personas personas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id_persona);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public            postgres    false    228            �           2606    17669    realizadas realizadas_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.realizadas
    ADD CONSTRAINT realizadas_pkey PRIMARY KEY (idrealizadas);
 D   ALTER TABLE ONLY public.realizadas DROP CONSTRAINT realizadas_pkey;
       public            postgres    false    229            �           1259    17557    agendar_cirugia_fkindex4    INDEX     c   CREATE INDEX agendar_cirugia_fkindex4 ON public.agendar_cirugia USING btree (cirujano_idcirujano);
 ,   DROP INDEX public.agendar_cirugia_fkindex4;
       public            postgres    false    209            �           1259    17558    agendar_cirugia_fkindex5    INDEX     i   CREATE INDEX agendar_cirugia_fkindex5 ON public.agendar_cirugia USING btree (anestesista_idanestesista);
 ,   DROP INDEX public.agendar_cirugia_fkindex5;
       public            postgres    false    209            �           1259    17559    agendar_cirugia_fkindex6    INDEX     g   CREATE INDEX agendar_cirugia_fkindex6 ON public.agendar_cirugia USING btree (arsenalero_idarsenalero);
 ,   DROP INDEX public.agendar_cirugia_fkindex6;
       public            postgres    false    209            �           1259    17565 '   agendar_cirugia_has_realizadas_fkindex1    INDEX     �   CREATE INDEX agendar_cirugia_has_realizadas_fkindex1 ON public.agendar_cirugia_has_realizadas USING btree (realizadas_idrealizadas);
 ;   DROP INDEX public.agendar_cirugia_has_realizadas_fkindex1;
       public            postgres    false    210            �           1259    17566 '   agendar_cirugia_has_realizadas_fkindex2    INDEX     �   CREATE INDEX agendar_cirugia_has_realizadas_fkindex2 ON public.agendar_cirugia_has_realizadas USING btree (agendar_cirugia_idagenda);
 ;   DROP INDEX public.agendar_cirugia_has_realizadas_fkindex2;
       public            postgres    false    210            �           1259    17574    anestesista_fkindex1    INDEX     ^   CREATE INDEX anestesista_fkindex1 ON public.anestesista USING btree (medicos_id_profesional);
 (   DROP INDEX public.anestesista_fkindex1;
       public            postgres    false    212            �           1259    17582    arsenalero_fkindex1    INDEX     \   CREATE INDEX arsenalero_fkindex1 ON public.arsenalero USING btree (medicos_id_profesional);
 '   DROP INDEX public.arsenalero_fkindex1;
       public            postgres    false    214            �           1259    17555    cirugia_agendada_fkindex1    INDEX     d   CREATE INDEX cirugia_agendada_fkindex1 ON public.agendar_cirugia USING btree (cirugias_idcirugias);
 -   DROP INDEX public.cirugia_agendada_fkindex1;
       public            postgres    false    209            �           1259    17556    cirugia_agendada_fkindex3    INDEX     t   CREATE INDEX cirugia_agendada_fkindex3 ON public.agendar_cirugia USING btree (horarios_pabellones_numero_pabellon);
 -   DROP INDEX public.cirugia_agendada_fkindex3;
       public            postgres    false    209            �           1259    17588    cirugias_fkindex1    INDEX     Q   CREATE INDEX cirugias_fkindex1 ON public.cirugias USING btree (modulo_idmodulo);
 %   DROP INDEX public.cirugias_fkindex1;
       public            postgres    false    215            �           1259    17589    cirugias_fkindex2    INDEX     S   CREATE INDEX cirugias_fkindex2 ON public.cirugias USING btree (insumos_idinsumos);
 %   DROP INDEX public.cirugias_fkindex2;
       public            postgres    false    215            �           1259    17590    cirugias_fkindex3    INDEX     _   CREATE INDEX cirugias_fkindex3 ON public.cirugias USING btree (equipo_medico_idequipo_medico);
 %   DROP INDEX public.cirugias_fkindex3;
       public            postgres    false    215            �           1259    17598    cirujano_fkindex1    INDEX     X   CREATE INDEX cirujano_fkindex1 ON public.cirujano USING btree (medicos_id_profesional);
 %   DROP INDEX public.cirujano_fkindex1;
       public            postgres    false    217            �           1259    17604    en_pabellon_fkindex1    INDEX     `   CREATE INDEX en_pabellon_fkindex1 ON public.en_pabellon USING btree (agendar_cirugia_idagenda);
 (   DROP INDEX public.en_pabellon_fkindex1;
       public            postgres    false    218            �           1259    17610    equipo_medico_fkindex1    INDEX     [   CREATE INDEX equipo_medico_fkindex1 ON public.equipo_medico USING btree (modulo_idmodulo);
 *   DROP INDEX public.equipo_medico_fkindex1;
       public            postgres    false    219            �           1259    17616    historial_cirugias_fkindex1    INDEX     j   CREATE INDEX historial_cirugias_fkindex1 ON public.historial_cirugias USING btree (pacientes_idpaciente);
 /   DROP INDEX public.historial_cirugias_fkindex1;
       public            postgres    false    220            �           1259    17617    historial_cirugias_fkindex2    INDEX     m   CREATE INDEX historial_cirugias_fkindex2 ON public.historial_cirugias USING btree (realizadas_idrealizadas);
 /   DROP INDEX public.historial_cirugias_fkindex2;
       public            postgres    false    220            �           1259    17623    horarios_fkindex1    INDEX     \   CREATE INDEX horarios_fkindex1 ON public.horarios USING btree (pabellones_numero_pabellon);
 %   DROP INDEX public.horarios_fkindex1;
       public            postgres    false    221            �           1259    17629    instrumentos_fkindex2    INDEX     Y   CREATE INDEX instrumentos_fkindex2 ON public.instrumentos USING btree (modulo_idmodulo);
 )   DROP INDEX public.instrumentos_fkindex2;
       public            postgres    false    222            �           1259    17630    instrumentos_fkindex3    INDEX     ]   CREATE INDEX instrumentos_fkindex3 ON public.instrumentos USING btree (cirugias_idcirugias);
 )   DROP INDEX public.instrumentos_fkindex3;
       public            postgres    false    222            �           1259    17636    insumos_fkindex1    INDEX     O   CREATE INDEX insumos_fkindex1 ON public.insumos USING btree (modulo_idmodulo);
 $   DROP INDEX public.insumos_fkindex1;
       public            postgres    false    223            �           1259    17642    medicos_fkindex1    INDEX     S   CREATE INDEX medicos_fkindex1 ON public.medicos USING btree (personas_id_persona);
 $   DROP INDEX public.medicos_fkindex1;
       public            postgres    false    224            �           1259    17648    modulo_fkindex1    INDEX     X   CREATE INDEX modulo_fkindex1 ON public.modulo USING btree (pabellones_numero_pabellon);
 #   DROP INDEX public.modulo_fkindex1;
       public            postgres    false    225            �           1259    17659    pacientes_fkindex1    INDEX     W   CREATE INDEX pacientes_fkindex1 ON public.pacientes USING btree (personas_id_persona);
 &   DROP INDEX public.pacientes_fkindex1;
       public            postgres    false    227            l   B   x����0�7��`�&��Q�:�L�4>6N|c�I�O�����}�W^�~�w~�7��SU?.��      m   )   x�3700�4600�2700��A,C��2���b���� �;1      o   '   x��00�420�00�424҆@� H� iC�=... q��      q   &   x�370�420�270Ҧ@�H[ iC m����� r�      r   �   x�e��n� ���)� Q$՚�v�e��BS/�dL �_�J���K`�>��Zg&;�Ys�������n5zf ��LW�RK�=0S\���r�I��6P��߃�S�*'ͬ9h��@+�B�M�V�G\`�P�L��cý�^q��7gdF�:o�^�q)m��-d���1��﵄�=��\RӾ5��Z�Z�Z�Z4�����$����Ę��@���g�]���J[g�      t   &   x�330�420�230�&@�HiC m����� p��      u   )   x�3300�4600�2300��@,��2��b���� ��-      v   �   x�m�1R1���>�N��!ۤ:��ЦQ�"�2�6��-r�A���
(R��h>��~��!��$�.v����kG��ݧ͎HSxj(t�Z��������J7��*lo_�(�(��+R�w�7c)����uD��	
&1�888zvÐq�q2��!#͒I'*n�g�6M4c3��3���+��a;)�".�g��[��?������;]�u1�}�m�      w   2   x���  ���a��C���<���Фk>��i1K-4�5��8�	�      x   X   x�3�44�21W��4�4�4�JM�ɬJL��2�4�2������8-�LL���R��y�
EpYCNS+c#�F#��(�1z\\\ q�d      y   �   x�E�1�0��+���Pz
ʈ��H,d��"�i�V���q�(W��݀ b��a��K[M���؍*�V�R˲2���g�B����إQc��K���K�B�UiQ���؝��Н ���scI}��'�Ec@���^q���,~c�s��=�1��3�� �	<�      z   z   x�uͽ�0����)2A���,Asr��±Y��6�qe���7�`n���On�~�^���KI/؈)P4N�ê@>��Q�z|��G9�!�ʩ�_�u�F�^�E*�x;�N�@����ɮ=n      {   B   x�̹�0�X(�P�Ջ��çh�X-.�;v,N<�Zb�x�ow�.F�C������H�$��      |   �   x�e��
!@���)|��_@"�RjU��L��u߾ٴ����n��G��5�巘��
�L�!���B�/���S{�P��ץa��C!��t���o��J��.��LF��{1����;��ׇ2�      }   2   x�3��t4��4�2�4�t64�4�2�4�t20�L8�9]���=... ��T      ~   &   x�360�440�260�@�H�ic m����� p9�         �   x�%�Mo�0DϓSŉ��(� U����%�b����!���n��Ӿ�YU*�Q��.���P��ɧ4�D!�C�����f��&赠
�h��l�u�7t%��w$��(����{ȌK���!�n68�Ñ\���Y��K��q�Q�F	]� ���81tY(U���7<bO�e�4+���	;C���U-bpR6r%S�8d����C�J��'���%|��C-���ؑ���R��l�,�/�k�����(�_�V^c      �      x�3500�2500� +F��� 6��     