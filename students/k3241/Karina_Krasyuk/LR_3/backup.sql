PGDMP  -    6            	    {         #   PublishingHouseOfComputerLiterature    16.0    16.0 U    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    16398 #   PublishingHouseOfComputerLiterature    DATABASE     �   CREATE DATABASE "PublishingHouseOfComputerLiterature" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
 5   DROP DATABASE "PublishingHouseOfComputerLiterature";
                postgres    false                        2615    16399    complit    SCHEMA        CREATE SCHEMA complit;
    DROP SCHEMA complit;
                postgres    false            �            1259    16406    account    TABLE       CREATE TABLE complit.account (
    id bigint NOT NULL,
    date_of_issue date NOT NULL,
    type character varying(20) NOT NULL,
    account_number bigint NOT NULL,
    payment_status character varying(20) NOT NULL,
    order_id bigint NOT NULL,
    amount numeric(20,2) NOT NULL
);
    DROP TABLE complit.account;
       complit         heap    postgres    false    6            8           0    0    TABLE account    COMMENT     0   COMMENT ON TABLE complit.account IS 'счёт';
          complit          postgres    false    218            �            1259    16424    adjustment_of_the_tr    TABLE     �   CREATE TABLE complit.adjustment_of_the_tr (
    editor_status character varying(20) NOT NULL,
    employee_id bigint NOT NULL,
    publication_id bigint NOT NULL
);
 )   DROP TABLE complit.adjustment_of_the_tr;
       complit         heap    postgres    false    6            �            1259    16433    author    TABLE     �   CREATE TABLE complit.author (
    id bigint NOT NULL,
    username character varying(70) NOT NULL,
    email character varying(70) NOT NULL
);
    DROP TABLE complit.author;
       complit         heap    postgres    false    6            �            1259    16436 
   authorship    TABLE     �   CREATE TABLE complit.authorship (
    order_by_list integer NOT NULL,
    book_id bigint NOT NULL,
    author_id bigint NOT NULL,
    number_in_the_list integer NOT NULL
);
    DROP TABLE complit.authorship;
       complit         heap    postgres    false    6            �            1259    16439    belongs    TABLE     �   CREATE TABLE complit.belongs (
    main_category character varying(20) NOT NULL,
    book_id bigint NOT NULL,
    book_category_id bigint NOT NULL,
    status character varying(10) NOT NULL
);
    DROP TABLE complit.belongs;
       complit         heap    postgres    false    6            �            1259    16430    book    TABLE     �   CREATE TABLE complit.book (
    id bigint NOT NULL,
    name character varying(70) NOT NULL,
    year_of_writing integer NOT NULL
);
    DROP TABLE complit.book;
       complit         heap    postgres    false    6            �            1259    16442    book_category    TABLE     `   CREATE TABLE complit.book_category (
    id bigint NOT NULL,
    name character varying(100)
);
 "   DROP TABLE complit.book_category;
       complit         heap    postgres    false    6            �            1259    16421    circulation    TABLE       CREATE TABLE complit.circulation (
    id bigint NOT NULL,
    date date NOT NULL,
    quantity integer NOT NULL,
    remaining integer NOT NULL,
    status character varying(20) NOT NULL,
    retail_price numeric(20,2) NOT NULL,
    publication_id bigint NOT NULL
);
     DROP TABLE complit.circulation;
       complit         heap    postgres    false    6            9           0    0    TABLE circulation    COMMENT     6   COMMENT ON TABLE complit.circulation IS 'Тираж';
          complit          postgres    false    222            �            1259    16400    customer    TABLE     �   CREATE TABLE complit.customer (
    id bigint NOT NULL,
    username character varying(70) NOT NULL,
    address character varying(70) NOT NULL,
    email character varying(70) NOT NULL,
    phone_number character varying(50) NOT NULL
);
    DROP TABLE complit.customer;
       complit         heap    postgres    false    6            �            1259    16415    employee    TABLE     �   CREATE TABLE complit.employee (
    id bigint NOT NULL,
    username character varying(70) NOT NULL,
    email character varying(70) NOT NULL,
    position_id bigint,
    phone_number character varying(50) NOT NULL
);
    DROP TABLE complit.employee;
       complit         heap    postgres    false    6            �            1259    16412    making_an_order    TABLE     �   CREATE TABLE complit.making_an_order (
    id bigint NOT NULL,
    ready_status character varying(20) NOT NULL,
    order_id bigint NOT NULL,
    circulation_id bigint NOT NULL,
    quantity integer NOT NULL
);
 $   DROP TABLE complit.making_an_order;
       complit         heap    postgres    false    6            �            1259    16403    order    TABLE     �  CREATE TABLE complit."order" (
    id bigint NOT NULL,
    date_of_execution date NOT NULL,
    period_of_execution integer NOT NULL,
    payment_status character varying(20) NOT NULL,
    number_of_copies bigint NOT NULL,
    contract_date date NOT NULL,
    contract_number bigint NOT NULL,
    customer_id bigint,
    employee_id bigint,
    act_number bigint NOT NULL,
    date_of_the_act date NOT NULL
);
    DROP TABLE complit."order";
       complit         heap    postgres    false    6            �            1259    16418    position    TABLE     �   CREATE TABLE complit."position" (
    id bigint NOT NULL,
    title_of_the_position character varying(70) NOT NULL,
    salary numeric(20,2) NOT NULL,
    category character varying(70) NOT NULL
);
    DROP TABLE complit."position";
       complit         heap    postgres    false    6            :           0    0    TABLE "position"    COMMENT     =   COMMENT ON TABLE complit."position" IS 'Должность';
          complit          postgres    false    221            �            1259    16427    publication    TABLE     4  CREATE TABLE complit.publication (
    id bigint NOT NULL,
    type character varying(20) NOT NULL,
    number_of_pages integer NOT NULL,
    book_id bigint NOT NULL,
    availability_of_illustrations character varying(5) NOT NULL,
    start_year integer NOT NULL,
    isbn character varying(70) NOT NULL
);
     DROP TABLE complit.publication;
       complit         heap    postgres    false    6            ;           0    0    TABLE publication    COMMENT     :   COMMENT ON TABLE complit.publication IS 'издание';
          complit          postgres    false    224            &          0    16406    account 
   TABLE DATA           m   COPY complit.account (id, date_of_issue, type, account_number, payment_status, order_id, amount) FROM stdin;
    complit          postgres    false    218   �m       +          0    16424    adjustment_of_the_tr 
   TABLE DATA           [   COPY complit.adjustment_of_the_tr (editor_status, employee_id, publication_id) FROM stdin;
    complit          postgres    false    223   �o       .          0    16433    author 
   TABLE DATA           6   COPY complit.author (id, username, email) FROM stdin;
    complit          postgres    false    226   �o       /          0    16436 
   authorship 
   TABLE DATA           \   COPY complit.authorship (order_by_list, book_id, author_id, number_in_the_list) FROM stdin;
    complit          postgres    false    227   �q       0          0    16439    belongs 
   TABLE DATA           T   COPY complit.belongs (main_category, book_id, book_category_id, status) FROM stdin;
    complit          postgres    false    228   ir       -          0    16430    book 
   TABLE DATA           :   COPY complit.book (id, name, year_of_writing) FROM stdin;
    complit          postgres    false    225   qs       1          0    16442    book_category 
   TABLE DATA           2   COPY complit.book_category (id, name) FROM stdin;
    complit          postgres    false    229   �u       *          0    16421    circulation 
   TABLE DATA           k   COPY complit.circulation (id, date, quantity, remaining, status, retail_price, publication_id) FROM stdin;
    complit          postgres    false    222   \v       $          0    16400    customer 
   TABLE DATA           O   COPY complit.customer (id, username, address, email, phone_number) FROM stdin;
    complit          postgres    false    216   x       (          0    16415    employee 
   TABLE DATA           S   COPY complit.employee (id, username, email, position_id, phone_number) FROM stdin;
    complit          postgres    false    220   }       '          0    16412    making_an_order 
   TABLE DATA           `   COPY complit.making_an_order (id, ready_status, order_id, circulation_id, quantity) FROM stdin;
    complit          postgres    false    219   �       %          0    16403    order 
   TABLE DATA           �   COPY complit."order" (id, date_of_execution, period_of_execution, payment_status, number_of_copies, contract_date, contract_number, customer_id, employee_id, act_number, date_of_the_act) FROM stdin;
    complit          postgres    false    217   ɀ       )          0    16418    position 
   TABLE DATA           R   COPY complit."position" (id, title_of_the_position, salary, category) FROM stdin;
    complit          postgres    false    221   �       ,          0    16427    publication 
   TABLE DATA           {   COPY complit.publication (id, type, number_of_pages, book_id, availability_of_illustrations, start_year, isbn) FROM stdin;
    complit          postgres    false    224   �       d           2606    16472 "   account account_account_number_key 
   CONSTRAINT     h   ALTER TABLE ONLY complit.account
    ADD CONSTRAINT account_account_number_key UNIQUE (account_number);
 M   ALTER TABLE ONLY complit.account DROP CONSTRAINT account_account_number_key;
       complit            postgres    false    218            f           2606    16526    account account_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY complit.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY complit.account DROP CONSTRAINT account_pkey;
       complit            postgres    false    218            t           2606    16596 .   adjustment_of_the_tr adjustment_of_the_TR_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY complit.adjustment_of_the_tr
    ADD CONSTRAINT "adjustment_of_the_TR_pkey" PRIMARY KEY (editor_status);
 [   ALTER TABLE ONLY complit.adjustment_of_the_tr DROP CONSTRAINT "adjustment_of_the_TR_pkey";
       complit            postgres    false    223            |           2606    16639    author author_email_key 
   CONSTRAINT     T   ALTER TABLE ONLY complit.author
    ADD CONSTRAINT author_email_key UNIQUE (email);
 B   ALTER TABLE ONLY complit.author DROP CONSTRAINT author_email_key;
       complit            postgres    false    226            ~           2606    16637    author author_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY complit.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY complit.author DROP CONSTRAINT author_pkey;
       complit            postgres    false    226            �           2606    16641    authorship authorship_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY complit.authorship
    ADD CONSTRAINT authorship_pkey PRIMARY KEY (order_by_list);
 E   ALTER TABLE ONLY complit.authorship DROP CONSTRAINT authorship_pkey;
       complit            postgres    false    227            �           2606    16625    belongs belongs_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY complit.belongs
    ADD CONSTRAINT belongs_pkey PRIMARY KEY (main_category);
 ?   ALTER TABLE ONLY complit.belongs DROP CONSTRAINT belongs_pkey;
       complit            postgres    false    228            �           2606    16621     book_category book_category_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY complit.book_category
    ADD CONSTRAINT book_category_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY complit.book_category DROP CONSTRAINT book_category_pkey;
       complit            postgres    false    229            z           2606    16611    book book_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY complit.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY complit.book DROP CONSTRAINT book_pkey;
       complit            postgres    false    225            r           2606    16579    circulation circulation_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY complit.circulation
    ADD CONSTRAINT circulation_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY complit.circulation DROP CONSTRAINT circulation_pkey;
       complit            postgres    false    222            Z           2606    16458    customer customer_email_key 
   CONSTRAINT     X   ALTER TABLE ONLY complit.customer
    ADD CONSTRAINT customer_email_key UNIQUE (email);
 F   ALTER TABLE ONLY complit.customer DROP CONSTRAINT customer_email_key;
       complit            postgres    false    216            \           2606    16533    customer customer_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY complit.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY complit.customer DROP CONSTRAINT customer_pkey;
       complit            postgres    false    216            U           2606    16608    adjustment_of_the_tr editor    CHECK CONSTRAINT     �   ALTER TABLE complit.adjustment_of_the_tr
    ADD CONSTRAINT editor CHECK (((editor_status)::text = ANY (ARRAY[('started work'::character varying)::text, ('in process'::character varying)::text, ('finished work'::character varying)::text]))) NOT VALID;
 A   ALTER TABLE complit.adjustment_of_the_tr DROP CONSTRAINT editor;
       complit          postgres    false    223    223            j           2606    16567    employee employee_email_key 
   CONSTRAINT     X   ALTER TABLE ONLY complit.employee
    ADD CONSTRAINT employee_email_key UNIQUE (email);
 F   ALTER TABLE ONLY complit.employee DROP CONSTRAINT employee_email_key;
       complit            postgres    false    220            l           2606    16705 "   employee employee_phone_number_key 
   CONSTRAINT     f   ALTER TABLE ONLY complit.employee
    ADD CONSTRAINT employee_phone_number_key UNIQUE (phone_number);
 M   ALTER TABLE ONLY complit.employee DROP CONSTRAINT employee_phone_number_key;
       complit            postgres    false    220            n           2606    16555    employee employee_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY complit.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY complit.employee DROP CONSTRAINT employee_pkey;
       complit            postgres    false    220            V           2606    16662    publication illustrations    CHECK CONSTRAINT     �   ALTER TABLE complit.publication
    ADD CONSTRAINT illustrations CHECK (((availability_of_illustrations)::text = ANY (ARRAY[('yes'::character varying)::text, ('no'::character varying)::text]))) NOT VALID;
 ?   ALTER TABLE complit.publication DROP CONSTRAINT illustrations;
       complit          postgres    false    224    224            h           2606    16571 $   making_an_order making_an_order_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY complit.making_an_order
    ADD CONSTRAINT making_an_order_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY complit.making_an_order DROP CONSTRAINT making_an_order_pkey;
       complit            postgres    false    219            �           2606    16720    book_category name 
   CONSTRAINT     N   ALTER TABLE ONLY complit.book_category
    ADD CONSTRAINT name UNIQUE (name);
 =   ALTER TABLE ONLY complit.book_category DROP CONSTRAINT name;
       complit            postgres    false    229            `           2606    16462    order order_contract_number_key 
   CONSTRAINT     h   ALTER TABLE ONLY complit."order"
    ADD CONSTRAINT order_contract_number_key UNIQUE (contract_number);
 L   ALTER TABLE ONLY complit."order" DROP CONSTRAINT order_contract_number_key;
       complit            postgres    false    217            b           2606    16514    order order_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY complit."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY complit."order" DROP CONSTRAINT order_pkey;
       complit            postgres    false    217            N           2606    16468    order payment    CHECK CONSTRAINT     �   ALTER TABLE complit."order"
    ADD CONSTRAINT payment CHECK (((payment_status)::text = ANY ((ARRAY['paid'::character varying, 'not paid'::character varying])::text[]))) NOT VALID;
 5   ALTER TABLE complit."order" DROP CONSTRAINT payment;
       complit          postgres    false    217    217            O           2606    16473    account payment_st    CHECK CONSTRAINT     �   ALTER TABLE complit.account
    ADD CONSTRAINT payment_st CHECK (((payment_status)::text = ANY (ARRAY[('paid'::character varying)::text, ('not paid'::character varying)::text]))) NOT VALID;
 8   ALTER TABLE complit.account DROP CONSTRAINT payment_st;
       complit          postgres    false    218    218            ^           2606    16667    customer phone_number_key 
   CONSTRAINT     ]   ALTER TABLE ONLY complit.customer
    ADD CONSTRAINT phone_number_key UNIQUE (phone_number);
 D   ALTER TABLE ONLY complit.customer DROP CONSTRAINT phone_number_key;
       complit            postgres    false    216            p           2606    16551    position position_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY complit."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY complit."position" DROP CONSTRAINT position_pkey;
       complit            postgres    false    221            v           2606    16714     publication publication_isbn_key 
   CONSTRAINT     \   ALTER TABLE ONLY complit.publication
    ADD CONSTRAINT publication_isbn_key UNIQUE (isbn);
 K   ALTER TABLE ONLY complit.publication DROP CONSTRAINT publication_isbn_key;
       complit            postgres    false    224            x           2606    16587    publication publication_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY complit.publication
    ADD CONSTRAINT publication_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY complit.publication DROP CONSTRAINT publication_pkey;
       complit            postgres    false    224            Q           2606    16661    making_an_order quantity    CHECK CONSTRAINT     b   ALTER TABLE complit.making_an_order
    ADD CONSTRAINT quantity CHECK ((quantity > 0)) NOT VALID;
 >   ALTER TABLE complit.making_an_order DROP CONSTRAINT quantity;
       complit          postgres    false    219    219            R           2606    16572    making_an_order ready    CHECK CONSTRAINT     �   ALTER TABLE complit.making_an_order
    ADD CONSTRAINT ready CHECK (((ready_status)::text = ANY ((ARRAY['not ready'::character varying, 'in process'::character varying, 'is ready'::character varying])::text[]))) NOT VALID;
 ;   ALTER TABLE complit.making_an_order DROP CONSTRAINT ready;
       complit          postgres    false    219    219            S           2606    16703    position salary_check    CHECK CONSTRAINT     j   ALTER TABLE complit."position"
    ADD CONSTRAINT salary_check CHECK ((salary > (0)::numeric)) NOT VALID;
 =   ALTER TABLE complit."position" DROP CONSTRAINT salary_check;
       complit          postgres    false    221    221            T           2606    16580    circulation status    CHECK CONSTRAINT     �   ALTER TABLE complit.circulation
    ADD CONSTRAINT status CHECK (((status)::text = ANY (ARRAY[('active'::character varying)::text, ('in process'::character varying)::text, ('completed'::character varying)::text]))) NOT VALID;
 8   ALTER TABLE complit.circulation DROP CONSTRAINT status;
       complit          postgres    false    222    222            X           2606    16663    belongs status    CHECK CONSTRAINT     �   ALTER TABLE complit.belongs
    ADD CONSTRAINT status CHECK (((status)::text = ANY (ARRAY[('true'::character varying)::text, ('false'::character varying)::text]))) NOT VALID;
 4   ALTER TABLE complit.belongs DROP CONSTRAINT status;
       complit          postgres    false    228    228            W           2606    16609    publication type    CHECK CONSTRAINT       ALTER TABLE complit.publication
    ADD CONSTRAINT type CHECK (((type)::text = ANY (ARRAY[('magazine'::character varying)::text, ('newspaper'::character varying)::text, ('book'::character varying)::text, ('electronic edition'::character varying)::text]))) NOT VALID;
 6   ALTER TABLE complit.publication DROP CONSTRAINT type;
       complit          postgres    false    224    224            P           2606    16730    account type    CHECK CONSTRAINT     �   ALTER TABLE complit.account
    ADD CONSTRAINT type CHECK (((type)::text = ANY (ARRAY[('Savings'::character varying)::text, ('Checking'::character varying)::text, ('Business'::character varying)::text]))) NOT VALID;
 2   ALTER TABLE complit.account DROP CONSTRAINT type;
       complit          postgres    false    218    218            �           2606    16647    authorship author_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.authorship
    ADD CONSTRAINT author_fkey FOREIGN KEY (author_id) REFERENCES complit.author(id) NOT VALID;
 A   ALTER TABLE ONLY complit.authorship DROP CONSTRAINT author_fkey;
       complit          postgres    false    227    4734    226            �           2606    16631    belongs book_category_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.belongs
    ADD CONSTRAINT book_category_fkey FOREIGN KEY (book_category_id) REFERENCES complit.book_category(id) NOT VALID;
 E   ALTER TABLE ONLY complit.belongs DROP CONSTRAINT book_category_fkey;
       complit          postgres    false    229    228    4740            �           2606    16615    publication book_fkey    FK CONSTRAINT        ALTER TABLE ONLY complit.publication
    ADD CONSTRAINT book_fkey FOREIGN KEY (book_id) REFERENCES complit.book(id) NOT VALID;
 @   ALTER TABLE ONLY complit.publication DROP CONSTRAINT book_fkey;
       complit          postgres    false    225    224    4730            �           2606    16626    belongs book_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY complit.belongs
    ADD CONSTRAINT book_fkey FOREIGN KEY (book_id) REFERENCES complit.book(id) NOT VALID;
 <   ALTER TABLE ONLY complit.belongs DROP CONSTRAINT book_fkey;
       complit          postgres    false    4730    225    228            �           2606    16642    authorship book_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY complit.authorship
    ADD CONSTRAINT book_fkey FOREIGN KEY (book_id) REFERENCES complit.book(id) NOT VALID;
 ?   ALTER TABLE ONLY complit.authorship DROP CONSTRAINT book_fkey;
       complit          postgres    false    227    4730    225            �           2606    16581     making_an_order circulation_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.making_an_order
    ADD CONSTRAINT circulation_fkey FOREIGN KEY (circulation_id) REFERENCES complit.circulation(id) NOT VALID;
 K   ALTER TABLE ONLY complit.making_an_order DROP CONSTRAINT circulation_fkey;
       complit          postgres    false    222    219    4722            �           2606    16534    order customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit."order"
    ADD CONSTRAINT customer_fkey FOREIGN KEY (customer_id) REFERENCES complit.customer(id) NOT VALID;
 @   ALTER TABLE ONLY complit."order" DROP CONSTRAINT customer_fkey;
       complit          postgres    false    4700    217    216            �           2606    16598 "   adjustment_of_the_tr employee_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.adjustment_of_the_tr
    ADD CONSTRAINT employee_fkey FOREIGN KEY (employee_id) REFERENCES complit.employee(id) NOT VALID;
 M   ALTER TABLE ONLY complit.adjustment_of_the_tr DROP CONSTRAINT employee_fkey;
       complit          postgres    false    223    4718    220            �           2606    16652    order employee_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit."order"
    ADD CONSTRAINT employee_fkey FOREIGN KEY (employee_id) REFERENCES complit.employee(id) NOT VALID;
 @   ALTER TABLE ONLY complit."order" DROP CONSTRAINT employee_fkey;
       complit          postgres    false    220    217    4718            �           2606    16515    account order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.account
    ADD CONSTRAINT order_fkey FOREIGN KEY (order_id) REFERENCES complit."order"(id) NOT VALID;
 =   ALTER TABLE ONLY complit.account DROP CONSTRAINT order_fkey;
       complit          postgres    false    4706    217    218            �           2606    16573    making_an_order order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.making_an_order
    ADD CONSTRAINT order_fkey FOREIGN KEY (order_id) REFERENCES complit."order"(id) NOT VALID;
 E   ALTER TABLE ONLY complit.making_an_order DROP CONSTRAINT order_fkey;
       complit          postgres    false    4706    219    217            �           2606    16561    employee position_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.employee
    ADD CONSTRAINT position_fkey FOREIGN KEY (position_id) REFERENCES complit."position"(id) NOT VALID;
 A   ALTER TABLE ONLY complit.employee DROP CONSTRAINT position_fkey;
       complit          postgres    false    220    4720    221            �           2606    16590    circulation publication_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.circulation
    ADD CONSTRAINT publication_fkey FOREIGN KEY (publication_id) REFERENCES complit.publication(id) NOT VALID;
 G   ALTER TABLE ONLY complit.circulation DROP CONSTRAINT publication_fkey;
       complit          postgres    false    222    4728    224            �           2606    16603 %   adjustment_of_the_tr publication_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY complit.adjustment_of_the_tr
    ADD CONSTRAINT publication_fkey FOREIGN KEY (publication_id) REFERENCES complit.publication(id) NOT VALID;
 P   ALTER TABLE ONLY complit.adjustment_of_the_tr DROP CONSTRAINT publication_fkey;
       complit          postgres    false    4728    224    223            &   �  x�USI�1<�_�<�}���r�ZHR�'�v-#�T������:XGj�_��ߟЬ�~�kL��9^ n.���6v�G@2�q
nn�ͣ��G�u�ǿ�����ld�����χ	RmȠ��tH�y��f89�����6n�Bi��>�x�������HiB�@�`�8\��B����Tv�$*�+�ͅa	�]��b��iz���Xa��Qi�Q���a�\� � u��X��F����O��#�ga�Ry�,�e�1C�e%zŰ[)�q6B�af5�Լt�3��ԋ2�j�p�²�{������eT�Ì�,G���aO��� c{��ر�)���B1�����x�����8LF�{Nu��	���N7�A��ob���]ʨ�E	��m�E]� �ˋ��ݖ�//���?;�      +   D   x�K���,�HMQ(�/��460�45���S((�ON-.�4���44�*.I,*�)3�4�06����� �$�      .   �  x�eRˎ�0<�_�/X�����h��m� E�c/�����T@)M�__)��� B(�pf�r[�HF�^؃;�$5��/�ǳ�'&�-gս�����h{%vic]���bq�AF��=髫�}�ڠ��5���(
��^t�Q��x�CM#��I߼,�Cl����A���֎YU�N��I푽u������t�E����R��R���#9������YYV�'?������kXg�6嘯����X&C�vSJ2���~@V�6@u�-��(.9|C�7�[�;㇮��(	�j9��$�:P��z��m2�.����A;�vޞ���e�T��
��!�M��ڿ�o��ވY�!�/���[��!��PL�C�!u��������js>�Ń�`#AT��C�����CJs8h��,��穜����a�@ߠ�ɯ�,���8%�      /   �   x�=O�A{�b����%��/+�����C�U"������@�S�yRi13��i�*�1Ʉ����k�`����9�����p]�*�tj�j���~DSP� ��R襞�����w}�S,1��4����P�:�� '�ۊ�ޫG��� ��]+a      0   �   x�=��n� E���D�0˪Q�M6i�n�A�D	L5�H��ݞ�s9Ù�3� Z��b����S�lަH~98�$�NJ{�By �R]=��Q]��a��A����K\�~����Y�	h�a,���YS��.�LA'R+�~Z]*5��J]I�>i��B���Y&�oQ
��g���پ���0e�rnީ�/y�Նj�����+��#��R�=��_���֬u#K��u�*��c�47|.      -     x�USˎ�0<�_��k<�X	q@�@p��qzǎ������3�b99�TWףg#�iB��V*��J)]%�m���Q�?�/�&S�E9G���QN#x���v�'ɾ��fv@=)��Vӄo������
�
��n�x�U����n5�d�Y*���3��;
��	ʦݩ�g�(`o�ͅ�hy7J�AY�4���ɬ�5�9�'>4�����%x�s���V]|P��'>-����t�@3�)�����ujx+Z��
��,UEA}j-�[��`|��g�/`6��B�)BEϥlY1:C�3W��BP������mӳ����'�G\?����H�t��.�{���lA\�n>�Dէ���5����y�8��8j�b��L��H��N��5�hv䢑���j�o��K�#9�:d�	�q�w�?�-A�M�����tM�#@yפ����0���8
.�d����p��?�B�|��k���N���%AMF��E�^�y+�ѻ��q�K��·B�B���/��q��Y�       1   �   x�-�͎�0ϟ��'X(G�����ąK����FN�Է't�fˣ;��'O+�4q?��PD�Eҗ05he�i����e����$F6��ؿx(�q�=Z?�':���lvK�L�s8kSŽM�j�[Ѫvk|k�C�P���&�Gr\�p=,�o�-n�[w���~�Ib�p}�Z-�I��u�"�7��H2      *   �  x�USInT1\?��8z�p�lPӋH@"q~�����Z�rM&`d���
��B���������Ȑ��c��Ě`�@j������J���E1r]A��:����b�J^�D�~�}RK q����>����"����Ͷ�����Wtyq,t��\h��s0�H	E߄�Ш8�(��w>�WrU�-��K!�\�}���3�tn��ᓦTɓO�t3�<L�$�<L��l�E�I�!{$��۠j�5o$���£u��	Aԑ�Yde�و:�]L�d
�q�MB��t]5�!Y;�>~.F9�L�������iy<���nm����+�E�y�cQl��K?�p�9ډ��ݠ	T<�&�ڣ�އ���xG��1^DK��"��_�����P���i��e�����d      $   �  x�eU�r�J]������R�~�.~�8N�]��7l�0��Z���௿- ��lX�P�G����Y��ìo�=�FQ��z���1u0Y��A::O_�.*���=��]?Wc��G�P��ê�)�f�hw����Y��}
=y�F����0[2WJYXm�תMK�8&t�3��<���X�TJ5�����S��4��{�bx�6!qw
$G��R
6 1V*Ȥ�	�6>!����!�]S�q���m����:�c�~)c��)���b�pQ
SZ^(��}�����/^���ms@�|�R��r�q���pf(y	u�{�ѧS5Ҕ����Rؒ#�r�M�G�a�ľ"�R�rj��	�J3O�w�0��s�R���ں�=z�6�#\0�y�T)T��!�b����D�f�o�:���ױ`���I�����71l���,g֑m
��"m~&��H+��ŔN�Jr�..<�T?�a1�w>���}l��y7��+�hPMЋ�Z	C��"�;+�%:�m�5��}�����_�D;��A4�z�����^����rN�b�*�]�?ɧ���c#3x/�-�)�)����t�Dk�%��]�֌��(�В���52ٯJH�c�,�W=˨�����`�R��6�eDP���q��"�>�n�.v���o{��qL)#�����7!�RQ#��Yɝ,�(/���6��*��%db��p��]�W�����N�yz]�Ow.2F��U���7��(4
Yק�z�b#KeKk
�/ܴ]��p�ViȞ`.q��V9�g��_�)هz�9�r��l�:�G��|A�
f������|ʸ�p0�>#�c��p��5~��=0�=`I;��1=uK���g�ִ��j����/������n��Gԡ;4αO��GV�58��� LSa�x,��W���c|(f
��>L������6��_���p;��Q����[W U�x�֥�֩?�Q`�,9IK%J�
��3�-S������F	�Cأ�K{-'�����V��-��9@�mf٠�+�I�(���E��0��=@������X�Wt+-����pl2#PM�<��i���ؑq8M^����2J>�OʎX�������a�/ݮ�Xc]�bꕤ�4(s�	�Y�*��CW`����pyY�֎9d����to|9��7<p�%�>���q)�2�#��*X�WA���J����&K�t�9�g.�wb���9��K���jy�p�_����ۥ��k_���cA8"	]��E�?�4w�      (   �  x�eTˎ�6<7�BG4�7y����p�ր�p�D�	E.(�L�_��v � ��zt�Ġ�O��Cwr�`��에�?�u�-���^��0G�saT
C�@�%�J�z)9��}�/>�8�����+8�^��@�s��q� ��ڽ��qr�c�ͯ�~��Q�R���Q����ho�%tʔ���j�q�Ϗ�.?6�cp�ā
��b7��3H[��rE��a�l�+��F�@��~��R�.�XK�W.�'�8M�4rW\6d�w��W�����\��4Y�cl,30G�e�1Ωu�D[��)���S�<.�)ŋ�{��ar��F�$�������>�3r�e�sY�m7,�({-�TB8���č��^�eY=�9����^�l��C`-Yc�nq-���SH�]��o�Æ�9?/k��V����v*0bZ��8���C�rI�������ߴΠiuK%'�s@�R�s���1z��[d�2��c`ZN�c���5�h3�������s��W�8+$�Wυ��{.1w�B�>H��e��j@Pi,u�*4Mq�P���'����:�����_2&{�4n�~�ل$b�mF������S��Z��PͰ���<kya�cЩS���;��ǈ���g�v�N%?�Fo���5��I#ƶf?f��;Nq��>���-��t�j� \�=����B��?�	˵��/�n�;�J"�rI�#�^B�гn�      '   �   x�e�;n1D��)|C�H$�ƈ]��o��>T��i���<��x~�^���l��8��9�� ��q�z=?o�	�'X��X��1�/�1Ǝt�v���ɏ�ֺw
ܷ?�Թt�Q��5��##��1/Uj�.Vm�2%����U�Y�t�Y͉�R��d[#~���1�U%*��h՞>_,�4�7h�ɕ2���0ɛi�J5S�8�/&op�      %   6  x�MT;�1��S��c}|��H�&I��#��Y`����H�>�		]ėd����ǯ�-u/3]2Z�+���M}Ԟ\kOZz�_�-�����Ez��?�d�69��.��_B���������8�u\S�	s�tHlw�����9_�M��$i�9��	4���"�#_LmzZI� i��q_Ɂs�G��sđb �?$r���&�Z:���v;`���a��!���Gd�1Fx6�Oӣ_I�e;�K4@�m��1�7��X'y̢�9oiw$��ӆ�A��m%+�} ^JK1{�@AU�<$_5���ꋮx|P�3N'4![c9���t-O�ey9J�{��nr��de. �Ofl��#�{�#�j���!�3�)(�K����P������@���(���8�uˇ�xw���^��h�k�1��k�z�kdt�|"Pr�ǌ���P=�2���O�"s,�4>'��r�f>���8T*8��̜�>��f�+���x1����&g���G��a]�"1y?5h��I5+��6�jP�B��c�|����7?�k�����P��      )   �   x�e��n�0Dg�+��(J9i��tq56Ā�����������I�^�u8]js�r�]n�M�4��ѽ�i�KD��1�$�4M�w��q$. [��E0��c�&C�{�M��8��ѳZ���9ل�LA�Cp���_�Cw~�h�����`-�K���J1����F��Cb����}��k�p��D�M}����r������� !�`N��s�h2ưB&�>w��_�W��      ,   �  x�mSIn�0]K��T�ǻt��G[;H��Ky��/o�7�;�?����y*Ա�s�;���r3	��ze�2���?ޖ���mz�ܗ��aQ�2/9H�bC��b(M�	=$�c� pl��ͫC/����z{�ފFq���Wf��	��`��6i!�$�B�{T%'���W���qD�Q�bۡH�����;�U;6�A6,�c����]:E���V���0�W¹ox�T��1h�n���o�3��ڬR��2���װTͣ�@�,Y����&���Xl��U#��?��E�
H��T�QBVF�x�7��BD�X{\�p��q�
��(�]l�X��Ā�ڻg��-jr�����Ѣ�=dd�s��i��h��v�#S�L���5���՘�d�(W'�a]�ٿ5��A}��x	�K������9�j     