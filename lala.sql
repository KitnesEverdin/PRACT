PGDMP                         {            TerrariaWiki    14.9    14.9 V    ]
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `
           1262    16879    TerrariaWiki    DATABASE     k   CREATE DATABASE "TerrariaWiki" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "TerrariaWiki";
                postgres    false            �            1259    16905    accessories    TABLE     �   CREATE TABLE public.accessories (
    id bigint NOT NULL,
    bonus character varying(255),
    image_name character varying(255),
    name character varying(255),
    sell_price double precision NOT NULL,
    user_id bigint
);
    DROP TABLE public.accessories;
       public         heap    postgres    false            �            1259    16904    accessories_id_seq    SEQUENCE     {   CREATE SEQUENCE public.accessories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.accessories_id_seq;
       public          postgres    false    215            a
           0    0    accessories_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.accessories_id_seq OWNED BY public.accessories.id;
          public          postgres    false    214            �            1259    16914    armor    TABLE       CREATE TABLE public.armor (
    id bigint NOT NULL,
    armor_class character varying(255),
    image_name character varying(255),
    name character varying(255),
    set_bonus character varying(255),
    total_defense integer NOT NULL,
    user_id bigint
);
    DROP TABLE public.armor;
       public         heap    postgres    false            �            1259    16913    armor_id_seq    SEQUENCE     u   CREATE SEQUENCE public.armor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.armor_id_seq;
       public          postgres    false    217            b
           0    0    armor_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.armor_id_seq OWNED BY public.armor.id;
          public          postgres    false    216            �            1259    16923    biomes    TABLE     �   CREATE TABLE public.biomes (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255)
);
    DROP TABLE public.biomes;
       public         heap    postgres    false            �            1259    24915 
   biomes_bosses    TABLE     d   CREATE TABLE public.biomes_bosses (
    bosses_id bigint NOT NULL,
    biomes_id bigint NOT NULL
);
 !   DROP TABLE public.biomes_bosses;
       public         heap    postgres    false            �            1259    16967    biomes_enemies    TABLE     f   CREATE TABLE public.biomes_enemies (
    enemies_id bigint NOT NULL,
    biomes_id bigint NOT NULL
);
 "   DROP TABLE public.biomes_enemies;
       public         heap    postgres    false            �            1259    16922 
   biomes_id_seq    SEQUENCE     v   CREATE SEQUENCE public.biomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.biomes_id_seq;
       public          postgres    false    219            c
           0    0 
   biomes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.biomes_id_seq OWNED BY public.biomes.id;
          public          postgres    false    218            �            1259    24918    biomes_weapons    TABLE     f   CREATE TABLE public.biomes_weapons (
    weapons_id bigint NOT NULL,
    biomes_id bigint NOT NULL
);
 "   DROP TABLE public.biomes_weapons;
       public         heap    postgres    false            �            1259    16932    bosses    TABLE     �   CREATE TABLE public.bosses (
    id bigint NOT NULL,
    attack integer NOT NULL,
    defense integer NOT NULL,
    image_name character varying(255),
    name character varying(255),
    spawn_condition character varying(255),
    hp integer NOT NULL
);
    DROP TABLE public.bosses;
       public         heap    postgres    false            �            1259    16931 
   bosses_id_seq    SEQUENCE     v   CREATE SEQUENCE public.bosses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.bosses_id_seq;
       public          postgres    false    221            d
           0    0 
   bosses_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.bosses_id_seq OWNED BY public.bosses.id;
          public          postgres    false    220            �            1259    16941    enemies    TABLE     �   CREATE TABLE public.enemies (
    id bigint NOT NULL,
    attack integer NOT NULL,
    defense integer NOT NULL,
    hp integer NOT NULL,
    image_name character varying(255),
    name character varying(255),
    spawn_zone character varying(255)
);
    DROP TABLE public.enemies;
       public         heap    postgres    false            �            1259    16940    enemies_id_seq    SEQUENCE     w   CREATE SEQUENCE public.enemies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.enemies_id_seq;
       public          postgres    false    223            e
           0    0    enemies_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.enemies_id_seq OWNED BY public.enemies.id;
          public          postgres    false    222            �            1259    16950    npc    TABLE     �   CREATE TABLE public.npc (
    id bigint NOT NULL,
    arrival character varying(100),
    description character varying(200),
    image_name character varying(255),
    name character varying(100),
    biomes_id bigint
);
    DROP TABLE public.npc;
       public         heap    postgres    false            �            1259    16949 
   npc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.npc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.npc_id_seq;
       public          postgres    false    225            f
           0    0 
   npc_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.npc_id_seq OWNED BY public.npc.id;
          public          postgres    false    224            �            1259    16898    npcmodel    TABLE     �   CREATE TABLE public.npcmodel (
    id bigint NOT NULL,
    arrival character varying(100),
    description character varying(200),
    name character varying(100)
);
    DROP TABLE public.npcmodel;
       public         heap    postgres    false            �            1259    16897    npcmodel_id_seq    SEQUENCE     x   CREATE SEQUENCE public.npcmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.npcmodel_id_seq;
       public          postgres    false    213            g
           0    0    npcmodel_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.npcmodel_id_seq OWNED BY public.npcmodel.id;
          public          postgres    false    212            �            1259    16881 
   user_model    TABLE     �   CREATE TABLE public.user_model (
    id bigint NOT NULL,
    active boolean NOT NULL,
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.user_model;
       public         heap    postgres    false            �            1259    16880    user_model_id_seq    SEQUENCE     z   CREATE SEQUENCE public.user_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_model_id_seq;
       public          postgres    false    210            h
           0    0    user_model_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_model_id_seq OWNED BY public.user_model.id;
          public          postgres    false    209            �            1259    16889 	   user_role    TABLE     a   CREATE TABLE public.user_role (
    user_id bigint NOT NULL,
    roles character varying(255)
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    16959    weapons    TABLE     
  CREATE TABLE public.weapons (
    id bigint NOT NULL,
    attack_speed double precision NOT NULL,
    image_name character varying(255),
    knockback double precision NOT NULL,
    name character varying(255),
    type character varying(255),
    user_id bigint
);
    DROP TABLE public.weapons;
       public         heap    postgres    false            �            1259    16958    weapons_id_seq    SEQUENCE     w   CREATE SEQUENCE public.weapons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.weapons_id_seq;
       public          postgres    false    227            i
           0    0    weapons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.weapons_id_seq OWNED BY public.weapons.id;
          public          postgres    false    226            �           2604    16908    accessories id    DEFAULT     p   ALTER TABLE ONLY public.accessories ALTER COLUMN id SET DEFAULT nextval('public.accessories_id_seq'::regclass);
 =   ALTER TABLE public.accessories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16917    armor id    DEFAULT     d   ALTER TABLE ONLY public.armor ALTER COLUMN id SET DEFAULT nextval('public.armor_id_seq'::regclass);
 7   ALTER TABLE public.armor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16926 	   biomes id    DEFAULT     f   ALTER TABLE ONLY public.biomes ALTER COLUMN id SET DEFAULT nextval('public.biomes_id_seq'::regclass);
 8   ALTER TABLE public.biomes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16935 	   bosses id    DEFAULT     f   ALTER TABLE ONLY public.bosses ALTER COLUMN id SET DEFAULT nextval('public.bosses_id_seq'::regclass);
 8   ALTER TABLE public.bosses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16944 
   enemies id    DEFAULT     h   ALTER TABLE ONLY public.enemies ALTER COLUMN id SET DEFAULT nextval('public.enemies_id_seq'::regclass);
 9   ALTER TABLE public.enemies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16953    npc id    DEFAULT     `   ALTER TABLE ONLY public.npc ALTER COLUMN id SET DEFAULT nextval('public.npc_id_seq'::regclass);
 5   ALTER TABLE public.npc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16901    npcmodel id    DEFAULT     j   ALTER TABLE ONLY public.npcmodel ALTER COLUMN id SET DEFAULT nextval('public.npcmodel_id_seq'::regclass);
 :   ALTER TABLE public.npcmodel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    16884 
   user_model id    DEFAULT     n   ALTER TABLE ONLY public.user_model ALTER COLUMN id SET DEFAULT nextval('public.user_model_id_seq'::regclass);
 <   ALTER TABLE public.user_model ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    16962 
   weapons id    DEFAULT     h   ALTER TABLE ONLY public.weapons ALTER COLUMN id SET DEFAULT nextval('public.weapons_id_seq'::regclass);
 9   ALTER TABLE public.weapons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            K
          0    16905    accessories 
   TABLE DATA           W   COPY public.accessories (id, bonus, image_name, name, sell_price, user_id) FROM stdin;
    public          postgres    false    215   d`       M
          0    16914    armor 
   TABLE DATA           e   COPY public.armor (id, armor_class, image_name, name, set_bonus, total_defense, user_id) FROM stdin;
    public          postgres    false    217   a       O
          0    16923    biomes 
   TABLE DATA           7   COPY public.biomes (id, description, name) FROM stdin;
    public          postgres    false    219   b       Y
          0    24915 
   biomes_bosses 
   TABLE DATA           =   COPY public.biomes_bosses (bosses_id, biomes_id) FROM stdin;
    public          postgres    false    229   �c       X
          0    16967    biomes_enemies 
   TABLE DATA           ?   COPY public.biomes_enemies (enemies_id, biomes_id) FROM stdin;
    public          postgres    false    228   �c       Z
          0    24918    biomes_weapons 
   TABLE DATA           ?   COPY public.biomes_weapons (weapons_id, biomes_id) FROM stdin;
    public          postgres    false    230   �c       Q
          0    16932    bosses 
   TABLE DATA           \   COPY public.bosses (id, attack, defense, image_name, name, spawn_condition, hp) FROM stdin;
    public          postgres    false    221    d       S
          0    16941    enemies 
   TABLE DATA           X   COPY public.enemies (id, attack, defense, hp, image_name, name, spawn_zone) FROM stdin;
    public          postgres    false    223   �d       U
          0    16950    npc 
   TABLE DATA           T   COPY public.npc (id, arrival, description, image_name, name, biomes_id) FROM stdin;
    public          postgres    false    225   ke       I
          0    16898    npcmodel 
   TABLE DATA           B   COPY public.npcmodel (id, arrival, description, name) FROM stdin;
    public          postgres    false    213   Ig       F
          0    16881 
   user_model 
   TABLE DATA           D   COPY public.user_model (id, active, password, username) FROM stdin;
    public          postgres    false    210   fg       G
          0    16889 	   user_role 
   TABLE DATA           3   COPY public.user_role (user_id, roles) FROM stdin;
    public          postgres    false    211   :h       W
          0    16959    weapons 
   TABLE DATA           _   COPY public.weapons (id, attack_speed, image_name, knockback, name, type, user_id) FROM stdin;
    public          postgres    false    227   oh       j
           0    0    accessories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.accessories_id_seq', 2, true);
          public          postgres    false    214            k
           0    0    armor_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.armor_id_seq', 2, true);
          public          postgres    false    216            l
           0    0 
   biomes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.biomes_id_seq', 7, true);
          public          postgres    false    218            m
           0    0 
   bosses_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.bosses_id_seq', 5, true);
          public          postgres    false    220            n
           0    0    enemies_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.enemies_id_seq', 7, true);
          public          postgres    false    222            o
           0    0 
   npc_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.npc_id_seq', 7, true);
          public          postgres    false    224            p
           0    0    npcmodel_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.npcmodel_id_seq', 1, false);
          public          postgres    false    212            q
           0    0    user_model_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_model_id_seq', 3, true);
          public          postgres    false    209            r
           0    0    weapons_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.weapons_id_seq', 2, true);
          public          postgres    false    226            �           2606    16912    accessories accessories_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.accessories
    ADD CONSTRAINT accessories_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.accessories DROP CONSTRAINT accessories_pkey;
       public            postgres    false    215            �           2606    16921    armor armor_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.armor
    ADD CONSTRAINT armor_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.armor DROP CONSTRAINT armor_pkey;
       public            postgres    false    217            �           2606    16930    biomes biomes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.biomes
    ADD CONSTRAINT biomes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.biomes DROP CONSTRAINT biomes_pkey;
       public            postgres    false    219            �           2606    16939    bosses bosses_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bosses
    ADD CONSTRAINT bosses_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.bosses DROP CONSTRAINT bosses_pkey;
       public            postgres    false    221            �           2606    16948    enemies enemies_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.enemies
    ADD CONSTRAINT enemies_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.enemies DROP CONSTRAINT enemies_pkey;
       public            postgres    false    223            �           2606    16957    npc npc_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.npc DROP CONSTRAINT npc_pkey;
       public            postgres    false    225            �           2606    16903    npcmodel npcmodel_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.npcmodel
    ADD CONSTRAINT npcmodel_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.npcmodel DROP CONSTRAINT npcmodel_pkey;
       public            postgres    false    213            �           2606    16888    user_model user_model_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_model
    ADD CONSTRAINT user_model_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_model DROP CONSTRAINT user_model_pkey;
       public            postgres    false    210            �           2606    16966    weapons weapons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.weapons
    ADD CONSTRAINT weapons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.weapons DROP CONSTRAINT weapons_pkey;
       public            postgres    false    227            �           2606    24926 !   armor fk4cqglbh7tift4gtv9tk3l3l78 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.armor
    ADD CONSTRAINT fk4cqglbh7tift4gtv9tk3l3l78 FOREIGN KEY (user_id) REFERENCES public.user_model(id);
 K   ALTER TABLE ONLY public.armor DROP CONSTRAINT fk4cqglbh7tift4gtv9tk3l3l78;
       public          postgres    false    210    3230    217            �           2606    24921 '   accessories fk4l0ymdwe2fdndoae9tcj0xn8k 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.accessories
    ADD CONSTRAINT fk4l0ymdwe2fdndoae9tcj0xn8k FOREIGN KEY (user_id) REFERENCES public.user_model(id);
 Q   ALTER TABLE ONLY public.accessories DROP CONSTRAINT fk4l0ymdwe2fdndoae9tcj0xn8k;
       public          postgres    false    210    215    3230            �           2606    24951    npc fkd7d979ebuq453gt2dnjruhq6t 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.npc
    ADD CONSTRAINT fkd7d979ebuq453gt2dnjruhq6t FOREIGN KEY (biomes_id) REFERENCES public.biomes(id);
 I   ALTER TABLE ONLY public.npc DROP CONSTRAINT fkd7d979ebuq453gt2dnjruhq6t;
       public          postgres    false    225    3238    219            �           2606    24956 #   weapons fke4d9pfssntkivkcrxvbryjg6o 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.weapons
    ADD CONSTRAINT fke4d9pfssntkivkcrxvbryjg6o FOREIGN KEY (user_id) REFERENCES public.user_model(id);
 M   ALTER TABLE ONLY public.weapons DROP CONSTRAINT fke4d9pfssntkivkcrxvbryjg6o;
       public          postgres    false    227    210    3230            �           2606    16970 *   biomes_enemies fkgg6smiepsgsjlixxx667cndfj 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.biomes_enemies
    ADD CONSTRAINT fkgg6smiepsgsjlixxx667cndfj FOREIGN KEY (biomes_id) REFERENCES public.biomes(id);
 T   ALTER TABLE ONLY public.biomes_enemies DROP CONSTRAINT fkgg6smiepsgsjlixxx667cndfj;
       public          postgres    false    3238    228    219            �           2606    16975 *   biomes_enemies fkgjkp10u0893aowouup9awa2hc 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.biomes_enemies
    ADD CONSTRAINT fkgjkp10u0893aowouup9awa2hc FOREIGN KEY (enemies_id) REFERENCES public.enemies(id);
 T   ALTER TABLE ONLY public.biomes_enemies DROP CONSTRAINT fkgjkp10u0893aowouup9awa2hc;
       public          postgres    false    3242    228    223            �           2606    24941 *   biomes_weapons fkii0ah8j6jrvfjjp9yoj6y91oc 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.biomes_weapons
    ADD CONSTRAINT fkii0ah8j6jrvfjjp9yoj6y91oc FOREIGN KEY (biomes_id) REFERENCES public.biomes(id);
 T   ALTER TABLE ONLY public.biomes_weapons DROP CONSTRAINT fkii0ah8j6jrvfjjp9yoj6y91oc;
       public          postgres    false    3238    230    219            �           2606    24931 )   biomes_bosses fkk3q6h3u6sb74rts0nd2i1d61w 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.biomes_bosses
    ADD CONSTRAINT fkk3q6h3u6sb74rts0nd2i1d61w FOREIGN KEY (biomes_id) REFERENCES public.biomes(id);
 S   ALTER TABLE ONLY public.biomes_bosses DROP CONSTRAINT fkk3q6h3u6sb74rts0nd2i1d61w;
       public          postgres    false    229    219    3238            �           2606    24936 )   biomes_bosses fkka803m0u0tmr0df1fycv7j3i4 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.biomes_bosses
    ADD CONSTRAINT fkka803m0u0tmr0df1fycv7j3i4 FOREIGN KEY (bosses_id) REFERENCES public.bosses(id);
 S   ALTER TABLE ONLY public.biomes_bosses DROP CONSTRAINT fkka803m0u0tmr0df1fycv7j3i4;
       public          postgres    false    229    221    3240            �           2606    24946 *   biomes_weapons fkmlqfoa0u22dqus2cpirjjtthi 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.biomes_weapons
    ADD CONSTRAINT fkmlqfoa0u22dqus2cpirjjtthi FOREIGN KEY (weapons_id) REFERENCES public.weapons(id);
 T   ALTER TABLE ONLY public.biomes_weapons DROP CONSTRAINT fkmlqfoa0u22dqus2cpirjjtthi;
       public          postgres    false    227    230    3246            �           2606    16892 $   user_role fkryojaj4bpgbcrlxbtdbejvwn 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkryojaj4bpgbcrlxbtdbejvwn FOREIGN KEY (user_id) REFERENCES public.user_model(id);
 N   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fkryojaj4bpgbcrlxbtdbejvwn;
       public          postgres    false    3230    211    210            K
   �   x�%��	�@�ϻU��@Z���
r
�4b, Y�E,��c4�[xӑo"3Û������O��o���E�J���F�s��=��f�����a�謥�sLxu��D��G/����22:F�EL��c#'���f�mWY1��]o�K���7��q�%>�j��ta��Z�����      M
   �   x�5��
�0�kg
�"�` *:&HE�(x($!�!� $��<W�&�l���[w���@�)��0�0�U�h�^D�C������kT��$W���$�F˱�D�A+)J��͌A���(	��:˚����6�q�?�����-��ܒ��6+����8���n�k�Y?5�d�~.H�t撡�`�Q���]!�j�p兾�yž�      O
   �  x�mRMJ�@^gN1K�P���­kA=@�PT�Z+Ņ�E������v��
�\������.:̼����5{^�B��^\�_]����ԆQH���C�*����ż}�
�5��d-G�Ke1g����
%���]Hx��+Qv,-�0iAB��D ��J�*;��r��-EXA�A跦��~�Vb��\�����^+��=j�!�X
Fi�9��>]mWb�#<���Y�gu\���D�ɠ�۱�y������a�Wlt���I@'�H�L��5��	Y,dY�����S,i�fգ4GTK��>� �J�R«�>!e�k�L�}lI�+F�8�-�	J鷬P���qI[�ʉ�
��RY��o�9��n?�I�a��S#�����$3�%πű9�c~ �6��      Y
   
   x������ � �      X
      x�3�4�2�=... E�      Z
      x�3�4�2�=... ��      Q
   �   x�U�=�@�뷧���ZZ��X$Ab��
�#�'6��_Āx��9j�����Iǈ�Io1��2���3��-n8k6�j���`��~��f�)+T%���n5N�	m�n�>p�3F��dd��0
g�/�@�v�����8�w�GT��5ڮS��R8��!�/~�J!ب���zʂ�      S
   �   x�3�42��4��٩9�%zy�^�ua���^l���2�44�4�46�t/JM����M�(�Qva���;��v_�qa;X����	��h~AfJjD��.6_�Ra�ih�i�ib�����	7w߅=6^�R���� +^E�      U
   �  x�mRKjA]���`"�s��W�,��F��9��n$!K²�!�B�c}���>Wxu�į�G�,����~����/L�@�}���Kdȵ
�BGX�9|� Ӷ�s�5�S���'Q漴�6QRd�N��T����@�ڢ]�;nv9�:�g��x��
i�(����3�ZMa3��{wx�د|n�G��&5��a�u�`߃�ҭ�z��R��R�9s�%RG�6��½�����5ZǑ�V�D���;|o��\<ҟ�άC;�yR,��/)�-�aCI���;�6�_�A�����Q7assg�y��f�z*XQerk�mp�(vD�?����,�����լo��ᯠj� �*yM��M�"3�ޞ����|:n4#ʷ�����]�l�L���L˶��F{[��R�F�u�aBl$�����]�-��{���ը�&eds��c%I�g����      I
   
   x������ � �      F
   �   x�E��v�   �g��= ��X�)͊j����!N�S�;~��� �T�Q�i�iz6kQ�[yi������O�w�ϖ���Y�.���&�b�ލovp���cl��Z��ǫ�y�Ʒ��|�(��,���́��{w���,��~C�l
s�홝��t�{q͘�0���RfN��	:"ɤ�j|�WNw@U�u�3��~HB9      G
   %   x�3��u�stw�2�tt����2�
v
����� \;�      W
   �   x�3�46�.I,J)-.q)JL���+�K�4�0�¾��@ܪpa�ņ.캰���.l����D ���wa���/쾰��pǅ�@�&�?.#NcΨԼ�����_�
Դ�b�9�^l������ x=G)     