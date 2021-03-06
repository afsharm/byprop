PGDMP     )                
    x            byprop     12.5 (Ubuntu 12.5-1.pgdg20.04+1)     12.5 (Ubuntu 12.5-1.pgdg20.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24976    byprop    DATABASE     x   CREATE DATABASE byprop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE byprop;
                postgres    false            �            1259    25081    county    TABLE     �   CREATE TABLE public.county (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    province integer,
    stat_code character varying(50) DEFAULT NULL::character varying
);
    DROP TABLE public.county;
       public         heap    postgres    false            �            1259    25085    county_id_seq    SEQUENCE     �   CREATE SEQUENCE public.county_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.county_id_seq;
       public          postgres    false    214            �           0    0    county_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.county_id_seq OWNED BY public.county.id;
          public          postgres    false    215            �            1259    25070    province    TABLE     �   CREATE TABLE public.province (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    stat_code character varying(50) DEFAULT NULL::character varying
);
    DROP TABLE public.province;
       public         heap    postgres    false            �            1259    25074    province_id_seq    SEQUENCE     �   CREATE SEQUENCE public.province_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.province_id_seq;
       public          postgres    false    210            �           0    0    province_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.province_id_seq OWNED BY public.province.id;
          public          postgres    false    211            3           2604    25092 	   county id    DEFAULT     f   ALTER TABLE ONLY public.county ALTER COLUMN id SET DEFAULT nextval('public.county_id_seq'::regclass);
 8   ALTER TABLE public.county ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            1           2604    25090    province id    DEFAULT     j   ALTER TABLE ONLY public.province ALTER COLUMN id SET DEFAULT nextval('public.province_id_seq'::regclass);
 :   ALTER TABLE public.province ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �          0    25081    county 
   TABLE DATA           ?   COPY public.county (id, name, province, stat_code) FROM stdin;
    public          postgres    false    214   )       �          0    25070    province 
   TABLE DATA           7   COPY public.province (id, name, stat_code) FROM stdin;
    public          postgres    false    210   |#       �           0    0    county_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.county_id_seq', 1, false);
          public          postgres    false    215            �           0    0    province_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.province_id_seq', 1, false);
          public          postgres    false    211            5           2606    25100    province ostan_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.province
    ADD CONSTRAINT ostan_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.province DROP CONSTRAINT ostan_pkey;
       public            postgres    false    210            7           2606    25104    county shahrestan_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.county
    ADD CONSTRAINT shahrestan_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.county DROP CONSTRAINT shahrestan_pkey;
       public            postgres    false    214            �      x�]�M��H���)����.s��sUi��z6.W��֏�c/��|��/ Rr/HfH �TU��{~=>��ϗ�j�~S���^^�j(aM`�}Q���l���t�RTcQ�����<�ϧ��y_TESWe�����F�	_�.[�9����h�jS����b��-�ڔ���M"}]���j���˃�������񘺬*Ɯ�oZMji]V6������'����
�/..Y��7cYa��I�փ��-v�})�?�c���V�7UQW���?��=i�QK�SQ{�1$v�0�ME�(�JS��&�gi�F:�e���� �:�/�C�M�c�r���q����OᲪ릔�,8j�w�}
�j(k۸ǖ_X[x N�
m���m�t�u��ڎz
���\�l�|9�����#�kz}R�Ģ�=�XGW]6u��]�֘��O_�ܢ��nL����Q45��d�씢�rIc�O��9}7���>)Ķ��US66���I��jc��9����M���Y�}8�)[���Wv"��+�ʨ�f�·U�b<�x>9ȥK�b^kH4WJV�d_�$�vS�]@3)�s�k�~�q�Mm��+m�6���Dg��zѐ�⫦�0J��lux�eW�g�H��rQXJ�,%h�Ʋ�¨@� ���4���zu6e��eׯ��moX>醀���U15�|P!���L9��_�G���7��ov�T꫄.2h겯{&`�d|��]
N[�-�nMc+���gG�9>#4��z?�]�5��d�&Z�(�{��?�{g�OeN?<;�b=���Ya�i�����;�!X�C�����*[���II�(B�6�6��l�I�n������|S��'�ပ
{]J��y�E�(�\���q�ā5�˱
dΐ;�fqZ4�X߄?l�1�Շ�*�<�rlW����|��o4_w�=9o2�	�����}p��H|p;�޵�m�6��-�q_�c�1��:v�6�?�Jǧ���4;�*s�yUNUʬ����#6*���ȋ�6�k�[�lj|�%|(�v�րvɝʩ�kVK;�/�>�<��ܶ�l��`g�gWN��r攪�i
tO$m���&aYVq����>QE	6u�;�j��H���wuk�cӮa8�Y��1	�U_�Vmz˴K��v�`�����8+�8�6�Pն�r�G���*rA
\� ��J�?�,�7��	��"̢�}��kirD�Ak�>����m�荺 ��ǃ���q.���&�b�\5ZE_9����g J��B��_�o��=s��b�U�I�BS�� 4�͌��b�v��܀(�5pA,U�d�P�Ï�o���t:�]-� kbp$Q��Ql]����GmP~T0�?8��<Ĺ���L(��,���G
2
����&[����X���v��GҢ 3+��N��:~���bǷIgIn|�+n� _0��^BQ����N��h?W�ڜg�k�\���>NL��&��H��L]�wSk�]�>������_�V�9U,	�Vp'��	�J��Q� � g'��  �;W��v��ˎ/������}���a���s������
H��;�_�D�kO�O��4H��6��z<9�t��q�F��w�������l��28T�|b��i3��	�3��5KF�x!�W��Jw1ZeAҕXC�$xU�Hp�F�(�r5��];��y#Ҋ��w����;����Ь�pG�g��e0���ܯ;��س �r%
0|d�r����	�e�uy����Ы�L��J���
ɞ�߮��Q��D��Cc������C�)�Y'��~Iq�[�8G�1�DT$��fg��{�F�?q7^���p��#����r����jkà\�ٵ����2ʃ2�j���hX\�B� 8�X�j�	�����t�w�i5v9���-�>%�1m�8��������Ւqp��dxY���<,k��n���k����5C��h��K�k��Sq�˪��{͛>�
$���8�XN��aU��.I�b5;l;S�Fdb��J5/��Ҡ[��C����K�(�
��ޱ��Q�P�c'T�)�������T`E �dU}횄w�R�\%�)s�UJ���!�EY��0��|���!�����p*2��8���>��:�be�ͮ�6tB�D���+�V�ȿқI�����a����h�cׂ����oL�]�I�3j������pjO���|�� Sn��F>ރP�!�F�k��L�L �y�ݖ�ЩC2[���:�Zt�J�u�n�\m4$
�4��9�X4gT�:�;M0a�@
$�������#��K��,�$��A�=�(XL!�Y,�2�tt�~^��
(��!�s'���g4�mЦ����B�i:j�wA�Yd��$�v�g�(�ڮYi�m�I�Tci)��vW}�!x��k���m��`1��s�x���Q^lm�^���u���c�w�2�����1�O�J�h~��Ϛv���v����T���)mPW-���B��?��ꐃiwb)]".�Yv���{����x��"��Y��
I:rS�;:e9,��C%��>����R$���Ew���x�Q\V�C��|5�M����à��l1�{�ئ=F��j�%�WW�����qƺm���&����}N��<��@�,�m:����֊Id��G7�t�v�LV���)��q/�k�q�'2ͯ�1u�%]�&9ŷfv0X_��$�M+74�u�
��	��S���
�����&��Ĥ��1��*b�����.����7���#F�=�Ԓ\a41��xЗP��ؖ���z�6ѥ<����p�o��_�ϭ���Mw���J�Цo>%~��r{�QdB���6��p2�����:���M�مd��?H�w��t�=P�fW���AD!l��>,�A��9�釳5����=� S֩�of��jP���~h�鍮r��1C�����͘x����1%?�u)�p��6����B4�[�0>�S�E�3��<���z�&�����kKW�A�����W,e��7)�[ Ɣ�!�B��6���8^T�Q=�$n���U�a���.���A��яh�`��<�Ŧ�al����,����f15�k%��dG�Q��xŨ��>%�H�W)ʶ�]�\�9�u�4��9��ʽ��JXe,J��}'�<,��ܤ�(����>-� ��U�p��\��ˇ��Q����Mr�n��:��P�U��Ƽ���|�]�	����2��5��)�(~w{˽��ؕ�ÂC�]~ZC�h�(�F�,�Ű�G�����<D������Z�_�~�����*�庹��yp�G'�s�eF2�]���C�l	o+��T}1�{���xT��\�,AR�$膗UlҢ����k�ER����^)yH�3�ɷ^���7�G��s�W:S�]膶��ԗ�h�y�6���׸���.�^V�:�BW�(�X�+���Ջ$�7��6]���!WM�v�M	�葩�M�%׷�|���Y��l�Ko���ap���#d��H�x�;"�N��r�pU �s]�k6k�0�)�E��^�n���X�hy��O�N�/?��	�EE�B@���$]�
F��d ���2w�Q�@�ʲ��`�T�S3���0�cj����;A6lw%r�H��
�5�K����m�~��o���/�"Ѫ��{����V��Z�PW�#�~��T��-�ac�1�l,��[,��a��vw��nD���k�HA1�x�[Z-L�m�2����]7]!%�d�-G�D�@��.@m%B����Jwb��Ř�,$�%�uzD���Q��D����*��1�'׼{:D�ٲGu�$�
��BL+��,���WM�>��|�u�:������|�>�Gf��&�p�`���m?9tbѮ�l=X'b�RG�8E�1Q3���5�Xk<��� �F7�QF]w�m���()�����ֻR߰@k���_PrZ�|k%G�$�C���2$r�S1n\���ۖՙR�׶xh�f�0�H,(e U��rܘ��� ��eJPM�#J�J#��'-,��'U>��0���z_t�ĺ�z >  _DW=��s	���/d�e�-��^��<��E����s�l�.S!��S��ʰ�����X�i���hq-���M� Y���H.���ו�F�F��s��B�!�;���Xf�GN/+O!���Z4���8�(�V�T-�T���bM�_���4�\�<��'$�%���BSQ��
���Yj�ť�!�Úgh#s_|�ٮq�豈 ^	��x+:��{tP�g��o�q���"R��������V$��r ſ^݀?�÷�M<��v^O$m����ei~Ī:�[Q)`ܽ��i�ZL�N��fٱ`�]���e���-      �   m  x�m�Ar�0E��)8A'�	w�e` a�)�	e�i�EO"����)��tg�=�B�b�������N�x5��u���)��[���9��6^}C�s�_yߒd<��$t�S�xA1J�[�d��������ɯ��4V1P[;Ǭ��͎@��Y2���ɫ�U]��C��Oߡ��>�.�.�X�`�7���҂C�^M� Af|)1g,r ݏ'��wcu�a)�Wi�,%����!h����5��5-�nWVIb���d�?w|b�5��z=�q�)��ppLS�ahI
֜��rk���4���¹��@>�@Ǵ���k�eT;���cƊY��֏��F9dc�)+pT~~b�o�k�     