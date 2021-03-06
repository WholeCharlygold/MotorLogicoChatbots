PGDMP                  	    	    x        
   chatblocks %   10.14 (Ubuntu 10.14-0ubuntu0.18.04.1) %   10.14 (Ubuntu 10.14-0ubuntu0.18.04.1) ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    16441 
   chatblocks    DATABASE     |   CREATE DATABASE chatblocks WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_MX.UTF-8' LC_CTYPE = 'es_MX.UTF-8';
    DROP DATABASE chatblocks;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13081    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                       1259    17106 
   bloquecase    TABLE     ?  CREATE TABLE public.bloquecase (
    namestate character varying,
    messages character varying,
    type_messages character varying,
    typing_messages character varying,
    options character varying,
    blocktype character varying,
    url character varying,
    method character varying,
    default_id character varying,
    default_message character varying,
    type_default_message character varying,
    id_var integer,
    id_block integer NOT NULL,
    id_robot integer
);
    DROP TABLE public.bloquecase;
       public         postgres    false    3                       1259    17104    bloquecase_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloquecase_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.bloquecase_id_block_seq;
       public       postgres    false    3    258            ?           0    0    bloquecase_id_block_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.bloquecase_id_block_seq OWNED BY public.bloquecase.id_block;
            public       postgres    false    257            ?            1259    16442    bloqueinformativo    TABLE     ?  CREATE TABLE public.bloqueinformativo (
    namestate character varying,
    contenido character varying,
    next_id character varying,
    blocktype character varying,
    contenttype character varying,
    typingtime character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
 %   DROP TABLE public.bloqueinformativo;
       public         postgres    false    3            ?            1259    16448    bloqueinfo_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinfo_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.bloqueinfo_id_block_seq;
       public       postgres    false    3    196            ?           0    0    bloqueinfo_id_block_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.bloqueinfo_id_block_seq OWNED BY public.bloqueinformativo.id_block;
            public       postgres    false    197            ?            1259    16450    bloqueinfo_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinfo_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.bloqueinfo_id_robot_seq;
       public       postgres    false    3    196            ?           0    0    bloqueinfo_id_robot_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.bloqueinfo_id_robot_seq OWNED BY public.bloqueinformativo.id_robot;
            public       postgres    false    198            ?            1259    16452    bloqueinformativodinamico    TABLE     ?  CREATE TABLE public.bloqueinformativodinamico (
    namestate character varying,
    contenido character varying,
    next_id character varying,
    blocktype character varying,
    contenttype character varying,
    typingtime character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
 -   DROP TABLE public.bloqueinformativodinamico;
       public         postgres    false    3            ?            1259    16458    bloqueinfodinamico_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinfodinamico_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.bloqueinfodinamico_id_block_seq;
       public       postgres    false    3    199            ?           0    0    bloqueinfodinamico_id_block_seq    SEQUENCE OWNED BY     j   ALTER SEQUENCE public.bloqueinfodinamico_id_block_seq OWNED BY public.bloqueinformativodinamico.id_block;
            public       postgres    false    200            ?            1259    16460    bloqueinfodinamico_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinfodinamico_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.bloqueinfodinamico_id_robot_seq;
       public       postgres    false    199    3            ?           0    0    bloqueinfodinamico_id_robot_seq    SEQUENCE OWNED BY     j   ALTER SEQUENCE public.bloqueinfodinamico_id_robot_seq OWNED BY public.bloqueinformativodinamico.id_robot;
            public       postgres    false    201            ?            1259    16462    bloqueinput    TABLE     ?  CREATE TABLE public.bloqueinput (
    namestate character varying,
    contenido character varying,
    next_id character varying,
    blocktype character varying,
    contenttype character varying,
    typingtime character varying,
    validacion character varying,
    default_id character varying,
    id_var character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
    DROP TABLE public.bloqueinput;
       public         postgres    false    3            ?            1259    16468    bloqueinput_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinput_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bloqueinput_id_block_seq;
       public       postgres    false    202    3            ?           0    0    bloqueinput_id_block_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bloqueinput_id_block_seq OWNED BY public.bloqueinput.id_block;
            public       postgres    false    203            ?            1259    16470    bloqueinput_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinput_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bloqueinput_id_robot_seq;
       public       postgres    false    3    202            ?           0    0    bloqueinput_id_robot_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bloqueinput_id_robot_seq OWNED BY public.bloqueinput.id_robot;
            public       postgres    false    204            ?            1259    16472    bloqueinputdinamico    TABLE     ?  CREATE TABLE public.bloqueinputdinamico (
    namestate character varying,
    contenido character varying,
    next_id character varying,
    blocktype character varying,
    contenttype character varying,
    typingtime character varying,
    validacion character varying,
    default_id character varying,
    id_var character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
 '   DROP TABLE public.bloqueinputdinamico;
       public         postgres    false    3            ?            1259    16478     bloqueinputdinamico_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinputdinamico_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.bloqueinputdinamico_id_block_seq;
       public       postgres    false    205    3            ?           0    0     bloqueinputdinamico_id_block_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.bloqueinputdinamico_id_block_seq OWNED BY public.bloqueinputdinamico.id_block;
            public       postgres    false    206            ?            1259    16480     bloqueinputdinamico_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinputdinamico_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.bloqueinputdinamico_id_robot_seq;
       public       postgres    false    3    205            ?           0    0     bloqueinputdinamico_id_robot_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.bloqueinputdinamico_id_robot_seq OWNED BY public.bloqueinputdinamico.id_robot;
            public       postgres    false    207                       1259    17128    bloqueinternalprocess    TABLE     !  CREATE TABLE public.bloqueinternalprocess (
    namestate character varying,
    blocktype character varying,
    url character varying,
    method character varying,
    id_block integer NOT NULL,
    next_true character varying,
    next_false character varying,
    id_robot integer
);
 )   DROP TABLE public.bloqueinternalprocess;
       public         postgres    false    3                       1259    17126 "   bloqueinternalprocess_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueinternalprocess_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.bloqueinternalprocess_id_block_seq;
       public       postgres    false    260    3            ?           0    0 "   bloqueinternalprocess_id_block_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.bloqueinternalprocess_id_block_seq OWNED BY public.bloqueinternalprocess.id_block;
            public       postgres    false    259                       1259    17156 	   bloquenlp    TABLE       CREATE TABLE public.bloquenlp (
    namestate character varying,
    blocktype character varying,
    id_block integer NOT NULL,
    json_nlp character varying,
    id_robot integer,
    default_id character varying,
    default_message character varying
);
    DROP TABLE public.bloquenlp;
       public         postgres    false    3                       1259    17154    bloquenlp_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloquenlp_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.bloquenlp_id_block_seq;
       public       postgres    false    262    3            ?           0    0    bloquenlp_id_block_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.bloquenlp_id_block_seq OWNED BY public.bloquenlp.id_block;
            public       postgres    false    261            ?            1259    16482    bloquequickreply    TABLE     ?  CREATE TABLE public.bloquequickreply (
    namestate character varying,
    contenido character varying,
    opciones character varying,
    next_id character varying,
    blocktype character varying,
    typingtime character varying,
    default_id character varying,
    id_var character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
 $   DROP TABLE public.bloquequickreply;
       public         postgres    false    3            ?            1259    16488    bloqueqr_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueqr_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bloqueqr_id_block_seq;
       public       postgres    false    208    3            ?           0    0    bloqueqr_id_block_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.bloqueqr_id_block_seq OWNED BY public.bloquequickreply.id_block;
            public       postgres    false    209            ?            1259    16490    bloqueqr_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueqr_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bloqueqr_id_robot_seq;
       public       postgres    false    208    3            ?           0    0    bloqueqr_id_robot_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.bloqueqr_id_robot_seq OWNED BY public.bloquequickreply.id_robot;
            public       postgres    false    210            ?            1259    16492    bloquequickreplydinamico    TABLE     ?  CREATE TABLE public.bloquequickreplydinamico (
    namestate character varying,
    contenido character varying,
    opciones character varying,
    next_id character varying,
    blocktype character varying,
    typingtime character varying,
    default_id character varying,
    id_var character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
 ,   DROP TABLE public.bloquequickreplydinamico;
       public         postgres    false    3            ?            1259    16498    bloqueqrdinamico_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueqrdinamico_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.bloqueqrdinamico_id_block_seq;
       public       postgres    false    3    211            ?           0    0    bloqueqrdinamico_id_block_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.bloqueqrdinamico_id_block_seq OWNED BY public.bloquequickreplydinamico.id_block;
            public       postgres    false    212            ?            1259    16500    bloqueqrdinamico_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueqrdinamico_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.bloqueqrdinamico_id_robot_seq;
       public       postgres    false    3    211            ?           0    0    bloqueqrdinamico_id_robot_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.bloqueqrdinamico_id_robot_seq OWNED BY public.bloquequickreplydinamico.id_robot;
            public       postgres    false    213            ?            1259    16502    bloqueslide    TABLE     ?  CREATE TABLE public.bloqueslide (
    namestate character varying,
    next_id character varying,
    blocktype character varying,
    typingtime character varying,
    default_id character varying,
    id_var character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    opc_elm character varying,
    tag_active boolean
);
    DROP TABLE public.bloqueslide;
       public         postgres    false    3            ?            1259    16508    bloqueslide_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueslide_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bloqueslide_id_block_seq;
       public       postgres    false    214    3            ?           0    0    bloqueslide_id_block_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bloqueslide_id_block_seq OWNED BY public.bloqueslide.id_block;
            public       postgres    false    215            ?            1259    16510    bloqueslide_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueslide_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bloqueslide_id_robot_seq;
       public       postgres    false    3    214            ?           0    0    bloqueslide_id_robot_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bloqueslide_id_robot_seq OWNED BY public.bloqueslide.id_robot;
            public       postgres    false    216            ?            1259    16512    bloqueslidebuy    TABLE     c  CREATE TABLE public.bloqueslidebuy (
    namestate character varying,
    next_id character varying,
    blocktype character varying,
    typingtime character varying,
    default_id character varying,
    id_var character varying,
    id_elements character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    tag_active boolean
);
 "   DROP TABLE public.bloqueslidebuy;
       public         postgres    false    3            ?            1259    16518    bloqueslidebuy_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueslidebuy_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.bloqueslidebuy_id_block_seq;
       public       postgres    false    217    3            ?           0    0    bloqueslidebuy_id_block_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.bloqueslidebuy_id_block_seq OWNED BY public.bloqueslidebuy.id_block;
            public       postgres    false    218            ?            1259    16520    bloqueslidebuy_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueslidebuy_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.bloqueslidebuy_id_robot_seq;
       public       postgres    false    217    3                        0    0    bloqueslidebuy_id_robot_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.bloqueslidebuy_id_robot_seq OWNED BY public.bloqueslidebuy.id_robot;
            public       postgres    false    219            ?            1259    16522    bloqueslidedinamico    TABLE     ?  CREATE TABLE public.bloqueslidedinamico (
    namestate character varying,
    contenido character varying,
    next_id character varying,
    blocktype character varying,
    typingtime character varying,
    default_id character varying,
    id_var character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
 '   DROP TABLE public.bloqueslidedinamico;
       public         postgres    false    3            ?            1259    16528     bloqueslidedinamico_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueslidedinamico_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.bloqueslidedinamico_id_block_seq;
       public       postgres    false    220    3                       0    0     bloqueslidedinamico_id_block_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.bloqueslidedinamico_id_block_seq OWNED BY public.bloqueslidedinamico.id_block;
            public       postgres    false    221            ?            1259    16530     bloqueslidedinamico_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueslidedinamico_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.bloqueslidedinamico_id_robot_seq;
       public       postgres    false    3    220                       0    0     bloqueslidedinamico_id_robot_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.bloqueslidedinamico_id_robot_seq OWNED BY public.bloqueslidedinamico.id_robot;
            public       postgres    false    222            ?            1259    16532    bloqueticket    TABLE     ?  CREATE TABLE public.bloqueticket (
    namestate character varying,
    next_id character varying,
    blocktype character varying,
    typingtime character varying,
    currency character varying,
    rescue_var character varying,
    shipping_cost character varying,
    total_taxes character varying,
    street1_var character varying,
    street2_var character varying,
    city_var character varying,
    pc_var character varying,
    state_var character varying,
    country_var character varying,
    paymethod_var character varying,
    nameu_var character varying,
    id_block integer NOT NULL,
    id_robot integer NOT NULL,
    opc_nextid character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
     DROP TABLE public.bloqueticket;
       public         postgres    false    3            ?            1259    16538    bloqueticket_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueticket_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.bloqueticket_id_block_seq;
       public       postgres    false    3    223                       0    0    bloqueticket_id_block_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.bloqueticket_id_block_seq OWNED BY public.bloqueticket.id_block;
            public       postgres    false    224            ?            1259    16540    bloqueticket_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueticket_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.bloqueticket_id_robot_seq;
       public       postgres    false    223    3                       0    0    bloqueticket_id_robot_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.bloqueticket_id_robot_seq OWNED BY public.bloqueticket.id_robot;
            public       postgres    false    225            ?            1259    16542    bloqueticketdinamico    TABLE     f  CREATE TABLE public.bloqueticketdinamico (
    id_block integer NOT NULL,
    id_robot integer,
    namestate character varying,
    contenido character varying,
    blocktype character varying,
    typingtime character varying,
    opc_nextid character varying,
    next_id character varying,
    pos_y integer,
    pos_x integer,
    tag_active boolean
);
 (   DROP TABLE public.bloqueticketdinamico;
       public         postgres    false    3            ?            1259    16548 !   bloqueticketdinamico_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.bloqueticketdinamico_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.bloqueticketdinamico_id_block_seq;
       public       postgres    false    3    226                       0    0 !   bloqueticketdinamico_id_block_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.bloqueticketdinamico_id_block_seq OWNED BY public.bloqueticketdinamico.id_block;
            public       postgres    false    227            ?            1259    16550    botones    TABLE     ?   CREATE TABLE public.botones (
    id_elemento character varying,
    titlebutton character varying,
    typebutton character varying,
    contentbutton character varying,
    id_boton integer NOT NULL,
    opc_nextid character varying
);
    DROP TABLE public.botones;
       public         postgres    false    3            ?            1259    16556    botones_id_boton_seq    SEQUENCE     ?   CREATE SEQUENCE public.botones_id_boton_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.botones_id_boton_seq;
       public       postgres    false    3    228                       0    0    botones_id_boton_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.botones_id_boton_seq OWNED BY public.botones.id_boton;
            public       postgres    false    229            ?            1259    16558    conversaciones    TABLE     ?   CREATE TABLE public.conversaciones (
    id_conversacion integer NOT NULL,
    id_ticket character varying,
    conversacion character varying,
    fecha_creacion date,
    fecha_termino date
);
 "   DROP TABLE public.conversaciones;
       public         postgres    false    3            ?            1259    16564 "   conversaciones_id_conversacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.conversaciones_id_conversacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.conversaciones_id_conversacion_seq;
       public       postgres    false    3    230                       0    0 "   conversaciones_id_conversacion_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.conversaciones_id_conversacion_seq OWNED BY public.conversaciones.id_conversacion;
            public       postgres    false    231            ?            1259    16566    credencialesapis    TABLE     ?   CREATE TABLE public.credencialesapis (
    blocktype character varying,
    namecredencial character varying,
    credencial character varying,
    id_block integer NOT NULL,
    id_credencial integer NOT NULL
);
 $   DROP TABLE public.credencialesapis;
       public         postgres    false    3            ?            1259    16572    credencialesapis_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.credencialesapis_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.credencialesapis_id_block_seq;
       public       postgres    false    3    232                       0    0    credencialesapis_id_block_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.credencialesapis_id_block_seq OWNED BY public.credencialesapis.id_block;
            public       postgres    false    233            ?            1259    16574 "   credencialesapis_id_credencial_seq    SEQUENCE     ?   CREATE SEQUENCE public.credencialesapis_id_credencial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.credencialesapis_id_credencial_seq;
       public       postgres    false    232    3            	           0    0 "   credencialesapis_id_credencial_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.credencialesapis_id_credencial_seq OWNED BY public.credencialesapis.id_credencial;
            public       postgres    false    234            ?            1259    16576 	   elementos    TABLE     ?   CREATE TABLE public.elementos (
    blocktype character varying,
    title character varying,
    image_url character varying,
    subtitle character varying,
    id_block integer NOT NULL,
    id_elements integer NOT NULL
);
    DROP TABLE public.elementos;
       public         postgres    false    3            ?            1259    16582    elementos_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.elementos_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.elementos_id_block_seq;
       public       postgres    false    3    235            
           0    0    elementos_id_block_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.elementos_id_block_seq OWNED BY public.elementos.id_block;
            public       postgres    false    236            ?            1259    16584    elementos_id_elements_seq    SEQUENCE     ?   CREATE SEQUENCE public.elementos_id_elements_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.elementos_id_elements_seq;
       public       postgres    false    235    3                       0    0    elementos_id_elements_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.elementos_id_elements_seq OWNED BY public.elementos.id_elements;
            public       postgres    false    237            ?            1259    16586    elementosbuy    TABLE     .  CREATE TABLE public.elementosbuy (
    blocktype character varying,
    title character varying,
    image_url character varying,
    subtitle character varying,
    price character varying,
    id_block integer NOT NULL,
    id_elements integer NOT NULL,
    id_busqueda character varying NOT NULL
);
     DROP TABLE public.elementosbuy;
       public         postgres    false    3            ?            1259    16592    elementosbuy_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.elementosbuy_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.elementosbuy_id_block_seq;
       public       postgres    false    3    238                       0    0    elementosbuy_id_block_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.elementosbuy_id_block_seq OWNED BY public.elementosbuy.id_block;
            public       postgres    false    239            ?            1259    16594    elementosbuy_id_elements_seq    SEQUENCE     ?   CREATE SEQUENCE public.elementosbuy_id_elements_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.elementosbuy_id_elements_seq;
       public       postgres    false    3    238                       0    0    elementosbuy_id_elements_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.elementosbuy_id_elements_seq OWNED BY public.elementosbuy.id_elements;
            public       postgres    false    240            ?            1259    16596    internal_process    TABLE     &  CREATE TABLE public.internal_process (
    id_block integer NOT NULL,
    id_robot integer,
    namestate character varying,
    opc_nextid character varying,
    default_nextid character varying,
    blocktype character varying,
    pos_x integer,
    pos_y integer,
    tag_active boolean
);
 $   DROP TABLE public.internal_process;
       public         postgres    false    3            ?            1259    16602    internal_process_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.internal_process_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.internal_process_id_block_seq;
       public       postgres    false    241    3                       0    0    internal_process_id_block_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.internal_process_id_block_seq OWNED BY public.internal_process.id_block;
            public       postgres    false    242            ?            1259    16604 	   linksapis    TABLE     ?   CREATE TABLE public.linksapis (
    blocktype character varying,
    links character varying,
    id_block integer NOT NULL,
    id_link integer NOT NULL
);
    DROP TABLE public.linksapis;
       public         postgres    false    3            ?            1259    16610    linksapis_id_block_seq    SEQUENCE     ?   CREATE SEQUENCE public.linksapis_id_block_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.linksapis_id_block_seq;
       public       postgres    false    243    3                       0    0    linksapis_id_block_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.linksapis_id_block_seq OWNED BY public.linksapis.id_block;
            public       postgres    false    244            ?            1259    16612    linksapis_id_link_seq    SEQUENCE     ?   CREATE SEQUENCE public.linksapis_id_link_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.linksapis_id_link_seq;
       public       postgres    false    243    3                       0    0    linksapis_id_link_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.linksapis_id_link_seq OWNED BY public.linksapis.id_link;
            public       postgres    false    245            ?            1259    16614    operaciones    TABLE     M  CREATE TABLE public.operaciones (
    id_operacion integer NOT NULL,
    id_block integer,
    order_opc integer,
    type_operation character varying,
    new_exist character varying,
    id_var_1 integer,
    opc_operation character varying,
    id_var_2 integer,
    opc_nextid character varying,
    next_id character varying
);
    DROP TABLE public.operaciones;
       public         postgres    false    3            ?            1259    16620    operaciones_id_operacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.operaciones_id_operacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.operaciones_id_operacion_seq;
       public       postgres    false    3    246                       0    0    operaciones_id_operacion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.operaciones_id_operacion_seq OWNED BY public.operaciones.id_operacion;
            public       postgres    false    247            ?            1259    16622    robots    TABLE     %  CREATE TABLE public.robots (
    name_robot character varying,
    id_face character varying,
    block_ini character varying,
    type_blocki character varying,
    access_token character varying,
    api_nlp character varying,
    id_robot integer NOT NULL,
    id_user character varying
);
    DROP TABLE public.robots;
       public         postgres    false    3            ?            1259    16628    robots_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.robots_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.robots_id_robot_seq;
       public       postgres    false    248    3                       0    0    robots_id_robot_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.robots_id_robot_seq OWNED BY public.robots.id_robot;
            public       postgres    false    249            ?            1259    16630    teams    TABLE     W   CREATE TABLE public.teams (
    id integer NOT NULL,
    name character varying(90)
);
    DROP TABLE public.teams;
       public         postgres    false    3            ?            1259    16633    teams_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.teams_id_seq;
       public       postgres    false    250    3                       0    0    teams_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;
            public       postgres    false    251            ?            1259    16635    ticket    TABLE     ?   CREATE TABLE public.ticket (
    id_usuario character varying,
    estado_actual character varying,
    block_type character varying,
    entities character varying,
    fecha_mod date,
    id_robot integer NOT NULL,
    id_ticket integer NOT NULL
);
    DROP TABLE public.ticket;
       public         postgres    false    3            ?            1259    16641    ticket_id_robot_seq    SEQUENCE     ?   CREATE SEQUENCE public.ticket_id_robot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ticket_id_robot_seq;
       public       postgres    false    3    252                       0    0    ticket_id_robot_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ticket_id_robot_seq OWNED BY public.ticket.id_robot;
            public       postgres    false    253            ?            1259    16643    ticket_id_ticket_seq    SEQUENCE     ?   CREATE SEQUENCE public.ticket_id_ticket_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ticket_id_ticket_seq;
       public       postgres    false    3    252                       0    0    ticket_id_ticket_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ticket_id_ticket_seq OWNED BY public.ticket.id_ticket;
            public       postgres    false    254            ?            1259    16645 	   variables    TABLE     ?   CREATE TABLE public.variables (
    id_var integer NOT NULL,
    opc_type character varying,
    opc_data character varying,
    var character varying,
    id_robot integer,
    name_var character varying
);
    DROP TABLE public.variables;
       public         postgres    false    3                        1259    16651    variables_id_var_seq    SEQUENCE     ?   CREATE SEQUENCE public.variables_id_var_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.variables_id_var_seq;
       public       postgres    false    3    255                       0    0    variables_id_var_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.variables_id_var_seq OWNED BY public.variables.id_var;
            public       postgres    false    256            ?           2604    17109    bloquecase id_block    DEFAULT     z   ALTER TABLE ONLY public.bloquecase ALTER COLUMN id_block SET DEFAULT nextval('public.bloquecase_id_block_seq'::regclass);
 B   ALTER TABLE public.bloquecase ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    258    257    258            ?           2604    16653    bloqueinformativo id_block    DEFAULT     ?   ALTER TABLE ONLY public.bloqueinformativo ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueinfo_id_block_seq'::regclass);
 I   ALTER TABLE public.bloqueinformativo ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    197    196            ?           2604    16654    bloqueinformativo id_robot    DEFAULT     ?   ALTER TABLE ONLY public.bloqueinformativo ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueinfo_id_robot_seq'::regclass);
 I   ALTER TABLE public.bloqueinformativo ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    198    196            ?           2604    16655 "   bloqueinformativodinamico id_block    DEFAULT     ?   ALTER TABLE ONLY public.bloqueinformativodinamico ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueinfodinamico_id_block_seq'::regclass);
 Q   ALTER TABLE public.bloqueinformativodinamico ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    200    199            ?           2604    16656 "   bloqueinformativodinamico id_robot    DEFAULT     ?   ALTER TABLE ONLY public.bloqueinformativodinamico ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueinfodinamico_id_robot_seq'::regclass);
 Q   ALTER TABLE public.bloqueinformativodinamico ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    201    199            ?           2604    16657    bloqueinput id_block    DEFAULT     |   ALTER TABLE ONLY public.bloqueinput ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueinput_id_block_seq'::regclass);
 C   ALTER TABLE public.bloqueinput ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    203    202            ?           2604    16658    bloqueinput id_robot    DEFAULT     |   ALTER TABLE ONLY public.bloqueinput ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueinput_id_robot_seq'::regclass);
 C   ALTER TABLE public.bloqueinput ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    204    202            ?           2604    16659    bloqueinputdinamico id_block    DEFAULT     ?   ALTER TABLE ONLY public.bloqueinputdinamico ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueinputdinamico_id_block_seq'::regclass);
 K   ALTER TABLE public.bloqueinputdinamico ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    206    205            ?           2604    16660    bloqueinputdinamico id_robot    DEFAULT     ?   ALTER TABLE ONLY public.bloqueinputdinamico ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueinputdinamico_id_robot_seq'::regclass);
 K   ALTER TABLE public.bloqueinputdinamico ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    207    205            ?           2604    17131    bloqueinternalprocess id_block    DEFAULT     ?   ALTER TABLE ONLY public.bloqueinternalprocess ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueinternalprocess_id_block_seq'::regclass);
 M   ALTER TABLE public.bloqueinternalprocess ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    259    260    260            ?           2604    17159    bloquenlp id_block    DEFAULT     x   ALTER TABLE ONLY public.bloquenlp ALTER COLUMN id_block SET DEFAULT nextval('public.bloquenlp_id_block_seq'::regclass);
 A   ALTER TABLE public.bloquenlp ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    262    261    262            ?           2604    16661    bloquequickreply id_block    DEFAULT     ~   ALTER TABLE ONLY public.bloquequickreply ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueqr_id_block_seq'::regclass);
 H   ALTER TABLE public.bloquequickreply ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    209    208            ?           2604    16662    bloquequickreply id_robot    DEFAULT     ~   ALTER TABLE ONLY public.bloquequickreply ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueqr_id_robot_seq'::regclass);
 H   ALTER TABLE public.bloquequickreply ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    210    208            ?           2604    16663 !   bloquequickreplydinamico id_block    DEFAULT     ?   ALTER TABLE ONLY public.bloquequickreplydinamico ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueqrdinamico_id_block_seq'::regclass);
 P   ALTER TABLE public.bloquequickreplydinamico ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    212    211            ?           2604    16664 !   bloquequickreplydinamico id_robot    DEFAULT     ?   ALTER TABLE ONLY public.bloquequickreplydinamico ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueqrdinamico_id_robot_seq'::regclass);
 P   ALTER TABLE public.bloquequickreplydinamico ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    213    211            ?           2604    16665    bloqueslide id_block    DEFAULT     |   ALTER TABLE ONLY public.bloqueslide ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueslide_id_block_seq'::regclass);
 C   ALTER TABLE public.bloqueslide ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    215    214            ?           2604    16666    bloqueslide id_robot    DEFAULT     |   ALTER TABLE ONLY public.bloqueslide ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueslide_id_robot_seq'::regclass);
 C   ALTER TABLE public.bloqueslide ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    216    214            ?           2604    16667    bloqueslidebuy id_block    DEFAULT     ?   ALTER TABLE ONLY public.bloqueslidebuy ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueslidebuy_id_block_seq'::regclass);
 F   ALTER TABLE public.bloqueslidebuy ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    218    217            ?           2604    16668    bloqueslidebuy id_robot    DEFAULT     ?   ALTER TABLE ONLY public.bloqueslidebuy ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueslidebuy_id_robot_seq'::regclass);
 F   ALTER TABLE public.bloqueslidebuy ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    219    217            ?           2604    16669    bloqueslidedinamico id_block    DEFAULT     ?   ALTER TABLE ONLY public.bloqueslidedinamico ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueslidedinamico_id_block_seq'::regclass);
 K   ALTER TABLE public.bloqueslidedinamico ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    221    220            ?           2604    16670    bloqueslidedinamico id_robot    DEFAULT     ?   ALTER TABLE ONLY public.bloqueslidedinamico ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueslidedinamico_id_robot_seq'::regclass);
 K   ALTER TABLE public.bloqueslidedinamico ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    222    220            ?           2604    16671    bloqueticket id_block    DEFAULT     ~   ALTER TABLE ONLY public.bloqueticket ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueticket_id_block_seq'::regclass);
 D   ALTER TABLE public.bloqueticket ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    224    223            ?           2604    16672    bloqueticket id_robot    DEFAULT     ~   ALTER TABLE ONLY public.bloqueticket ALTER COLUMN id_robot SET DEFAULT nextval('public.bloqueticket_id_robot_seq'::regclass);
 D   ALTER TABLE public.bloqueticket ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    225    223            ?           2604    16673    bloqueticketdinamico id_block    DEFAULT     ?   ALTER TABLE ONLY public.bloqueticketdinamico ALTER COLUMN id_block SET DEFAULT nextval('public.bloqueticketdinamico_id_block_seq'::regclass);
 L   ALTER TABLE public.bloqueticketdinamico ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    227    226            ?           2604    16674    botones id_boton    DEFAULT     t   ALTER TABLE ONLY public.botones ALTER COLUMN id_boton SET DEFAULT nextval('public.botones_id_boton_seq'::regclass);
 ?   ALTER TABLE public.botones ALTER COLUMN id_boton DROP DEFAULT;
       public       postgres    false    229    228            ?           2604    16675    conversaciones id_conversacion    DEFAULT     ?   ALTER TABLE ONLY public.conversaciones ALTER COLUMN id_conversacion SET DEFAULT nextval('public.conversaciones_id_conversacion_seq'::regclass);
 M   ALTER TABLE public.conversaciones ALTER COLUMN id_conversacion DROP DEFAULT;
       public       postgres    false    231    230            ?           2604    16676    credencialesapis id_block    DEFAULT     ?   ALTER TABLE ONLY public.credencialesapis ALTER COLUMN id_block SET DEFAULT nextval('public.credencialesapis_id_block_seq'::regclass);
 H   ALTER TABLE public.credencialesapis ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    233    232            ?           2604    16677    credencialesapis id_credencial    DEFAULT     ?   ALTER TABLE ONLY public.credencialesapis ALTER COLUMN id_credencial SET DEFAULT nextval('public.credencialesapis_id_credencial_seq'::regclass);
 M   ALTER TABLE public.credencialesapis ALTER COLUMN id_credencial DROP DEFAULT;
       public       postgres    false    234    232            ?           2604    16678    elementos id_block    DEFAULT     x   ALTER TABLE ONLY public.elementos ALTER COLUMN id_block SET DEFAULT nextval('public.elementos_id_block_seq'::regclass);
 A   ALTER TABLE public.elementos ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    236    235            ?           2604    16679    elementos id_elements    DEFAULT     ~   ALTER TABLE ONLY public.elementos ALTER COLUMN id_elements SET DEFAULT nextval('public.elementos_id_elements_seq'::regclass);
 D   ALTER TABLE public.elementos ALTER COLUMN id_elements DROP DEFAULT;
       public       postgres    false    237    235            ?           2604    16680    elementosbuy id_block    DEFAULT     ~   ALTER TABLE ONLY public.elementosbuy ALTER COLUMN id_block SET DEFAULT nextval('public.elementosbuy_id_block_seq'::regclass);
 D   ALTER TABLE public.elementosbuy ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    239    238            ?           2604    16681    elementosbuy id_elements    DEFAULT     ?   ALTER TABLE ONLY public.elementosbuy ALTER COLUMN id_elements SET DEFAULT nextval('public.elementosbuy_id_elements_seq'::regclass);
 G   ALTER TABLE public.elementosbuy ALTER COLUMN id_elements DROP DEFAULT;
       public       postgres    false    240    238            ?           2604    16682    internal_process id_block    DEFAULT     ?   ALTER TABLE ONLY public.internal_process ALTER COLUMN id_block SET DEFAULT nextval('public.internal_process_id_block_seq'::regclass);
 H   ALTER TABLE public.internal_process ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    242    241            ?           2604    16683    linksapis id_block    DEFAULT     x   ALTER TABLE ONLY public.linksapis ALTER COLUMN id_block SET DEFAULT nextval('public.linksapis_id_block_seq'::regclass);
 A   ALTER TABLE public.linksapis ALTER COLUMN id_block DROP DEFAULT;
       public       postgres    false    244    243            ?           2604    16684    linksapis id_link    DEFAULT     v   ALTER TABLE ONLY public.linksapis ALTER COLUMN id_link SET DEFAULT nextval('public.linksapis_id_link_seq'::regclass);
 @   ALTER TABLE public.linksapis ALTER COLUMN id_link DROP DEFAULT;
       public       postgres    false    245    243            ?           2604    16685    operaciones id_operacion    DEFAULT     ?   ALTER TABLE ONLY public.operaciones ALTER COLUMN id_operacion SET DEFAULT nextval('public.operaciones_id_operacion_seq'::regclass);
 G   ALTER TABLE public.operaciones ALTER COLUMN id_operacion DROP DEFAULT;
       public       postgres    false    247    246            ?           2604    16686    robots id_robot    DEFAULT     r   ALTER TABLE ONLY public.robots ALTER COLUMN id_robot SET DEFAULT nextval('public.robots_id_robot_seq'::regclass);
 >   ALTER TABLE public.robots ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    249    248            ?           2604    16687    teams id    DEFAULT     d   ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);
 7   ALTER TABLE public.teams ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250            ?           2604    16688    ticket id_robot    DEFAULT     r   ALTER TABLE ONLY public.ticket ALTER COLUMN id_robot SET DEFAULT nextval('public.ticket_id_robot_seq'::regclass);
 >   ALTER TABLE public.ticket ALTER COLUMN id_robot DROP DEFAULT;
       public       postgres    false    253    252            ?           2604    16689    ticket id_ticket    DEFAULT     t   ALTER TABLE ONLY public.ticket ALTER COLUMN id_ticket SET DEFAULT nextval('public.ticket_id_ticket_seq'::regclass);
 ?   ALTER TABLE public.ticket ALTER COLUMN id_ticket DROP DEFAULT;
       public       postgres    false    254    252            ?           2604    16690    variables id_var    DEFAULT     t   ALTER TABLE ONLY public.variables ALTER COLUMN id_var SET DEFAULT nextval('public.variables_id_var_seq'::regclass);
 ?   ALTER TABLE public.variables ALTER COLUMN id_var DROP DEFAULT;
       public       postgres    false    256    255            ?          0    17106 
   bloquecase 
   TABLE DATA               ?   COPY public.bloquecase (namestate, messages, type_messages, typing_messages, options, blocktype, url, method, default_id, default_message, type_default_message, id_var, id_block, id_robot) FROM stdin;
    public       postgres    false    258   0      ?          0    16442    bloqueinformativo 
   TABLE DATA               ?   COPY public.bloqueinformativo (namestate, contenido, next_id, blocktype, contenttype, typingtime, id_block, id_robot, opc_nextid, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    196   /2      ?          0    16452    bloqueinformativodinamico 
   TABLE DATA               ?   COPY public.bloqueinformativodinamico (namestate, contenido, next_id, blocktype, contenttype, typingtime, id_block, id_robot, opc_nextid, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    199   ?2      ?          0    16462    bloqueinput 
   TABLE DATA               ?   COPY public.bloqueinput (namestate, contenido, next_id, blocktype, contenttype, typingtime, validacion, default_id, id_var, id_block, id_robot, opc_nextid, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    202   3      ?          0    16472    bloqueinputdinamico 
   TABLE DATA               ?   COPY public.bloqueinputdinamico (namestate, contenido, next_id, blocktype, contenttype, typingtime, validacion, default_id, id_var, id_block, id_robot, opc_nextid, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    205   ?3      ?          0    17128    bloqueinternalprocess 
   TABLE DATA               }   COPY public.bloqueinternalprocess (namestate, blocktype, url, method, id_block, next_true, next_false, id_robot) FROM stdin;
    public       postgres    false    260   ?3      ?          0    17156 	   bloquenlp 
   TABLE DATA               t   COPY public.bloquenlp (namestate, blocktype, id_block, json_nlp, id_robot, default_id, default_message) FROM stdin;
    public       postgres    false    262   Q4      ?          0    16482    bloquequickreply 
   TABLE DATA               ?   COPY public.bloquequickreply (namestate, contenido, opciones, next_id, blocktype, typingtime, default_id, id_var, id_block, id_robot, opc_nextid, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    208   (5      ?          0    16492    bloquequickreplydinamico 
   TABLE DATA               ?   COPY public.bloquequickreplydinamico (namestate, contenido, opciones, next_id, blocktype, typingtime, default_id, id_var, id_block, id_robot, opc_nextid, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    211   \6      ?          0    16502    bloqueslide 
   TABLE DATA               ?   COPY public.bloqueslide (namestate, next_id, blocktype, typingtime, default_id, id_var, id_block, id_robot, opc_nextid, pos_y, pos_x, opc_elm, tag_active) FROM stdin;
    public       postgres    false    214   y6      ?          0    16512    bloqueslidebuy 
   TABLE DATA               ?   COPY public.bloqueslidebuy (namestate, next_id, blocktype, typingtime, default_id, id_var, id_elements, id_block, id_robot, tag_active) FROM stdin;
    public       postgres    false    217   ?6      ?          0    16522    bloqueslidedinamico 
   TABLE DATA               ?   COPY public.bloqueslidedinamico (namestate, contenido, next_id, blocktype, typingtime, default_id, id_var, id_block, id_robot, opc_nextid, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    220   ?6      ?          0    16532    bloqueticket 
   TABLE DATA                 COPY public.bloqueticket (namestate, next_id, blocktype, typingtime, currency, rescue_var, shipping_cost, total_taxes, street1_var, street2_var, city_var, pc_var, state_var, country_var, paymethod_var, nameu_var, id_block, id_robot, opc_nextid, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    223   7      ?          0    16542    bloqueticketdinamico 
   TABLE DATA               ?   COPY public.bloqueticketdinamico (id_block, id_robot, namestate, contenido, blocktype, typingtime, opc_nextid, next_id, pos_y, pos_x, tag_active) FROM stdin;
    public       postgres    false    226   (7      ?          0    16550    botones 
   TABLE DATA               l   COPY public.botones (id_elemento, titlebutton, typebutton, contentbutton, id_boton, opc_nextid) FROM stdin;
    public       postgres    false    228   E7      ?          0    16558    conversaciones 
   TABLE DATA               q   COPY public.conversaciones (id_conversacion, id_ticket, conversacion, fecha_creacion, fecha_termino) FROM stdin;
    public       postgres    false    230   b7      ?          0    16566    credencialesapis 
   TABLE DATA               j   COPY public.credencialesapis (blocktype, namecredencial, credencial, id_block, id_credencial) FROM stdin;
    public       postgres    false    232   7      ?          0    16576 	   elementos 
   TABLE DATA               a   COPY public.elementos (blocktype, title, image_url, subtitle, id_block, id_elements) FROM stdin;
    public       postgres    false    235   ?7      ?          0    16586    elementosbuy 
   TABLE DATA               x   COPY public.elementosbuy (blocktype, title, image_url, subtitle, price, id_block, id_elements, id_busqueda) FROM stdin;
    public       postgres    false    238   ?7      ?          0    16596    internal_process 
   TABLE DATA               ?   COPY public.internal_process (id_block, id_robot, namestate, opc_nextid, default_nextid, blocktype, pos_x, pos_y, tag_active) FROM stdin;
    public       postgres    false    241   ?7      ?          0    16604 	   linksapis 
   TABLE DATA               H   COPY public.linksapis (blocktype, links, id_block, id_link) FROM stdin;
    public       postgres    false    243   ?7      ?          0    16614    operaciones 
   TABLE DATA               ?   COPY public.operaciones (id_operacion, id_block, order_opc, type_operation, new_exist, id_var_1, opc_operation, id_var_2, opc_nextid, next_id) FROM stdin;
    public       postgres    false    246   8      ?          0    16622    robots 
   TABLE DATA               w   COPY public.robots (name_robot, id_face, block_ini, type_blocki, access_token, api_nlp, id_robot, id_user) FROM stdin;
    public       postgres    false    248   -8      ?          0    16630    teams 
   TABLE DATA               )   COPY public.teams (id, name) FROM stdin;
    public       postgres    false    250   ;9      ?          0    16635    ticket 
   TABLE DATA               q   COPY public.ticket (id_usuario, estado_actual, block_type, entities, fecha_mod, id_robot, id_ticket) FROM stdin;
    public       postgres    false    252   X9      ?          0    16645 	   variables 
   TABLE DATA               X   COPY public.variables (id_var, opc_type, opc_data, var, id_robot, name_var) FROM stdin;
    public       postgres    false    255   :                 0    0    bloquecase_id_block_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bloquecase_id_block_seq', 135, true);
            public       postgres    false    257                       0    0    bloqueinfo_id_block_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bloqueinfo_id_block_seq', 909, true);
            public       postgres    false    197                       0    0    bloqueinfo_id_robot_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.bloqueinfo_id_robot_seq', 56, true);
            public       postgres    false    198                       0    0    bloqueinfodinamico_id_block_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.bloqueinfodinamico_id_block_seq', 59, true);
            public       postgres    false    200                       0    0    bloqueinfodinamico_id_robot_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.bloqueinfodinamico_id_robot_seq', 8, true);
            public       postgres    false    201                       0    0    bloqueinput_id_block_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.bloqueinput_id_block_seq', 142, true);
            public       postgres    false    203                       0    0    bloqueinput_id_robot_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bloqueinput_id_robot_seq', 18, true);
            public       postgres    false    204                       0    0     bloqueinputdinamico_id_block_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.bloqueinputdinamico_id_block_seq', 10, true);
            public       postgres    false    206                       0    0     bloqueinputdinamico_id_robot_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.bloqueinputdinamico_id_robot_seq', 1, true);
            public       postgres    false    207                        0    0 "   bloqueinternalprocess_id_block_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.bloqueinternalprocess_id_block_seq', 95, true);
            public       postgres    false    259            !           0    0    bloquenlp_id_block_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bloquenlp_id_block_seq', 8, true);
            public       postgres    false    261            "           0    0    bloqueqr_id_block_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.bloqueqr_id_block_seq', 327, true);
            public       postgres    false    209            #           0    0    bloqueqr_id_robot_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.bloqueqr_id_robot_seq', 7, true);
            public       postgres    false    210            $           0    0    bloqueqrdinamico_id_block_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.bloqueqrdinamico_id_block_seq', 19, true);
            public       postgres    false    212            %           0    0    bloqueqrdinamico_id_robot_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.bloqueqrdinamico_id_robot_seq', 5, true);
            public       postgres    false    213            &           0    0    bloqueslide_id_block_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.bloqueslide_id_block_seq', 146, true);
            public       postgres    false    215            '           0    0    bloqueslide_id_robot_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.bloqueslide_id_robot_seq', 1, true);
            public       postgres    false    216            (           0    0    bloqueslidebuy_id_block_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.bloqueslidebuy_id_block_seq', 28, true);
            public       postgres    false    218            )           0    0    bloqueslidebuy_id_robot_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.bloqueslidebuy_id_robot_seq', 1, true);
            public       postgres    false    219            *           0    0     bloqueslidedinamico_id_block_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.bloqueslidedinamico_id_block_seq', 27, true);
            public       postgres    false    221            +           0    0     bloqueslidedinamico_id_robot_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.bloqueslidedinamico_id_robot_seq', 1, true);
            public       postgres    false    222            ,           0    0    bloqueticket_id_block_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.bloqueticket_id_block_seq', 13, true);
            public       postgres    false    224            -           0    0    bloqueticket_id_robot_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bloqueticket_id_robot_seq', 1, true);
            public       postgres    false    225            .           0    0 !   bloqueticketdinamico_id_block_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.bloqueticketdinamico_id_block_seq', 4, true);
            public       postgres    false    227            /           0    0    botones_id_boton_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.botones_id_boton_seq', 591, true);
            public       postgres    false    229            0           0    0 "   conversaciones_id_conversacion_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.conversaciones_id_conversacion_seq', 59, true);
            public       postgres    false    231            1           0    0    credencialesapis_id_block_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.credencialesapis_id_block_seq', 10, true);
            public       postgres    false    233            2           0    0 "   credencialesapis_id_credencial_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.credencialesapis_id_credencial_seq', 135, true);
            public       postgres    false    234            3           0    0    elementos_id_block_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.elementos_id_block_seq', 10, true);
            public       postgres    false    236            4           0    0    elementos_id_elements_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.elementos_id_elements_seq', 389, true);
            public       postgres    false    237            5           0    0    elementosbuy_id_block_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.elementosbuy_id_block_seq', 8, true);
            public       postgres    false    239            6           0    0    elementosbuy_id_elements_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.elementosbuy_id_elements_seq', 58, true);
            public       postgres    false    240            7           0    0    internal_process_id_block_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.internal_process_id_block_seq', 117, true);
            public       postgres    false    242            8           0    0    linksapis_id_block_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.linksapis_id_block_seq', 11, true);
            public       postgres    false    244            9           0    0    linksapis_id_link_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.linksapis_id_link_seq', 143, true);
            public       postgres    false    245            :           0    0    operaciones_id_operacion_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.operaciones_id_operacion_seq', 112, true);
            public       postgres    false    247            ;           0    0    robots_id_robot_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.robots_id_robot_seq', 340, true);
            public       postgres    false    249            <           0    0    teams_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.teams_id_seq', 3, true);
            public       postgres    false    251            =           0    0    ticket_id_robot_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ticket_id_robot_seq', 1, true);
            public       postgres    false    253            >           0    0    ticket_id_ticket_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ticket_id_ticket_seq', 330, true);
            public       postgres    false    254            ?           0    0    variables_id_var_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.variables_id_var_seq', 833, true);
            public       postgres    false    256            %           2606    17114    bloquecase bloquecase_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.bloquecase
    ADD CONSTRAINT bloquecase_pkey PRIMARY KEY (id_block);
 D   ALTER TABLE ONLY public.bloquecase DROP CONSTRAINT bloquecase_pkey;
       public         postgres    false    258                       2606    16692 !   bloqueinformativo bloqueinfo_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.bloqueinformativo
    ADD CONSTRAINT bloqueinfo_pkey PRIMARY KEY (id_block);
 K   ALTER TABLE ONLY public.bloqueinformativo DROP CONSTRAINT bloqueinfo_pkey;
       public         postgres    false    196                       2606    16694 1   bloqueinformativodinamico bloqueinfodinamico_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.bloqueinformativodinamico
    ADD CONSTRAINT bloqueinfodinamico_pkey PRIMARY KEY (id_block);
 [   ALTER TABLE ONLY public.bloqueinformativodinamico DROP CONSTRAINT bloqueinfodinamico_pkey;
       public         postgres    false    199                       2606    16696    bloqueinput bloqueinput_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bloqueinput
    ADD CONSTRAINT bloqueinput_pkey PRIMARY KEY (id_block);
 F   ALTER TABLE ONLY public.bloqueinput DROP CONSTRAINT bloqueinput_pkey;
       public         postgres    false    202                       2606    16698 ,   bloqueinputdinamico bloqueinputdinamico_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.bloqueinputdinamico
    ADD CONSTRAINT bloqueinputdinamico_pkey PRIMARY KEY (id_block);
 V   ALTER TABLE ONLY public.bloqueinputdinamico DROP CONSTRAINT bloqueinputdinamico_pkey;
       public         postgres    false    205            '           2606    17136 0   bloqueinternalprocess bloqueinternalprocess_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.bloqueinternalprocess
    ADD CONSTRAINT bloqueinternalprocess_pkey PRIMARY KEY (id_block);
 Z   ALTER TABLE ONLY public.bloqueinternalprocess DROP CONSTRAINT bloqueinternalprocess_pkey;
       public         postgres    false    260            )           2606    17164    bloquenlp bloquenlp_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.bloquenlp
    ADD CONSTRAINT bloquenlp_pkey PRIMARY KEY (id_block);
 B   ALTER TABLE ONLY public.bloquenlp DROP CONSTRAINT bloquenlp_pkey;
       public         postgres    false    262            	           2606    16700    bloquequickreply bloqueqr_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.bloquequickreply
    ADD CONSTRAINT bloqueqr_pkey PRIMARY KEY (id_block);
 H   ALTER TABLE ONLY public.bloquequickreply DROP CONSTRAINT bloqueqr_pkey;
       public         postgres    false    208                       2606    16702 .   bloquequickreplydinamico bloqueqrdinamico_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.bloquequickreplydinamico
    ADD CONSTRAINT bloqueqrdinamico_pkey PRIMARY KEY (id_block);
 X   ALTER TABLE ONLY public.bloquequickreplydinamico DROP CONSTRAINT bloqueqrdinamico_pkey;
       public         postgres    false    211                       2606    16704    bloqueslide bloqueslide_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bloqueslide
    ADD CONSTRAINT bloqueslide_pkey PRIMARY KEY (id_block);
 F   ALTER TABLE ONLY public.bloqueslide DROP CONSTRAINT bloqueslide_pkey;
       public         postgres    false    214                       2606    16706 "   bloqueslidebuy bloqueslidebuy_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.bloqueslidebuy
    ADD CONSTRAINT bloqueslidebuy_pkey PRIMARY KEY (id_block);
 L   ALTER TABLE ONLY public.bloqueslidebuy DROP CONSTRAINT bloqueslidebuy_pkey;
       public         postgres    false    217                       2606    16708 ,   bloqueslidedinamico bloqueslidedinamico_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.bloqueslidedinamico
    ADD CONSTRAINT bloqueslidedinamico_pkey PRIMARY KEY (id_block);
 V   ALTER TABLE ONLY public.bloqueslidedinamico DROP CONSTRAINT bloqueslidedinamico_pkey;
       public         postgres    false    220                       2606    16710    bloqueticket bloqueticket_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.bloqueticket
    ADD CONSTRAINT bloqueticket_pkey PRIMARY KEY (id_block);
 H   ALTER TABLE ONLY public.bloqueticket DROP CONSTRAINT bloqueticket_pkey;
       public         postgres    false    223                       2606    16712 .   bloqueticketdinamico bloqueticketdinamico_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.bloqueticketdinamico
    ADD CONSTRAINT bloqueticketdinamico_pkey PRIMARY KEY (id_block);
 X   ALTER TABLE ONLY public.bloqueticketdinamico DROP CONSTRAINT bloqueticketdinamico_pkey;
       public         postgres    false    226                       2606    16714    botones botones_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.botones
    ADD CONSTRAINT botones_pkey PRIMARY KEY (id_boton);
 >   ALTER TABLE ONLY public.botones DROP CONSTRAINT botones_pkey;
       public         postgres    false    228                       2606    16716 "   conversaciones conversaciones_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.conversaciones
    ADD CONSTRAINT conversaciones_pkey PRIMARY KEY (id_conversacion);
 L   ALTER TABLE ONLY public.conversaciones DROP CONSTRAINT conversaciones_pkey;
       public         postgres    false    230                       2606    16718 &   internal_process internal_process_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.internal_process
    ADD CONSTRAINT internal_process_pkey PRIMARY KEY (id_block);
 P   ALTER TABLE ONLY public.internal_process DROP CONSTRAINT internal_process_pkey;
       public         postgres    false    241                       2606    16720    linksapis linksapis_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.linksapis
    ADD CONSTRAINT linksapis_pkey PRIMARY KEY (id_link);
 B   ALTER TABLE ONLY public.linksapis DROP CONSTRAINT linksapis_pkey;
       public         postgres    false    243                       2606    16722    operaciones operaciones_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT operaciones_pkey PRIMARY KEY (id_operacion);
 F   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT operaciones_pkey;
       public         postgres    false    246            !           2606    16724    teams teams_id_key 
   CONSTRAINT     K   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_id_key UNIQUE (id);
 <   ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_id_key;
       public         postgres    false    250            #           2606    16726    variables variables_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.variables
    ADD CONSTRAINT variables_pkey PRIMARY KEY (id_var);
 B   ALTER TABLE ONLY public.variables DROP CONSTRAINT variables_pkey;
       public         postgres    false    255            ?     x??T?n?0=g?b?G?MRD?K?*??(??V??4k?ػc????9p?T??㰋
Dl??H??yz?y?/=??_(?u??NJ????8????[?߼???????GL??"??????
eO?ͭe?F?a?H{`
+?41h)~?1vI0>??RyNХ?7?.?6????????"??X?Z???5G?`2???	??????e??????ә??Q-Oe?b?r????=?Ǩ??x??<ϐ??p?A??9???氨۶hf?-??;!3???ҋI?`?6߶???????????A???A
?3>>4g????o3?|F?Ck??}?????"M_?Y?Ğ????[????1?ۙ?|?P??<lFxrZ??En???2A?C??%2)?~s??`-?rS?H???r???\???D"?t=0RPl???+?CߔC&#h;??'Й"?(?2ԋ&9-?p7U?F?[????"62?hx???g??H?ʦjvqy̯K̴?c/???*???O??~?N&??Iً      ?   ?   x???K
?@DדS?	BbD?Z\* ??#-3?:?`??g?bN@ܘ??PUT=???{?ۢd??n????ٳ??|=?C'6`ȓW?????ƅN??`?QT?{P?????օj?????N??%N?ɂGq?i?G?pw??h?Q??8[???נ??Ĭ0?<˲7]?g?      ?      x?????? ? ?      ?   k   x?+(JM/?+I?70???L?L̉?Ҝ???^???Z??X?????Zd???P?ZT?????????E[f^Ai	gIjE	?!??:,??9M?8?M8c???+F???  ?6f      ?      x?????? ? ?      ?   ?   x?????0D??c??!?#?ƀ??"?Z%?u*'?e?{?p??݈???@?C7;?Ym<y?a??1??=\?2?p??0FqKij?2??ҹMkr??H?@	??v,0?~w?Fdm??~?_VV??%J??(??=f^?]/??bb?眱`????z???R???      ?   ?   x???Ok1???O1ī????x(?xW??L˔??6? ??݉?º????????Yo;LY?E
.?3b???????Y??%.ȅ?????a??B??^8Pu?xg?QiGjB?X53?K?-rv????$	'???>????_{???e5??P?K?ԏV8??\?|15?֬2??z[???/m??&?wBh:=Kn???in?A??      ?   $  x????j?0???Slv?S??Bҟc ??5U??:?H?&ǜ{?%?X?&?BL
B?h4?͉?=?V
??ZxڿЬs?fz??Ur?????? ??	?B??0#?2|?OV???`I8w?[*5Ym̉?/v??????t??1??H??:?=SeV?J??ķ*??Ur?W????vL?	??_???"?@??Pt?
C??l?ղ?7?r!??n???Pp?ZS?֞??Y??m??b?B?K???a'?(?K????s????Q%j?0?NW$q`us?jrE?71,?}      ?      x?????? ? ?      ?      x?????? ? ?      ?   H   x?+??LIK?+I?,?L?N-?,?8?Vrs'攦??'??p?p????ZpYp?q??q??qqq ??      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?-??n?0  ?sy?=?)?
??[P??0Q?%J?*?B??~ɲ?w?T+ob?j???F??k/Љ?ga?~Uu?\??m?K.???/?? $dsf$???)!?s=?#?u?F9?yЖ?F!????y???,?e????QĈ??u???f?׫?-L?>??ꔙa/Ę[??Z?o?p?Vwp?+?{0_Q3%y)p????b?^M????Y?????h	???[(????]!?W????,?E?_      ?      x?????? ? ?      ?   ?   x?M?1?0???W??*/??????&΅??O?/m?"?w??8??ݝu??.?րs98???>06?ª??=6?WE????S???Cu???-1??TE? P?Z??????T7?e??x?_?p????RҸ$OL?????߉?fX?? K??p?<4?UX??0``?aF?k!+?Y?? {I?      ?   ?   x?u?=n?@???S,??7?SQP??DJ?dM?#??g?? qJN)\,cDc?????ʖ?????u?0????ϒ???߮d0&>??$?/?}/T?#????骬&j?1?0%p?)???R`???3	?1%p??9!tg?A??????_??#-?~H????g
?Zy???ՠ????0??:??
?f???ذw?83 ??޼i?? Cyr}     