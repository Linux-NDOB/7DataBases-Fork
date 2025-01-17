PGDMP                         z            habitaciones    14.2    14.2 0    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    17859    habitaciones    DATABASE     h   CREATE DATABASE habitaciones WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE habitaciones;
                postgres    false            �            1259    17861    clientes    TABLE     s   CREATE TABLE public.clientes (
    idclientes integer NOT NULL,
    persona_dni character varying(100) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    17860    clientes_idclientes_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_idclientes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_idclientes_seq;
       public          postgres    false    210            ;           0    0    clientes_idclientes_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_idclientes_seq OWNED BY public.clientes.idclientes;
          public          postgres    false    209            �            1259    17868    factura    TABLE     �   CREATE TABLE public.factura (
    idfactura integer NOT NULL,
    responsable_idresponsable integer NOT NULL,
    total_gasto double precision NOT NULL,
    nombre_otro character varying(50) NOT NULL,
    nid_otro character varying(50) NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    17874    fecha    TABLE     �   CREATE TABLE public.fecha (
    id_fecha integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    year_2 integer NOT NULL,
    semana integer NOT NULL,
    hora character varying(50) NOT NULL
);
    DROP TABLE public.fecha;
       public         heap    postgres    false            �            1259    17879    gastos    TABLE     �   CREATE TABLE public.gastos (
    idgastos integer NOT NULL,
    habitaciones_nro_habitacion integer NOT NULL,
    concepto character varying(100) NOT NULL,
    valor double precision NOT NULL
);
    DROP TABLE public.gastos;
       public         heap    postgres    false            �            1259    17885    habitaciones    TABLE     :  CREATE TABLE public.habitaciones (
    nro_habitacion integer NOT NULL,
    piso_numero_piso integer NOT NULL,
    tipo_habitacion character varying(50) NOT NULL,
    precio_habitacion double precision NOT NULL,
    temporada character varying(50) NOT NULL,
    estado_habitacion character varying(50) NOT NULL
);
     DROP TABLE public.habitaciones;
       public         heap    postgres    false            �            1259    17891    persona    TABLE     �   CREATE TABLE public.persona (
    dni character varying(100) NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    telefono character varying(20) NOT NULL
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    17896    piso    TABLE     k   CREATE TABLE public.piso (
    numero_piso integer NOT NULL,
    cantidad_habitaciones integer NOT NULL
);
    DROP TABLE public.piso;
       public         heap    postgres    false            �            1259    17901    registro    TABLE     �   CREATE TABLE public.registro (
    idregistro integer NOT NULL,
    reservas_idreservas integer NOT NULL,
    estado character varying(50)
);
    DROP TABLE public.registro;
       public         heap    postgres    false            �            1259    17907    reservas    TABLE     �   CREATE TABLE public.reservas (
    idreservas integer NOT NULL,
    fecha_id_fecha integer NOT NULL,
    habitaciones_nro_habitacion integer NOT NULL,
    clientes_idclientes integer NOT NULL,
    validez_horas integer NOT NULL
);
    DROP TABLE public.reservas;
       public         heap    postgres    false            �            1259    17915    responsable    TABLE     �   CREATE TABLE public.responsable (
    idresponsable integer NOT NULL,
    habitaciones_nro_habitacion integer NOT NULL,
    persona_dni character varying(100) NOT NULL
);
    DROP TABLE public.responsable;
       public         heap    postgres    false            �           2604    17864    clientes idclientes    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN idclientes SET DEFAULT nextval('public.clientes_idclientes_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN idclientes DROP DEFAULT;
       public          postgres    false    210    209    210            +          0    17861    clientes 
   TABLE DATA           ;   COPY public.clientes (idclientes, persona_dni) FROM stdin;
    public          postgres    false    210   X5       ,          0    17868    factura 
   TABLE DATA           k   COPY public.factura (idfactura, responsable_idresponsable, total_gasto, nombre_otro, nid_otro) FROM stdin;
    public          postgres    false    211   �5       -          0    17874    fecha 
   TABLE DATA           I   COPY public.fecha (id_fecha, dia, mes, year_2, semana, hora) FROM stdin;
    public          postgres    false    212   6       .          0    17879    gastos 
   TABLE DATA           X   COPY public.gastos (idgastos, habitaciones_nro_habitacion, concepto, valor) FROM stdin;
    public          postgres    false    213   d6       /          0    17885    habitaciones 
   TABLE DATA           �   COPY public.habitaciones (nro_habitacion, piso_numero_piso, tipo_habitacion, precio_habitacion, temporada, estado_habitacion) FROM stdin;
    public          postgres    false    214   7       0          0    17891    persona 
   TABLE DATA           B   COPY public.persona (dni, nombre, apellido, telefono) FROM stdin;
    public          postgres    false    215   �7       1          0    17896    piso 
   TABLE DATA           B   COPY public.piso (numero_piso, cantidad_habitaciones) FROM stdin;
    public          postgres    false    216   �8       2          0    17901    registro 
   TABLE DATA           K   COPY public.registro (idregistro, reservas_idreservas, estado) FROM stdin;
    public          postgres    false    217   �8       3          0    17907    reservas 
   TABLE DATA              COPY public.reservas (idreservas, fecha_id_fecha, habitaciones_nro_habitacion, clientes_idclientes, validez_horas) FROM stdin;
    public          postgres    false    218   '9       4          0    17915    responsable 
   TABLE DATA           ^   COPY public.responsable (idresponsable, habitaciones_nro_habitacion, persona_dni) FROM stdin;
    public          postgres    false    219   u9       <           0    0    clientes_idclientes_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_idclientes_seq', 1, false);
          public          postgres    false    209            �           2606    17866    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (idclientes);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    210            �           2606    17872    factura factura_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (idfactura);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    211            �           2606    17878    fecha fecha_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.fecha
    ADD CONSTRAINT fecha_pkey PRIMARY KEY (id_fecha);
 :   ALTER TABLE ONLY public.fecha DROP CONSTRAINT fecha_pkey;
       public            postgres    false    212            �           2606    17883    gastos gastos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.gastos
    ADD CONSTRAINT gastos_pkey PRIMARY KEY (idgastos);
 <   ALTER TABLE ONLY public.gastos DROP CONSTRAINT gastos_pkey;
       public            postgres    false    213            �           2606    17889    habitaciones habitaciones_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.habitaciones
    ADD CONSTRAINT habitaciones_pkey PRIMARY KEY (nro_habitacion);
 H   ALTER TABLE ONLY public.habitaciones DROP CONSTRAINT habitaciones_pkey;
       public            postgres    false    214            �           2606    17895    persona persona_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (dni);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    215            �           2606    17900    piso piso_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.piso
    ADD CONSTRAINT piso_pkey PRIMARY KEY (numero_piso);
 8   ALTER TABLE ONLY public.piso DROP CONSTRAINT piso_pkey;
       public            postgres    false    216            �           2606    17905    registro registro_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY (idregistro);
 @   ALTER TABLE ONLY public.registro DROP CONSTRAINT registro_pkey;
       public            postgres    false    217            �           2606    17911    reservas reservas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_pkey PRIMARY KEY (idreservas);
 @   ALTER TABLE ONLY public.reservas DROP CONSTRAINT reservas_pkey;
       public            postgres    false    218            �           2606    17919    responsable responsable_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT responsable_pkey PRIMARY KEY (idresponsable);
 F   ALTER TABLE ONLY public.responsable DROP CONSTRAINT responsable_pkey;
       public            postgres    false    219            �           1259    17867    clientes_fkindex1    INDEX     M   CREATE INDEX clientes_fkindex1 ON public.clientes USING btree (persona_dni);
 %   DROP INDEX public.clientes_fkindex1;
       public            postgres    false    210            �           1259    17873    factura_fkindex1    INDEX     Y   CREATE INDEX factura_fkindex1 ON public.factura USING btree (responsable_idresponsable);
 $   DROP INDEX public.factura_fkindex1;
       public            postgres    false    211            �           1259    17884    gastos_fkindex1    INDEX     Y   CREATE INDEX gastos_fkindex1 ON public.gastos USING btree (habitaciones_nro_habitacion);
 #   DROP INDEX public.gastos_fkindex1;
       public            postgres    false    213            �           1259    17890    habitaciones_fkindex1    INDEX     Z   CREATE INDEX habitaciones_fkindex1 ON public.habitaciones USING btree (piso_numero_piso);
 )   DROP INDEX public.habitaciones_fkindex1;
       public            postgres    false    214            �           1259    17906    registro_fkindex1    INDEX     U   CREATE INDEX registro_fkindex1 ON public.registro USING btree (reservas_idreservas);
 %   DROP INDEX public.registro_fkindex1;
       public            postgres    false    217            �           1259    17912    reservas_fkindex1    INDEX     U   CREATE INDEX reservas_fkindex1 ON public.reservas USING btree (clientes_idclientes);
 %   DROP INDEX public.reservas_fkindex1;
       public            postgres    false    218            �           1259    17913    reservas_fkindex2    INDEX     ]   CREATE INDEX reservas_fkindex2 ON public.reservas USING btree (habitaciones_nro_habitacion);
 %   DROP INDEX public.reservas_fkindex2;
       public            postgres    false    218            �           1259    17914    reservas_fkindex3    INDEX     P   CREATE INDEX reservas_fkindex3 ON public.reservas USING btree (fecha_id_fecha);
 %   DROP INDEX public.reservas_fkindex3;
       public            postgres    false    218            �           1259    17920    responsable_fkindex1    INDEX     S   CREATE INDEX responsable_fkindex1 ON public.responsable USING btree (persona_dni);
 (   DROP INDEX public.responsable_fkindex1;
       public            postgres    false    219            �           1259    17921    responsable_fkindex2    INDEX     c   CREATE INDEX responsable_fkindex2 ON public.responsable USING btree (habitaciones_nro_habitacion);
 (   DROP INDEX public.responsable_fkindex2;
       public            postgres    false    219            +   &   x�350�440�250�&@�HiC m����� o��      ,   i   x�̻
�0D�z�c�}�X[�J�6�Fa�6��V)�6�D���,�G?Ǻ.�d�d��R����&�I%ɠ�Q�lW[��&�dK.p������?5z3� y�      -   M   x�360�4"CN##CNCNs+c#G_.c��	\�(ah	�0�4��YV&f	Nc��	P���B�/W� �r�      .   �   x�5�I� �5���"��C�'��!n�DL�t����e���j�s��!�f�a����|-��4uR+�щ[v�i���T`<�\A���v~բ׺���-���|06Z����SA칂�t�Ae��q�Ɠ��������F�r�h�J	�̊k���{-�|�fF=      /   �   x�u�1�0�Sx���M���ڬ�����^���Ii�����A�~�e�䜥'�t���q�*eきw��3÷:ۅ/����'�O�L ��w�Y*ȵ)���+�s9�UAL�H6����c>�/:�      0   �   x���N�0Eד��}$��clo+
$$
b��j\jab�A�{�.fwt�K�]j���N�r���r)гF
�k$�mG��CGx���z������ vy7xO����J3Rh�Щ+c੶X�a��y��z�s�� ������,��)I�4	�D�Py�0��S)�[��o�#����Akr,����3�b��*�%�ť�I�@���p+��u�?[Yd���-:�hD�}�t]�SLB      1      x�3�4�2�4�2�4�2�4����� 	�      2   7   x��40�00���L*J�40��<# τ3?�� 1%�7�9s��1z\\\ ��      3   >   x��� 1Cѳ]̈�DI/鿎�#��D���Q�XjZ�%�&I~��F�H#������y�      4   0   x�ƹ  ��W�C1�_�H�e�m����7���ŏޒ��/+     