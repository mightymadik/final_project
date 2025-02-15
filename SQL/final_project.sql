PGDMP     .                
    x            final_project    12.4    12.4 #    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    17241    final_project    DATABASE     �   CREATE DATABASE final_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Kazakh_Kazakhstan.utf8' LC_CTYPE = 'Kazakh_Kazakhstan.utf8';
    DROP DATABASE final_project;
                postgres    false            �            1259    17270 	   age_limit    TABLE     P   CREATE TABLE public.age_limit (
    age_id integer NOT NULL,
    age integer
);
    DROP TABLE public.age_limit;
       public         heap    postgres    false            �            1259    17242    creative_team    TABLE     *  CREATE TABLE public.creative_team (
    creative_id integer NOT NULL,
    producer character varying(255) NOT NULL,
    director character varying(255),
    operator character varying(255),
    editor character varying(255),
    composer character varying(255),
    actor character varying(255)
);
 !   DROP TABLE public.creative_team;
       public         heap    postgres    false            �            1259    17265    finance    TABLE     m   CREATE TABLE public.finance (
    finance_id integer NOT NULL,
    budget integer,
    box_office integer
);
    DROP TABLE public.finance;
       public         heap    postgres    false            �            1259    17250    investor    TABLE     f   CREATE TABLE public.investor (
    company_id integer NOT NULL,
    company character varying(255)
);
    DROP TABLE public.investor;
       public         heap    postgres    false            �            1259    17280    movie    TABLE     :  CREATE TABLE public.movie (
    id integer NOT NULL,
    name character varying(255),
    country character varying(255),
    genre character varying(255),
    team_id integer,
    time_id integer,
    release_id integer,
    finance_id integer,
    age_id integer,
    price_id integer,
    company_id integer
);
    DROP TABLE public.movie;
       public         heap    postgres    false            �            1259    17275    price    TABLE     P   CREATE TABLE public.price (
    price_id integer NOT NULL,
    price integer
);
    DROP TABLE public.price;
       public         heap    postgres    false            �            1259    17260    release    TABLE     S   CREATE TABLE public.release (
    release_id integer NOT NULL,
    release date
);
    DROP TABLE public.release;
       public         heap    postgres    false            �            1259    17255    running_time    TABLE     l   CREATE TABLE public.running_time (
    time_id integer NOT NULL,
    running_time time without time zone
);
     DROP TABLE public.running_time;
       public         heap    postgres    false            5          0    17270 	   age_limit 
   TABLE DATA           0   COPY public.age_limit (age_id, age) FROM stdin;
    public          postgres    false    207   �'       0          0    17242    creative_team 
   TABLE DATA           k   COPY public.creative_team (creative_id, producer, director, operator, editor, composer, actor) FROM stdin;
    public          postgres    false    202   �'       4          0    17265    finance 
   TABLE DATA           A   COPY public.finance (finance_id, budget, box_office) FROM stdin;
    public          postgres    false    206   G*       1          0    17250    investor 
   TABLE DATA           7   COPY public.investor (company_id, company) FROM stdin;
    public          postgres    false    203   �*       7          0    17280    movie 
   TABLE DATA           �   COPY public.movie (id, name, country, genre, team_id, time_id, release_id, finance_id, age_id, price_id, company_id) FROM stdin;
    public          postgres    false    209   |+       6          0    17275    price 
   TABLE DATA           0   COPY public.price (price_id, price) FROM stdin;
    public          postgres    false    208   q,       3          0    17260    release 
   TABLE DATA           6   COPY public.release (release_id, release) FROM stdin;
    public          postgres    false    205   �,       2          0    17255    running_time 
   TABLE DATA           =   COPY public.running_time (time_id, running_time) FROM stdin;
    public          postgres    false    204   +-       �
           2606    17274    age_limit age_limit_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.age_limit
    ADD CONSTRAINT age_limit_pkey PRIMARY KEY (age_id);
 B   ALTER TABLE ONLY public.age_limit DROP CONSTRAINT age_limit_pkey;
       public            postgres    false    207            �
           2606    17249     creative_team creative_team_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.creative_team
    ADD CONSTRAINT creative_team_pkey PRIMARY KEY (creative_id);
 J   ALTER TABLE ONLY public.creative_team DROP CONSTRAINT creative_team_pkey;
       public            postgres    false    202            �
           2606    17269    finance finance_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.finance
    ADD CONSTRAINT finance_pkey PRIMARY KEY (finance_id);
 >   ALTER TABLE ONLY public.finance DROP CONSTRAINT finance_pkey;
       public            postgres    false    206            �
           2606    17254    investor investor_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.investor
    ADD CONSTRAINT investor_pkey PRIMARY KEY (company_id);
 @   ALTER TABLE ONLY public.investor DROP CONSTRAINT investor_pkey;
       public            postgres    false    203            �
           2606    17287    movie movie_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_pkey;
       public            postgres    false    209            �
           2606    17279    price price_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (price_id);
 :   ALTER TABLE ONLY public.price DROP CONSTRAINT price_pkey;
       public            postgres    false    208            �
           2606    17264    release release_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.release
    ADD CONSTRAINT release_pkey PRIMARY KEY (release_id);
 >   ALTER TABLE ONLY public.release DROP CONSTRAINT release_pkey;
       public            postgres    false    205            �
           2606    17259    running_time running_time_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.running_time
    ADD CONSTRAINT running_time_pkey PRIMARY KEY (time_id);
 H   ALTER TABLE ONLY public.running_time DROP CONSTRAINT running_time_pkey;
       public            postgres    false    204            �
           2606    17308    movie movie_age_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_age_id_fkey FOREIGN KEY (age_id) REFERENCES public.age_limit(age_id);
 A   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_age_id_fkey;
       public          postgres    false    2726    207    209            �
           2606    17318    movie movie_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.investor(company_id);
 E   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_company_id_fkey;
       public          postgres    false    2718    209    203            �
           2606    17303    movie movie_finance_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_finance_id_fkey FOREIGN KEY (finance_id) REFERENCES public.finance(finance_id);
 E   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_finance_id_fkey;
       public          postgres    false    209    2724    206            �
           2606    17313    movie movie_price_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.price(price_id);
 C   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_price_id_fkey;
       public          postgres    false    208    2728    209            �
           2606    17298    movie movie_release_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_release_id_fkey FOREIGN KEY (release_id) REFERENCES public.release(release_id);
 E   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_release_id_fkey;
       public          postgres    false    2722    209    205            �
           2606    17288    movie movie_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.creative_team(creative_id);
 B   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_team_id_fkey;
       public          postgres    false    202    209    2716            �
           2606    17293    movie movie_time_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_time_id_fkey FOREIGN KEY (time_id) REFERENCES public.running_time(time_id);
 B   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_time_id_fkey;
       public          postgres    false    2720    204    209            5      x�3�44�2�4�2�4��21z\\\ (F$      0   9  x��S�n�0=��b~�EӽG/�S�v[˨� ��4'�Ȁ���;���	r�mD�oަ���\R�F�^|M\��+�N��;\���`a|O���� �V������� 3$&oi�-�WN.����,;I.�E���� kJ���u5�rcx(>�4�k=�rL�@��g���H��%��u�b+���[=p'�{�V����:�0������^����խ�w\�a�/�94#LB29`Y�N����؞c
;ߡ�hc�6R�Ј�ܓ��Vz�SK��Q��j@�ʿ�%Ak+�7}V�����๨���꯼D������
+:v�T5�o�3�$w�Wu���Kn�%(����Z�9�R�b�a鍾
�{�����d���ȃ�K��~6�,H| -ſ9+����W�<{�6ǈ�@C�ek�h�P�%���,x���Z�%u�ޡі�\;���9D8�c7>$M��hT�s5�ƻ�+[�(�9S�U��X}?92��4��6�Cmč�+���$b������~O����2_�E�$��M��]o�{�OŎ ��r�)��E��P      4   {   x�M�AA��1�!0���pJwUn4�д(��,����bgϩ�#����^�a���`N7��@[��):��l�*cs�f�V`[��b�w���V��1�J�&��k���W��>< ^G<)\      1   �   x�]��
�@��ݧ�'�\�o��F%(bc��-������6���oT��:��A;�3[��K8ɋV��!<���C����.J�\�>%&v�8�K������q	7v��6��k8��{���	Mu�,�b���iC�՟s� �G+D�      7   �   x�e��N�0E���� �v�^QQ'Đ�
o��լiR%�O�FV]�:J��^z��u�
�|T��/���4�鿡�+,��v>��ҭ�2�H���^�N�:(V|�%����@�i���A�&�H��9���c셭���f��Q��w̆���U�H���qj�����#w<�!��J&��7��y�#5����vYUr�Шs����ߖ��o7����o|      6   A   x�ʱ 1�X*�G��M/��69C�DGW,Oq�O��a�n�9�ETS}6&���9��H�%��      3   Y   x�=���0��.�0$�����hP��8�>t�jЊ2��f��!h���]J�ܛ���7L�P-��Y@�Q�G�G�%���h������      2   L   x����@��s��l�����h��� r!'1@��G,q��^�a��l����GL׎��ׁ	��5�s��]��_�     