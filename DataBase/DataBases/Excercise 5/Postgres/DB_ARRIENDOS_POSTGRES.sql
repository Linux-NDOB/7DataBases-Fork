PGDMP     3                    z         	   arriendos    14.2    14.2 A    O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            P           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            R           1262    17431 	   arriendos    DATABASE     e   CREATE DATABASE arriendos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE arriendos;
                postgres    false            �            1259    17469    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    peliculas_idpeliculas integer NOT NULL,
    personas_idpersona integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    17468    actor_id_actor_seq    SEQUENCE     �   CREATE SEQUENCE public.actor_id_actor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.actor_id_actor_seq;
       public          postgres    false    210            S           0    0    actor_id_actor_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.actor_id_actor_seq OWNED BY public.actor.id_actor;
          public          postgres    false    209            �            1259    17477    actor_principal    TABLE     y   CREATE TABLE public.actor_principal (
    actor_id_actor integer NOT NULL,
    peliculas_idpeliculas integer NOT NULL
);
 #   DROP TABLE public.actor_principal;
       public         heap    postgres    false            �            1259    17484 	   arriendos    TABLE     �   CREATE TABLE public.arriendos (
    id_arriendo integer NOT NULL,
    peliculas_idpeliculas integer NOT NULL,
    locales_idlocal integer NOT NULL,
    usuarios_n_unico integer NOT NULL,
    trabajadores_idtrabajadores integer NOT NULL
);
    DROP TABLE public.arriendos;
       public         heap    postgres    false            �            1259    17499    categoria_principal    TABLE     �   CREATE TABLE public.categoria_principal (
    categorias_nombre_categoria character varying(50) NOT NULL,
    peliculas_idpeliculas integer NOT NULL
);
 '   DROP TABLE public.categoria_principal;
       public         heap    postgres    false            �            1259    17493 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    nombre_categoria character varying(50) NOT NULL,
    peliculas_idpeliculas integer NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    17506 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    idinventario integer NOT NULL,
    peliculas_idpeliculas integer NOT NULL,
    locales_idlocal integer NOT NULL,
    cantidad_pelicula integer NOT NULL,
    precio_arriendo double precision NOT NULL
);
    DROP TABLE public.inventario;
       public         heap    postgres    false            �            1259    17513    locales    TABLE     �   CREATE TABLE public.locales (
    idlocal integer NOT NULL,
    paises_idpais_2 integer NOT NULL,
    nombre_local character varying(50) NOT NULL
);
    DROP TABLE public.locales;
       public         heap    postgres    false            �            1259    17519    paises    TABLE     i   CREATE TABLE public.paises (
    idpais_2 integer NOT NULL,
    idpais character varying(50) NOT NULL
);
    DROP TABLE public.paises;
       public         heap    postgres    false            �            1259    17524 	   peliculas    TABLE     �   CREATE TABLE public.peliculas (
    idpeliculas integer NOT NULL,
    locales_idlocal integer NOT NULL,
    nombre_pelicula character varying(50) NOT NULL
);
    DROP TABLE public.peliculas;
       public         heap    postgres    false            �            1259    17530    personas    TABLE     �   CREATE TABLE public.personas (
    idpersona integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    edad character varying(50) NOT NULL
);
    DROP TABLE public.personas;
       public         heap    postgres    false            �            1259    17536    trabajadores    TABLE     s   CREATE TABLE public.trabajadores (
    idtrabajadores integer NOT NULL,
    personas_idpersona integer NOT NULL
);
     DROP TABLE public.trabajadores;
       public         heap    postgres    false            �            1259    17535    trabajadores_idtrabajadores_seq    SEQUENCE     �   CREATE SEQUENCE public.trabajadores_idtrabajadores_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.trabajadores_idtrabajadores_seq;
       public          postgres    false    221            T           0    0    trabajadores_idtrabajadores_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.trabajadores_idtrabajadores_seq OWNED BY public.trabajadores.idtrabajadores;
          public          postgres    false    220            �            1259    17543    usuarios    TABLE     h   CREATE TABLE public.usuarios (
    n_unico integer NOT NULL,
    personas_idpersona integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �           2604    17472    actor id_actor    DEFAULT     p   ALTER TABLE ONLY public.actor ALTER COLUMN id_actor SET DEFAULT nextval('public.actor_id_actor_seq'::regclass);
 =   ALTER TABLE public.actor ALTER COLUMN id_actor DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    17539    trabajadores idtrabajadores    DEFAULT     �   ALTER TABLE ONLY public.trabajadores ALTER COLUMN idtrabajadores SET DEFAULT nextval('public.trabajadores_idtrabajadores_seq'::regclass);
 J   ALTER TABLE public.trabajadores ALTER COLUMN idtrabajadores DROP DEFAULT;
       public          postgres    false    221    220    221            @          0    17469    actor 
   TABLE DATA           T   COPY public.actor (id_actor, peliculas_idpeliculas, personas_idpersona) FROM stdin;
    public          postgres    false    210   �G       A          0    17477    actor_principal 
   TABLE DATA           P   COPY public.actor_principal (actor_id_actor, peliculas_idpeliculas) FROM stdin;
    public          postgres    false    211   &H       B          0    17484 	   arriendos 
   TABLE DATA           �   COPY public.arriendos (id_arriendo, peliculas_idpeliculas, locales_idlocal, usuarios_n_unico, trabajadores_idtrabajadores) FROM stdin;
    public          postgres    false    212   \H       D          0    17499    categoria_principal 
   TABLE DATA           a   COPY public.categoria_principal (categorias_nombre_categoria, peliculas_idpeliculas) FROM stdin;
    public          postgres    false    214   �H       C          0    17493 
   categorias 
   TABLE DATA           M   COPY public.categorias (nombre_categoria, peliculas_idpeliculas) FROM stdin;
    public          postgres    false    213   �H       E          0    17506 
   inventario 
   TABLE DATA           ~   COPY public.inventario (idinventario, peliculas_idpeliculas, locales_idlocal, cantidad_pelicula, precio_arriendo) FROM stdin;
    public          postgres    false    215   =I       F          0    17513    locales 
   TABLE DATA           I   COPY public.locales (idlocal, paises_idpais_2, nombre_local) FROM stdin;
    public          postgres    false    216   �I       G          0    17519    paises 
   TABLE DATA           2   COPY public.paises (idpais_2, idpais) FROM stdin;
    public          postgres    false    217   J       H          0    17524 	   peliculas 
   TABLE DATA           R   COPY public.peliculas (idpeliculas, locales_idlocal, nombre_pelicula) FROM stdin;
    public          postgres    false    218   QJ       I          0    17530    personas 
   TABLE DATA           E   COPY public.personas (idpersona, nombre, apellido, edad) FROM stdin;
    public          postgres    false    219   �J       K          0    17536    trabajadores 
   TABLE DATA           J   COPY public.trabajadores (idtrabajadores, personas_idpersona) FROM stdin;
    public          postgres    false    221   �K       L          0    17543    usuarios 
   TABLE DATA           ?   COPY public.usuarios (n_unico, personas_idpersona) FROM stdin;
    public          postgres    false    222   �K       U           0    0    actor_id_actor_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.actor_id_actor_seq', 1, false);
          public          postgres    false    209            V           0    0    trabajadores_idtrabajadores_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.trabajadores_idtrabajadores_seq', 1, false);
          public          postgres    false    220            �           2606    17474    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    210            �           2606    17481 $   actor_principal actor_principal_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.actor_principal
    ADD CONSTRAINT actor_principal_pkey PRIMARY KEY (actor_id_actor);
 N   ALTER TABLE ONLY public.actor_principal DROP CONSTRAINT actor_principal_pkey;
       public            postgres    false    211            �           2606    17488    arriendos arriendos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.arriendos
    ADD CONSTRAINT arriendos_pkey PRIMARY KEY (id_arriendo);
 B   ALTER TABLE ONLY public.arriendos DROP CONSTRAINT arriendos_pkey;
       public            postgres    false    212            �           2606    17503 ,   categoria_principal categoria_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.categoria_principal
    ADD CONSTRAINT categoria_principal_pkey PRIMARY KEY (categorias_nombre_categoria);
 V   ALTER TABLE ONLY public.categoria_principal DROP CONSTRAINT categoria_principal_pkey;
       public            postgres    false    214            �           2606    17497    categorias categorias_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (nombre_categoria);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    213            �           2606    17510    inventario inventario_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (idinventario);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public            postgres    false    215            �           2606    17517    locales locales_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.locales
    ADD CONSTRAINT locales_pkey PRIMARY KEY (idlocal);
 >   ALTER TABLE ONLY public.locales DROP CONSTRAINT locales_pkey;
       public            postgres    false    216            �           2606    17523    paises paises_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (idpais_2);
 <   ALTER TABLE ONLY public.paises DROP CONSTRAINT paises_pkey;
       public            postgres    false    217            �           2606    17528    peliculas peliculas_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_pkey PRIMARY KEY (idpeliculas);
 B   ALTER TABLE ONLY public.peliculas DROP CONSTRAINT peliculas_pkey;
       public            postgres    false    218            �           2606    17534    personas personas_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (idpersona);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public            postgres    false    219            �           2606    17541    trabajadores trabajadores_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.trabajadores
    ADD CONSTRAINT trabajadores_pkey PRIMARY KEY (idtrabajadores);
 H   ALTER TABLE ONLY public.trabajadores DROP CONSTRAINT trabajadores_pkey;
       public            postgres    false    221            �           2606    17547    usuarios usuarios_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (n_unico);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    222            �           1259    17475    actor_fkindex1    INDEX     N   CREATE INDEX actor_fkindex1 ON public.actor USING btree (personas_idpersona);
 "   DROP INDEX public.actor_fkindex1;
       public            postgres    false    210            �           1259    17476    actor_fkindex2    INDEX     Q   CREATE INDEX actor_fkindex2 ON public.actor USING btree (peliculas_idpeliculas);
 "   DROP INDEX public.actor_fkindex2;
       public            postgres    false    210            �           1259    17482    actor_principal_fkindex1    INDEX     e   CREATE INDEX actor_principal_fkindex1 ON public.actor_principal USING btree (peliculas_idpeliculas);
 ,   DROP INDEX public.actor_principal_fkindex1;
       public            postgres    false    211            �           1259    17483    actor_principal_fkindex2    INDEX     ^   CREATE INDEX actor_principal_fkindex2 ON public.actor_principal USING btree (actor_id_actor);
 ,   DROP INDEX public.actor_principal_fkindex2;
       public            postgres    false    211            �           1259    17498    categoria_principal_fkindex1    INDEX     d   CREATE INDEX categoria_principal_fkindex1 ON public.categorias USING btree (peliculas_idpeliculas);
 0   DROP INDEX public.categoria_principal_fkindex1;
       public            postgres    false    213            �           1259    17505    categoria_principal_fkindex2    INDEX     m   CREATE INDEX categoria_principal_fkindex2 ON public.categoria_principal USING btree (peliculas_idpeliculas);
 0   DROP INDEX public.categoria_principal_fkindex2;
       public            postgres    false    214            �           1259    17504    categoria_principal_fkindex3    INDEX     s   CREATE INDEX categoria_principal_fkindex3 ON public.categoria_principal USING btree (categorias_nombre_categoria);
 0   DROP INDEX public.categoria_principal_fkindex3;
       public            postgres    false    214            �           1259    17511    inventario_fkindex1    INDEX     [   CREATE INDEX inventario_fkindex1 ON public.inventario USING btree (peliculas_idpeliculas);
 '   DROP INDEX public.inventario_fkindex1;
       public            postgres    false    215            �           1259    17512    inventario_fkindex2    INDEX     U   CREATE INDEX inventario_fkindex2 ON public.inventario USING btree (locales_idlocal);
 '   DROP INDEX public.inventario_fkindex2;
       public            postgres    false    215            �           1259    17518    locales_fkindex1    INDEX     O   CREATE INDEX locales_fkindex1 ON public.locales USING btree (paises_idpais_2);
 $   DROP INDEX public.locales_fkindex1;
       public            postgres    false    216            �           1259    17529    peliculas_fkindex1    INDEX     S   CREATE INDEX peliculas_fkindex1 ON public.peliculas USING btree (locales_idlocal);
 &   DROP INDEX public.peliculas_fkindex1;
       public            postgres    false    218            �           1259    17489    table_17_fkindex1    INDEX     ^   CREATE INDEX table_17_fkindex1 ON public.arriendos USING btree (trabajadores_idtrabajadores);
 %   DROP INDEX public.table_17_fkindex1;
       public            postgres    false    212            �           1259    17490    table_17_fkindex2    INDEX     S   CREATE INDEX table_17_fkindex2 ON public.arriendos USING btree (usuarios_n_unico);
 %   DROP INDEX public.table_17_fkindex2;
       public            postgres    false    212            �           1259    17491    table_17_fkindex3    INDEX     R   CREATE INDEX table_17_fkindex3 ON public.arriendos USING btree (locales_idlocal);
 %   DROP INDEX public.table_17_fkindex3;
       public            postgres    false    212            �           1259    17492    table_17_fkindex4    INDEX     X   CREATE INDEX table_17_fkindex4 ON public.arriendos USING btree (peliculas_idpeliculas);
 %   DROP INDEX public.table_17_fkindex4;
       public            postgres    false    212            �           1259    17542    trabajadores_fkindex1    INDEX     \   CREATE INDEX trabajadores_fkindex1 ON public.trabajadores USING btree (personas_idpersona);
 )   DROP INDEX public.trabajadores_fkindex1;
       public            postgres    false    221            �           1259    17548    usuarios_fkindex1    INDEX     T   CREATE INDEX usuarios_fkindex1 ON public.usuarios USING btree (personas_idpersona);
 %   DROP INDEX public.usuarios_fkindex1;
       public            postgres    false    222            @   /   x��1 0�9ӳ�,�R�8���N��k�<<���͇ߊW�H��4      A   &   x��40�410�40��@�Hi m����� r�      B   =   x�ȱ�@���&�%}��d�9 qw�B��;�3��g�	&LX0c�-f��b�����?DA;      D   5   x�s)J�M�410���/*�/2��B2�2srRA.����< Ӑ+F��� p�T      C   ?   x�s)J�M�	�(���I-�410�rL.��ϫ��/*�/B�2�B�p9�禦TbQg����� ĵo      E   B   x��� A��	a�\�l�q�_-��1Ր����d��A��-[��66o���F��_�Ɨ�@|@      F   d   x��1
�0 �9yE�R[_����..�!�Vo�㼭��fz�㲍�	�u��$/����W�a�G�\���|2Ļ�D6�]>���#�"�=
      G   >   x�320���L��M,�220���K��K-�L�9���sSR�3�\CN�����<�=... ߸�      H   [   x�310�4�Ԕb.C ǘ�#�\�S�5/%5E!$#�X!�477�(o�7���LJ���$�T���F��E�9�
N�9%@�1z\\\ d0�      I   �   x�%��N�@�_e7�=VQiQ)'$.\��d-6��YT��q��c{������c���*W{|p��󷐢�k���$�r'���
(q	x�w*�bX�=�2ᒈ���ܠ��Sat�z�Gm��a��k�j��+�;��DR��3K��Q��-k0�����8�A~)Y�KIlD���Õ5|QJ��DaѬm��f���x���/�OUU���O%      K   &   x�350�440�250҆@�HiC m����� o��      L   &   x�330�440�230�f@�H�i# m����� q%�     