PGDMP     )                    y            fabricOfSolutionsDB    13.2    13.2     c           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            d           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            e           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            f           1262    20279    fabricOfSolutionsDB    DATABASE     r   CREATE DATABASE "fabricOfSolutionsDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
 %   DROP DATABASE "fabricOfSolutionsDB";
                rem_dev    false            ?            1259    20311 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    rem_dev    false            ?            1259    20309    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          rem_dev    false    207            g           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          rem_dev    false    206            ?            1259    20321    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    rem_dev    false            ?            1259    20319    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          rem_dev    false    209            h           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          rem_dev    false    208            ?            1259    20303    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    rem_dev    false            ?            1259    20301    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          rem_dev    false    205            i           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          rem_dev    false    204            ?            1259    20329 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    rem_dev    false            ?            1259    20339    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    rem_dev    false            ?            1259    20337    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          rem_dev    false    213            j           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          rem_dev    false    212            ?            1259    20327    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          rem_dev    false    211            k           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          rem_dev    false    210            ?            1259    20347    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    rem_dev    false            ?            1259    20345 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          rem_dev    false    215            l           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          rem_dev    false    214            ?            1259    20407    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    rem_dev    false            ?            1259    20405    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          rem_dev    false    217            m           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          rem_dev    false    216            ?            1259    20293    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    rem_dev    false            ?            1259    20291    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          rem_dev    false    203            n           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          rem_dev    false    202            ?            1259    20282    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    rem_dev    false            ?            1259    20280    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          rem_dev    false    201            o           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          rem_dev    false    200            ?            1259    20438    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    rem_dev    false            ?            1259    20552    polls_answer    TABLE     ?   CREATE TABLE public.polls_answer (
    id integer NOT NULL,
    question_id integer NOT NULL,
    user_id integer,
    variants_numbers integer[],
    text character varying(500)
);
     DROP TABLE public.polls_answer;
       public         heap    rem_dev    false            ?            1259    20562    polls_answer_id_seq    SEQUENCE     |   CREATE SEQUENCE public.polls_answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.polls_answer_id_seq;
       public          rem_dev    false    225            p           0    0    polls_answer_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.polls_answer_id_seq OWNED BY public.polls_answer.id;
          public          rem_dev    false    226            ?            1259    20450 
   polls_poll    TABLE     ?   CREATE TABLE public.polls_poll (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(500) NOT NULL,
    start_date date NOT NULL,
    finish_date date NOT NULL
);
    DROP TABLE public.polls_poll;
       public         heap    rem_dev    false            ?            1259    20448    polls_poll_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.polls_poll_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.polls_poll_id_seq;
       public          rem_dev    false    220            q           0    0    polls_poll_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.polls_poll_id_seq OWNED BY public.polls_poll.id;
          public          rem_dev    false    219            ?            1259    20461    polls_question    TABLE     ?   CREATE TABLE public.polls_question (
    id integer NOT NULL,
    text character varying(500) NOT NULL,
    type integer NOT NULL,
    poll_id integer NOT NULL
);
 "   DROP TABLE public.polls_question;
       public         heap    rem_dev    false            ?            1259    20459    polls_question_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.polls_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.polls_question_id_seq;
       public          rem_dev    false    222            r           0    0    polls_question_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.polls_question_id_seq OWNED BY public.polls_question.id;
          public          rem_dev    false    221            ?            1259    20472    polls_variant    TABLE     ?   CREATE TABLE public.polls_variant (
    id integer NOT NULL,
    number integer NOT NULL,
    text character varying(500) NOT NULL,
    question_id integer NOT NULL
);
 !   DROP TABLE public.polls_variant;
       public         heap    rem_dev    false            ?            1259    20527    polls_variant_id_seq    SEQUENCE     }   CREATE SEQUENCE public.polls_variant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.polls_variant_id_seq;
       public          rem_dev    false    223            s           0    0    polls_variant_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.polls_variant_id_seq OWNED BY public.polls_variant.id;
          public          rem_dev    false    224            y           2604    20314    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    206    207    207            z           2604    20324    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    209    208    209            x           2604    20306    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    205    204    205            {           2604    20332    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    210    211    211            |           2604    20342    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    213    212    213            }           2604    20350    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    214    215    215            ~           2604    20410    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    217    216    217            w           2604    20296    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    203    202    203            v           2604    20285    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    201    200    201            ?           2604    20564    polls_answer id    DEFAULT     r   ALTER TABLE ONLY public.polls_answer ALTER COLUMN id SET DEFAULT nextval('public.polls_answer_id_seq'::regclass);
 >   ALTER TABLE public.polls_answer ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    226    225            ?           2604    20453    polls_poll id    DEFAULT     n   ALTER TABLE ONLY public.polls_poll ALTER COLUMN id SET DEFAULT nextval('public.polls_poll_id_seq'::regclass);
 <   ALTER TABLE public.polls_poll ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    220    219    220            ?           2604    20464    polls_question id    DEFAULT     v   ALTER TABLE ONLY public.polls_question ALTER COLUMN id SET DEFAULT nextval('public.polls_question_id_seq'::regclass);
 @   ALTER TABLE public.polls_question ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    222    221    222            ?           2604    20529    polls_variant id    DEFAULT     t   ALTER TABLE ONLY public.polls_variant ALTER COLUMN id SET DEFAULT nextval('public.polls_variant_id_seq'::regclass);
 ?   ALTER TABLE public.polls_variant ALTER COLUMN id DROP DEFAULT;
       public          rem_dev    false    224    223            M          0    20311 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          rem_dev    false    207   ?       O          0    20321    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          rem_dev    false    209   8?       K          0    20303    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          rem_dev    false    205   U?       Q          0    20329 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          rem_dev    false    211   ??       S          0    20339    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          rem_dev    false    213   ??       U          0    20347    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          rem_dev    false    215   ͤ       W          0    20407    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          rem_dev    false    217   ??       I          0    20293    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          rem_dev    false    203   ?       G          0    20282    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          rem_dev    false    201   ??       X          0    20438    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          rem_dev    false    218   ??       _          0    20552    polls_answer 
   TABLE DATA           X   COPY public.polls_answer (id, question_id, user_id, variants_numbers, text) FROM stdin;
    public          rem_dev    false    225   Z?       Z          0    20450 
   polls_poll 
   TABLE DATA           T   COPY public.polls_poll (id, name, description, start_date, finish_date) FROM stdin;
    public          rem_dev    false    220   ??       \          0    20461    polls_question 
   TABLE DATA           A   COPY public.polls_question (id, text, type, poll_id) FROM stdin;
    public          rem_dev    false    222   ??       ]          0    20472    polls_variant 
   TABLE DATA           F   COPY public.polls_variant (id, number, text, question_id) FROM stdin;
    public          rem_dev    false    223   G?       t           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          rem_dev    false    206            u           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          rem_dev    false    208            v           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          rem_dev    false    204            w           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          rem_dev    false    212            x           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          rem_dev    false    210            y           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          rem_dev    false    214            z           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          rem_dev    false    216            {           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          rem_dev    false    202            |           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);
          public          rem_dev    false    200            }           0    0    polls_answer_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.polls_answer_id_seq', 8, true);
          public          rem_dev    false    226            ~           0    0    polls_poll_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.polls_poll_id_seq', 7, true);
          public          rem_dev    false    219                       0    0    polls_question_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.polls_question_id_seq', 4, true);
          public          rem_dev    false    221            ?           0    0    polls_variant_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.polls_variant_id_seq', 14, true);
          public          rem_dev    false    224            ?           2606    20436    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            rem_dev    false    207            ?           2606    20363 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            rem_dev    false    209    209            ?           2606    20326 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            rem_dev    false    209            ?           2606    20316    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            rem_dev    false    207            ?           2606    20354 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            rem_dev    false    205    205            ?           2606    20308 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            rem_dev    false    205            ?           2606    20344 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            rem_dev    false    213            ?           2606    20378 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            rem_dev    false    213    213            ?           2606    20334    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            rem_dev    false    211            ?           2606    20352 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            rem_dev    false    215            ?           2606    20392 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            rem_dev    false    215    215            ?           2606    20430     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            rem_dev    false    211            ?           2606    20416 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            rem_dev    false    217            ?           2606    20300 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            rem_dev    false    203    203            ?           2606    20298 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            rem_dev    false    203            ?           2606    20290 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            rem_dev    false    201            ?           2606    20445 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            rem_dev    false    218            ?           2606    20561    polls_answer polls_answer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.polls_answer
    ADD CONSTRAINT polls_answer_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.polls_answer DROP CONSTRAINT polls_answer_pkey;
       public            rem_dev    false    225            ?           2606    20458    polls_poll polls_poll_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.polls_poll
    ADD CONSTRAINT polls_poll_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.polls_poll DROP CONSTRAINT polls_poll_pkey;
       public            rem_dev    false    220            ?           2606    20469 "   polls_question polls_question_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.polls_question
    ADD CONSTRAINT polls_question_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.polls_question DROP CONSTRAINT polls_question_pkey;
       public            rem_dev    false    222            ?           2606    20519     polls_variant polls_variant_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.polls_variant
    ADD CONSTRAINT polls_variant_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.polls_variant DROP CONSTRAINT polls_variant_pkey;
       public            rem_dev    false    223            ?           1259    20437    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            rem_dev    false    207            ?           1259    20374 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            rem_dev    false    209            ?           1259    20375 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            rem_dev    false    209            ?           1259    20360 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            rem_dev    false    205            ?           1259    20390 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            rem_dev    false    213            ?           1259    20389 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            rem_dev    false    213            ?           1259    20404 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            rem_dev    false    215            ?           1259    20403 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            rem_dev    false    215            ?           1259    20431     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            rem_dev    false    211            ?           1259    20427 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            rem_dev    false    217            ?           1259    20428 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            rem_dev    false    217            ?           1259    20447 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            rem_dev    false    218            ?           1259    20446 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            rem_dev    false    218            ?           2606    20369 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          rem_dev    false    2958    209    205            ?           2606    20364 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          rem_dev    false    2963    207    209            ?           2606    20355 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          rem_dev    false    205    203    2953            ?           2606    20384 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          rem_dev    false    213    2963    207            ?           2606    20379 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          rem_dev    false    2971    213    211            ?           2606    20398 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          rem_dev    false    2958    215    205            ?           2606    20393 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          rem_dev    false    2971    211    215            ?           2606    20417 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          rem_dev    false    203    2953    217            ?           2606    20422 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          rem_dev    false    211    217    2971            M      x?????? ? ?      O      x?????? ? ?      K   ?  x?]?Yj?0@?5??	J?%?w?Q(&???S/	?}??h??Y??@??}??h???[?2??w??{;?JD??m?C?++?0?ł?J??G??/j????~??1????Z΀d?ؓ?3,	*?,??DG?]??6???U(???Z.?ɋ??2B:??????q??&W???	???iJ??????e7?qu?x?u???j???נ]?7??Z?&!?_??O~?/??F??a=[?!??????]?d??.?1?Z?Q????N???J?w????M' ׌?9?S?8?z?Էqqg\N'?L?c?b?H?1U?@?È?????wA?t????d?T??dH???d@??[ü???лL>Ce??	i??$i1Y??5?nL}} ??{??      Q   ?   x?M?O?0@??St?????? (?E?)?(?0???-K??g???]???5????pa? -6_?4̃????I?]?ҝ????Y?????gqk]>6G?uuC??????&????#??L?bG2?w	Cz?B?㬎??iƷ"Hs?????O??B??8????ز?/F?2?      S      x?????? ? ?      U      x?????? ? ?      W      x?????? ? ?      I   w   x?M??
