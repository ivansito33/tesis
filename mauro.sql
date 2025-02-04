PGDMP      1        	        |            plomeria    16.3    16.3 �    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            D           1262    24946    plomeria    DATABASE     {   CREATE DATABASE plomeria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Catalan_Spain.1252';
    DROP DATABASE plomeria;
                postgres    false                        2615    24947    drizzle    SCHEMA        CREATE SCHEMA drizzle;
    DROP SCHEMA drizzle;
                postgres    false            �            1259    24949    __drizzle_migrations    TABLE     v   CREATE TABLE drizzle.__drizzle_migrations (
    id integer NOT NULL,
    hash text NOT NULL,
    created_at bigint
);
 )   DROP TABLE drizzle.__drizzle_migrations;
       drizzle         heap    postgres    false    6            �            1259    24948    __drizzle_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE drizzle.__drizzle_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE drizzle.__drizzle_migrations_id_seq;
       drizzle          postgres    false    6    217            E           0    0    __drizzle_migrations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE drizzle.__drizzle_migrations_id_seq OWNED BY drizzle.__drizzle_migrations.id;
          drizzle          postgres    false    216            �            1259    24958 
   categories    TABLE     a   CREATE TABLE public.categories (
    id integer NOT NULL,
    category_name character varying
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    24957    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    219            F           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    218            �            1259    24969    clients    TABLE     �   CREATE TABLE public.clients (
    id integer NOT NULL,
    client_name character varying,
    contact character varying,
    status_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    24966    clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    223            G           0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    220            �            1259    24967    clients_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.clients_status_id_seq;
       public          postgres    false    223            H           0    0    clients_status_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.clients_status_id_seq OWNED BY public.clients.status_id;
          public          postgres    false    221            �            1259    24968    clients_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.clients_user_id_seq;
       public          postgres    false    223            I           0    0    clients_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.clients_user_id_seq OWNED BY public.clients.user_id;
          public          postgres    false    222            �            1259    24983    messages    TABLE     �   CREATE TABLE public.messages (
    id integer NOT NULL,
    content text,
    "timestamp" timestamp without time zone,
    sender_id integer NOT NULL,
    recipient_id integer NOT NULL,
    report_id integer NOT NULL
);
    DROP TABLE public.messages;
       public         heap    postgres    false            �            1259    24979    messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          postgres    false    228            J           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          postgres    false    224            �            1259    24981    messages_recipient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_recipient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.messages_recipient_id_seq;
       public          postgres    false    228            K           0    0    messages_recipient_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.messages_recipient_id_seq OWNED BY public.messages.recipient_id;
          public          postgres    false    226            �            1259    24982    messages_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.messages_report_id_seq;
       public          postgres    false    228            L           0    0    messages_report_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.messages_report_id_seq OWNED BY public.messages.report_id;
          public          postgres    false    227            �            1259    24980    messages_sender_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_sender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.messages_sender_id_seq;
       public          postgres    false    228            M           0    0    messages_sender_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.messages_sender_id_seq OWNED BY public.messages.sender_id;
          public          postgres    false    225            �            1259    24995 
   priorities    TABLE     a   CREATE TABLE public.priorities (
    id integer NOT NULL,
    priority_name character varying
);
    DROP TABLE public.priorities;
       public         heap    postgres    false            �            1259    24994    priorities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.priorities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.priorities_id_seq;
       public          postgres    false    230            N           0    0    priorities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.priorities_id_seq OWNED BY public.priorities.id;
          public          postgres    false    229            �            1259    25006    report_details    TABLE     �   CREATE TABLE public.report_details (
    id integer NOT NULL,
    detail text,
    attachments character varying,
    report_id integer NOT NULL,
    priority_id integer NOT NULL
);
 "   DROP TABLE public.report_details;
       public         heap    postgres    false            �            1259    25003    report_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.report_details_id_seq;
       public          postgres    false    234            O           0    0    report_details_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.report_details_id_seq OWNED BY public.report_details.id;
          public          postgres    false    231            �            1259    25005    report_details_priority_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_details_priority_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.report_details_priority_id_seq;
       public          postgres    false    234            P           0    0    report_details_priority_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.report_details_priority_id_seq OWNED BY public.report_details.priority_id;
          public          postgres    false    233            �            1259    25004    report_details_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_details_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.report_details_report_id_seq;
       public          postgres    false    234            Q           0    0    report_details_report_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.report_details_report_id_seq OWNED BY public.report_details.report_id;
          public          postgres    false    232            �            1259    25021    reports    TABLE     �   CREATE TABLE public.reports (
    id integer NOT NULL,
    description text,
    created_date timestamp without time zone,
    client_id integer NOT NULL,
    category_id integer NOT NULL,
    user_id integer NOT NULL,
    status_id integer NOT NULL
);
    DROP TABLE public.reports;
       public         heap    postgres    false            �            1259    25018    reports_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reports_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.reports_category_id_seq;
       public          postgres    false    240            R           0    0    reports_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.reports_category_id_seq OWNED BY public.reports.category_id;
          public          postgres    false    237            �            1259    25017    reports_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reports_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.reports_client_id_seq;
       public          postgres    false    240            S           0    0    reports_client_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.reports_client_id_seq OWNED BY public.reports.client_id;
          public          postgres    false    236            �            1259    25016    reports_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reports_id_seq;
       public          postgres    false    240            T           0    0    reports_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;
          public          postgres    false    235            �            1259    25020    reports_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reports_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.reports_status_id_seq;
       public          postgres    false    240            U           0    0    reports_status_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.reports_status_id_seq OWNED BY public.reports.status_id;
          public          postgres    false    239            �            1259    25019    reports_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reports_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.reports_user_id_seq;
       public          postgres    false    240            V           0    0    reports_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.reports_user_id_seq OWNED BY public.reports.user_id;
          public          postgres    false    238            �            1259    25034    roles    TABLE     W   CREATE TABLE public.roles (
    id integer NOT NULL,
    rolename character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    25033    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    242            W           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    241            �            1259    25045    statuses    TABLE     ]   CREATE TABLE public.statuses (
    id integer NOT NULL,
    status_name character varying
);
    DROP TABLE public.statuses;
       public         heap    postgres    false            �            1259    25044    statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.statuses_id_seq;
       public          postgres    false    244            X           0    0    statuses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;
          public          postgres    false    243            �            1259    25055    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying,
    email character varying,
    password_hash character varying(255),
    registration_date timestamp without time zone,
    role_id integer DEFAULT 2 NOT NULL,
    salt character varying(64)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25053    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    247            Y           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    245            �            1259    25054    users_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_role_id_seq;
       public          postgres    false    247            Z           0    0    users_role_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_role_id_seq OWNED BY public.users.role_id;
          public          postgres    false    246            T           2604    24952    __drizzle_migrations id    DEFAULT     �   ALTER TABLE ONLY drizzle.__drizzle_migrations ALTER COLUMN id SET DEFAULT nextval('drizzle.__drizzle_migrations_id_seq'::regclass);
 G   ALTER TABLE drizzle.__drizzle_migrations ALTER COLUMN id DROP DEFAULT;
       drizzle          postgres    false    217    216    217            U           2604    24961    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            V           2604    24972 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    220    223            W           2604    24973    clients status_id    DEFAULT     v   ALTER TABLE ONLY public.clients ALTER COLUMN status_id SET DEFAULT nextval('public.clients_status_id_seq'::regclass);
 @   ALTER TABLE public.clients ALTER COLUMN status_id DROP DEFAULT;
       public          postgres    false    223    221    223            X           2604    24974    clients user_id    DEFAULT     r   ALTER TABLE ONLY public.clients ALTER COLUMN user_id SET DEFAULT nextval('public.clients_user_id_seq'::regclass);
 >   ALTER TABLE public.clients ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    222    223    223            Y           2604    24986    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    224    228            Z           2604    24987    messages sender_id    DEFAULT     x   ALTER TABLE ONLY public.messages ALTER COLUMN sender_id SET DEFAULT nextval('public.messages_sender_id_seq'::regclass);
 A   ALTER TABLE public.messages ALTER COLUMN sender_id DROP DEFAULT;
       public          postgres    false    228    225    228            [           2604    24988    messages recipient_id    DEFAULT     ~   ALTER TABLE ONLY public.messages ALTER COLUMN recipient_id SET DEFAULT nextval('public.messages_recipient_id_seq'::regclass);
 D   ALTER TABLE public.messages ALTER COLUMN recipient_id DROP DEFAULT;
       public          postgres    false    228    226    228            \           2604    24989    messages report_id    DEFAULT     x   ALTER TABLE ONLY public.messages ALTER COLUMN report_id SET DEFAULT nextval('public.messages_report_id_seq'::regclass);
 A   ALTER TABLE public.messages ALTER COLUMN report_id DROP DEFAULT;
       public          postgres    false    227    228    228            ]           2604    24998    priorities id    DEFAULT     n   ALTER TABLE ONLY public.priorities ALTER COLUMN id SET DEFAULT nextval('public.priorities_id_seq'::regclass);
 <   ALTER TABLE public.priorities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            ^           2604    25009    report_details id    DEFAULT     v   ALTER TABLE ONLY public.report_details ALTER COLUMN id SET DEFAULT nextval('public.report_details_id_seq'::regclass);
 @   ALTER TABLE public.report_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    231    234            _           2604    25010    report_details report_id    DEFAULT     �   ALTER TABLE ONLY public.report_details ALTER COLUMN report_id SET DEFAULT nextval('public.report_details_report_id_seq'::regclass);
 G   ALTER TABLE public.report_details ALTER COLUMN report_id DROP DEFAULT;
       public          postgres    false    234    232    234            `           2604    25011    report_details priority_id    DEFAULT     �   ALTER TABLE ONLY public.report_details ALTER COLUMN priority_id SET DEFAULT nextval('public.report_details_priority_id_seq'::regclass);
 I   ALTER TABLE public.report_details ALTER COLUMN priority_id DROP DEFAULT;
       public          postgres    false    234    233    234            a           2604    25024 
   reports id    DEFAULT     h   ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);
 9   ALTER TABLE public.reports ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    235    240            b           2604    25025    reports client_id    DEFAULT     v   ALTER TABLE ONLY public.reports ALTER COLUMN client_id SET DEFAULT nextval('public.reports_client_id_seq'::regclass);
 @   ALTER TABLE public.reports ALTER COLUMN client_id DROP DEFAULT;
       public          postgres    false    236    240    240            c           2604    25026    reports category_id    DEFAULT     z   ALTER TABLE ONLY public.reports ALTER COLUMN category_id SET DEFAULT nextval('public.reports_category_id_seq'::regclass);
 B   ALTER TABLE public.reports ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    237    240    240            d           2604    25027    reports user_id    DEFAULT     r   ALTER TABLE ONLY public.reports ALTER COLUMN user_id SET DEFAULT nextval('public.reports_user_id_seq'::regclass);
 >   ALTER TABLE public.reports ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    238    240    240            e           2604    25028    reports status_id    DEFAULT     v   ALTER TABLE ONLY public.reports ALTER COLUMN status_id SET DEFAULT nextval('public.reports_status_id_seq'::regclass);
 @   ALTER TABLE public.reports ALTER COLUMN status_id DROP DEFAULT;
       public          postgres    false    239    240    240            f           2604    25037    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            g           2604    25048    statuses id    DEFAULT     j   ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);
 :   ALTER TABLE public.statuses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            h           2604    25058    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    247    247                       0    24949    __drizzle_migrations 
   TABLE DATA                 drizzle          postgres    false    217   .�       "          0    24958 
   categories 
   TABLE DATA                 public          postgres    false    219   ę       &          0    24969    clients 
   TABLE DATA                 public          postgres    false    223   ޙ       +          0    24983    messages 
   TABLE DATA                 public          postgres    false    228   ��       -          0    24995 
   priorities 
   TABLE DATA                 public          postgres    false    230   �       1          0    25006    report_details 
   TABLE DATA                 public          postgres    false    234   ,�       7          0    25021    reports 
   TABLE DATA                 public          postgres    false    240   F�       9          0    25034    roles 
   TABLE DATA                 public          postgres    false    242   `�       ;          0    25045    statuses 
   TABLE DATA                 public          postgres    false    244   ��       >          0    25055    users 
   TABLE DATA                 public          postgres    false    247   Κ       [           0    0    __drizzle_migrations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('drizzle.__drizzle_migrations_id_seq', 1, true);
          drizzle          postgres    false    216            \           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    218            ]           0    0    clients_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clients_id_seq', 1, false);
          public          postgres    false    220            ^           0    0    clients_status_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.clients_status_id_seq', 1, false);
          public          postgres    false    221            _           0    0    clients_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.clients_user_id_seq', 1, false);
          public          postgres    false    222            `           0    0    messages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.messages_id_seq', 1, false);
          public          postgres    false    224            a           0    0    messages_recipient_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.messages_recipient_id_seq', 1, false);
          public          postgres    false    226            b           0    0    messages_report_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.messages_report_id_seq', 1, false);
          public          postgres    false    227            c           0    0    messages_sender_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.messages_sender_id_seq', 1, false);
          public          postgres    false    225            d           0    0    priorities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.priorities_id_seq', 1, false);
          public          postgres    false    229            e           0    0    report_details_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.report_details_id_seq', 1, false);
          public          postgres    false    231            f           0    0    report_details_priority_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.report_details_priority_id_seq', 1, false);
          public          postgres    false    233            g           0    0    report_details_report_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.report_details_report_id_seq', 1, false);
          public          postgres    false    232            h           0    0    reports_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.reports_category_id_seq', 1, false);
          public          postgres    false    237            i           0    0    reports_client_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.reports_client_id_seq', 1, false);
          public          postgres    false    236            j           0    0    reports_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.reports_id_seq', 1, false);
          public          postgres    false    235            k           0    0    reports_status_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.reports_status_id_seq', 1, false);
          public          postgres    false    239            l           0    0    reports_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.reports_user_id_seq', 1, false);
          public          postgres    false    238            m           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    241            n           0    0    statuses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.statuses_id_seq', 1, false);
          public          postgres    false    243            o           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    245            p           0    0    users_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_role_id_seq', 1, false);
          public          postgres    false    246            k           2606    24956 .   __drizzle_migrations __drizzle_migrations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY drizzle.__drizzle_migrations
    ADD CONSTRAINT __drizzle_migrations_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY drizzle.__drizzle_migrations DROP CONSTRAINT __drizzle_migrations_pkey;
       drizzle            postgres    false    217            m           2606    24965    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    219            o           2606    24978    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    223            q           2606    24993    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    228            s           2606    25002    priorities priorities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.priorities
    ADD CONSTRAINT priorities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.priorities DROP CONSTRAINT priorities_pkey;
       public            postgres    false    230            u           2606    25015 "   report_details report_details_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.report_details
    ADD CONSTRAINT report_details_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.report_details DROP CONSTRAINT report_details_pkey;
       public            postgres    false    234            w           2606    25032    reports reports_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reports DROP CONSTRAINT reports_pkey;
       public            postgres    false    240            y           2606    25041    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    242            {           2606    25043    roles roles_rolename_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_rolename_unique UNIQUE (rolename);
 E   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_rolename_unique;
       public            postgres    false    242            }           2606    25052    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    244                       2606    25067    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    247            �           2606    25063    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    247            �           2606    25065    users users_username_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_unique UNIQUE (username);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_unique;
       public            postgres    false    247            �           2606    25068 (   clients clients_status_id_statuses_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_status_id_statuses_id_fk FOREIGN KEY (status_id) REFERENCES public.statuses(id);
 R   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_status_id_statuses_id_fk;
       public          postgres    false    223    244    4733            �           2606    25073 #   clients clients_user_id_users_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_user_id_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_user_id_users_id_fk;
       public          postgres    false    247    4737    223            �           2606    25083 *   messages messages_recipient_id_users_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_recipient_id_users_id_fk FOREIGN KEY (recipient_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_recipient_id_users_id_fk;
       public          postgres    false    247    228    4737            �           2606    25088 )   messages messages_report_id_reports_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_report_id_reports_id_fk FOREIGN KEY (report_id) REFERENCES public.reports(id);
 S   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_report_id_reports_id_fk;
       public          postgres    false    4727    240    228            �           2606    25078 '   messages messages_sender_id_users_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_sender_id_users_id_fk FOREIGN KEY (sender_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_sender_id_users_id_fk;
       public          postgres    false    228    247    4737            �           2606    25098 :   report_details report_details_priority_id_priorities_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_details
    ADD CONSTRAINT report_details_priority_id_priorities_id_fk FOREIGN KEY (priority_id) REFERENCES public.priorities(id);
 d   ALTER TABLE ONLY public.report_details DROP CONSTRAINT report_details_priority_id_priorities_id_fk;
       public          postgres    false    4723    230    234            �           2606    25093 5   report_details report_details_report_id_reports_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_details
    ADD CONSTRAINT report_details_report_id_reports_id_fk FOREIGN KEY (report_id) REFERENCES public.reports(id);
 _   ALTER TABLE ONLY public.report_details DROP CONSTRAINT report_details_report_id_reports_id_fk;
       public          postgres    false    4727    234    240            �           2606    25108 ,   reports reports_category_id_categories_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_category_id_categories_id_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);
 V   ALTER TABLE ONLY public.reports DROP CONSTRAINT reports_category_id_categories_id_fk;
       public          postgres    false    4717    219    240            �           2606    25103 '   reports reports_client_id_clients_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_client_id_clients_id_fk FOREIGN KEY (client_id) REFERENCES public.clients(id);
 Q   ALTER TABLE ONLY public.reports DROP CONSTRAINT reports_client_id_clients_id_fk;
       public          postgres    false    4719    240    223            �           2606    25118 (   reports reports_status_id_statuses_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_status_id_statuses_id_fk FOREIGN KEY (status_id) REFERENCES public.statuses(id);
 R   ALTER TABLE ONLY public.reports DROP CONSTRAINT reports_status_id_statuses_id_fk;
       public          postgres    false    240    244    4733            �           2606    25113 #   reports reports_user_id_users_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_user_id_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.reports DROP CONSTRAINT reports_user_id_users_id_fk;
       public          postgres    false    240    247    4737            �           2606    25123    users users_role_id_roles_id_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_roles_id_fk FOREIGN KEY (role_id) REFERENCES public.roles(id);
 I   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_roles_id_fk;
       public          postgres    false    4729    242    247                �   x�-ƻ
�0 �=_��
E��&7'��`�kȳ|@u�׻x�3�S��0��ֺm�|p�?����������|�'��-o@	U��7�"�LQ���M �2��9�MP �GS��i��Nhc)�hd�� ��&�      "   
   x���          &   
   x���          +   
   x���          -   
   x���          1   
   x���          7   
   x���          9   D   x���v
Q���W((M��L�+��I-Vs�	uV�0�QPOL���S״��$�����8���� ,�      ;   
   x���          >   ~  x���Ak�A���߭
v�d��d�衇�`�W�$(�niY��;��¼d��������v����=��ý�N/���}����������.�������d���v���r������!w~|<�V�f���GoŚ��s6n�qo+5/�څ95�j�Ρ�䚧�d2R�l2��FS	)hh`���>\+.�J�V�HWЯ@7�{�}�]�g|\iK2���#M�]{�\44ۨh��d����U��LW �|����?y�ZU�����^��u �h��$�--&���W�ʓ��+w!ásJ�R�.5���&Rw[��l�:g��A+�4S�ûZ�ѽ�m���YwT������=�ӱ�ea'�8U#� 	�՘DsY�>P��..~#��L     