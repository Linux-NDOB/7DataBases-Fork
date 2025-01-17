PGDMP     %    $                z            Arcoh    14.2    14.2 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    17006    Arcoh    DATABASE     c   CREATE DATABASE "Arcoh" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Arcoh";
                postgres    false            �            1259    17007    activity    TABLE     u   CREATE TABLE public.activity (
    activity_id integer NOT NULL,
    activity_name character varying(50) NOT NULL
);
    DROP TABLE public.activity;
       public         heap    postgres    false            �            1259    17012    family    TABLE     �   CREATE TABLE public.family (
    family_id integer NOT NULL,
    family_members integer NOT NULL,
    family_age integer NOT NULL
);
    DROP TABLE public.family;
       public         heap    postgres    false            �            1259    17017    family_has_material_goods    TABLE     �   CREATE TABLE public.family_has_material_goods (
    family_id integer NOT NULL,
    material_goods_material_id integer NOT NULL
);
 -   DROP TABLE public.family_has_material_goods;
       public         heap    postgres    false            �            1259    17029    material_goods    TABLE     u   CREATE TABLE public.material_goods (
    material_id integer NOT NULL,
    materials_material_id integer NOT NULL
);
 "   DROP TABLE public.material_goods;
       public         heap    postgres    false            �            1259    17024 	   materials    TABLE     �   CREATE TABLE public.materials (
    material_id integer NOT NULL,
    material_name character varying(50) NOT NULL,
    material_type character varying(50) NOT NULL
);
    DROP TABLE public.materials;
       public         heap    postgres    false            �            1259    17036    member    TABLE     #  CREATE TABLE public.member (
    member_id integer NOT NULL,
    activity_id integer NOT NULL,
    family_id integer NOT NULL,
    name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    age integer NOT NULL,
    civil_status character varying(50) NOT NULL
);
    DROP TABLE public.member;
       public         heap    postgres    false            �            1259    17035    member_member_id_seq    SEQUENCE     �   CREATE SEQUENCE public.member_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.member_member_id_seq;
       public          postgres    false    215            #           0    0    member_member_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.member_member_id_seq OWNED BY public.member.member_id;
          public          postgres    false    214            �            1259    17044    tools    TABLE     �   CREATE TABLE public.tools (
    tool_id integer NOT NULL,
    activity_id integer NOT NULL,
    materials_material_id integer NOT NULL
);
    DROP TABLE public.tools;
       public         heap    postgres    false            t           2604    17039    member member_id    DEFAULT     t   ALTER TABLE ONLY public.member ALTER COLUMN member_id SET DEFAULT nextval('public.member_member_id_seq'::regclass);
 ?   ALTER TABLE public.member ALTER COLUMN member_id DROP DEFAULT;
       public          postgres    false    215    214    215                      0    17007    activity 
   TABLE DATA           >   COPY public.activity (activity_id, activity_name) FROM stdin;
    public          postgres    false    209   @'                 0    17012    family 
   TABLE DATA           G   COPY public.family (family_id, family_members, family_age) FROM stdin;
    public          postgres    false    210   �'                 0    17017    family_has_material_goods 
   TABLE DATA           Z   COPY public.family_has_material_goods (family_id, material_goods_material_id) FROM stdin;
    public          postgres    false    211   �'                 0    17029    material_goods 
   TABLE DATA           L   COPY public.material_goods (material_id, materials_material_id) FROM stdin;
    public          postgres    false    213   �'                 0    17024 	   materials 
   TABLE DATA           N   COPY public.materials (material_id, material_name, material_type) FROM stdin;
    public          postgres    false    212   +(                 0    17036    member 
   TABLE DATA           g   COPY public.member (member_id, activity_id, family_id, name, last_name, age, civil_status) FROM stdin;
    public          postgres    false    215   ~(                 0    17044    tools 
   TABLE DATA           L   COPY public.tools (tool_id, activity_id, materials_material_id) FROM stdin;
    public          postgres    false    216   )       $           0    0    member_member_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.member_member_id_seq', 1, false);
          public          postgres    false    214            v           2606    17011    activity activity_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_pkey PRIMARY KEY (activity_id);
 @   ALTER TABLE ONLY public.activity DROP CONSTRAINT activity_pkey;
       public            postgres    false    209            |           2606    17021 8   family_has_material_goods family_has_material_goods_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.family_has_material_goods
    ADD CONSTRAINT family_has_material_goods_pkey PRIMARY KEY (family_id, material_goods_material_id);
 b   ALTER TABLE ONLY public.family_has_material_goods DROP CONSTRAINT family_has_material_goods_pkey;
       public            postgres    false    211    211            x           2606    17016    family family_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_pkey PRIMARY KEY (family_id);
 <   ALTER TABLE ONLY public.family DROP CONSTRAINT family_pkey;
       public            postgres    false    210            �           2606    17033 "   material_goods material_goods_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.material_goods
    ADD CONSTRAINT material_goods_pkey PRIMARY KEY (material_id);
 L   ALTER TABLE ONLY public.material_goods DROP CONSTRAINT material_goods_pkey;
       public            postgres    false    213            ~           2606    17028    materials materials_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (material_id);
 B   ALTER TABLE ONLY public.materials DROP CONSTRAINT materials_pkey;
       public            postgres    false    212            �           2606    17041    member member_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (member_id);
 <   ALTER TABLE ONLY public.member DROP CONSTRAINT member_pkey;
       public            postgres    false    215            �           2606    17048    tools tools_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.tools
    ADD CONSTRAINT tools_pkey PRIMARY KEY (tool_id);
 :   ALTER TABLE ONLY public.tools DROP CONSTRAINT tools_pkey;
       public            postgres    false    216            y           1259    17022 "   family_has_material_goods_fkindex1    INDEX     m   CREATE INDEX family_has_material_goods_fkindex1 ON public.family_has_material_goods USING btree (family_id);
 6   DROP INDEX public.family_has_material_goods_fkindex1;
       public            postgres    false    211            z           1259    17023 "   family_has_material_goods_fkindex2    INDEX     ~   CREATE INDEX family_has_material_goods_fkindex2 ON public.family_has_material_goods USING btree (material_goods_material_id);
 6   DROP INDEX public.family_has_material_goods_fkindex2;
       public            postgres    false    211                       1259    17034    material_goods_fkindex1    INDEX     c   CREATE INDEX material_goods_fkindex1 ON public.material_goods USING btree (materials_material_id);
 +   DROP INDEX public.material_goods_fkindex1;
       public            postgres    false    213            �           1259    17042    member_fkindex1    INDEX     G   CREATE INDEX member_fkindex1 ON public.member USING btree (family_id);
 #   DROP INDEX public.member_fkindex1;
       public            postgres    false    215            �           1259    17043    member_fkindex2    INDEX     I   CREATE INDEX member_fkindex2 ON public.member USING btree (activity_id);
 #   DROP INDEX public.member_fkindex2;
       public            postgres    false    215            �           1259    17049    tools_fkindex1    INDEX     Q   CREATE INDEX tools_fkindex1 ON public.tools USING btree (materials_material_id);
 "   DROP INDEX public.tools_fkindex1;
       public            postgres    false    216            �           1259    17050    tools_fkindex2    INDEX     G   CREATE INDEX tools_fkindex2 ON public.tools USING btree (activity_id);
 "   DROP INDEX public.tools_fkindex2;
       public            postgres    false    216               3   x�320��(�+�220�t.�)�,K,I�8]SJ�!lCN����=... O��         -   x�340�4�44�240�4�47 28�8M��1���	W� x�         %   x�340�410�240 ҆@�7�&@ژ+F��� n��         &   x�310�460�210�F@�HiC m����� o��         C   x�360�t�H�,�/��260�t���.�,.)M��9�2�32����S8SK�bƜ�U�1z\\\ zv         �   x��;�0�z|
N��S���4F^`%g-�B��g�if�4���g-����Z4�Cgy2�.�:7a\>�o�6D�-�ƔUUAU��p�	��l�%ם�"��FE��DKI2���+\�<�Ƙ?c(�         .   x���	 0�w=Lq�@���s����Һx����͇�G�J��#     