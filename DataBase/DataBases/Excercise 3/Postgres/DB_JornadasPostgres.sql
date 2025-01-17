PGDMP     5                    z            jornada    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17259    jornada    DATABASE     c   CREATE DATABASE jornada WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE jornada;
                postgres    false            �            1259    17260    articulo    TABLE     �   CREATE TABLE public.articulo (
    idarticulo integer NOT NULL,
    workshops_idworkshops integer NOT NULL,
    nombre_articulo character varying(50) NOT NULL,
    tema_articulo character varying(50) NOT NULL
);
    DROP TABLE public.articulo;
       public         heap    postgres    false            �            1259    17266    charlas    TABLE     �   CREATE TABLE public.charlas (
    charla_id integer NOT NULL,
    workshops_idworkshops integer NOT NULL,
    nombre_charla character varying(50) NOT NULL,
    tema_charla character varying(50) NOT NULL
);
    DROP TABLE public.charlas;
       public         heap    postgres    false            �            1259    17272 
   escritores    TABLE     �   CREATE TABLE public.escritores (
    idescritores integer NOT NULL,
    articulo_idarticulo integer NOT NULL,
    persona_idpersona integer NOT NULL
);
    DROP TABLE public.escritores;
       public         heap    postgres    false            �            1259    17279 	   expositor    TABLE     �   CREATE TABLE public.expositor (
    idexpositor integer NOT NULL,
    charlas_charla_id integer NOT NULL,
    persona_idpersona integer NOT NULL
);
    DROP TABLE public.expositor;
       public         heap    postgres    false            �            1259    17286    persona    TABLE     �   CREATE TABLE public.persona (
    idpersona integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    17291 	   workshops    TABLE     �   CREATE TABLE public.workshops (
    idworkshops integer NOT NULL,
    nombre_workshop character varying(50) NOT NULL,
    tema_workshop character varying(50) NOT NULL,
    descripcion_workshop character varying(50) NOT NULL
);
    DROP TABLE public.workshops;
       public         heap    postgres    false                      0    17260    articulo 
   TABLE DATA           e   COPY public.articulo (idarticulo, workshops_idworkshops, nombre_articulo, tema_articulo) FROM stdin;
    public          postgres    false    209   �                 0    17266    charlas 
   TABLE DATA           _   COPY public.charlas (charla_id, workshops_idworkshops, nombre_charla, tema_charla) FROM stdin;
    public          postgres    false    210   W                 0    17272 
   escritores 
   TABLE DATA           Z   COPY public.escritores (idescritores, articulo_idarticulo, persona_idpersona) FROM stdin;
    public          postgres    false    211                     0    17279 	   expositor 
   TABLE DATA           V   COPY public.expositor (idexpositor, charlas_charla_id, persona_idpersona) FROM stdin;
    public          postgres    false    212   H                  0    17286    persona 
   TABLE DATA           D   COPY public.persona (idpersona, nombre, apellido, edad) FROM stdin;
    public          postgres    false    213   �                  0    17291 	   workshops 
   TABLE DATA           f   COPY public.workshops (idworkshops, nombre_workshop, tema_workshop, descripcion_workshop) FROM stdin;
    public          postgres    false    214   3!       q           2606    17264    articulo articulo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pkey PRIMARY KEY (idarticulo);
 @   ALTER TABLE ONLY public.articulo DROP CONSTRAINT articulo_pkey;
       public            postgres    false    209            t           2606    17270    charlas charlas_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.charlas
    ADD CONSTRAINT charlas_pkey PRIMARY KEY (charla_id);
 >   ALTER TABLE ONLY public.charlas DROP CONSTRAINT charlas_pkey;
       public            postgres    false    210            x           2606    17276    escritores escritores_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.escritores
    ADD CONSTRAINT escritores_pkey PRIMARY KEY (idescritores);
 D   ALTER TABLE ONLY public.escritores DROP CONSTRAINT escritores_pkey;
       public            postgres    false    211            |           2606    17283    expositor expositor_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.expositor
    ADD CONSTRAINT expositor_pkey PRIMARY KEY (idexpositor);
 B   ALTER TABLE ONLY public.expositor DROP CONSTRAINT expositor_pkey;
       public            postgres    false    212            ~           2606    17290    persona persona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (idpersona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    213            �           2606    17295    workshops workshops_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.workshops
    ADD CONSTRAINT workshops_pkey PRIMARY KEY (idworkshops);
 B   ALTER TABLE ONLY public.workshops DROP CONSTRAINT workshops_pkey;
       public            postgres    false    214            o           1259    17265    articulo_fkindex1    INDEX     W   CREATE INDEX articulo_fkindex1 ON public.articulo USING btree (workshops_idworkshops);
 %   DROP INDEX public.articulo_fkindex1;
       public            postgres    false    209            r           1259    17271    charlas_fkindex1    INDEX     U   CREATE INDEX charlas_fkindex1 ON public.charlas USING btree (workshops_idworkshops);
 $   DROP INDEX public.charlas_fkindex1;
       public            postgres    false    210            u           1259    17277    escritores_fkindex1    INDEX     Y   CREATE INDEX escritores_fkindex1 ON public.escritores USING btree (articulo_idarticulo);
 '   DROP INDEX public.escritores_fkindex1;
       public            postgres    false    211            v           1259    17278    escritores_fkindex2    INDEX     W   CREATE INDEX escritores_fkindex2 ON public.escritores USING btree (persona_idpersona);
 '   DROP INDEX public.escritores_fkindex2;
       public            postgres    false    211            y           1259    17284    expositor_fkindex1    INDEX     U   CREATE INDEX expositor_fkindex1 ON public.expositor USING btree (persona_idpersona);
 &   DROP INDEX public.expositor_fkindex1;
       public            postgres    false    212            z           1259    17285    expositor_fkindex2    INDEX     U   CREATE INDEX expositor_fkindex2 ON public.expositor USING btree (charlas_charla_id);
 &   DROP INDEX public.expositor_fkindex2;
       public            postgres    false    212               �   x�5�=n1�k�s�B��h�D���;�,�mb/Hp�-SPq_,��������֬��ٻ���
9��8qy�s!p�tBIۧ�bv�Ў}I���^�֪�V�BW
-�D��]"��B�z����ҟ@����+�	.L\�:7J@!���C�">4��W�am��O�1���}�_8��19�Z������Y~         �   x����0@�s2�'�ڦ �����X`��U�t1F`1R�����э����Ϫ�[�)¢�d�+� �.L�;Q"L ��j�}h��VX� ���Pj�Y�܅6ͅ���-sV=�g�v��aaZ7����'w����PzV|*+'�l���{��4An         0   x���  �7�)����a��rM�8�,4�-[��m�]����w3         0   x���  ���+�a��W�Z�XAAl��ח�~��?x���;         �   x���
�0���c�i҇K�A�n�54M����{��3Ì,4�f3�CL�H�JȢ�v�26��ݲH�B�ֆȽL�������<O=�M��'ސ��ȥ����5:K��;�=�(��������5�r����<.��aDU��B���3�         B  x�u��N1�ϙ��T���Rn� ��%���i�]�<=�@Hp�����ѱ[ ʧ��aM�A܂kO�0C�Z�M y��*�k.A�D�2�fG3�ʺD��K��A��wF��j��	�l�H6Q1�U�#��=�@!���G�n���3m}6�-&(��\ +7���h6��[�7O�R _ܽ���7* �k
����P����z��M�\��0���8û6�	4N���܏u4m��\��Pϻ�5�p�`u�C�?�	F�3w�#�7�؄zM��A���s���d�^��8���}���OڿutoӮ� ����     