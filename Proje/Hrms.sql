PGDMP     +    -                z            Hrms    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16711    Hrms    DATABASE     c   CREATE DATABASE "Hrms" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "Hrms";
                postgres    false            ?            1259    16759    employe    TABLE     ?   CREATE TABLE public.employe (
    user_id integer NOT NULL,
    first_name character varying[],
    last_name character varying[],
    national_identity character varying(11)[],
    year_of_birth date
);
    DROP TABLE public.employe;
       public         heap    postgres    false            ?            1259    16712    employer    TABLE     ?   CREATE TABLE public.employer (
    company_name character varying[],
    web_site character varying[],
    phone_number character varying(11),
    user_id integer NOT NULL
);
    DROP TABLE public.employer;
       public         heap    postgres    false            ?            1259    16798    job_positions    TABLE     ]   CREATE TABLE public.job_positions (
    id integer NOT NULL,
    name character varying[]
);
 !   DROP TABLE public.job_positions;
       public         heap    postgres    false            ?            1259    16723    system_users    TABLE     g   CREATE TABLE public.system_users (
    first_name character varying[],
    user_id integer NOT NULL
);
     DROP TABLE public.system_users;
       public         heap    postgres    false            ?            1259    16735    user    TABLE     y   CREATE TABLE public."user" (
    id integer NOT NULL,
    email character varying[],
    password character varying[]
);
    DROP TABLE public."user";
       public         heap    postgres    false            	          0    16759    employe 
   TABLE DATA           c   COPY public.employe (user_id, first_name, last_name, national_identity, year_of_birth) FROM stdin;
    public          postgres    false    212   ?                 0    16712    employer 
   TABLE DATA           Q   COPY public.employer (company_name, web_site, phone_number, user_id) FROM stdin;
    public          postgres    false    209   ?       
          0    16798    job_positions 
   TABLE DATA           1   COPY public.job_positions (id, name) FROM stdin;
    public          postgres    false    213                    0    16723    system_users 
   TABLE DATA           ;   COPY public.system_users (first_name, user_id) FROM stdin;
    public          postgres    false    210   *                 0    16735    user 
   TABLE DATA           5   COPY public."user" (id, email, password) FROM stdin;
    public          postgres    false    211   G       t           2606    16765    employe employe_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.employe
    ADD CONSTRAINT employe_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.employe DROP CONSTRAINT employe_pkey;
       public            postgres    false    212            l           2606    16783    employer employer_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.employer
    ADD CONSTRAINT employer_pkey PRIMARY KEY (user_id);
 @   ALTER TABLE ONLY public.employer DROP CONSTRAINT employer_pkey;
       public            postgres    false    209            w           2606    16804     job_positions job_positions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT job_positions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.job_positions DROP CONSTRAINT job_positions_pkey;
       public            postgres    false    213            p           2606    16791    system_users system_users_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.system_users
    ADD CONSTRAINT system_users_pkey PRIMARY KEY (user_id);
 H   ALTER TABLE ONLY public.system_users DROP CONSTRAINT system_users_pkey;
       public            postgres    false    210            r           2606    16741    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    211            u           1259    16776    fki_fk_to_employee    INDEX     I   CREATE INDEX fki_fk_to_employee ON public.employe USING btree (user_id);
 &   DROP INDEX public.fki_fk_to_employee;
       public            postgres    false    212            m           1259    16789    fki_fk_to_employer    INDEX     J   CREATE INDEX fki_fk_to_employer ON public.employer USING btree (user_id);
 &   DROP INDEX public.fki_fk_to_employer;
       public            postgres    false    209            n           1259    16797    fki_fk_to_system_users    INDEX     R   CREATE INDEX fki_fk_to_system_users ON public.system_users USING btree (user_id);
 *   DROP INDEX public.fki_fk_to_system_users;
       public            postgres    false    210            z           2606    16777    employe fk_to_employee    FK CONSTRAINT     v   ALTER TABLE ONLY public.employe
    ADD CONSTRAINT fk_to_employee FOREIGN KEY (user_id) REFERENCES public."user"(id);
 @   ALTER TABLE ONLY public.employe DROP CONSTRAINT fk_to_employee;
       public          postgres    false    3186    211    212            x           2606    16784    employer fk_to_employer    FK CONSTRAINT     w   ALTER TABLE ONLY public.employer
    ADD CONSTRAINT fk_to_employer FOREIGN KEY (user_id) REFERENCES public."user"(id);
 A   ALTER TABLE ONLY public.employer DROP CONSTRAINT fk_to_employer;
       public          postgres    false    209    211    3186            y           2606    16792    system_users fk_to_system_users    FK CONSTRAINT        ALTER TABLE ONLY public.system_users
    ADD CONSTRAINT fk_to_system_users FOREIGN KEY (user_id) REFERENCES public."user"(id);
 I   ALTER TABLE ONLY public.system_users DROP CONSTRAINT fk_to_system_users;
       public          postgres    false    211    3186    210            	   4   x?3???.?N9:????Z?ꌬ??? ??????????а?3Ə+F??? ??>            x?????? ? ?      
      x?????? ? ?            x?????? ? ?            x?3???"?=... EJ     