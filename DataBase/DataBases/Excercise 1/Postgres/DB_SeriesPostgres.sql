PGDMP         3                z            Series    14.2    14.2 a    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16726    Series    DATABASE     d   CREATE DATABASE "Series" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Series";
                postgres    false            �            1259    16740    actor_awards    TABLE     {   CREATE TABLE public.actor_awards (
    cateogrywon character varying(50) NOT NULL,
    actors_actor_id integer NOT NULL
);
     DROP TABLE public.actor_awards;
       public         heap    postgres    false            �            1259    16746    actor_nominations    TABLE     b   CREATE TABLE public.actor_nominations (
    categoriesnominated character varying(50) NOT NULL
);
 %   DROP TABLE public.actor_nominations;
       public         heap    postgres    false            �            1259    16727    actors    TABLE     d   CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    person_idperson integer NOT NULL
);
    DROP TABLE public.actors;
       public         heap    postgres    false            �            1259    16733    actors_has_actor_nominations    TABLE     �   CREATE TABLE public.actors_has_actor_nominations (
    actors_actor_id integer NOT NULL,
    actor_nominations_categoriesnominated character varying(50) NOT NULL
);
 0   DROP TABLE public.actors_has_actor_nominations;
       public         heap    postgres    false            �            1259    16751    awards    TABLE     �   CREATE TABLE public.awards (
    award_name character varying(50) NOT NULL,
    series_serie_id integer NOT NULL,
    academy_name character varying(50) NOT NULL
);
    DROP TABLE public.awards;
       public         heap    postgres    false            �            1259    16757 
   categories    TABLE     X   CREATE TABLE public.categories (
    categories_name character varying(100) NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16762 
   characters    TABLE     �   CREATE TABLE public.characters (
    character_id integer NOT NULL,
    actors_actor_id integer NOT NULL,
    character_name character varying(50) NOT NULL,
    character_lastname character varying(50)
);
    DROP TABLE public.characters;
       public         heap    postgres    false            �            1259    16768 	   directors    TABLE     j   CREATE TABLE public.directors (
    director_id integer NOT NULL,
    person_idperson integer NOT NULL
);
    DROP TABLE public.directors;
       public         heap    postgres    false            �            1259    16780    episode_filiming_locations    TABLE     �   CREATE TABLE public.episode_filiming_locations (
    localid integer NOT NULL,
    episodes_episode_number character varying(50) NOT NULL,
    country character varying(50) NOT NULL,
    city character varying(50) NOT NULL
);
 .   DROP TABLE public.episode_filiming_locations;
       public         heap    postgres    false            �            1259    16786    episode_rating    TABLE       CREATE TABLE public.episode_rating (
    episode_rating_id integer NOT NULL,
    episodes_episode_number character varying(50) NOT NULL,
    users_user_name character varying(50) NOT NULL,
    episode_rating_text character varying(50) NOT NULL,
    espisode_stars integer NOT NULL
);
 "   DROP TABLE public.episode_rating;
       public         heap    postgres    false            �            1259    16793    episode_release_date    TABLE     �   CREATE TABLE public.episode_release_date (
    episodes_episode_number character varying(50) NOT NULL,
    release_day integer NOT NULL,
    release_month integer NOT NULL,
    release_year integer NOT NULL
);
 (   DROP TABLE public.episode_release_date;
       public         heap    postgres    false            �            1259    16799    episode_tech_specs    TABLE     '  CREATE TABLE public.episode_tech_specs (
    episodes_episode_number character varying(50) NOT NULL,
    episode_minutes integer NOT NULL,
    episode_sound_mix character varying(50) NOT NULL,
    episode_format character varying(50) NOT NULL,
    aspect_ratio character varying(50) NOT NULL
);
 &   DROP TABLE public.episode_tech_specs;
       public         heap    postgres    false            �            1259    16774    episodes    TABLE     �   CREATE TABLE public.episodes (
    episode_number character varying(50) NOT NULL,
    season_number integer NOT NULL,
    episode_name character varying(50) NOT NULL,
    espisode_minutes integer NOT NULL
);
    DROP TABLE public.episodes;
       public         heap    postgres    false            �            1259    16805    nominations    TABLE     �   CREATE TABLE public.nominations (
    nomination_name character varying(50) NOT NULL,
    nomination_academy character varying(50) NOT NULL
);
    DROP TABLE public.nominations;
       public         heap    postgres    false            �            1259    16810    person    TABLE     �   CREATE TABLE public.person (
    idperson integer NOT NULL,
    episodes_episode_number character varying(50) NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16816 	   producers    TABLE     j   CREATE TABLE public.producers (
    producer_id integer NOT NULL,
    person_idperson integer NOT NULL
);
    DROP TABLE public.producers;
       public         heap    postgres    false            �            1259    16822    season    TABLE     �   CREATE TABLE public.season (
    season_number integer NOT NULL,
    series_serie_id integer NOT NULL,
    season_chapters integer NOT NULL
);
    DROP TABLE public.season;
       public         heap    postgres    false            �            1259    16828    series    TABLE     �   CREATE TABLE public.series (
    serie_id integer NOT NULL,
    name character varying(100) NOT NULL,
    country character varying(50) NOT NULL,
    company character varying(50) NOT NULL
);
    DROP TABLE public.series;
       public         heap    postgres    false            �            1259    16833    series_has_categories    TABLE     �   CREATE TABLE public.series_has_categories (
    series_serie_id integer NOT NULL,
    categories_name character varying(100) NOT NULL
);
 )   DROP TABLE public.series_has_categories;
       public         heap    postgres    false            �            1259    16840    series_has_nominations    TABLE     �   CREATE TABLE public.series_has_nominations (
    series_serie_id integer NOT NULL,
    nominations_nomination_name character varying(50) NOT NULL
);
 *   DROP TABLE public.series_has_nominations;
       public         heap    postgres    false            �            1259    16847    series_has_users    TABLE     �   CREATE TABLE public.series_has_users (
    series_serie_id integer NOT NULL,
    users_user_name character varying(50) NOT NULL
);
 $   DROP TABLE public.series_has_users;
       public         heap    postgres    false            �            1259    16854    users    TABLE     �   CREATE TABLE public.users (
    user_name character varying(50) NOT NULL,
    person_idperson integer NOT NULL,
    user_email character varying(50) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16860    writters    TABLE     h   CREATE TABLE public.writters (
    writter_id integer NOT NULL,
    person_idperson integer NOT NULL
);
    DROP TABLE public.writters;
       public         heap    postgres    false            �          0    16740    actor_awards 
   TABLE DATA           D   COPY public.actor_awards (cateogrywon, actors_actor_id) FROM stdin;
    public          postgres    false    211   �p       �          0    16746    actor_nominations 
   TABLE DATA           @   COPY public.actor_nominations (categoriesnominated) FROM stdin;
    public          postgres    false    212   =q       �          0    16727    actors 
   TABLE DATA           ;   COPY public.actors (actor_id, person_idperson) FROM stdin;
    public          postgres    false    209   �q       �          0    16733    actors_has_actor_nominations 
   TABLE DATA           n   COPY public.actors_has_actor_nominations (actors_actor_id, actor_nominations_categoriesnominated) FROM stdin;
    public          postgres    false    210   �q       �          0    16751    awards 
   TABLE DATA           K   COPY public.awards (award_name, series_serie_id, academy_name) FROM stdin;
    public          postgres    false    213   
r       �          0    16757 
   categories 
   TABLE DATA           5   COPY public.categories (categories_name) FROM stdin;
    public          postgres    false    214   �r       �          0    16762 
   characters 
   TABLE DATA           g   COPY public.characters (character_id, actors_actor_id, character_name, character_lastname) FROM stdin;
    public          postgres    false    215   �r       �          0    16768 	   directors 
   TABLE DATA           A   COPY public.directors (director_id, person_idperson) FROM stdin;
    public          postgres    false    216   Ss       �          0    16780    episode_filiming_locations 
   TABLE DATA           e   COPY public.episode_filiming_locations (localid, episodes_episode_number, country, city) FROM stdin;
    public          postgres    false    218   �s       �          0    16786    episode_rating 
   TABLE DATA           �   COPY public.episode_rating (episode_rating_id, episodes_episode_number, users_user_name, episode_rating_text, espisode_stars) FROM stdin;
    public          postgres    false    219   �s       �          0    16793    episode_release_date 
   TABLE DATA           q   COPY public.episode_release_date (episodes_episode_number, release_day, release_month, release_year) FROM stdin;
    public          postgres    false    220   �t       �          0    16799    episode_tech_specs 
   TABLE DATA           �   COPY public.episode_tech_specs (episodes_episode_number, episode_minutes, episode_sound_mix, episode_format, aspect_ratio) FROM stdin;
    public          postgres    false    221   �t       �          0    16774    episodes 
   TABLE DATA           a   COPY public.episodes (episode_number, season_number, episode_name, espisode_minutes) FROM stdin;
    public          postgres    false    217   xu       �          0    16805    nominations 
   TABLE DATA           J   COPY public.nominations (nomination_name, nomination_academy) FROM stdin;
    public          postgres    false    222   �u       �          0    16810    person 
   TABLE DATA           X   COPY public.person (idperson, episodes_episode_number, firstname, lastname) FROM stdin;
    public          postgres    false    223   tv       �          0    16816 	   producers 
   TABLE DATA           A   COPY public.producers (producer_id, person_idperson) FROM stdin;
    public          postgres    false    224   �w       �          0    16822    season 
   TABLE DATA           Q   COPY public.season (season_number, series_serie_id, season_chapters) FROM stdin;
    public          postgres    false    225   �w       �          0    16828    series 
   TABLE DATA           B   COPY public.series (serie_id, name, country, company) FROM stdin;
    public          postgres    false    226   ?x       �          0    16833    series_has_categories 
   TABLE DATA           Q   COPY public.series_has_categories (series_serie_id, categories_name) FROM stdin;
    public          postgres    false    227   �x       �          0    16840    series_has_nominations 
   TABLE DATA           ^   COPY public.series_has_nominations (series_serie_id, nominations_nomination_name) FROM stdin;
    public          postgres    false    228   )y       �          0    16847    series_has_users 
   TABLE DATA           L   COPY public.series_has_users (series_serie_id, users_user_name) FROM stdin;
    public          postgres    false    229   �y       �          0    16854    users 
   TABLE DATA           G   COPY public.users (user_name, person_idperson, user_email) FROM stdin;
    public          postgres    false    230   �y       �          0    16860    writters 
   TABLE DATA           ?   COPY public.writters (writter_id, person_idperson) FROM stdin;
    public          postgres    false    231   oz       �           2606    16744    actor_awards actor_awards_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.actor_awards
    ADD CONSTRAINT actor_awards_pkey PRIMARY KEY (cateogrywon);
 H   ALTER TABLE ONLY public.actor_awards DROP CONSTRAINT actor_awards_pkey;
       public            postgres    false    211            �           2606    16750 (   actor_nominations actor_nominations_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.actor_nominations
    ADD CONSTRAINT actor_nominations_pkey PRIMARY KEY (categoriesnominated);
 R   ALTER TABLE ONLY public.actor_nominations DROP CONSTRAINT actor_nominations_pkey;
       public            postgres    false    212            �           2606    16737 >   actors_has_actor_nominations actors_has_actor_nominations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actors_has_actor_nominations
    ADD CONSTRAINT actors_has_actor_nominations_pkey PRIMARY KEY (actors_actor_id, actor_nominations_categoriesnominated);
 h   ALTER TABLE ONLY public.actors_has_actor_nominations DROP CONSTRAINT actors_has_actor_nominations_pkey;
       public            postgres    false    210    210            �           2606    16731    actors actors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            postgres    false    209            �           2606    16755    awards awards_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.awards
    ADD CONSTRAINT awards_pkey PRIMARY KEY (award_name);
 <   ALTER TABLE ONLY public.awards DROP CONSTRAINT awards_pkey;
       public            postgres    false    213            �           2606    16761    categories categories_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categories_name);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    214            �           2606    16766    characters characters_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (character_id);
 D   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_pkey;
       public            postgres    false    215            �           2606    16772    directors directors_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (director_id);
 B   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_pkey;
       public            postgres    false    216            �           2606    16784 :   episode_filiming_locations episode_filiming_locations_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.episode_filiming_locations
    ADD CONSTRAINT episode_filiming_locations_pkey PRIMARY KEY (localid);
 d   ALTER TABLE ONLY public.episode_filiming_locations DROP CONSTRAINT episode_filiming_locations_pkey;
       public            postgres    false    218            �           2606    16790 "   episode_rating episode_rating_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.episode_rating
    ADD CONSTRAINT episode_rating_pkey PRIMARY KEY (episode_rating_id);
 L   ALTER TABLE ONLY public.episode_rating DROP CONSTRAINT episode_rating_pkey;
       public            postgres    false    219            �           2606    16797 .   episode_release_date episode_release_date_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.episode_release_date
    ADD CONSTRAINT episode_release_date_pkey PRIMARY KEY (episodes_episode_number);
 X   ALTER TABLE ONLY public.episode_release_date DROP CONSTRAINT episode_release_date_pkey;
       public            postgres    false    220            �           2606    16803 *   episode_tech_specs episode_tech_specs_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.episode_tech_specs
    ADD CONSTRAINT episode_tech_specs_pkey PRIMARY KEY (episodes_episode_number);
 T   ALTER TABLE ONLY public.episode_tech_specs DROP CONSTRAINT episode_tech_specs_pkey;
       public            postgres    false    221            �           2606    16778    episodes episodes_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.episodes
    ADD CONSTRAINT episodes_pkey PRIMARY KEY (episode_number);
 @   ALTER TABLE ONLY public.episodes DROP CONSTRAINT episodes_pkey;
       public            postgres    false    217            �           2606    16809    nominations nominations_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.nominations
    ADD CONSTRAINT nominations_pkey PRIMARY KEY (nomination_name);
 F   ALTER TABLE ONLY public.nominations DROP CONSTRAINT nominations_pkey;
       public            postgres    false    222            �           2606    16814    person person_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (idperson);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    223            �           2606    16820    producers producers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.producers
    ADD CONSTRAINT producers_pkey PRIMARY KEY (producer_id);
 B   ALTER TABLE ONLY public.producers DROP CONSTRAINT producers_pkey;
       public            postgres    false    224            �           2606    16826    season season_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_pkey PRIMARY KEY (season_number);
 <   ALTER TABLE ONLY public.season DROP CONSTRAINT season_pkey;
       public            postgres    false    225            �           2606    16837 0   series_has_categories series_has_categories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.series_has_categories
    ADD CONSTRAINT series_has_categories_pkey PRIMARY KEY (series_serie_id, categories_name);
 Z   ALTER TABLE ONLY public.series_has_categories DROP CONSTRAINT series_has_categories_pkey;
       public            postgres    false    227    227            �           2606    16844 2   series_has_nominations series_has_nominations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.series_has_nominations
    ADD CONSTRAINT series_has_nominations_pkey PRIMARY KEY (series_serie_id, nominations_nomination_name);
 \   ALTER TABLE ONLY public.series_has_nominations DROP CONSTRAINT series_has_nominations_pkey;
       public            postgres    false    228    228            �           2606    16851 &   series_has_users series_has_users_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.series_has_users
    ADD CONSTRAINT series_has_users_pkey PRIMARY KEY (series_serie_id, users_user_name);
 P   ALTER TABLE ONLY public.series_has_users DROP CONSTRAINT series_has_users_pkey;
       public            postgres    false    229    229            �           2606    16832    series series_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_pkey PRIMARY KEY (serie_id);
 <   ALTER TABLE ONLY public.series DROP CONSTRAINT series_pkey;
       public            postgres    false    226            �           2606    16858    users users_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_name);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    230            �           2606    16864    writters writters_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.writters
    ADD CONSTRAINT writters_pkey PRIMARY KEY (writter_id);
 @   ALTER TABLE ONLY public.writters DROP CONSTRAINT writters_pkey;
       public            postgres    false    231            �           1259    16745    actor_awards_fkindex1    INDEX     Y   CREATE INDEX actor_awards_fkindex1 ON public.actor_awards USING btree (actors_actor_id);
 )   DROP INDEX public.actor_awards_fkindex1;
       public            postgres    false    211            �           1259    16732    actors_fkindex1    INDEX     M   CREATE INDEX actors_fkindex1 ON public.actors USING btree (person_idperson);
 #   DROP INDEX public.actors_fkindex1;
       public            postgres    false    209            �           1259    16738 %   actors_has_actor_nominations_fkindex1    INDEX     y   CREATE INDEX actors_has_actor_nominations_fkindex1 ON public.actors_has_actor_nominations USING btree (actors_actor_id);
 9   DROP INDEX public.actors_has_actor_nominations_fkindex1;
       public            postgres    false    210            �           1259    16739 %   actors_has_actor_nominations_fkindex2    INDEX     �   CREATE INDEX actors_has_actor_nominations_fkindex2 ON public.actors_has_actor_nominations USING btree (actor_nominations_categoriesnominated);
 9   DROP INDEX public.actors_has_actor_nominations_fkindex2;
       public            postgres    false    210            �           1259    16756    awards_fkindex1    INDEX     M   CREATE INDEX awards_fkindex1 ON public.awards USING btree (series_serie_id);
 #   DROP INDEX public.awards_fkindex1;
       public            postgres    false    213            �           1259    16767    characters_fkindex1    INDEX     U   CREATE INDEX characters_fkindex1 ON public.characters USING btree (actors_actor_id);
 '   DROP INDEX public.characters_fkindex1;
       public            postgres    false    215            �           1259    16773    directors_fkindex1    INDEX     S   CREATE INDEX directors_fkindex1 ON public.directors USING btree (person_idperson);
 &   DROP INDEX public.directors_fkindex1;
       public            postgres    false    216            �           1259    16785 #   episode_filiming_locations_fkindex1    INDEX     }   CREATE INDEX episode_filiming_locations_fkindex1 ON public.episode_filiming_locations USING btree (episodes_episode_number);
 7   DROP INDEX public.episode_filiming_locations_fkindex1;
       public            postgres    false    218            �           1259    16791    episode_rating_fkindex1    INDEX     ]   CREATE INDEX episode_rating_fkindex1 ON public.episode_rating USING btree (users_user_name);
 +   DROP INDEX public.episode_rating_fkindex1;
       public            postgres    false    219            �           1259    16792    episode_rating_fkindex2    INDEX     e   CREATE INDEX episode_rating_fkindex2 ON public.episode_rating USING btree (episodes_episode_number);
 +   DROP INDEX public.episode_rating_fkindex2;
       public            postgres    false    219            �           1259    16798    episode_release_date_fkindex1    INDEX     q   CREATE INDEX episode_release_date_fkindex1 ON public.episode_release_date USING btree (episodes_episode_number);
 1   DROP INDEX public.episode_release_date_fkindex1;
       public            postgres    false    220            �           1259    16804    episode_tech_specs_fkindex1    INDEX     m   CREATE INDEX episode_tech_specs_fkindex1 ON public.episode_tech_specs USING btree (episodes_episode_number);
 /   DROP INDEX public.episode_tech_specs_fkindex1;
       public            postgres    false    221            �           1259    16779    episodes_fkindex1    INDEX     O   CREATE INDEX episodes_fkindex1 ON public.episodes USING btree (season_number);
 %   DROP INDEX public.episodes_fkindex1;
       public            postgres    false    217            �           1259    16815    person_fkindex1    INDEX     U   CREATE INDEX person_fkindex1 ON public.person USING btree (episodes_episode_number);
 #   DROP INDEX public.person_fkindex1;
       public            postgres    false    223            �           1259    16821    producers_fkindex1    INDEX     S   CREATE INDEX producers_fkindex1 ON public.producers USING btree (person_idperson);
 &   DROP INDEX public.producers_fkindex1;
       public            postgres    false    224            �           1259    16827    season_fkindex1    INDEX     M   CREATE INDEX season_fkindex1 ON public.season USING btree (series_serie_id);
 #   DROP INDEX public.season_fkindex1;
       public            postgres    false    225            �           1259    16838    series_has_categories_fkindex1    INDEX     k   CREATE INDEX series_has_categories_fkindex1 ON public.series_has_categories USING btree (series_serie_id);
 2   DROP INDEX public.series_has_categories_fkindex1;
       public            postgres    false    227            �           1259    16839    series_has_categories_fkindex2    INDEX     k   CREATE INDEX series_has_categories_fkindex2 ON public.series_has_categories USING btree (categories_name);
 2   DROP INDEX public.series_has_categories_fkindex2;
       public            postgres    false    227            �           1259    16845    series_has_nominations_fkindex1    INDEX     m   CREATE INDEX series_has_nominations_fkindex1 ON public.series_has_nominations USING btree (series_serie_id);
 3   DROP INDEX public.series_has_nominations_fkindex1;
       public            postgres    false    228            �           1259    16846    series_has_nominations_fkindex2    INDEX     y   CREATE INDEX series_has_nominations_fkindex2 ON public.series_has_nominations USING btree (nominations_nomination_name);
 3   DROP INDEX public.series_has_nominations_fkindex2;
       public            postgres    false    228            �           1259    16852    series_has_users_fkindex1    INDEX     a   CREATE INDEX series_has_users_fkindex1 ON public.series_has_users USING btree (series_serie_id);
 -   DROP INDEX public.series_has_users_fkindex1;
       public            postgres    false    229            �           1259    16853    series_has_users_fkindex2    INDEX     a   CREATE INDEX series_has_users_fkindex2 ON public.series_has_users USING btree (users_user_name);
 -   DROP INDEX public.series_has_users_fkindex2;
       public            postgres    false    229            �           1259    16859    users_fkindex1    INDEX     K   CREATE INDEX users_fkindex1 ON public.users USING btree (person_idperson);
 "   DROP INDEX public.users_fkindex1;
       public            postgres    false    230            �           1259    16865    writters_fkindex1    INDEX     Q   CREATE INDEX writters_fkindex1 ON public.writters USING btree (person_idperson);
 %   DROP INDEX public.writters_fkindex1;
       public            postgres    false    231            �   B   x�sJ-.QpL.�/�44��rq�K�R��9M�!���E%�y� �9c#lr c͸b���� L��      �   3   x�sJ-.QpL.�/�r1�K�R��!��҂����̼t�\�@�1z\\\ �}�      �   )   x�34��0�245�46�246�46�244�4����� Y9�      �   A   x�34��tJ-.QpL.�/�245�p�K�R����� ���E%�y� �9C3lr@cb���� ��      �   �   x�5�;1E�:YE@��� P����1��Xc�d
