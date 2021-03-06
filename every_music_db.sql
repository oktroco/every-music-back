PGDMP     4                    x            every_music    11.3    11.3 *    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            D           1262    41402    every_music    DATABASE     �   CREATE DATABASE every_music WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Korean_Korea.949' LC_CTYPE = 'Korean_Korea.949';
    DROP DATABASE every_music;
             oktroco    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            E           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    41549    content_info    TABLE       CREATE TABLE public.content_info (
    content_id integer NOT NULL,
    member_id integer,
    yt_id character varying,
    title character varying,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
     DROP TABLE public.content_info;
       public         oktroco    false    3            �            1259    41506    member_info    TABLE       CREATE TABLE public.member_info (
    member_id integer NOT NULL,
    user_uid integer,
    team_id integer,
    is_manager boolean,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
    DROP TABLE public.member_info;
       public         oktroco    false    3            �            1259    41498    member_permission    TABLE       CREATE TABLE public.member_permission (
    member_permission_id integer NOT NULL,
    member_permission_name character varying,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
 %   DROP TABLE public.member_permission;
       public         oktroco    false    3            �            1259    41521    member_permission_set    TABLE       CREATE TABLE public.member_permission_set (
    set_id integer NOT NULL,
    member_id integer,
    member_permission_id integer,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
 )   DROP TABLE public.member_permission_set;
       public         oktroco    false    3            �            1259    41454    person_info    TABLE     6  CREATE TABLE public.person_info (
    person_id integer NOT NULL,
    user_uid integer,
    real_name character varying,
    email character varying,
    phone character varying,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
    DROP TABLE public.person_info;
       public         oktroco    false    3            �            1259    41490 	   team_info    TABLE     �   CREATE TABLE public.team_info (
    team_id integer NOT NULL,
    team_name character varying,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
    DROP TABLE public.team_info;
       public         oktroco    false    3            �            1259    41444 	   user_info    TABLE     ^  CREATE TABLE public.user_info (
    user_uid integer NOT NULL,
    username character varying,
    password character varying,
    is_active boolean,
    is_admin boolean,
    last_login_dt timestamp without time zone,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
    DROP TABLE public.user_info;
       public         oktroco    false    3            �            1259    41467    user_permission    TABLE     �   CREATE TABLE public.user_permission (
    user_permission_id integer NOT NULL,
    user_permission_name character varying,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
 #   DROP TABLE public.user_permission;
       public         oktroco    false    3            �            1259    41475    user_permission_set    TABLE        CREATE TABLE public.user_permission_set (
    set_id integer NOT NULL,
    user_uid integer,
    user_permission_id integer,
    create_dt timestamp without time zone,
    update_dt timestamp without time zone,
    delete_dt timestamp without time zone
);
 '   DROP TABLE public.user_permission_set;
       public         oktroco    false    3            >          0    41549    content_info 
   TABLE DATA               l   COPY public.content_info (content_id, member_id, yt_id, title, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    204   �8       <          0    41506    member_info 
   TABLE DATA               p   COPY public.member_info (member_id, user_uid, team_id, is_manager, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    202   �8       ;          0    41498    member_permission 
   TABLE DATA               z   COPY public.member_permission (member_permission_id, member_permission_name, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    201   �8       =          0    41521    member_permission_set 
   TABLE DATA               y   COPY public.member_permission_set (set_id, member_id, member_permission_id, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    203   �8       7          0    41454    person_info 
   TABLE DATA               t   COPY public.person_info (person_id, user_uid, real_name, email, phone, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    197   �8       :          0    41490 	   team_info 
   TABLE DATA               X   COPY public.team_info (team_id, team_name, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    200   9       6          0    41444 	   user_info 
   TABLE DATA               �   COPY public.user_info (user_uid, username, password, is_active, is_admin, last_login_dt, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    196   89       8          0    41467    user_permission 
   TABLE DATA               t   COPY public.user_permission (user_permission_id, user_permission_name, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    198   U9       9          0    41475    user_permission_set 
   TABLE DATA               t   COPY public.user_permission_set (set_id, user_uid, user_permission_id, create_dt, update_dt, delete_dt) FROM stdin;
    public       oktroco    false    199   r9       �
           2606    41556    content_info content_info_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.content_info
    ADD CONSTRAINT content_info_pkey PRIMARY KEY (content_id);
 H   ALTER TABLE ONLY public.content_info DROP CONSTRAINT content_info_pkey;
       public         oktroco    false    204            �
           2606    41510    member_info member_info_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.member_info
    ADD CONSTRAINT member_info_pkey PRIMARY KEY (member_id);
 F   ALTER TABLE ONLY public.member_info DROP CONSTRAINT member_info_pkey;
       public         oktroco    false    202            �
           2606    41505 (   member_permission member_permission_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.member_permission
    ADD CONSTRAINT member_permission_pkey PRIMARY KEY (member_permission_id);
 R   ALTER TABLE ONLY public.member_permission DROP CONSTRAINT member_permission_pkey;
       public         oktroco    false    201            �
           2606    41525 0   member_permission_set member_permission_set_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.member_permission_set
    ADD CONSTRAINT member_permission_set_pkey PRIMARY KEY (set_id);
 Z   ALTER TABLE ONLY public.member_permission_set DROP CONSTRAINT member_permission_set_pkey;
       public         oktroco    false    203            �
           2606    41461    person_info person_info_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.person_info
    ADD CONSTRAINT person_info_pkey PRIMARY KEY (person_id);
 F   ALTER TABLE ONLY public.person_info DROP CONSTRAINT person_info_pkey;
       public         oktroco    false    197            �
           2606    41497    team_info team_info_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.team_info
    ADD CONSTRAINT team_info_pkey PRIMARY KEY (team_id);
 B   ALTER TABLE ONLY public.team_info DROP CONSTRAINT team_info_pkey;
       public         oktroco    false    200            �
           2606    41451    user_info user_info_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_uid);
 B   ALTER TABLE ONLY public.user_info DROP CONSTRAINT user_info_pkey;
       public         oktroco    false    196            �
           2606    41453     user_info user_info_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.user_info DROP CONSTRAINT user_info_username_key;
       public         oktroco    false    196            �
           2606    41474 $   user_permission user_permission_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.user_permission
    ADD CONSTRAINT user_permission_pkey PRIMARY KEY (user_permission_id);
 N   ALTER TABLE ONLY public.user_permission DROP CONSTRAINT user_permission_pkey;
       public         oktroco    false    198            �
           2606    41479 ,   user_permission_set user_permission_set_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_permission_set
    ADD CONSTRAINT user_permission_set_pkey PRIMARY KEY (set_id);
 V   ALTER TABLE ONLY public.user_permission_set DROP CONSTRAINT user_permission_set_pkey;
       public         oktroco    false    199            �
           2606    41557 (   content_info content_info_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_info
    ADD CONSTRAINT content_info_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member_info(member_id);
 R   ALTER TABLE ONLY public.content_info DROP CONSTRAINT content_info_member_id_fkey;
       public       oktroco    false    204    2736    202            �
           2606    41516 $   member_info member_info_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_info
    ADD CONSTRAINT member_info_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team_info(team_id);
 N   ALTER TABLE ONLY public.member_info DROP CONSTRAINT member_info_team_id_fkey;
       public       oktroco    false    2732    200    202            �
           2606    41511 %   member_info member_info_user_uid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_info
    ADD CONSTRAINT member_info_user_uid_fkey FOREIGN KEY (user_uid) REFERENCES public.user_info(user_uid);
 O   ALTER TABLE ONLY public.member_info DROP CONSTRAINT member_info_user_uid_fkey;
       public       oktroco    false    202    2722    196            �
           2606    41526 :   member_permission_set member_permission_set_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_permission_set
    ADD CONSTRAINT member_permission_set_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member_info(member_id);
 d   ALTER TABLE ONLY public.member_permission_set DROP CONSTRAINT member_permission_set_member_id_fkey;
       public       oktroco    false    202    203    2736            �
           2606    41531 E   member_permission_set member_permission_set_member_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_permission_set
    ADD CONSTRAINT member_permission_set_member_permission_id_fkey FOREIGN KEY (member_permission_id) REFERENCES public.member_permission(member_permission_id);
 o   ALTER TABLE ONLY public.member_permission_set DROP CONSTRAINT member_permission_set_member_permission_id_fkey;
       public       oktroco    false    201    203    2734            �
           2606    41462 %   person_info person_info_user_uid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.person_info
    ADD CONSTRAINT person_info_user_uid_fkey FOREIGN KEY (user_uid) REFERENCES public.user_info(user_uid);
 O   ALTER TABLE ONLY public.person_info DROP CONSTRAINT person_info_user_uid_fkey;
       public       oktroco    false    197    2722    196            �
           2606    41485 ?   user_permission_set user_permission_set_user_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_permission_set
    ADD CONSTRAINT user_permission_set_user_permission_id_fkey FOREIGN KEY (user_permission_id) REFERENCES public.user_permission(user_permission_id);
 i   ALTER TABLE ONLY public.user_permission_set DROP CONSTRAINT user_permission_set_user_permission_id_fkey;
       public       oktroco    false    2728    199    198            �
           2606    41480 5   user_permission_set user_permission_set_user_uid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_permission_set
    ADD CONSTRAINT user_permission_set_user_uid_fkey FOREIGN KEY (user_uid) REFERENCES public.user_info(user_uid);
 _   ALTER TABLE ONLY public.user_permission_set DROP CONSTRAINT user_permission_set_user_uid_fkey;
       public       oktroco    false    199    196    2722            >      x������ � �      <      x������ � �      ;      x������ � �      =      x������ � �      7      x������ � �      :      x������ � �      6      x������ � �      8      x������ � �      9      x������ � �     