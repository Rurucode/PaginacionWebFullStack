PGDMP     %            	         z            pruebaTecnica    14.1    14.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16418    pruebaTecnica    DATABASE     k   CREATE DATABASE "pruebaTecnica" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "pruebaTecnica";
                postgres    false            ?            1259    16470 	   articulos    TABLE     ?   CREATE TABLE public.articulos (
    id_articulo integer NOT NULL,
    nombre character varying(50) NOT NULL,
    relevancia integer NOT NULL,
    precio character varying(25) NOT NULL,
    id_fabricante integer NOT NULL
);
    DROP TABLE public.articulos;
       public         heap    postgres    false            ?            1259    16469    articulos_id_articulo_seq    SEQUENCE     ?   CREATE SEQUENCE public.articulos_id_articulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.articulos_id_articulo_seq;
       public          postgres    false    212            ?           0    0    articulos_id_articulo_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.articulos_id_articulo_seq OWNED BY public.articulos.id_articulo;
          public          postgres    false    211            ?            1259    16439    fabricantes    TABLE     ?   CREATE TABLE public.fabricantes (
    id_fabricante integer NOT NULL,
    nombre character varying(50) NOT NULL,
    cif character varying(9) NOT NULL,
    direccion character varying(200) NOT NULL
);
    DROP TABLE public.fabricantes;
       public         heap    postgres    false            ?            1259    16438    fabricantes_id_fabricante_seq    SEQUENCE     ?   CREATE SEQUENCE public.fabricantes_id_fabricante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.fabricantes_id_fabricante_seq;
       public          postgres    false    210            ?           0    0    fabricantes_id_fabricante_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.fabricantes_id_fabricante_seq OWNED BY public.fabricantes.id_fabricante;
          public          postgres    false    209            b           2604    16473    articulos id_articulo    DEFAULT     ~   ALTER TABLE ONLY public.articulos ALTER COLUMN id_articulo SET DEFAULT nextval('public.articulos_id_articulo_seq'::regclass);
 D   ALTER TABLE public.articulos ALTER COLUMN id_articulo DROP DEFAULT;
       public          postgres    false    211    212    212            a           2604    16442    fabricantes id_fabricante    DEFAULT     ?   ALTER TABLE ONLY public.fabricantes ALTER COLUMN id_fabricante SET DEFAULT nextval('public.fabricantes_id_fabricante_seq'::regclass);
 H   ALTER TABLE public.fabricantes ALTER COLUMN id_fabricante DROP DEFAULT;
       public          postgres    false    209    210    210            ?          0    16470 	   articulos 
   TABLE DATA           [   COPY public.articulos (id_articulo, nombre, relevancia, precio, id_fabricante) FROM stdin;
    public          postgres    false    212   ?       ?          0    16439    fabricantes 
   TABLE DATA           L   COPY public.fabricantes (id_fabricante, nombre, cif, direccion) FROM stdin;
    public          postgres    false    210   ?       ?           0    0    articulos_id_articulo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.articulos_id_articulo_seq', 30, true);
          public          postgres    false    211                        0    0    fabricantes_id_fabricante_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.fabricantes_id_fabricante_seq', 7, true);
          public          postgres    false    209            f           2606    16475    articulos articulos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_pkey PRIMARY KEY (id_articulo);
 B   ALTER TABLE ONLY public.articulos DROP CONSTRAINT articulos_pkey;
       public            postgres    false    212            d           2606    16444    fabricantes fabricantes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.fabricantes
    ADD CONSTRAINT fabricantes_pkey PRIMARY KEY (id_fabricante);
 F   ALTER TABLE ONLY public.fabricantes DROP CONSTRAINT fabricantes_pkey;
       public            postgres    false    210            g           2606    16476 &   articulos articulos_id_fabricante_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_fabricante_fkey FOREIGN KEY (id_fabricante) REFERENCES public.fabricantes(id_fabricante);
 P   ALTER TABLE ONLY public.articulos DROP CONSTRAINT articulos_id_fabricante_fkey;
       public          postgres    false    212    210    3172            ?     x?m?Kr?@??=???>?<4i	6?T?x?Yd3?)G??Pz?mr??K?$??F???Q???v_5?#&????+(?	???ܞθ?$??\??^??4?5,??M???}?C$?DҮ,??????&!,???p????[?!?)CF\2???{?????hE????T??@?i?UJBQw]·????]	1??av̶??E}B?iTR?!b"?F????-2?(??F??J^#?C?J?(?FTK?c@???>???v?
??_????)?M??҅YR7?ѣu?IS?????=??G??2+???[??)H/?%?T?*˳jG?&??+??s?>?????G/??nv????{?+????#?K??V?d??8Np0?%ۨӍU?+???/?Nt[?>?G???T;J??M??Y??k_ND??Lg?B/?????????ɜ?Z%ŁDpq~?y?e?:??ܩ????S)(&aES?T???S??U>?>,????f?K??]?v?}???j???      ?   ?   x?m?;n?0D??)??(?#??+??"??Y??? ?)???C7i??f???	!/???J;?^_a?<:?!W,???+*+z???/?5X?_???Ďp?B\3.9-? ?\*q?Fc?q<?ra??}I?\?)G?@??P???c)??NTq*??s+??h8F??^	????(h?}}?Z?qs?(?{Zd/?żsh?M'?߄??FX?     