v�`4�;�&j=42��6.�ޞ�0�`d��7���u�Z�PEX��p�F�o��۹�X�UH�K'�Γ��˅�ti�]��h�ŋ�q�����/ln8      �   >   x�s��MM����/*�/�rL.��ϫq)J�M�r.��M����)e�y%�E�5�`}\1z\\\ z��      �   U   x��;
�0���a$-��֩m֐"�l V��L9�X,�Uva%kF�	1盱I���g�g��ʋ�Ej��:D֔qT�]�cI      �   &   x�320�44�220�44R�f@ʐ�Ā+F��� V��      �   Z   x�330�4�tN�KLI���ϮT�I�N�230�4�t���K�/�M
sC"2�2�+2+���&�nE�yɩ���Eũ�99�\1z\\\ ew�      �   �   x��Aj1 ��+��z[�@>�S/�#�[�X�B~�0ǁ��a��~ɝ3���rP�^�`�K�21��y��ުq!]��-1��[�>�
�kSjq�+�p4��+�W#C��gqTN�b�G�{wr�/,�m���M�7nHY���4N��/��}��~��sA�      �   4   x�%ʱ  ��=JL�.�?HtW\��"�K�f���d<�U����!�Х�      �   y   x�]�A� F��?��4AP)�0���i �����R���S03Z�z,)pI,Ғ�II��8M'h�=q}q��k�pk5�c4��.n&}�������v5ٳSdF�Q��Z���t�����,�      �   U   x��;
�0���)<����Hcm�)!�D��;c�1\�&��l��19qpص]��-���g���-L�����o�p      �   �   x�M���0 �w=����J$T�@���m�*$�+'y�����P��ZNGKf����e��VM�k��a&s�n�j~�B�������1�$�o/i���P�5�ި �î�}��_j8j��h�~��h$��iY����5W      �   /  x���R�@��3cAH�F��E	�/���n�?�d��މ׮������i��	^�����r	<�o�.��p�e��=�P�;�a�tui�
X�/p&س���|��-y�"l���7I���)�hI|ʙ�fs�S��L�;�
AM�Տ���~��]������U�ڋ�pt��� #V�9Z��QIݙ˩�Nm;�����)����ȉM>`U���z��Ù���e��[��u�B�/���6!��`8�$};b9aO���
wW���ל��k�4l,E,&�s<h�s�p=��>�v�˱ӷ+�6��#h�p���"�x@y)      �   &   x�310ⴴ�210�45R��@ʄ�ؒ+F��� X��      �   F   x����0�j�0�<����'�Rb�
��b!�Di�q�(\:��4yu�d�/�=�lL��pZ�#�b�      �   �   x�-��
�@ 뽯���M�<
M#ج�%Yr��]��7�&����ĐJ�|AM�f-��m���H�c'~���>��z��ΰ����f8[X�ȬY��S�~`����S�r%hY�qZ_��s���.j      �   D   x�3�t��MM����/*�/�2�tL.��ϫq)J�M�2�t.��M��L`��)e�y%�E�5�\1z\\\ ���      �   X   x�3�tJ-.QpLI,(IMQN.JM�+�I��2���e�g�%� Ks&����K�RJ����L8}S����K�Ӌ��M����� 6n �      �   >   x�3��M�H,)I�I��K5�2�LN*�/N�M�3�2�,+�,ȩ4�2�,*H,-I5����� �e      �   �   x��A� @���aHKk�;�f�#ba� �����߼���E�s�(<�e~������fՌ���8��`o@�ETxt����6�G�%}-\GHU�o�Ր�<+�B{�	�>[�0�BᜆH���� �O�0�      �   $   x�360�4��260�����@ʀ�Ҁ+F��� R=�     