PGDMP         +                z         	   reuniones    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17333 	   reuniones    DATABASE     e   CREATE DATABASE reuniones WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE reuniones;
                postgres    false            �            1259    17334 	   invitados    TABLE       CREATE TABLE public.invitados (
    id_persona integer NOT NULL,
    reuniones_id_reunion integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    edad integer NOT NULL,
    cargo character varying(50) NOT NULL
);
    DROP TABLE public.invitados;
       public         heap    postgres    false            �            1259    17340    lugar    TABLE     n   CREATE TABLE public.lugar (
    id_lugar integer NOT NULL,
    nombre_lugar character varying(50) NOT NULL
);
    DROP TABLE public.lugar;
       public         heap    postgres    false            �            1259    17345    recursos    TABLE     �   CREATE TABLE public.recursos (
    id_recurso integer NOT NULL,
    lugar_id_lugar integer NOT NULL,
    nombre_recurso character varying(50) NOT NULL,
    tipo_recurso character varying(50) NOT NULL
);
    DROP TABLE public.recursos;
       public         heap    postgres    false            �            1259    17351 	   reuniones    TABLE     �   CREATE TABLE public.reuniones (
    id_reunion integer NOT NULL,
    lugar_id_lugar integer NOT NULL,
    tema_reunion character varying(50) NOT NULL,
    numero_invitados integer NOT NULL
);
    DROP TABLE public.reuniones;
       public         heap    postgres    false            �          0    17334 	   invitados 
   TABLE DATA           d   COPY public.invitados (id_persona, reuniones_id_reunion, nombre, apellido, edad, cargo) FROM stdin;
    public          postgres    false    209   =       �          0    17340    lugar 
   TABLE DATA           7   COPY public.lugar (id_lugar, nombre_lugar) FROM stdin;
    public          postgres    false    210   �       �          0    17345    recursos 
   TABLE DATA           \   COPY public.recursos (id_recurso, lugar_id_lugar, nombre_recurso, tipo_recurso) FROM stdin;
    public          postgres    false    211   ;                  0    17351 	   reuniones 
   TABLE DATA           _   COPY public.reuniones (id_reunion, lugar_id_lugar, tema_reunion, numero_invitados) FROM stdin;
    public          postgres    false    212   �       i           2606    17338    invitados invitados_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.invitados
    ADD CONSTRAINT invitados_pkey PRIMARY KEY (id_persona);
 B   ALTER TABLE ONLY public.invitados DROP CONSTRAINT invitados_pkey;
       public            postgres    false    209            k           2606    17344    lugar lugar_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.lugar
    ADD CONSTRAINT lugar_pkey PRIMARY KEY (id_lugar);
 :   ALTER TABLE ONLY public.lugar DROP CONSTRAINT lugar_pkey;
       public            postgres    false    210            n           2606    17349    recursos recursos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.recursos
    ADD CONSTRAINT recursos_pkey PRIMARY KEY (id_recurso);
 @   ALTER TABLE ONLY public.recursos DROP CONSTRAINT recursos_pkey;
       public            postgres    false    211            q           2606    17355    reuniones reuniones_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.reuniones
    ADD CONSTRAINT reuniones_pkey PRIMARY KEY (id_reunion);
 B   ALTER TABLE ONLY public.reuniones DROP CONSTRAINT reuniones_pkey;
       public            postgres    false    212            g           1259    17339    invitados_fkindex1    INDEX     X   CREATE INDEX invitados_fkindex1 ON public.invitados USING btree (reuniones_id_reunion);
 &   DROP INDEX public.invitados_fkindex1;
       public            postgres    false    209            l           1259    17350    recursos_fkindex1    INDEX     P   CREATE INDEX recursos_fkindex1 ON public.recursos USING btree (lugar_id_lugar);
 %   DROP INDEX public.recursos_fkindex1;
       public            postgres    false    211            o           1259    17356    reuniones_fkindex1    INDEX     R   CREATE INDEX reuniones_fkindex1 ON public.reuniones USING btree (lugar_id_lugar);
 &   DROP INDEX public.reuniones_fkindex1;
       public            postgres    false    212            �      x�̱� F���)|C��&&5��B�-����t��K�ϗC�`t�>o���s�0�'^iۢ��x��8%�3�k�rx�2�e�;����)��x%Jh�k�M�7n)�oŉp�����uTJ� o�&�      �   _   x�340���/.�,I�QN�+ITI-J-��r��)�əy�
�y%��E�9@i#��sbQJf�BXbqriNbP�!����txm>W� ��%�      �   �   x����1Dc�
��}\ 	!	1�j탕�g�k���W��@6��7���Fu�XX��G	�DQ���0���e�<�Dۮo�A���R4�2̪9�۴s����08�s��ޫd�bS Q��+�4������fz�c ��F쟏oG��0`P�          b   x�320�440�t�/�L�5��44�220�r��s���@�	gpbNi�Bnj^Ib��P�(n��\������������_�Xuxs��W� !��     