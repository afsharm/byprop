PGDMP     !    /            
    x            byprop     12.5 (Ubuntu 12.5-1.pgdg20.04+1)     12.5 (Ubuntu 12.5-1.pgdg20.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24976    byprop    DATABASE     x   CREATE DATABASE byprop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE byprop;
                postgres    false            �            1259    25070    province    TABLE     �   CREATE TABLE public.province (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    stat_code character varying(50) DEFAULT NULL::character varying
);
    DROP TABLE public.province;
       public         heap    postgres    false            �            1259    25074    ostan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ostan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.ostan_id_seq;
       public          postgres    false    210            �           0    0    ostan_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.ostan_id_seq OWNED BY public.province.id;
          public          postgres    false    211            1           2604    25090    province id    DEFAULT     g   ALTER TABLE ONLY public.province ALTER COLUMN id SET DEFAULT nextval('public.ostan_id_seq'::regclass);
 :   ALTER TABLE public.province ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �          0    25070    province 
   TABLE DATA           7   COPY public.province (id, name, stat_code) FROM stdin;
    public          postgres    false    210   �
       �           0    0    ostan_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ostan_id_seq', 1, false);
          public          postgres    false    211            3           2606    25100    province ostan_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.province
    ADD CONSTRAINT ostan_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.province DROP CONSTRAINT ostan_pkey;
       public            postgres    false    210            �   m  x�m�Ar�0E��)8A'�	w�e` a�)�	e�i�EO"����)��tg�=�B�b�������N�x5��u���)��[���9��6^}C�s�_yߒd<��$t�S�xA1J�[�d��������ɯ��4V1P[;Ǭ��͎@��Y2���ɫ�U]��C��Oߡ��>�.�.�X�`�7���҂C�^M� Af|)1g,r ݏ'��wcu�a)�Wi�,%����!h����5��5-�nWVIb���d�?w|b�5��z=�q�)��ppLS�ahI
֜��rk���4���¹��@>�@Ǵ���k�eT;���cƊY��֏��F9dc�)+pT~~b�o�k�     