?0???|#??œ?a??6?dw??*x??tCJڳx???P?I??͢
???/Z3+?q???*>g>e??D?Km?gʚ?-??1??qmb??s?m~U6?ַ?4?:?      G   Q  x????n?0???S?~U???,?,o⦖???n??k
iC??pc??3g?űkG׎?WƷ~??.? <???	h?]2????,?4??W?Z褠?=5?}@"???$l????s4?LpM??L??3?t?g(??H?1?ƈ:c???Z?Z۳9?u??cI?Zd??*.?v??tbZ۸}?Kr???GL?B??!YJz??OS????E	???V]P??????K?RK?(z??KJ?d;]?ވG??*!??~ɨ?0??}?l??????e
??}?|X?͹??>??<??ͧ\?|?ڟ?؅!w߅?Ӹa???WH???+N??s'f?#If[I?*??P?	?Q?dA?C7??a4
ȓbŀ???3}?>?.&r?M???g?8^V??Ãeif?*??zwW??4???????i?PQ(16???l?o????^H'?_??D??.J?P???6]'-xw???E?Uq?j?$?č?~Q?ır*KT??s?t?y-&????r ?
EI?w??l???n??nZ??XR?e????!2???b?dL??bӪ????l7??2???ua?A?%?j???p8?????      X   [  x???Kr?0 ?u|??;x~I???nl??	)Lg<?????铮{?n?|?03?&??8m'5jM<??H??SW???;??[??e?I?w?턽?[????U3?γ4K?u>yFJ???_?[?N?ԡ??u???4E??=?`m??/?B?Dv}8/??㻕DhtΡ??E?t??֒?moظ?aNyk?Q?>?ôGtPnf?-T^_Yrk?r??Hu?*P?_?5/??????w4ӄ?????)`(~`b??47?????@???ڑj8aU?ߊ??ߘF??O???B~~e^?1?E????q?/???????-??????#??`??T????f?/Q???      _   @   x?3?4?4?????I??/??2?4???j?b\Ɯ? ?????1X?(`?,`0
?91z\\\ ??{      Z   (  x?u?ON?@??3????AZ]v??x??Mjl?4q?DiQ?B??͍?Z???}?y?M????͑?~j???.VX??q1>?;$??????~&?o??A?\Y??????5?=?Pa%`ўc??/??)J2+Tr?????rT-??u/?>+$j???????qK??????-C%? t?RR?]$??raf??G???Kyjfw???W?????J?????O??F?Y?o?Z)???p?"t??&?G{us?A'G(?PON?4?>w???t??z???'v????ٓ?tu???ڑ??      \   U   x?3??H,Q?,V??/-RpV??/??4?4?2?t,J	+?&e???s???:2?3?3K2S???Z2??9???1z\\\ J?C      ]   Z   x???4????4???4??L-??L?????rNc.C#????̼݀ԒԢ??Ңt??1?1gpfnZjQ~A~HĄӄ34-Ȍ???? ??     