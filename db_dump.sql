--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10
-- Dumped by pg_dump version 13.7 (Debian 13.7-0+deb11u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_account; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.account_account (
    password character varying(128) NOT NULL,
    id uuid NOT NULL,
    email character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    cell character varying(20),
    date_joined timestamp with time zone NOT NULL,
    last_login timestamp with time zone,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    cpf character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    address character varying(100),
    agency character varying(100),
    bank character varying(100),
    birth_date date,
    cep character varying(100),
    city character varying(100),
    cnh character varying(255),
    code character varying(100),
    complement character varying(100),
    district character varying(100),
    email_notices boolean,
    email_quotes boolean,
    identity character varying(255),
    number character varying(100),
    number_account character varying(100),
    passport character varying(255),
    phone character varying(20),
    sign character varying(100),
    state character varying(100),
    status boolean,
    photo character varying(100),
    surname character varying(255),
    budgets boolean NOT NULL,
    premium boolean NOT NULL
);


ALTER TABLE public.account_account OWNER TO doadmin;

--
-- Name: account_account_groups; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.account_account_groups (
    id integer NOT NULL,
    account_id uuid NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.account_account_groups OWNER TO doadmin;

--
-- Name: account_account_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.account_account_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_account_groups_id_seq OWNER TO doadmin;

--
-- Name: account_account_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.account_account_groups_id_seq OWNED BY public.account_account_groups.id;


--
-- Name: account_account_programs; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.account_account_programs (
    id integer NOT NULL,
    account_id uuid NOT NULL,
    programs_id integer NOT NULL
);


ALTER TABLE public.account_account_programs OWNER TO doadmin;

--
-- Name: account_account_programs_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.account_account_programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_account_programs_id_seq OWNER TO doadmin;

--
-- Name: account_account_programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.account_account_programs_id_seq OWNED BY public.account_account_programs.id;


--
-- Name: account_account_user_permissions; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.account_account_user_permissions (
    id integer NOT NULL,
    account_id uuid NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.account_account_user_permissions OWNER TO doadmin;

--
-- Name: account_account_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.account_account_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_account_user_permissions_id_seq OWNER TO doadmin;

--
-- Name: account_account_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.account_account_user_permissions_id_seq OWNED BY public.account_account_user_permissions.id;


--
-- Name: account_company; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.account_company (
    id uuid NOT NULL,
    name character varying(255),
    cnpj_cpf character varying(255),
    phone character varying(255),
    address character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id uuid NOT NULL,
    logo character varying(100),
    email character varying(255),
    instagram character varying(255)
);


ALTER TABLE public.account_company OWNER TO doadmin;

--
-- Name: account_userprograms; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.account_userprograms (
    id uuid NOT NULL,
    programs_id integer NOT NULL,
    user_id uuid NOT NULL
);


ALTER TABLE public.account_userprograms OWNER TO doadmin;

--
-- Name: applications_application; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.applications_application (
    id uuid NOT NULL,
    application character varying(100) NOT NULL,
    boleto_fee double precision NOT NULL,
    installment_fee double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid NOT NULL
);


ALTER TABLE public.applications_application OWNER TO doadmin;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO doadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO doadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO doadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO doadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO doadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO doadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id uuid NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO doadmin;

--
-- Name: calculators_calculators; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.calculators_calculators (
    id uuid NOT NULL,
    smiles double precision NOT NULL,
    latam double precision NOT NULL,
    tap double precision NOT NULL,
    azul double precision NOT NULL,
    livelo double precision NOT NULL,
    other double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid NOT NULL
);


ALTER TABLE public.calculators_calculators OWNER TO doadmin;

--
-- Name: cartoes_card; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.cartoes_card (
    id uuid NOT NULL,
    code character varying(100) NOT NULL,
    surname character varying(100) NOT NULL,
    flag character varying(100) NOT NULL,
    last_digits character varying(100) NOT NULL,
    expiration_month character varying(20) NOT NULL,
    expiration_year character varying(20) NOT NULL,
    best_purchase_date character varying(20) NOT NULL,
    holder character varying(100) NOT NULL,
    "limit" character varying(100) NOT NULL,
    annuity character varying(100),
    benefit_program character varying(100) NOT NULL,
    punctuation character varying(100) NOT NULL,
    coin character varying(100) NOT NULL,
    status boolean NOT NULL,
    notes text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid NOT NULL,
    due_day character varying(2)
);


ALTER TABLE public.cartoes_card OWNER TO doadmin;

--
-- Name: coin_coin; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.coin_coin (
    id uuid NOT NULL,
    dolar double precision NOT NULL,
    euro double precision NOT NULL,
    "real" double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid NOT NULL
);


ALTER TABLE public.coin_coin OWNER TO doadmin;

--
-- Name: compradores_buyer; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.compradores_buyer (
    id uuid NOT NULL,
    code character varying(100) NOT NULL,
    corporate_name character varying(100) NOT NULL,
    company character varying(100) NOT NULL,
    cnpj character varying(255),
    cell character varying(20),
    another_contact character varying(20),
    email character varying(100),
    status boolean,
    notes text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid NOT NULL
);


ALTER TABLE public.compradores_buyer OWNER TO doadmin;

--
-- Name: cotacoes_platform; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.cotacoes_platform (
    id uuid NOT NULL,
    name character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.cotacoes_platform OWNER TO doadmin;

--
-- Name: cotacoes_platformvalue; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.cotacoes_platformvalue (
    id uuid NOT NULL,
    value character varying(255),
    date_time timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    quote_platform_id uuid NOT NULL
);


ALTER TABLE public.cotacoes_platformvalue OWNER TO doadmin;

--
-- Name: cotacoes_quote; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.cotacoes_quote (
    id uuid NOT NULL,
    program_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.cotacoes_quote OWNER TO doadmin;

--
-- Name: cotacoes_quoteplatform; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.cotacoes_quoteplatform (
    id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    platform_id uuid NOT NULL,
    quote_id uuid NOT NULL
);


ALTER TABLE public.cotacoes_quoteplatform OWNER TO doadmin;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id uuid NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO doadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO doadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO doadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO doadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO doadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO doadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO doadmin;

--
-- Name: gerenciador_emission; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.gerenciador_emission (
    id uuid NOT NULL,
    number character varying(255),
    protocol_id uuid,
    miles_total character varying(255),
    tickets_issued character varying(255),
    miles_to_issue character varying(255),
    miles_issued character varying(255),
    locator character varying(255),
    category character varying(255),
    status character varying(255),
    balance_after_issue character varying(255),
    issue_date date,
    flight_date date,
    create_check_in_warning boolean,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid,
    passenger_id uuid,
    holder_id uuid,
    passengers_quantity character varying(255),
    program_id integer,
    value character varying(255),
    sale_date date,
    passenger_outsourced character varying(255),
    cia character varying(255),
    observation text
);


ALTER TABLE public.gerenciador_emission OWNER TO doadmin;

--
-- Name: gerenciador_launch; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.gerenciador_launch (
    id uuid NOT NULL,
    account character varying(255),
    code character varying(255),
    cost_profit character varying(255),
    credit character varying(255),
    date date,
    description character varying(255),
    miles character varying(255),
    nature character varying(255),
    observation text,
    parcels character varying(255),
    parcels_value character varying(255),
    purchase_value character varying(255),
    real_storage character varying(255),
    status character varying(255),
    sub_group1 character varying(255),
    sub_group2 character varying(255),
    sub_group3 character varying(255),
    theoretical_storage character varying(255),
    type character varying(255),
    quantity character varying(255),
    financial character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    buyer_id uuid,
    holder_id uuid,
    owner_id uuid,
    payment_form_id uuid,
    program_id integer,
    category character varying(255),
    protocol character varying(255),
    manager_id uuid,
    date_first_payment date,
    cia character varying(255)
);


ALTER TABLE public.gerenciador_launch OWNER TO doadmin;

--
-- Name: gerenciador_manager; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.gerenciador_manager (
    id uuid NOT NULL,
    protocol character varying(255),
    cliente character varying(255),
    payment_form_id uuid,
    products character varying(255),
    service_type character varying(255),
    type_revenue character varying(255),
    category character varying(255),
    sub_category character varying(255),
    expense_type character varying(255),
    miles character varying(255),
    purchase_value character varying(255),
    due_day character varying(255),
    parcels character varying(255),
    parcel_value character varying(255),
    description character varying(255),
    bonus character varying(255),
    bonus_miles character varying(255),
    entries character varying(255),
    day_month character varying(255),
    recurring_purchase_value character varying(255),
    day_recurrence character varying(255),
    monthly character varying(255),
    quantity character varying(255),
    remarks character varying(255),
    date_first_payment date,
    cpm character varying(255),
    price_miles character varying(255),
    cost_miles character varying(255),
    stock character varying(255),
    quantity_sold character varying(255),
    acquisition_cost character varying(255),
    sale_value character varying(255),
    profit character varying(255),
    cpm_sale character varying(255),
    cpm_purchase character varying(255),
    sales_profit character varying(255),
    cpm_profit character varying(255),
    value_without_rates character varying(255),
    rate_value character varying(255),
    total_value character varying(255),
    service_value character varying(255),
    costs character varying(255),
    transfer_value character varying(255),
    conversion_factor character varying(255),
    cost_stock character varying(255),
    bonus_source character varying(255),
    bonus_destination character varying(255),
    recurrence character varying(255),
    revenue_value character varying(255),
    expense_value character varying(255),
    observation text,
    date date,
    scheduled_date date,
    purchase_date date,
    payment_first_date date,
    date_first_bonus date,
    recurrent_bonus_date date,
    date_recurrence date,
    first_date_recurring_payment date,
    arrival_date date,
    date_credit_miles date,
    date_sale date,
    first_date_parcel date,
    delivery_date date,
    date_hiring date,
    date_execution_service date,
    shipping_date date,
    date_receipt date,
    date_credit_bonus date,
    final_score date,
    date_bonus_origin date,
    date_bonus_destination date,
    pricefy_miles boolean,
    bonus_calculation_formula character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    buyer_id uuid,
    holder_id uuid,
    holder_transf_id uuid,
    holder_receive_id uuid,
    origin_program_id integer,
    owner_id uuid,
    program_id integer,
    target_program_id integer,
    status character varying(255),
    sub_group1 character varying(255),
    sub_group2 character varying(255),
    sub_group3 character varying(255),
    sugested_cpm character varying(255)
);


ALTER TABLE public.gerenciador_manager OWNER TO doadmin;

--
-- Name: gerenciador_milescpm; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.gerenciador_milescpm (
    id uuid NOT NULL,
    quantity integer,
    "CPM" double precision,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid,
    holder_id uuid,
    program_id integer,
    real_storage integer,
    theoretical_storage integer
);


ALTER TABLE public.gerenciador_milescpm OWNER TO doadmin;

--
-- Name: gerenciador_product; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.gerenciador_product (
    id uuid NOT NULL,
    quantity character varying(255),
    price character varying(255),
    description character varying(255),
    purchase_date date,
    arrival_date date,
    available boolean,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    manager_id uuid,
    owner_id uuid
);


ALTER TABLE public.gerenciador_product OWNER TO doadmin;

--
-- Name: novidades_news; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.novidades_news (
    id uuid NOT NULL,
    image character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    link character varying(200),
    title character varying(100)
);


ALTER TABLE public.novidades_news OWNER TO doadmin;

--
-- Name: orcamentos_budget; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.orcamentos_budget (
    id uuid NOT NULL,
    proposal_number integer,
    proposal_date character varying(100) NOT NULL,
    proposal_validity character varying(100) NOT NULL,
    coin character varying(100) NOT NULL,
    tariff_economic character varying(100),
    tariff_executive character varying(100),
    tariff_premiun character varying(100),
    fuel_economic character varying(100),
    fuel_executive character varying(100),
    fuel_premiun character varying(100),
    boarding_economic character varying(100),
    boarding_executive character varying(100),
    boarding_premiun character varying(100),
    bags_acess_economic character varying(100),
    bags_acess_executive character varying(100),
    bags_acess_premiun character varying(100),
    others_economic character varying(100),
    others_executive character varying(100),
    others_premiun character varying(100),
    service_economic character varying(100),
    service_executive character varying(100),
    service_premiun character varying(100),
    total_coin_economic character varying(100),
    total_coin_executive character varying(100),
    total_coin_premiun character varying(100),
    total_economic character varying(100),
    total_executive character varying(100),
    total_premiun character varying(100),
    airline_tickets character varying(100),
    baggage_cabin character varying(100),
    baggage_23 character varying(100),
    baggage_10 character varying(100),
    all_tx character varying(100),
    transfer_hotel character varying(100),
    priority character varying(100),
    travel_insurance character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    company_id uuid NOT NULL,
    owner_id uuid NOT NULL,
    client character varying(100),
    payment_forms character varying(255),
    proposal_deadline character varying(100),
    infa_economic character varying(100),
    infa_executive character varying(100),
    infa_premiun character varying(100),
    adults integer,
    babies integer,
    savings character varying(100),
    email_client character varying(100),
    kids integer,
    phone_client character varying(100),
    price_company character varying(100),
    ticket_details text,
    adopted_rate character varying(100),
    adopted_tax character varying(100),
    capared_rate character varying(100),
    custo_milheiro character varying(100),
    economy_percent character varying(100),
    economy_real character varying(100),
    miles character varying(100),
    tax1_cot1 character varying(100),
    tax1_cot2 character varying(100),
    tax1_ref_dol character varying(100),
    tax2_cot1 character varying(100),
    tax2_cot2 character varying(100),
    tax2_ref_dol character varying(100),
    tax3_cot1 character varying(100),
    tax3_cot2 character varying(100),
    tax3_ref_dol character varying(100),
    tax4_cot1 character varying(100),
    tax4_cot2 character varying(100),
    tax4_ref_dol character varying(100),
    tax5_cot1 character varying(100),
    tax5_cot2 character varying(100),
    tax5_ref_dol character varying(100),
    tax6_cot1 character varying(100),
    tax6_cot2 character varying(100),
    tax6_ref_dol character varying(100),
    total_cot1 character varying(100),
    total_cot2 character varying(100),
    total_geral_cot1 character varying(100),
    total_geral_cot2 character varying(100),
    total_geral_ref_dol character varying(100),
    total_rate character varying(100),
    total_real_cot1 character varying(100),
    total_real_cot2 character varying(100),
    total_real_ref_dol character varying(100),
    total_ref_dol character varying(100),
    baggage_bag_details text,
    baggage_dispatch_details text,
    baggage_hand_details text,
    compared_rate character varying(100),
    general_infos text,
    saving_percent character varying(100),
    saving_real character varying(100),
    "showBagageDetails" boolean NOT NULL,
    "showGeneralInfos" boolean NOT NULL,
    "showPaymentForms" boolean NOT NULL,
    "showTicketDetails" boolean NOT NULL,
    tariff character varying(100),
    taxes character varying(100),
    thousand_cost character varying(100),
    total character varying(100),
    total_geral_dol character varying(100),
    total_ticket1 character varying(100),
    total_ticket2 character varying(100),
    total_ticket_dol character varying(100),
    show_compared_price boolean NOT NULL,
    selected_currency_to_compare character varying(100)
);


ALTER TABLE public.orcamentos_budget OWNER TO doadmin;

--
-- Name: orcamentos_passenger; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.orcamentos_passenger (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    birth_date character varying(20),
    cnpj_cpf character varying(255),
    passport_rg character varying(255),
    phone character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    budget_id uuid NOT NULL
);


ALTER TABLE public.orcamentos_passenger OWNER TO doadmin;

--
-- Name: orcamentos_returnticket; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.orcamentos_returnticket (
    id uuid NOT NULL,
    flight character varying(255),
    airline character varying(255),
    departure_date character varying(20),
    departure_time character varying(20),
    arrival_date character varying(20),
    arrival_time character varying(20),
    duration character varying(20),
    stops character varying(20),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    budget_id uuid NOT NULL,
    baggage_bag character varying(100),
    baggage_dispatch character varying(100),
    baggage_hand character varying(100),
    classe character varying(100),
    destination_airport character varying(255),
    destination_city character varying(255),
    origin_airport character varying(255),
    origin_city character varying(255)
);


ALTER TABLE public.orcamentos_returnticket OWNER TO doadmin;

--
-- Name: orcamentos_wayticket; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.orcamentos_wayticket (
    id uuid NOT NULL,
    flight character varying(255),
    airline character varying(255),
    departure_date character varying(20),
    departure_time character varying(20),
    arrival_date character varying(20),
    arrival_time character varying(20),
    duration character varying(20),
    stops character varying(20),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    budget_id uuid NOT NULL,
    baggage_bag character varying(100),
    baggage_dispatch character varying(100),
    baggage_hand character varying(100),
    classe character varying(100),
    destination_airport character varying(255),
    destination_city character varying(255),
    origin_airport character varying(255),
    origin_city character varying(255)
);


ALTER TABLE public.orcamentos_wayticket OWNER TO doadmin;

--
-- Name: pagamentos_payments; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pagamentos_payments (
    id uuid NOT NULL,
    transaction character varying(100) NOT NULL,
    status character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id uuid NOT NULL,
    user_id uuid NOT NULL,
    payment_email character varying(100) NOT NULL
);


ALTER TABLE public.pagamentos_payments OWNER TO doadmin;

--
-- Name: pagamentos_plans; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pagamentos_plans (
    id uuid NOT NULL,
    product character varying(100) NOT NULL,
    id_hotmart character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    description text,
    link character varying(100)
);


ALTER TABLE public.pagamentos_plans OWNER TO doadmin;

--
-- Name: passageiros_passenger; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.passageiros_passenger (
    id uuid NOT NULL,
    code character varying(100) NOT NULL,
    full_name character varying(255) NOT NULL,
    birth_date date NOT NULL,
    cpf character varying(255),
    identity character varying(255),
    passport character varying(255),
    cell character varying(20),
    another_contact character varying(20),
    email character varying(100),
    status boolean NOT NULL,
    notes text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid NOT NULL
);


ALTER TABLE public.passageiros_passenger OWNER TO doadmin;

--
-- Name: programas_programs; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.programas_programs (
    id integer NOT NULL,
    name character varying(100),
    company character varying(100),
    category character varying(100),
    type character varying(100),
    cpf_limitation character varying(100),
    type_limitation character varying(100),
    status boolean,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    photo character varying(100)
);


ALTER TABLE public.programas_programs OWNER TO doadmin;

--
-- Name: programas_programs_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.programas_programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.programas_programs_id_seq OWNER TO doadmin;

--
-- Name: programas_programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.programas_programs_id_seq OWNED BY public.programas_programs.id;


--
-- Name: suporte_support; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.suporte_support (
    id uuid NOT NULL,
    category character varying(255) NOT NULL,
    title character varying(255),
    content text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    "order" integer
);


ALTER TABLE public.suporte_support OWNER TO doadmin;

--
-- Name: titulares_holder; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.titulares_holder (
    id uuid NOT NULL,
    code character varying(100),
    full_name character varying(255) NOT NULL,
    surname character varying(1001) NOT NULL,
    cpf character varying(255),
    identity character varying(255),
    passport character varying(255),
    cnh character varying(255),
    birth_date date,
    sign character varying(100),
    cell character varying(100),
    another_contact character varying(20),
    email character varying(100),
    cep character varying(100),
    address character varying(100),
    number character varying(100),
    complement character varying(100),
    state character varying(100),
    city character varying(100),
    district character varying(100),
    bank character varying(100),
    agency character varying(100),
    number_account character varying(100),
    pix_key character varying(100),
    status boolean,
    notes text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id uuid NOT NULL
);


ALTER TABLE public.titulares_holder OWNER TO doadmin;

--
-- Name: titulares_points; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.titulares_points (
    id uuid NOT NULL,
    program character varying(100),
    points integer,
    expire_date character varying(100),
    status boolean,
    username character varying(255),
    password character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    holder_id uuid NOT NULL,
    process boolean,
    error boolean,
    "passwordSent" boolean
);


ALTER TABLE public.titulares_points OWNER TO doadmin;

--
-- Name: account_account_groups id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_groups ALTER COLUMN id SET DEFAULT nextval('public.account_account_groups_id_seq'::regclass);


--
-- Name: account_account_programs id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_programs ALTER COLUMN id SET DEFAULT nextval('public.account_account_programs_id_seq'::regclass);


--
-- Name: account_account_user_permissions id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.account_account_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: programas_programs id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.programas_programs ALTER COLUMN id SET DEFAULT nextval('public.programas_programs_id_seq'::regclass);


--
-- Data for Name: account_account; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.account_account (password, id, email, username, cell, date_joined, last_login, is_active, is_staff, is_superuser, cpf, created_at, updated_at, address, agency, bank, birth_date, cep, city, cnh, code, complement, district, email_notices, email_quotes, identity, number, number_account, passport, phone, sign, state, status, photo, surname, budgets, premium) FROM stdin;
pbkdf2_sha256$260000$Ujn3MqtC0vt5AZEK8Fk3RY$Co6lKYfI5qbHH8xg/i5ocP5glChmiU5LO1AT/0uWEp8=	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	Wallace Cardoso Gomes	\N	2021-11-01 14:40:54.673552+00	2022-05-13 09:26:00.226451+00	t	t	t	14420782781	2021-11-01 14:40:54.673593+00	2022-05-13 09:26:00.68228+00	\N	\N	\N	\N	\N	\N	\N	U1083	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t	profile_photo/84664fab-7dd5-4698-bcd2-683e26e1d20d.png	WallStreet	f	f
pbkdf2_sha256$260000$Ci0oDk7oHJcuIz1dEoNMPb$RXMrQcXVbPAq4UZFb/rHFtDmj/o7lZ0p/MkBsCCYBHQ=	8dff7c65-9dbd-480f-b26a-4e395d2dcf46	milhas@controlmilhas.com.br	Control Milhas	\N	2021-11-04 20:12:14.680824+00	2021-11-04 20:13:05.560589+00	t	f	f	00011122233	2021-11-04 20:12:14.680867+00	2021-11-04 20:13:05.560611+00	\N	\N	\N	\N	\N	\N	\N	U1022	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$CwtSv1Env6HN4tYKVanCrb$Tpx6UyWzqGCsAq811GBdfKEj1BTXpRqMHKuDMO+0Gus=	3787f54d-da3c-46e7-8a13-b4bdfb120e31	teclat@teclat.com.br	teclat@teclat.com.br	\N	2021-10-26 21:54:55.897406+00	2021-11-04 23:38:13.459349+00	t	t	t	\N	2021-10-26 21:54:55.897473+00	2021-10-27 20:29:16.298547+00	\N	\N	\N	\N	\N	\N	\N	U1006	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$OOhyMXJzWOkHFahuuTpHVS$rqOezPqGO/y+FqtQO4nOd/0vbr/LoBuhgQnC0HDxUs0=	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2	teste2323@teste.com	testedawdWDWD	(21) 93829-3829	2022-01-14 14:10:30.083709+00	\N	t	f	f	\N	2022-01-14 14:10:30.083749+00	2022-01-14 14:10:30.083755+00	\N	\N	\N	\N	\N	\N	\N	U1072	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$Jh6frBofaGKts8K5U9N8Ib$z7BzoZGWEo8O/Gj7z0X0q/xRSzJVu4Gfdb6emH9rLoc=	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9	teste12345@teste12345.com	TESTE dawdawd	(23) 21321-3232	2022-01-16 21:42:08.598578+00	2022-01-16 21:42:32.712724+00	t	f	f	\N	2022-01-16 21:42:08.598618+00	2022-01-16 21:42:33.241236+00	\N	\N	\N	\N	\N	\N	\N	U1074	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$Oi8Xg3qtWLO2Yzxrzatqs2$fO3emQ55risUuScGYglw+Pj+ACT5HwyAAkUB719xvFg=	ec1b14d2-6165-48d2-a49e-1d8316b23f65	carlosvictortecprof@gmail.com	admin	(85) 98538-5235	2021-11-03 20:22:12.005098+00	2021-11-03 20:22:12.005119+00	f	f	f	\N	2021-11-03 20:22:12.00514+00	2021-11-03 20:22:12.005146+00	\N	\N	\N	\N	\N	\N	\N	U1012	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$82oaYwT7oWB77UZ8CZmI7T$+2KKaCKrarVzlagEwFhyHF/WKM1Nq13/IRb1vIpqzPQ=	21e184d9-f929-4d38-b965-68f84ff98a81	teste@gmail.combr	admin	(85) 93213-1231	2021-11-03 20:26:45.30057+00	2021-11-03 20:26:45.300594+00	f	f	f	\N	2021-11-03 20:26:45.300615+00	2021-11-03 20:26:45.30062+00	\N	\N	\N	\N	\N	\N	\N	U1013	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$DogY4wAiP7uX6JqHKpHP1T$l7dCaho9Wn5UpELYbbXuaT2FS5gVGaq7hRAlsRizfwI=	14905b2f-d341-4021-b697-809098bd8651	novo@iteste.com.br	novo teste	(85) 83213-1213	2021-11-03 20:27:16.807078+00	2021-11-03 20:27:16.8071+00	f	f	f	\N	2021-11-03 20:27:16.807122+00	2021-11-03 20:27:16.807127+00	\N	\N	\N	\N	\N	\N	\N	U1014	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$tOaYiIkRkpV5VQIrAWnual$PMssdA2z9P9++rg5CJrgKLwm4PXA9iks/p/S7/FiiZ0=	8fd31a84-1666-498b-932c-20743c9e8618	saviotorquato@gmail.com	Savio T		2021-11-03 20:27:35.61458+00	2021-11-03 20:27:35.614602+00	f	f	f	\N	2021-11-03 20:27:35.614623+00	2021-11-03 20:27:35.614629+00	\N	\N	\N	\N	\N	\N	\N	U1015	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$orL2apLbcGTb0Vob8dXQK1$x1DiIq4ZHzQcH8CBdrelfmzCLMK3bRvgCeRbvQPfXGU=	d0dba31a-53e1-4df6-bf09-a3b61dcfa233	wallaceteste@teste.com	Wallace		2021-11-03 20:27:42.633637+00	2021-11-03 20:27:42.63366+00	f	f	f	\N	2021-11-03 20:27:42.63368+00	2021-11-03 20:27:42.633686+00	\N	\N	\N	\N	\N	\N	\N	U1016	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$gpQJReFT8tG2V8JSOrMz1t$93sKSLQ37O92YqYaYx4+PoKX9l7RVP4HrcrP8kp/VVg=	ee8cb94e-6802-4c5a-a581-39ce7e2c68f0	wallacetesteteste@teste.com	Wallace TESTESTESTES		2021-11-03 20:28:53.044075+00	2021-11-03 20:28:53.044098+00	f	f	f	\N	2021-11-03 20:28:53.044119+00	2021-11-03 20:28:53.044126+00	\N	\N	\N	\N	\N	\N	\N	U1018	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$062QVIiR1w6Of66yWX3ThS$Pa4V3yOuUAZKkDrRY7FVtPqafZAquR55s2Zm02kGDj4=	93f86f08-ea2a-4749-a902-d75280651b7b	wallace.gomes3@teclat.com	Wallace Gomes	(21) 97567-8836	2022-01-11 18:38:16.474021+00	2022-01-21 02:07:16.423541+00	t	f	f	\N	2022-01-11 18:38:16.474059+00	2022-01-21 02:07:17.0162+00	\N	\N	\N	\N	\N	\N	\N	U1081	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$imO0rz83ceqLoodF0oUwEU$USr/k4X9PwmoSSrBjp8W8kZH+FqxNXK9SNT8Otc/mZI=	381b2a1a-6674-433d-bead-8c7d5a8462ee	gerdsonp@gmail.com	gerdsonp@gmail.com	(85) 98693-4550	2022-01-11 18:36:28.366405+00	2022-01-11 18:37:04.801051+00	t	f	f	\N	2022-01-11 18:36:28.366444+00	2022-01-11 18:37:05.596928+00	\N	\N	\N	\N	\N	\N	\N	U1068	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$uQ9xnzDInarkdgbpqU32y0$Eq1hgpWo7QfsS2VHZXiPLayJWdS9pyPRQje6PCxoGzQ=	0deefd7f-ec79-45e6-800c-2101a586aa2d	plinyosilvadev20@gmail.com	Plinyo Silva	(85) 90000-0000	2022-01-16 21:44:50.766095+00	2022-01-16 21:45:16.043694+00	t	f	f	\N	2022-01-16 21:44:50.766134+00	2022-01-16 21:45:16.617872+00	\N	\N	\N	\N	\N	\N	\N	U1076	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$9qgmCiV4CpdG5RCHKMWO5q$N1geVnxY3RLUENeaD/QR11FsEWAL37JitbEqGlIUYpc=	50acd49c-7a3a-42d9-a5cc-0c40010516c5	wallace.gomes5@teclat.com	wallace teste 3	(21) 97667-8836	2022-01-16 21:57:27.864212+00	2022-01-21 02:08:05.101789+00	t	f	f	\N	2022-01-16 21:57:27.864251+00	2022-01-21 02:08:05.801657+00	\N	\N	\N	\N	\N	\N	\N	U1081	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$4rgvgQNqzpC2MhCnY558gh$uZfWHaFIX1YxoPck2lHD8227jAuATHom9SrwLgg5Vic=	0900267f-61e3-492d-98c4-160050d8df27	plinyosilvadev@gmail.com	plinyo silva	\N	2021-11-09 21:01:12.134086+00	2022-04-03 19:09:31.138281+00	t	t	t	\N	2021-11-09 21:01:12.134132+00	2022-04-03 19:09:31.735478+00	\N	\N	\N	\N	\N	\N	\N	U1083	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	t	t
pbkdf2_sha256$260000$8lvBCmw8IQVekKMiz9jO02$T3YZNi0T6WqaG3a2ixooxqWrsaUJEQfnGW9gbsAiOi0=	ee483e14-b3e5-47ba-a822-79f2b3be77fc	plinyosilvadev21@gmail.com	plinyo	(85) 98603-0000	2022-01-17 10:09:52.295002+00	2022-01-17 10:09:58.945072+00	t	f	f	\N	2022-01-17 10:09:52.295043+00	2022-01-17 10:09:59.428914+00	\N	\N	\N	\N	\N	\N	\N	U1080	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$vDHlN862Bim3aqwdwdw8lo$eqYhB+up1sx491sh8gDAB1KhEq49Ip0iTU/yj+HUBUA=	d0043339-81ec-47b3-8f97-eaf35203b2bd	wallace.gomes@teste6.com	Wallace TESTETESTE	(21) 97567-8836	2022-01-21 02:09:42.226897+00	2022-01-21 02:09:49.948087+00	t	f	f	\N	2022-01-21 02:09:42.226938+00	2022-01-21 02:09:50.47098+00	\N	\N	\N	\N	\N	\N	\N	U1082	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	f
pbkdf2_sha256$260000$WVllIamQdm7UMsXBOxkYTz$2JtNdegAG82FRK7jIf1ubViSOxUFg/M2l1XfKMlf880=	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	Wallace Cardoso Gomes	(21) 97567-8836	2022-01-06 23:34:23.296297+00	2022-01-18 13:36:03.45417+00	t	f	f	\N	2022-01-06 23:34:23.296335+00	2022-01-18 13:36:04.105297+00	\N	\N	\N	\N	\N	\N	\N	U1081	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	t		\N	f	t
\.


--
-- Data for Name: account_account_groups; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.account_account_groups (id, account_id, group_id) FROM stdin;
\.


--
-- Data for Name: account_account_programs; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.account_account_programs (id, account_id, programs_id) FROM stdin;
2	84664fab-7dd5-4698-bcd2-683e26e1d20d	2
5	84664fab-7dd5-4698-bcd2-683e26e1d20d	1
6	0900267f-61e3-492d-98c4-160050d8df27	3
7	0900267f-61e3-492d-98c4-160050d8df27	2
8	0900267f-61e3-492d-98c4-160050d8df27	1
9	84664fab-7dd5-4698-bcd2-683e26e1d20d	3
18	b4c06e76-183a-4c51-8804-a2c039786fd3	1
19	b4c06e76-183a-4c51-8804-a2c039786fd3	2
20	b4c06e76-183a-4c51-8804-a2c039786fd3	3
159	381b2a1a-6674-433d-bead-8c7d5a8462ee	1
160	381b2a1a-6674-433d-bead-8c7d5a8462ee	2
161	381b2a1a-6674-433d-bead-8c7d5a8462ee	3
168	93f86f08-ea2a-4749-a902-d75280651b7b	1
169	93f86f08-ea2a-4749-a902-d75280651b7b	2
170	93f86f08-ea2a-4749-a902-d75280651b7b	3
192	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2	1
193	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2	2
194	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2	3
198	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9	1
199	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9	2
200	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9	3
204	0deefd7f-ec79-45e6-800c-2101a586aa2d	1
205	0deefd7f-ec79-45e6-800c-2101a586aa2d	2
206	0deefd7f-ec79-45e6-800c-2101a586aa2d	3
213	50acd49c-7a3a-42d9-a5cc-0c40010516c5	1
214	50acd49c-7a3a-42d9-a5cc-0c40010516c5	2
215	50acd49c-7a3a-42d9-a5cc-0c40010516c5	3
219	ee483e14-b3e5-47ba-a822-79f2b3be77fc	1
220	ee483e14-b3e5-47ba-a822-79f2b3be77fc	2
221	ee483e14-b3e5-47ba-a822-79f2b3be77fc	3
273	d0043339-81ec-47b3-8f97-eaf35203b2bd	1
274	d0043339-81ec-47b3-8f97-eaf35203b2bd	2
275	d0043339-81ec-47b3-8f97-eaf35203b2bd	3
\.


--
-- Data for Name: account_account_user_permissions; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.account_account_user_permissions (id, account_id, permission_id) FROM stdin;
\.


--
-- Data for Name: account_company; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.account_company (id, name, cnpj_cpf, phone, address, created_at, updated_at, user_id, logo, email, instagram) FROM stdin;
20c34a72-fd04-480e-8e11-71378bf8644a	outro nonme			TESTESTE	2021-11-04 00:07:10.306349+00	2021-11-23 18:09:14.925334+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	companys_img/20c34a72-fd04-480e-8e11-71378bf8644a.png		
d97e8c5f-cc28-425b-9717-874cd157015a	empresa plinyo	00000000000000	+55 (85) 90000-0000	rua a, 1 brasil	2022-01-30 23:38:05.693101+00	2022-01-30 23:38:21.176968+00	0900267f-61e3-492d-98c4-160050d8df27	companys_img/d97e8c5f-cc28-425b-9717-874cd157015a.jpg	empresaplinyo@email.com	plinyosilva
\.


--
-- Data for Name: account_userprograms; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.account_userprograms (id, programs_id, user_id) FROM stdin;
\.


--
-- Data for Name: applications_application; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.applications_application (id, application, boleto_fee, installment_fee, created_at, updated_at, owner_id) FROM stdin;
e7bf5c66-9f86-471e-8d17-89c45908f34e	pix	10	10	2022-01-10 23:09:00.595456+00	2022-01-10 23:09:00.595474+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_group (id, name) FROM stdin;
1	sem account compradores e titulares
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	13
6	1	14
7	1	15
8	1	16
9	1	21
10	1	22
11	1	23
12	1	24
13	1	25
14	1	26
15	1	27
16	1	28
17	1	53
18	1	54
19	1	55
20	1	56
21	1	57
22	1	58
23	1	59
24	1	60
25	1	61
26	1	62
27	1	63
28	1	64
29	1	65
30	1	66
31	1	67
32	1	68
33	1	69
34	1	70
35	1	71
36	1	72
37	1	73
38	1	74
39	1	75
40	1	76
41	1	77
42	1	78
43	1	79
44	1	80
45	1	81
46	1	82
47	1	83
48	1	84
49	1	85
50	1	86
51	1	87
52	1	88
53	1	89
54	1	90
55	1	91
56	1	92
57	1	93
58	1	94
59	1	95
60	1	96
61	1	97
62	1	98
63	1	99
64	1	100
65	1	101
66	1	102
67	1	103
68	1	104
69	1	105
70	1	106
71	1	107
72	1	108
73	1	109
74	1	110
75	1	111
76	1	112
77	1	113
78	1	114
79	1	115
80	1	116
81	1	117
82	1	118
83	1	119
84	1	120
85	1	121
86	1	122
87	1	123
88	1	124
89	1	125
90	1	126
91	1	127
92	1	128
93	1	129
94	1	130
95	1	131
96	1	132
97	1	133
98	1	134
99	1	135
100	1	136
101	1	137
102	1	138
103	1	139
104	1	140
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add token	7	add_tokenproxy
26	Can change token	7	change_tokenproxy
27	Can delete token	7	delete_tokenproxy
28	Can view token	7	view_tokenproxy
29	Can add account	8	add_account
30	Can change account	8	change_account
31	Can delete account	8	delete_account
32	Can view account	8	view_account
33	Can add Empresa	9	add_company
34	Can change Empresa	9	change_company
35	Can delete Empresa	9	delete_company
36	Can view Empresa	9	view_company
37	Can add Programa	10	add_userprograms
38	Can change Programa	10	change_userprograms
39	Can delete Programa	10	delete_userprograms
40	Can view Programa	10	view_userprograms
41	Can add Titular	11	add_holder
42	Can change Titular	11	change_holder
43	Can delete Titular	11	delete_holder
44	Can view Titular	11	view_holder
45	Can add Pontos por programa	12	add_points
46	Can change Pontos por programa	12	change_points
47	Can delete Pontos por programa	12	delete_points
48	Can view Pontos por programa	12	view_points
49	Can add Comprador	13	add_buyer
50	Can change Comprador	13	change_buyer
51	Can delete Comprador	13	delete_buyer
52	Can view Comprador	13	view_buyer
53	Can add Cartão	14	add_card
54	Can change Cartão	14	change_card
55	Can delete Cartão	14	delete_card
56	Can view Cartão	14	view_card
57	Can add Passageiro	15	add_passenger
58	Can change Passageiro	15	change_passenger
59	Can delete Passageiro	15	delete_passenger
60	Can view Passageiro	15	view_passenger
61	Can add Calculator	16	add_calculators
62	Can change Calculator	16	change_calculators
63	Can delete Calculator	16	delete_calculators
64	Can view Calculator	16	view_calculators
65	Can add Moeda	17	add_coin
66	Can change Moeda	17	change_coin
67	Can delete Moeda	17	delete_coin
68	Can view Moeda	17	view_coin
69	Can add Aplicativo	18	add_application
70	Can change Aplicativo	18	change_application
71	Can delete Aplicativo	18	delete_application
72	Can view Aplicativo	18	view_application
73	Can add Cotação por plataforma	19	add_quote
74	Can change Cotação por plataforma	19	change_quote
75	Can delete Cotação por plataforma	19	delete_quote
76	Can view Cotação por plataforma	19	view_quote
77	Can add Plataforma	20	add_platform
78	Can change Plataforma	20	change_platform
79	Can delete Plataforma	20	delete_platform
80	Can view Plataforma	20	view_platform
81	Can add Valor da cotação	21	add_platformvalue
82	Can change Valor da cotação	21	change_platformvalue
83	Can delete Valor da cotação	21	delete_platformvalue
84	Can view Valor da cotação	21	view_platformvalue
85	Can add Valores por Plataforma	22	add_quoteplatform
86	Can change Valores por Plataforma	22	change_quoteplatform
87	Can delete Valores por Plataforma	22	delete_quoteplatform
88	Can view Valores por Plataforma	22	view_quoteplatform
89	Can add Suporte	23	add_support
90	Can change Suporte	23	change_support
91	Can delete Suporte	23	delete_support
92	Can view Suporte	23	view_support
93	Can add Novidade	24	add_news
94	Can change Novidade	24	change_news
95	Can delete Novidade	24	delete_news
96	Can view Novidade	24	view_news
97	Can add Orçamento	25	add_budget
98	Can change Orçamento	25	change_budget
99	Can delete Orçamento	25	delete_budget
100	Can view Orçamento	25	view_budget
101	Can add Passagem de ida	26	add_wayticket
102	Can change Passagem de ida	26	change_wayticket
103	Can delete Passagem de ida	26	delete_wayticket
104	Can view Passagem de ida	26	view_wayticket
105	Can add Passagem de volta	27	add_returnticket
106	Can change Passagem de volta	27	change_returnticket
107	Can delete Passagem de volta	27	delete_returnticket
108	Can view Passagem de volta	27	view_returnticket
109	Can add Passageiro	28	add_passenger
110	Can change Passageiro	28	change_passenger
111	Can delete Passageiro	28	delete_passenger
112	Can view Passageiro	28	view_passenger
113	Can add Programa	29	add_programs
114	Can change Programa	29	change_programs
115	Can delete Programa	29	delete_programs
116	Can view Programa	29	view_programs
117	Can add Produto	30	add_products
118	Can change Produto	30	change_products
119	Can delete Produto	30	delete_products
120	Can view Produto	30	view_products
121	Can add Pagamento	31	add_payments
122	Can change Pagamento	31	change_payments
123	Can delete Pagamento	31	delete_payments
124	Can view Pagamento	31	view_payments
125	Can add Gerenciador	32	add_manager
126	Can change Gerenciador	32	change_manager
127	Can delete Gerenciador	32	delete_manager
128	Can view Gerenciador	32	view_manager
129	Can add Lançamento	33	add_launch
130	Can change Lançamento	33	change_launch
131	Can delete Lançamento	33	delete_launch
132	Can view Lançamento	33	view_launch
133	Can add Plano	30	add_plans
134	Can change Plano	30	change_plans
135	Can delete Plano	30	delete_plans
136	Can view Plano	30	view_plans
137	Can add Produto	34	add_product
138	Can change Produto	34	change_product
139	Can delete Produto	34	delete_product
140	Can view Produto	34	view_product
141	Can add miles cpm	35	add_milescpm
142	Can change miles cpm	35	change_milescpm
143	Can delete miles cpm	35	delete_milescpm
144	Can view miles cpm	35	view_milescpm
145	Can add CPM de Milha	36	add_emission
146	Can change CPM de Milha	36	change_emission
147	Can delete CPM de Milha	36	delete_emission
148	Can view CPM de Milha	36	view_emission
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
a1fd0a84192bfd44cfa8198c13e9ba775ea2fab9	2021-10-26 21:54:55.902037+00	3787f54d-da3c-46e7-8a13-b4bdfb120e31
9b81cc73d39d2a8cd8e83585fe149160df626852	2021-11-01 14:40:54.676846+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
f2855d7997e84c5633475706882cdd0abe85c557	2021-11-03 20:22:12.009427+00	ec1b14d2-6165-48d2-a49e-1d8316b23f65
cfc89ed3aa65856c2d05234ab494e0632274117b	2021-11-03 20:26:45.304682+00	21e184d9-f929-4d38-b965-68f84ff98a81
9fa30fd9b3177e58ba7d3f25517ab75e9ca1d7bc	2021-11-03 20:27:16.811393+00	14905b2f-d341-4021-b697-809098bd8651
c37d6c186496310af2ecfbc31e77df7ef8ff08a0	2021-11-03 20:27:35.618135+00	8fd31a84-1666-498b-932c-20743c9e8618
8326e43d0067ec9b96c853be25c2715a509a14eb	2021-11-03 20:27:42.640715+00	d0dba31a-53e1-4df6-bf09-a3b61dcfa233
799e3abdad66282ee561677c5190ad030d304551	2021-11-03 20:28:53.048254+00	ee8cb94e-6802-4c5a-a581-39ce7e2c68f0
de8690427bb9bd99b40fe8c966f9c8e38d7076a5	2021-11-04 20:12:14.683687+00	8dff7c65-9dbd-480f-b26a-4e395d2dcf46
7e1752e3af420a97b7779f41c3cfbf196156e633	2021-11-09 21:01:12.138428+00	0900267f-61e3-492d-98c4-160050d8df27
51034ef02c0d5d91a0c0834ca4381ffe698cb288	2022-01-06 23:34:23.300148+00	b4c06e76-183a-4c51-8804-a2c039786fd3
de57358a17229fc5006ec3bda8fff46ba504ac59	2022-01-11 18:36:28.369646+00	381b2a1a-6674-433d-bead-8c7d5a8462ee
e3558a46b97bfe9e8d95f5310d9046b54700ae1e	2022-01-11 18:38:16.476147+00	93f86f08-ea2a-4749-a902-d75280651b7b
ef0ff1a9d6620274c8b2393ceef1a1693532fc91	2022-01-14 14:10:30.08678+00	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2
e3b41eb0a633e3361e4ddb3521e25d1c6f5c7f50	2022-01-16 21:42:08.601862+00	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9
f00fa91f7cc9fa5474bdd7343be5ec4be8c46358	2022-01-16 21:44:50.768183+00	0deefd7f-ec79-45e6-800c-2101a586aa2d
ede6f4bd6bc7b88d0501b1d4bdf05dec43ef3786	2022-01-16 21:57:27.866523+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5
09bc23da3ec5ec0573cf63153f41864077e7196e	2022-01-17 10:09:52.298612+00	ee483e14-b3e5-47ba-a822-79f2b3be77fc
1b2a35935a83a1a6867a42c8b99f92eb13e23ac1	2022-01-21 02:09:42.229197+00	d0043339-81ec-47b3-8f97-eaf35203b2bd
\.


--
-- Data for Name: calculators_calculators; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.calculators_calculators (id, smiles, latam, tap, azul, livelo, other, created_at, updated_at, owner_id) FROM stdin;
6cb171ee-3d3f-4567-a198-e5225a38c1ba	30	22.8	24	18	42	41	2021-11-03 23:29:29.260014+00	2021-11-27 17:10:39.285755+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
fe04523e-3101-415d-9e15-db1a53aaa47d	10	20	20	0	0	0	2022-01-17 18:55:48.481917+00	2022-01-17 19:18:42.313643+00	b4c06e76-183a-4c51-8804-a2c039786fd3
\.


--
-- Data for Name: cartoes_card; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.cartoes_card (id, code, surname, flag, last_digits, expiration_month, expiration_year, best_purchase_date, holder, "limit", annuity, benefit_program, punctuation, coin, status, notes, created_at, updated_at, owner_id, due_day) FROM stdin;
8ea53804-dcb7-47ce-801b-ef78a7e5a068	K1015	TESTE 1	MASTER	2312	Janeiro	2024	01	Wallace	5500	30	Latam Pass	2	Real	t		2022-01-17 14:35:39.89554+00	2022-01-17 14:35:39.895554+00	b4c06e76-183a-4c51-8804-a2c039786fd3	20
451ed3cb-d812-4465-bf5b-0714e5f23a78	K1016	TESTE 2	MASTER	1231	Janeiro	2024	02	Wallace	4000	300	Smiles	2	Real	t		2022-01-17 18:57:57.84162+00	2022-01-17 18:57:57.841637+00	b4c06e76-183a-4c51-8804-a2c039786fd3	22
2aa69f34-d4b6-4985-bcda-363246625243	K1017	TESTE 3	MASTER	2131	Janeiro	2024	03	Wallace	22222	222	TAP Miles & Go	2	Real	t		2022-01-17 19:18:25.889231+00	2022-01-17 19:18:25.889262+00	b4c06e76-183a-4c51-8804-a2c039786fd3	22
137b68b5-c0a3-4d7f-b1cd-729b20524cbc	K1012	TESTE 2	TESTE	2323	Janeiro	2223	22	TESTE 2	2222.22	2222,22	Tudo Azul	2	Real	t		2021-11-19 16:00:11.343603+00	2022-01-20 17:28:06.693075+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	23
d8d0879a-776a-4c69-b59b-fd39b0a8d313	K1018	LIMITE	LIMTE	1231	Janeiro	2334	12	Wallace	345678.50	3444	Livelo	1	Real	t		2022-01-18 13:36:28.808853+00	2022-01-18 13:36:28.808871+00	b4c06e76-183a-4c51-8804-a2c039786fd3	22
ecfe330a-b9dc-47ad-8ab3-d316143b4311	K1004	LIMITE	LIM	2323	Janeiro	2222	2	LIMITE	30000,00	510	Smiles	2	Real	t		2021-11-18 13:51:31.813153+00	2021-11-18 14:12:25.967173+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	23
6b74e25e-41bc-4504-9b70-e40510fc444b	K1007	TESTEFINAL	FINAL	1232	Janeiro	2000	22	FINAL	20000	489,20	Smiles	2	Real	t		2021-11-18 14:57:46.686741+00	2021-11-18 14:57:46.686762+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	23
d886d244-0a2c-4514-be5d-cd2c211965a5	K1014	cartão 2	visa	1234	Janeiro	2023	1	plinyo	20000.00	100.00	Smiles	2	Real	t		2021-12-03 12:49:34.256561+00	2022-01-20 18:17:00.967972+00	0900267f-61e3-492d-98c4-160050d8df27	10
3b2a2302-9127-48b4-8278-fe700a3885d9	K1008	TESTEDEV	DEV	2343	Janeiro	2222	22	DEV	1234.50	122.50	Smiles	2	Real	t		2021-11-18 17:34:35.482678+00	2021-11-18 17:34:35.482698+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	22
46ab44a0-e82b-45c9-98a8-ce4cd7f5c981	K1009	dawdd	wdddwd	2132	Janeiro	2323	22	2dawdwd	232	233	Latam Pass	222	Real	t		2021-11-19 12:29:17.303442+00	2021-11-19 12:29:17.303457+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	23
7459bee3-931a-4d0b-8288-579cd7e7e95c	K1019	LIMITE 2	MASTER	3534	Janeiro	2232	10	wallace limite 2	747478.56	23233.87	Tudo Azul	3	Euro	t		2022-01-18 13:38:08.414042+00	2022-01-18 14:06:12.827756+00	b4c06e76-183a-4c51-8804-a2c039786fd3	22
103f289b-59f3-44cd-9d5b-c31f6a3fc4ee	K1020	TESTE 40	232	2232	Janeiro	2323	24	Wallace limite 3	232332.43	2333.67	Latam Pass	2	Real	t		2022-01-18 13:49:58.748372+00	2022-01-18 14:06:50.239863+00	b4c06e76-183a-4c51-8804-a2c039786fd3	23
a22633f0-295c-455c-abb1-1c5cf33caf8c	K1001	10/02	MARTER	2020	Janeiro	2323	2	TESTE	20000	323	Latam Pass	2	Real	t	anotação	2021-11-03 23:34:47.549013+00	2021-11-26 10:49:22.678157+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	10
c7698cc3-af65-4ead-9ba5-e3bd8c106290	K1013	15/05	adwdwdwd	2323	Janeiro	2323	05	23232	32323	232323	Latam Pass	2	Real	t		2021-11-26 15:44:15.966414+00	2021-11-26 15:44:15.966439+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	15
5cd74ebe-c10d-4291-978d-73b94e627c94	K1021	dwdw	dwd	2131	Janeiro	2323	22	d2d2	222	0	Smiles	222	Real	t		2022-02-17 11:19:28.344511+00	2022-02-17 11:19:28.344532+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	12
5bb54917-dd5d-4310-abf4-5cfff2a0e5f1	K1005	wdjwndj	TESTE	2312	Janeiro	2222	2	dwudhuwdb	3201.00	500.00	Smiles	2	Real	t		2021-11-18 13:57:34.21262+00	2022-01-20 12:07:46.692002+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	2
e390e9e5-4af8-4458-9716-4e00fd2f2307	K1003	05/25	23232	2323	Janeiro	2222	25	wdwdwd	2000	1.000	Smiles	2	Real	t		2021-11-18 13:49:35.27419+00	2021-12-30 21:01:12.694498+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	05
e6ef4d9e-6628-4cc9-915d-0c3a129e6d80	K1010	TESTE	TESTE	2323	Janeiro	2323	22	2323	10000	300	Smiles	3	Real	t		2021-11-19 12:35:00.081449+00	2022-01-04 01:09:52.380902+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	22
0c7f77b6-e578-4a56-ac55-09f472d2fd91	K1011	TESTETESTE	TESTE	2323	Janeiro	2323	23	2323	3000.00	36666.99	Smiles	2	Real	t		2021-11-19 12:36:41.004237+00	2022-01-20 14:06:17.157999+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	23
\.


--
-- Data for Name: coin_coin; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.coin_coin (id, dolar, euro, "real", created_at, updated_at, owner_id) FROM stdin;
e4e5f13b-fdd3-46f5-b57a-1612f1086430	4.966	5.2928	1	2021-10-26 22:01:35.770508+00	2022-04-26 21:00:08.91244+00	3787f54d-da3c-46e7-8a13-b4bdfb120e31
\.


--
-- Data for Name: compradores_buyer; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.compradores_buyer (id, code, corporate_name, company, cnpj, cell, another_contact, email, status, notes, created_at, updated_at, owner_id) FROM stdin;
a04aa794-448f-475d-96f6-b0e1d1267745	C1001	adwdawdawdw	wdawdwd	\N	\N	\N	\N	t		2021-10-27 20:33:04.013457+00	2021-10-27 20:33:13.580831+00	3787f54d-da3c-46e7-8a13-b4bdfb120e31
ac8bac1f-1742-47b7-8b5b-589c421e7783	C1002	TESTE	EMPRESA	14414124124124	\N	\N	\N	t		2021-10-27 20:33:38.551104+00	2021-10-27 20:33:52.330567+00	3787f54d-da3c-46e7-8a13-b4bdfb120e31
6e086081-583f-4ee1-bed3-43200fc66cb3	C1003	COMPRADOR	COMP1	23124151512512	\N	\N	\N	t		2021-11-08 11:01:13.389542+00	2021-11-08 11:01:13.389566+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
7e220683-d19c-4735-aedb-0322713fac88	C1004	empresa 2 ltda	empresa2	854561231231	845641231	875641321	emailempresa@email.com	t		2021-12-03 12:48:59.996361+00	2021-12-03 12:48:59.996382+00	0900267f-61e3-492d-98c4-160050d8df27
0f8fd9e1-0424-4198-baee-3dd92e6e5ad1	C1000	ART VIAGENS E TURISMO LTDA – EPP	HOTMILHAS	11.442.110/0001-20	(31) 3222-7287	(31) 3222-7287	hotmilhas@hotmilhas.com.br	t		2022-01-17 10:09:52.326545+00	2022-01-17 10:09:59.451078+00	ee483e14-b3e5-47ba-a822-79f2b3be77fc
d4b50b5c-4cac-42bb-8726-c5cc318022f2	C1001	MM TURISMO & VIAGENS S.A	MAXMILHAS	16.988.607/0001-61	(85) 98170-3721	(85) 98170-3721	maxmilhas@maxmilhas.com.br	t		2022-01-17 10:09:52.333157+00	2022-01-17 10:09:59.456031+00	ee483e14-b3e5-47ba-a822-79f2b3be77fc
b8ec3044-389b-46bb-97df-29a756dc3d88	C1002	F.L.B. VIAGENS E TURISMO - EIRELI	CASHMILHAS	12.669.334/0001-31	(11) 96358-6441	(11) 96358-6441	fornecedor@cashmilhas.com.br	t		2022-01-17 10:09:52.338992+00	2022-01-17 10:09:59.461099+00	ee483e14-b3e5-47ba-a822-79f2b3be77fc
a71af2c6-9ade-42ac-b0e7-75930c7cd738	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas	t		2022-01-17 10:09:52.345031+00	2022-01-17 10:09:59.466396+00	ee483e14-b3e5-47ba-a822-79f2b3be77fc
7f5fa423-a418-406c-a680-5b6dbef7be2a	C1004	COMMILHAS PASSAGENS AEREAS LTDA	COMMILHAS	34.169.495/0001-07	(48) 3437-2941	(48) 3437-2941	contato@newtripviagens.com.br	t		2022-01-17 10:09:52.351286+00	2022-01-17 10:09:59.470822+00	ee483e14-b3e5-47ba-a822-79f2b3be77fc
1b9a4f64-58bf-4f49-a8a5-ac90696d204c	C1005	NL AGENCIA DE TURISMO LTDA	COMPROMILHAS	11.976.413/0001-22	(11) 2950-6111	(11) 2950-6111	atendimento@compromilhas.com	t		2022-01-17 10:09:52.357142+00	2022-01-17 10:09:59.475241+00	ee483e14-b3e5-47ba-a822-79f2b3be77fc
2e2975cf-e8a5-4b64-bbba-5e9706b456b7	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas	t		2022-01-18 12:23:07.583676+00	2022-01-18 12:23:07.58369+00	0900267f-61e3-492d-98c4-160050d8df27
06a29c1c-54dc-45df-ab1f-d609b95b319b	C1000	ART VIAGENS E TURISMO LTDA – EPP	HOTMILHAS	11.442.110/0001-20	(31) 3222-7287	(31) 3222-7287	hotmilhas@hotmilhas.com.br	t		2022-01-17 14:33:44.306498+00	2022-01-18 13:36:04.114557+00	b4c06e76-183a-4c51-8804-a2c039786fd3
a179e14e-675e-47db-9584-e03a1f437f20	C1001	MM TURISMO & VIAGENS S.A	MAXMILHAS	16.988.607/0001-61	(85) 98170-3721	(85) 98170-3721	maxmilhas@maxmilhas.com.br	t		2022-01-17 14:33:44.310768+00	2022-01-18 13:36:04.118665+00	b4c06e76-183a-4c51-8804-a2c039786fd3
06326915-5f66-42a5-81db-3110f782326b	C1002	F.L.B. VIAGENS E TURISMO - EIRELI	CASHMILHAS	12.669.334/0001-31	(11) 96358-6441	(11) 96358-6441	fornecedor@cashmilhas.com.br	t		2022-01-17 14:33:44.315876+00	2022-01-18 13:36:04.122565+00	b4c06e76-183a-4c51-8804-a2c039786fd3
0d6f317c-3c32-4dfd-8bae-67b433ab3c51	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas	t		2022-01-21 02:07:17.045246+00	2022-01-21 02:07:17.045263+00	93f86f08-ea2a-4749-a902-d75280651b7b
1f3f17f3-b4f9-4c13-99e8-03262f4b15f3	C1004	COMMILHAS PASSAGENS AEREAS LTDA	COMMILHAS	34.169.495/0001-07	(48) 3437-2941	(48) 3437-2941	contato@newtripviagens.com.br	t		2022-01-21 02:07:17.050502+00	2022-01-21 02:07:17.050524+00	93f86f08-ea2a-4749-a902-d75280651b7b
35a40c69-d3ae-404a-8298-5b0755e9e47d	C1005	NL AGENCIA DE TURISMO LTDA	COMPROMILHAS	11.976.413/0001-22	(11) 2950-6111	(11) 2950-6111	atendimento@compromilhas.com	t		2022-01-21 02:07:17.055461+00	2022-01-21 02:07:17.055477+00	93f86f08-ea2a-4749-a902-d75280651b7b
d4e99560-2fc3-4052-aa8c-012bc3b40bec	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas	t		2022-01-17 14:33:44.320374+00	2022-01-18 13:36:04.12634+00	b4c06e76-183a-4c51-8804-a2c039786fd3
ab80bfb0-4562-4337-8bf8-d4b43edce8ad	C1004	COMMILHAS PASSAGENS AEREAS LTDA	COMMILHAS	34.169.495/0001-07	(48) 3437-2941	(48) 3437-2941	contato@newtripviagens.com.br	t		2022-01-17 14:33:44.326793+00	2022-01-18 13:36:04.130092+00	b4c06e76-183a-4c51-8804-a2c039786fd3
db13386b-e4a6-4f8e-b351-dc1f40162ca9	C1005	NL AGENCIA DE TURISMO LTDA	COMPROMILHAS	11.976.413/0001-22	(11) 2950-6111	(11) 2950-6111	atendimento@compromilhas.com	t		2022-01-17 14:33:44.332392+00	2022-01-18 13:36:04.133755+00	b4c06e76-183a-4c51-8804-a2c039786fd3
a1e2cd30-2731-4374-9bde-9555e453ec34	C1000	ART VIAGENS E TURISMO LTDA – EPP	HOTMILHAS	11.442.110/0001-20	(31) 3222-7287	(31) 3222-7287	hotmilhas@hotmilhas.com.br	t		2022-01-21 02:07:17.02868+00	2022-01-21 02:07:17.028701+00	93f86f08-ea2a-4749-a902-d75280651b7b
167f034a-38d4-44a3-8010-167a1a23f6cd	C1001	MM TURISMO & VIAGENS S.A	MAXMILHAS	16.988.607/0001-61	(85) 98170-3721	(85) 98170-3721	maxmilhas@maxmilhas.com.br	t		2022-01-21 02:07:17.033909+00	2022-01-21 02:07:17.033928+00	93f86f08-ea2a-4749-a902-d75280651b7b
5200bf7e-e60d-4539-b94c-cb50e37963ea	C1002	F.L.B. VIAGENS E TURISMO - EIRELI	CASHMILHAS	12.669.334/0001-31	(11) 96358-6441	(11) 96358-6441	fornecedor@cashmilhas.com.br	t		2022-01-21 02:07:17.039317+00	2022-01-21 02:07:17.039334+00	93f86f08-ea2a-4749-a902-d75280651b7b
eec13657-f577-4957-bf08-1dff6d4cf43d	C1000	ART VIAGENS E TURISMO LTDA – EPP	HOTMILHAS	11.442.110/0001-20	(31) 3222-7287	(31) 3222-7287	hotmilhas@hotmilhas.com.br	t		2022-01-21 02:08:05.816857+00	2022-01-21 02:08:05.816882+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5
77ddbb10-263d-4f12-9017-98abd0c9c840	C1001	MM TURISMO & VIAGENS S.A	MAXMILHAS	16.988.607/0001-61	(85) 98170-3721	(85) 98170-3721	maxmilhas@maxmilhas.com.br	t		2022-01-21 02:08:05.822989+00	2022-01-21 02:08:05.823012+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5
0bfc4a53-f78a-4ff3-b1b2-1143eee91d55	C1002	F.L.B. VIAGENS E TURISMO - EIRELI	CASHMILHAS	12.669.334/0001-31	(11) 96358-6441	(11) 96358-6441	fornecedor@cashmilhas.com.br	t		2022-01-21 02:08:05.828989+00	2022-01-21 02:08:05.829013+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5
097ffcce-ba20-4144-8172-8026f35b8c21	C1000	ART VIAGENS E TURISMO LTDA – EPP	HOTMILHAS	11.442.110/0001-20	(31) 3222-7287	(31) 3222-7287	hotmilhas@hotmilhas.com.br	t		2022-01-18 12:23:07.569742+00	2022-04-03 19:09:31.768986+00	0900267f-61e3-492d-98c4-160050d8df27
a0675b66-d557-4d6d-a7b5-3ee906f828ee	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas	t		2022-01-21 02:08:05.834094+00	2022-01-21 02:08:05.834112+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5
53ed81f0-371f-4058-975f-54e30cd6186b	C1004	COMMILHAS PASSAGENS AEREAS LTDA	COMMILHAS	34.169.495/0001-07	(48) 3437-2941	(48) 3437-2941	contato@newtripviagens.com.br	t		2022-01-21 02:08:05.839022+00	2022-01-21 02:08:05.839042+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5
8bb04aa7-ed4b-4d36-b91d-485f00083fd8	C1005	NL AGENCIA DE TURISMO LTDA	COMPROMILHAS	11.976.413/0001-22	(11) 2950-6111	(11) 2950-6111	atendimento@compromilhas.com	t		2022-01-21 02:08:05.844115+00	2022-01-21 02:08:05.844132+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5
295e827a-3c7b-46d0-91b3-e0b4397d4d1c	C1001	MM TURISMO & VIAGENS S.A	MAXMILHAS	16.988.607/0001-61	(85) 98170-3721	(85) 98170-3721	maxmilhas@maxmilhas.com.br	t		2022-01-18 12:23:07.574392+00	2022-04-03 19:09:31.772998+00	0900267f-61e3-492d-98c4-160050d8df27
ba4d8c79-9e24-4816-a998-5c5ddb653674	C1002	F.L.B. VIAGENS E TURISMO - EIRELI	CASHMILHAS	12.669.334/0001-31	(11) 96358-6441	(11) 96358-6441	fornecedor@cashmilhas.com.br	t		2022-01-18 12:23:07.579143+00	2022-04-03 19:09:31.776652+00	0900267f-61e3-492d-98c4-160050d8df27
251baf5c-fe8d-4c2b-98b9-3ab23af4b07c	C1004	COMMILHAS PASSAGENS AEREAS LTDA	COMMILHAS	34.169.495/0001-07	(48) 3437-2941	(48) 3437-2941	contato@newtripviagens.com.br	t		2022-01-18 12:23:07.588114+00	2022-04-03 19:09:31.784332+00	0900267f-61e3-492d-98c4-160050d8df27
48357dce-dd6f-42ce-8ac8-98111cd366a3	C1005	NL AGENCIA DE TURISMO LTDA	COMPROMILHAS	11.976.413/0001-22	(11) 2950-6111	(11) 2950-6111	atendimento@compromilhas.com	t		2022-01-18 12:23:07.594315+00	2022-04-03 19:09:31.788302+00	0900267f-61e3-492d-98c4-160050d8df27
6daed599-f3e5-4fec-b214-60b4b0556b8f	C1000	ART VIAGENS E TURISMO LTDA – EPP	HOTMILHAS	11.442.110/0001-20	(31) 3222-7287	(31) 3222-7287	hotmilhas@hotmilhas.com.br	t		2022-01-21 02:09:42.250898+00	2022-01-21 02:09:50.480236+00	d0043339-81ec-47b3-8f97-eaf35203b2bd
c7dc778c-2a30-482c-85fd-294d5ef6df81	C1001	MM TURISMO & VIAGENS S.A	MAXMILHAS	16.988.607/0001-61	(85) 98170-3721	(85) 98170-3721	maxmilhas@maxmilhas.com.br	t		2022-01-21 02:09:42.258399+00	2022-01-21 02:09:50.484047+00	d0043339-81ec-47b3-8f97-eaf35203b2bd
ee90715a-3487-45ac-bb29-fb77f0ac89fb	C1002	F.L.B. VIAGENS E TURISMO - EIRELI	CASHMILHAS	12.669.334/0001-31	(11) 96358-6441	(11) 96358-6441	fornecedor@cashmilhas.com.br	t		2022-01-21 02:09:42.263216+00	2022-01-21 02:09:50.487822+00	d0043339-81ec-47b3-8f97-eaf35203b2bd
c42cf659-f5d6-4997-853f-113da5f43af6	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas	t		2022-01-21 02:09:42.268199+00	2022-01-21 02:09:50.491612+00	d0043339-81ec-47b3-8f97-eaf35203b2bd
63153315-8ee0-4a21-b496-64d2e4c397f2	C1004	COMMILHAS PASSAGENS AEREAS LTDA	COMMILHAS	34.169.495/0001-07	(48) 3437-2941	(48) 3437-2941	contato@newtripviagens.com.br	t		2022-01-21 02:09:42.273002+00	2022-01-21 02:09:50.495425+00	d0043339-81ec-47b3-8f97-eaf35203b2bd
6a07010f-f9e8-43fe-bc14-4d8ce5835b9a	C1005	NL AGENCIA DE TURISMO LTDA	COMPROMILHAS	11.976.413/0001-22	(11) 2950-6111	(11) 2950-6111	atendimento@compromilhas.com	t		2022-01-21 02:09:42.282802+00	2022-01-21 02:09:50.49921+00	d0043339-81ec-47b3-8f97-eaf35203b2bd
a9cb9d81-e834-4443-b2fe-3ec929aa1184	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas	t		2022-01-17 12:38:08.021404+00	2022-01-21 21:32:37.365737+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
5ba52e1a-d2d8-4a12-9e75-f8243f449413	C1000	ART VIAGENS E TURISMO LTDA – EPP	HOTMILHAS	11.442.110/0001-20	(31) 3222-7287	(31) 3222-7287	hotmilhas@hotmilhas.com.br	t		2022-01-17 12:38:08.00679+00	2022-05-13 09:26:00.690855+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
94c3b240-641b-4af6-b222-3da0e7537688	C1001	MM TURISMO & VIAGENS S.A	MAXMILHAS	16.988.607/0001-61	(85) 98170-3721	(85) 98170-3721	maxmilhas@maxmilhas.com.br	t		2022-01-17 12:38:08.011796+00	2022-05-13 09:26:00.694139+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
907243b4-5364-44d6-852f-345df9f7233d	C1002	F.L.B. VIAGENS E TURISMO - EIRELI	CASHMILHAS	12.669.334/0001-31	(11) 96358-6441	(11) 96358-6441	fornecedor@cashmilhas.com.br	t		2022-01-17 12:38:08.017184+00	2022-05-13 09:26:00.69728+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
cb5339df-7dbe-47e1-b63d-c3f1598c3c2a	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas.com.br	t		2022-01-27 21:42:34.135429+00	2022-05-13 09:26:00.700568+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
60e71341-63bc-4fda-ae84-171520b11379	C1004	COMMILHAS PASSAGENS AEREAS LTDA	COMMILHAS	34.169.495/0001-07	(48) 3437-2941	(48) 3437-2941	contato@newtripviagens.com.br	t		2022-01-17 12:38:08.025396+00	2022-05-13 09:26:00.704186+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
d4ebdb3b-1a5e-4e9e-aaa3-d40223e5d980	C1005	NL AGENCIA DE TURISMO LTDA	COMPROMILHAS	11.976.413/0001-22	(11) 2950-6111	(11) 2950-6111	atendimento@compromilhas.com	t		2022-01-17 12:38:08.031055+00	2022-05-13 09:26:00.707159+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
a458568d-c657-4718-9e6f-dce9ef4316ef	C1003	V & M TURISMO LTDA	BANKMILHAS	11.080.355/0001-54	(31) 3972-9595	(31) 3972-9595	contato@bankmilhas.com.br	t		2022-01-27 19:12:27.209326+00	2022-04-03 19:09:31.780378+00	0900267f-61e3-492d-98c4-160050d8df27
\.


--
-- Data for Name: cotacoes_platform; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.cotacoes_platform (id, name, created_at, updated_at) FROM stdin;
891de086-85ba-41b4-903c-3aa810d44225	MaxMilhas	2021-11-09 21:03:54.208897+00	2021-11-09 21:03:54.208919+00
1738b94b-bab9-4674-8b59-79f733d825bf	HotMilhas	2021-11-09 21:04:04.033621+00	2021-11-09 21:04:04.033648+00
8c2477c6-97c6-46b3-a0b4-01032ac20241	Milhas&Milhas	2021-11-09 21:04:14.606684+00	2021-11-09 21:04:14.606705+00
\.


--
-- Data for Name: cotacoes_platformvalue; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.cotacoes_platformvalue (id, value, date_time, created_at, updated_at, quote_platform_id) FROM stdin;
04e68c7b-071e-4dda-908f-e87c3aea833f	21,13	2021-11-01 21:14:29+00	2021-11-09 21:14:37.877887+00	2021-11-09 21:14:37.877903+00	8f6e2d6c-8818-4451-bd9f-90f477c9e98d
2bba14d8-2dec-4943-b43c-ae540ff80139	21,10	2021-11-01 21:14:39+00	2021-11-09 21:14:49.246082+00	2021-11-09 21:14:49.246098+00	3746bd66-683f-4231-9f2f-a6619bf9f897
158a3a71-b6ff-4103-9c49-0097bc45c241	25,56	2021-11-01 21:15:08+00	2021-11-09 21:15:19.896346+00	2021-11-09 21:15:19.896361+00	f650230c-95c1-4af4-a2f1-86c53186e02e
3581aeb4-809d-4f1a-bd2f-0a9c32b4871f	25,94	2021-11-09 21:15:22+00	2021-11-09 21:15:27.98492+00	2021-11-09 21:15:27.98493+00	8fa1b32d-28db-4372-b751-cccbef3d722d
b1ac9e07-a282-4777-84ca-fd2942bd2dbe	25,10	2021-11-09 21:15:30+00	2021-11-09 21:15:38.208172+00	2021-11-09 21:15:38.208184+00	3c64e029-e13d-431e-88d8-5e91d02a97e2
5993ecb0-31e1-4c4a-961c-04d107914a94	28,31	2021-11-01 21:15:50+00	2021-11-09 21:16:00.420296+00	2021-11-09 21:16:00.420307+00	8c4ee14a-f627-4878-8439-f3077e722841
0731987f-1d24-4836-91f4-0e3af819133a	28,66	2021-11-01 21:15:40+00	2021-11-09 21:15:48.400414+00	2021-11-09 21:16:06.080547+00	e4566936-2be0-46ab-ad34-b3749611b637
8471b3f0-be31-43f7-b739-c17bd0efed88	28,74	2021-11-09 21:16:07+00	2021-11-09 21:16:16.714522+00	2021-11-09 21:16:16.714536+00	3a4d6aa0-6887-42e6-b647-ba581496c5af
ea0a1bcc-d736-4ad7-8b74-c5a511091ea2	21,12	2021-11-10 00:35:04+00	2021-11-10 00:35:15.137092+00	2021-11-10 00:36:03.002945+00	3746bd66-683f-4231-9f2f-a6619bf9f897
1847d03f-8fa9-4cb0-bf27-05b3fd444862	25,17	2021-11-12 18:44:06+00	2021-11-12 18:44:15.415197+00	2021-11-12 18:44:15.415206+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49
4bb7670f-fb86-41f2-8c72-030da8ed4f93	555	2021-11-10 18:40:00+00	2022-01-06 18:40:18.153893+00	2022-01-06 18:40:18.153902+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49
fbcd9d0c-3ffc-4270-8ae5-a7f0d9cc207a	225255	2021-11-09 18:40:21+00	2022-01-06 18:41:24.702811+00	2022-01-06 18:41:24.70282+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49
12c431c1-05ce-4897-8bea-347315afeb5c	55	2021-12-01 18:41:27+00	2022-01-06 18:41:48.706346+00	2022-01-06 18:41:48.706355+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49
4325e089-c8f2-4314-9d4a-2ab9adad8239	21,11	2022-01-01 21:14:17+00	2021-11-09 21:14:27.902614+00	2022-01-06 18:42:46.05512+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49
c2f28070-ae81-4b75-a167-297f580f859f	22	2021-01-01 18:42:48+00	2022-01-06 18:43:00.796121+00	2022-01-06 18:43:00.796131+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49
bf5058a8-9476-4b6e-b4c1-8289e761b3f1	\N	2021-02-06 18:43:03+00	2022-01-06 18:43:13.666409+00	2022-01-06 18:43:13.666417+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49
\.


--
-- Data for Name: cotacoes_quote; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.cotacoes_quote (id, program_id, created_at, updated_at) FROM stdin;
0be34359-d92e-4a62-ae89-3240158dbb15	1	2021-11-09 21:13:51.175726+00	2021-11-09 21:13:51.175762+00
728276f3-015d-4a9f-99b7-7fde04f92024	2	2021-11-09 21:14:00.824571+00	2021-11-09 21:14:00.824593+00
63a9f867-d251-4200-9b0d-ebf212304613	3	2021-11-09 21:14:10.87819+00	2021-11-09 21:14:10.878211+00
\.


--
-- Data for Name: cotacoes_quoteplatform; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.cotacoes_quoteplatform (id, created_at, updated_at, platform_id, quote_id) FROM stdin;
8f6e2d6c-8818-4451-bd9f-90f477c9e98d	2021-11-09 21:13:51.182126+00	2021-11-09 21:14:37.875043+00	8c2477c6-97c6-46b3-a0b4-01032ac20241	0be34359-d92e-4a62-ae89-3240158dbb15
f650230c-95c1-4af4-a2f1-86c53186e02e	2021-11-09 21:14:10.880464+00	2021-11-09 21:15:19.893782+00	891de086-85ba-41b4-903c-3aa810d44225	63a9f867-d251-4200-9b0d-ebf212304613
8fa1b32d-28db-4372-b751-cccbef3d722d	2021-11-09 21:14:10.883654+00	2021-11-09 21:15:27.982785+00	8c2477c6-97c6-46b3-a0b4-01032ac20241	63a9f867-d251-4200-9b0d-ebf212304613
3c64e029-e13d-431e-88d8-5e91d02a97e2	2021-11-09 21:14:10.882488+00	2021-11-09 21:15:38.205929+00	1738b94b-bab9-4674-8b59-79f733d825bf	63a9f867-d251-4200-9b0d-ebf212304613
8c4ee14a-f627-4878-8439-f3077e722841	2021-11-09 21:14:00.829165+00	2021-11-09 21:16:00.417355+00	8c2477c6-97c6-46b3-a0b4-01032ac20241	728276f3-015d-4a9f-99b7-7fde04f92024
e4566936-2be0-46ab-ad34-b3749611b637	2021-11-09 21:14:00.826228+00	2021-11-09 21:16:06.076804+00	891de086-85ba-41b4-903c-3aa810d44225	728276f3-015d-4a9f-99b7-7fde04f92024
3a4d6aa0-6887-42e6-b647-ba581496c5af	2021-11-09 21:14:00.827862+00	2021-11-09 21:16:16.71234+00	1738b94b-bab9-4674-8b59-79f733d825bf	728276f3-015d-4a9f-99b7-7fde04f92024
3746bd66-683f-4231-9f2f-a6619bf9f897	2021-11-09 21:13:51.178624+00	2021-11-10 00:36:03.000864+00	891de086-85ba-41b4-903c-3aa810d44225	0be34359-d92e-4a62-ae89-3240158dbb15
a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	2021-11-09 21:13:51.180764+00	2022-01-06 18:43:13.664923+00	1738b94b-bab9-4674-8b59-79f733d825bf	0be34359-d92e-4a62-ae89-3240158dbb15
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-10-26 22:01:35.775744+00	e4e5f13b-fdd3-46f5-b57a-1612f1086430	Coin object (e4e5f13b-fdd3-46f5-b57a-1612f1086430)	1	[{"added": {}}]	17	3787f54d-da3c-46e7-8a13-b4bdfb120e31
2	2021-10-26 22:03:09.289206+00	68a144b6-d7f9-4b2a-9280-5533db295b01	Inicial	1	[{"added": {}}]	24	3787f54d-da3c-46e7-8a13-b4bdfb120e31
3	2021-11-01 14:40:54.67898+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	1	[{"added": {}}]	8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
4	2021-11-01 14:41:32.093+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Is active"]}}]	8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
5	2021-11-04 20:12:14.685876+00	8dff7c65-9dbd-480f-b26a-4e395d2dcf46	milhas@controlmilhas.com.br	1	[{"added": {}}]	8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
6	2021-11-04 20:12:46.512182+00	8dff7c65-9dbd-480f-b26a-4e395d2dcf46	milhas@controlmilhas.com.br	2	[{"changed": {"fields": ["Is active"]}}]	8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
7	2021-11-04 22:50:35.080471+00	1	Latam PASS	1	[{"added": {}}]	29	3787f54d-da3c-46e7-8a13-b4bdfb120e31
8	2021-11-05 00:59:21.51973+00	2	TUDO AZUL	1	[{"added": {}}]	29	3787f54d-da3c-46e7-8a13-b4bdfb120e31
9	2021-11-08 10:55:15.177464+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["password"]}}]	8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
10	2021-11-08 20:11:20.30747+00	3	SMILES	1	[{"added": {}}]	29	3787f54d-da3c-46e7-8a13-b4bdfb120e31
11	2021-11-09 21:01:43.887464+00	0900267f-61e3-492d-98c4-160050d8df27	plinyosilvadev@gmail.com	2	[{"changed": {"fields": ["Is active"]}}]	8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
12	2021-11-09 21:03:15.476007+00	4c31bd6c-f25a-4516-86af-8bc8859a1f9c	testeplinyo@email.com	3		8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
13	2021-11-09 21:03:15.479309+00	6eb83343-6f98-4be8-aa2f-268784ae60d4	plinyoteste56@email.com	3		8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
14	2021-11-09 21:03:27.509685+00	0900267f-61e3-492d-98c4-160050d8df27	plinyosilvadev@gmail.com	2	[{"changed": {"fields": ["Is admin", "Is staff", "Is superuser"]}}]	8	3787f54d-da3c-46e7-8a13-b4bdfb120e31
15	2021-11-09 21:03:54.212541+00	891de086-85ba-41b4-903c-3aa810d44225	MaxMilhas	1	[{"added": {}}]	20	3787f54d-da3c-46e7-8a13-b4bdfb120e31
16	2021-11-09 21:04:04.037397+00	1738b94b-bab9-4674-8b59-79f733d825bf	HotMilhas	1	[{"added": {}}]	20	3787f54d-da3c-46e7-8a13-b4bdfb120e31
17	2021-11-09 21:04:14.609919+00	8c2477c6-97c6-46b3-a0b4-01032ac20241	Milhas&Milhas	1	[{"added": {}}]	20	3787f54d-da3c-46e7-8a13-b4bdfb120e31
18	2021-11-09 21:13:51.183917+00	0be34359-d92e-4a62-ae89-3240158dbb15	Latam PASS	1	[{"added": {}}, {"added": {"name": "Valores por Plataforma", "object": "MaxMilhas - Latam PASS"}}, {"added": {"name": "Valores por Plataforma", "object": "HotMilhas - Latam PASS"}}, {"added": {"name": "Valores por Plataforma", "object": "Milhas&Milhas - Latam PASS"}}]	19	3787f54d-da3c-46e7-8a13-b4bdfb120e31
19	2021-11-09 21:14:00.830491+00	728276f3-015d-4a9f-99b7-7fde04f92024	TUDO AZUL	1	[{"added": {}}, {"added": {"name": "Valores por Plataforma", "object": "MaxMilhas - TUDO AZUL"}}, {"added": {"name": "Valores por Plataforma", "object": "HotMilhas - TUDO AZUL"}}, {"added": {"name": "Valores por Plataforma", "object": "Milhas&Milhas - TUDO AZUL"}}]	19	3787f54d-da3c-46e7-8a13-b4bdfb120e31
20	2021-11-09 21:14:10.88501+00	63a9f867-d251-4200-9b0d-ebf212304613	SMILES	1	[{"added": {}}, {"added": {"name": "Valores por Plataforma", "object": "MaxMilhas - SMILES"}}, {"added": {"name": "Valores por Plataforma", "object": "HotMilhas - SMILES"}}, {"added": {"name": "Valores por Plataforma", "object": "Milhas&Milhas - SMILES"}}]	19	3787f54d-da3c-46e7-8a13-b4bdfb120e31
21	2021-11-09 21:14:27.910711+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam PASS	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
22	2021-11-09 21:14:37.883622+00	8f6e2d6c-8818-4451-bd9f-90f477c9e98d	Milhas&Milhas - Latam PASS	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "Milhas&Milhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
23	2021-11-09 21:14:49.251416+00	3746bd66-683f-4231-9f2f-a6619bf9f897	MaxMilhas - Latam PASS	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "MaxMilhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
24	2021-11-09 21:15:19.902232+00	f650230c-95c1-4af4-a2f1-86c53186e02e	MaxMilhas - SMILES	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "MaxMilhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
25	2021-11-09 21:15:27.989591+00	8fa1b32d-28db-4372-b751-cccbef3d722d	Milhas&Milhas - SMILES	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "Milhas&Milhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
26	2021-11-09 21:15:38.212823+00	3c64e029-e13d-431e-88d8-5e91d02a97e2	HotMilhas - SMILES	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
27	2021-11-09 21:15:48.404472+00	e4566936-2be0-46ab-ad34-b3749611b637	MaxMilhas - TUDO AZUL	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "MaxMilhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
28	2021-11-09 21:16:00.425143+00	8c4ee14a-f627-4878-8439-f3077e722841	Milhas&Milhas - TUDO AZUL	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "Milhas&Milhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
29	2021-11-09 21:16:06.085648+00	e4566936-2be0-46ab-ad34-b3749611b637	MaxMilhas - TUDO AZUL	2	[{"changed": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "MaxMilhas", "fields": ["Cotado em"]}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
30	2021-11-09 21:16:16.718963+00	3a4d6aa0-6887-42e6-b647-ba581496c5af	HotMilhas - TUDO AZUL	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
31	2021-11-09 21:59:14.350728+00	1	Latam PASS	2	[{"changed": {"fields": ["Logo do programa"]}}]	29	3787f54d-da3c-46e7-8a13-b4bdfb120e31
32	2021-11-09 22:01:02.20009+00	2	TUDO AZUL	2	[{"changed": {"fields": ["Logo do programa"]}}]	29	3787f54d-da3c-46e7-8a13-b4bdfb120e31
33	2021-11-09 22:01:15.2837+00	3	SMILES	2	[{"changed": {"fields": ["Logo do programa"]}}]	29	3787f54d-da3c-46e7-8a13-b4bdfb120e31
34	2021-11-10 00:35:15.14144+00	3746bd66-683f-4231-9f2f-a6619bf9f897	MaxMilhas - Latam PASS	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "MaxMilhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
35	2021-11-10 00:36:03.007469+00	3746bd66-683f-4231-9f2f-a6619bf9f897	MaxMilhas - Latam PASS	2	[{"changed": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "MaxMilhas", "fields": ["Valor"]}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
36	2021-11-12 18:44:15.420798+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam PASS	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	3787f54d-da3c-46e7-8a13-b4bdfb120e31
37	2021-11-20 17:24:04.597855+00	1	sem account compradores e titulares	1	[{"added": {}}]	3	0900267f-61e3-492d-98c4-160050d8df27
38	2021-11-26 16:08:53.031572+00	6b08ee64-555f-48f1-b9b8-1e7cdb6417fa	123	1	[{"added": {}}]	30	0900267f-61e3-492d-98c4-160050d8df27
39	2021-12-08 14:00:08.306226+00	5b11ef6b-2091-41e0-90d6-acb092b03081	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
40	2021-12-08 14:00:31.705749+00	a81c7fdc-1b73-4ba7-a4fc-194d97ec6fb9	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
41	2021-12-08 14:00:31.707935+00	36960fd5-0d0a-4821-a12f-2eb6c5a476be	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
42	2021-12-08 14:00:31.708937+00	96a5db13-1ccb-4386-ab66-004032829a1a	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
43	2021-12-08 14:05:17.880026+00	9a944edf-4cb0-463e-b2fe-6512abfd1c4f	9a944edf-4cb0-463e-b2fe-6512abfd1c4f	3		32	0900267f-61e3-492d-98c4-160050d8df27
44	2021-12-08 14:05:17.88185+00	3e861958-63f5-43c0-a5b3-6fae1a8b4a15	3e861958-63f5-43c0-a5b3-6fae1a8b4a15	3		32	0900267f-61e3-492d-98c4-160050d8df27
45	2021-12-08 14:05:17.882849+00	3a2257e2-52d5-4888-b87e-eff2e275c959	3a2257e2-52d5-4888-b87e-eff2e275c959	3		32	0900267f-61e3-492d-98c4-160050d8df27
46	2021-12-08 14:05:17.883885+00	24608119-1157-4d18-9386-c2bafc5ec87c	24608119-1157-4d18-9386-c2bafc5ec87c	3		32	0900267f-61e3-492d-98c4-160050d8df27
47	2021-12-08 14:05:17.884849+00	eb201421-130f-4c42-8f00-e6399b4b9df6	eb201421-130f-4c42-8f00-e6399b4b9df6	3		32	0900267f-61e3-492d-98c4-160050d8df27
48	2021-12-08 14:05:17.886574+00	13118aa5-21e1-41e2-b302-9749de21b508	13118aa5-21e1-41e2-b302-9749de21b508	3		32	0900267f-61e3-492d-98c4-160050d8df27
49	2021-12-08 14:05:17.887516+00	fdf81eec-027a-4041-b913-17ca903b0206	fdf81eec-027a-4041-b913-17ca903b0206	3		32	0900267f-61e3-492d-98c4-160050d8df27
50	2021-12-08 14:05:17.888361+00	1ad609c9-94e2-4bcc-ae4d-bb80762f0175	1ad609c9-94e2-4bcc-ae4d-bb80762f0175	3		32	0900267f-61e3-492d-98c4-160050d8df27
51	2021-12-08 14:05:17.889237+00	b62285e6-02ff-4141-9f31-3e1b6e1d57cc	b62285e6-02ff-4141-9f31-3e1b6e1d57cc	3		32	0900267f-61e3-492d-98c4-160050d8df27
52	2021-12-08 14:05:17.890431+00	1bdb9feb-e069-44bf-8e3c-4ad8ea821da0	1bdb9feb-e069-44bf-8e3c-4ad8ea821da0	3		32	0900267f-61e3-492d-98c4-160050d8df27
53	2021-12-08 14:05:17.891859+00	9a89ffb8-7729-4fa5-b332-52c6aa3b8316	9a89ffb8-7729-4fa5-b332-52c6aa3b8316	3		32	0900267f-61e3-492d-98c4-160050d8df27
54	2021-12-08 14:05:46.093953+00	f19b4c18-dc74-49e2-88be-837b74db9866	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
55	2021-12-08 14:05:46.099268+00	3af15b07-7ed1-4c57-8ed3-90b3c6c702da	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
56	2021-12-08 14:35:02.715052+00	a144050f-89c1-47ce-bfe5-b9d80f97f8ea	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
57	2021-12-08 14:35:02.717696+00	ba3de93f-932b-4f9e-b512-fdd7d7816bdd	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
58	2021-12-08 14:35:02.718778+00	feea4e3c-6ac8-472d-9956-6d41eaff8e18	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
59	2021-12-08 14:35:11.577987+00	443cd69e-1ef7-4208-8d21-5f4720f169ef	443cd69e-1ef7-4208-8d21-5f4720f169ef	3		32	0900267f-61e3-492d-98c4-160050d8df27
60	2021-12-08 14:35:11.580774+00	c29dbbe2-6453-44a3-9701-87304965a634	c29dbbe2-6453-44a3-9701-87304965a634	3		32	0900267f-61e3-492d-98c4-160050d8df27
61	2021-12-08 14:35:11.582023+00	489f9b85-83e5-4163-af95-ac771e65d3f2	489f9b85-83e5-4163-af95-ac771e65d3f2	3		32	0900267f-61e3-492d-98c4-160050d8df27
62	2021-12-08 14:35:11.583528+00	fb8fea76-17d2-4060-8b9c-1d7788d736e6	fb8fea76-17d2-4060-8b9c-1d7788d736e6	3		32	0900267f-61e3-492d-98c4-160050d8df27
63	2021-12-08 14:35:18.967769+00	54767400-b08f-4c68-81d6-24445e54dec6	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
64	2021-12-08 14:35:18.969717+00	de26a2ae-da98-40f7-884d-63181028769e	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
65	2021-12-08 22:31:57.368411+00	c46552db-4f7b-4da5-8ba6-b1e9963bab98	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
66	2021-12-08 22:31:57.371648+00	21f1e82e-2820-4be6-9b2c-871fa03e3372	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
67	2021-12-08 22:31:57.373495+00	67dfcdd4-634e-4d38-b6f1-8823064abd43	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
68	2021-12-08 22:32:14.157762+00	65d21bda-7e3d-486f-afca-85369bce81bc	65d21bda-7e3d-486f-afca-85369bce81bc	3		32	0900267f-61e3-492d-98c4-160050d8df27
69	2021-12-08 22:32:14.160294+00	0b6dcf39-9bf9-4b96-a7a0-de3fd863d1ab	0b6dcf39-9bf9-4b96-a7a0-de3fd863d1ab	3		32	0900267f-61e3-492d-98c4-160050d8df27
70	2021-12-08 22:32:25.096959+00	3dee12b0-3cdb-459d-acd6-d8027fa84390	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
71	2021-12-09 11:10:54.445735+00	6b5c4a58-fc47-4f70-8110-5c86b0b7cd83	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
72	2021-12-09 11:10:54.455995+00	da1daa79-35e7-4df8-8116-b0b299896900	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
73	2021-12-09 11:10:54.458446+00	e62b43f3-82e6-4958-9be0-e9336d6c55f6	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
74	2021-12-09 11:11:04.534265+00	3e9e69bd-239a-43cd-92d8-e1f01982ab9b	3e9e69bd-239a-43cd-92d8-e1f01982ab9b	3		32	0900267f-61e3-492d-98c4-160050d8df27
75	2021-12-09 11:11:04.536995+00	ac499fc2-f42e-425d-adf6-d65db2a98cb1	ac499fc2-f42e-425d-adf6-d65db2a98cb1	3		32	0900267f-61e3-492d-98c4-160050d8df27
76	2021-12-09 11:11:12.492268+00	59ba2435-31da-4b31-9d36-9149249edd2c	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
77	2021-12-09 17:04:10.378865+00	759908bc-94e3-4acb-82c7-1688ab901c7a	plinyo silva	2	[{"added": {"name": "Pontos por programa", "object": "plinyo silva-LATAM"}}]	11	0900267f-61e3-492d-98c4-160050d8df27
78	2021-12-09 17:04:32.745691+00	759908bc-94e3-4acb-82c7-1688ab901c7a	plinyo silva	2	[{"changed": {"name": "Pontos por programa", "object": "plinyo silva-SMILES", "fields": ["Programa"]}}]	11	0900267f-61e3-492d-98c4-160050d8df27
79	2021-12-10 17:45:46.96889+00	516837a0-6afa-4e39-80ac-782d89f8ada3	plinyosilvadev@gmail.com	2	[{"changed": {"fields": ["Theoretical storage"]}}]	35	0900267f-61e3-492d-98c4-160050d8df27
80	2021-12-10 17:46:16.416458+00	e0b26824-08a4-4d9d-ab8e-e279f39563a4	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
81	2021-12-10 17:46:16.419097+00	697e2b30-de24-4d37-8b80-248f2dd60364	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
82	2021-12-10 17:46:16.420559+00	f00f8cae-de0b-4c08-b4e8-728dd7821f76	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
83	2021-12-10 17:46:16.421874+00	16ba25e4-19b2-411d-9aed-15b46db99313	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
84	2021-12-10 17:56:32.692739+00	386f3305-499a-4fad-9262-31c501ce6729	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
85	2021-12-10 17:56:32.694776+00	8859aa09-6166-4024-a20f-bb6a5d9281df	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
86	2021-12-10 17:56:32.695873+00	db74abe5-69a1-4597-8024-42b3a9268ab1	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
87	2021-12-10 17:56:32.69689+00	449c02e7-a7fc-4c7d-938f-9dd086a98909	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
88	2021-12-10 17:56:44.418017+00	0045a58f-5168-49de-9877-b03bcf2cb79c	0045a58f-5168-49de-9877-b03bcf2cb79c	3		32	0900267f-61e3-492d-98c4-160050d8df27
89	2021-12-10 17:56:44.420214+00	c0f67e2f-c716-4db6-be68-c25a9bb25106	c0f67e2f-c716-4db6-be68-c25a9bb25106	3		32	0900267f-61e3-492d-98c4-160050d8df27
90	2021-12-10 17:56:44.421663+00	cd67b5ff-7e0c-4499-b9c6-f30fae6120ae	cd67b5ff-7e0c-4499-b9c6-f30fae6120ae	3		32	0900267f-61e3-492d-98c4-160050d8df27
91	2021-12-10 17:56:44.423299+00	e7483c40-7fc9-4c99-9100-3af09a0ca60d	e7483c40-7fc9-4c99-9100-3af09a0ca60d	3		32	0900267f-61e3-492d-98c4-160050d8df27
92	2021-12-10 17:56:56.448007+00	516837a0-6afa-4e39-80ac-782d89f8ada3	plinyosilvadev@gmail.com	2	[{"changed": {"fields": ["Quantity", "Theoretical storage", "Real storage"]}}]	35	0900267f-61e3-492d-98c4-160050d8df27
93	2021-12-11 01:19:22.069259+00	0ffc098c-5793-40da-a11a-5fd1968275b0	0ffc098c-5793-40da-a11a-5fd1968275b0	2	[{"changed": {"name": "Lan\\u00e7amento", "object": "20211210aaf7", "fields": ["Real storage"]}}]	32	0900267f-61e3-492d-98c4-160050d8df27
94	2021-12-13 11:54:50.285621+00	14b1cf5b-0592-402d-a214-dc1057c2e275	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
95	2021-12-13 11:54:50.294198+00	ecf8af9e-d496-48c0-834a-cdedc30f0fba	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
96	2021-12-13 11:55:02.258769+00	a237dc46-eb43-4105-934f-6ac2bd6f67df	a237dc46-eb43-4105-934f-6ac2bd6f67df	3		32	0900267f-61e3-492d-98c4-160050d8df27
97	2021-12-13 11:55:02.260728+00	33ce9c58-ab26-417f-bc8d-cfda4bba57ca	33ce9c58-ab26-417f-bc8d-cfda4bba57ca	3		32	0900267f-61e3-492d-98c4-160050d8df27
98	2021-12-13 11:55:13.004219+00	f41b6fce-c1be-4e83-87bc-2a59383e0868	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
99	2021-12-13 19:56:14.300005+00	638abbf3-5600-4ec4-8d88-b0c247a39784	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
100	2021-12-13 20:12:53.352487+00	5fc365a0-cb95-4576-95dc-26be9e22d67a	5fc365a0-cb95-4576-95dc-26be9e22d67a	3		32	0900267f-61e3-492d-98c4-160050d8df27
101	2021-12-13 20:13:00.376941+00	50c70509-efec-4fcd-b288-b71034278da1	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
102	2021-12-13 20:38:42.231376+00	b938d103-d442-4e83-9c6d-b537f29c29ca	b938d103-d442-4e83-9c6d-b537f29c29ca	3		32	0900267f-61e3-492d-98c4-160050d8df27
103	2021-12-13 20:38:42.233688+00	fc857708-ee3e-4380-9635-50417f02e2ce	fc857708-ee3e-4380-9635-50417f02e2ce	3		32	0900267f-61e3-492d-98c4-160050d8df27
104	2021-12-13 20:38:54.418968+00	4c6b6110-865e-4b94-88f1-428d45bd5cc1	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
105	2021-12-13 20:48:45.788626+00	e958a64b-b0c4-4d61-8032-5e6b3bedaf5f	e958a64b-b0c4-4d61-8032-5e6b3bedaf5f	3		32	0900267f-61e3-492d-98c4-160050d8df27
106	2021-12-13 20:48:45.790627+00	09bb2e1c-01f2-4d53-b8b8-54b70c51ddab	09bb2e1c-01f2-4d53-b8b8-54b70c51ddab	3		32	0900267f-61e3-492d-98c4-160050d8df27
107	2021-12-13 20:48:55.3776+00	7869b32b-5847-484a-aacd-b80598310bfe	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
108	2021-12-14 00:45:15.987778+00	dc025304-aeb6-4640-ae71-7c9969444231	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
109	2021-12-14 00:45:15.989931+00	822f193d-edea-4803-b77b-ffa3ad37a969	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
110	2021-12-14 00:45:15.991317+00	59d6016b-c8ba-45e1-be84-eb9b2e046277	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
111	2021-12-14 00:45:15.992539+00	f9f9ed2b-f1a4-4462-96d8-1aef914e490f	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
112	2021-12-14 00:45:15.993874+00	1f37068a-4fae-4b86-89ad-6226fbb9fc66	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
113	2021-12-14 00:45:15.995344+00	018118f9-dba0-422f-a1f8-124005f6edda	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
114	2021-12-14 00:45:15.997006+00	5461d316-1ca9-4246-8760-84efb22367d3	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
115	2021-12-14 00:45:35.696485+00	6e368e57-6196-4eb0-97bf-9f63c6eb0366	6e368e57-6196-4eb0-97bf-9f63c6eb0366	3		32	0900267f-61e3-492d-98c4-160050d8df27
116	2021-12-14 00:45:35.698882+00	0ffc098c-5793-40da-a11a-5fd1968275b0	0ffc098c-5793-40da-a11a-5fd1968275b0	3		32	0900267f-61e3-492d-98c4-160050d8df27
117	2021-12-14 00:45:51.471775+00	516837a0-6afa-4e39-80ac-782d89f8ada3	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
118	2021-12-14 11:31:22.882139+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Is staff", "Is superuser"]}}]	8	0900267f-61e3-492d-98c4-160050d8df27
119	2021-12-14 14:28:14.106654+00	915ca174-0968-455e-8d11-03656d8a0686	915ca174-0968-455e-8d11-03656d8a0686	3		32	0900267f-61e3-492d-98c4-160050d8df27
120	2021-12-14 14:28:14.10898+00	c0a757b6-e800-4320-981f-4de0ec5cf8f7	c0a757b6-e800-4320-981f-4de0ec5cf8f7	3		32	0900267f-61e3-492d-98c4-160050d8df27
121	2021-12-14 14:28:14.110046+00	a3202559-c06a-458d-96be-45ea9b751b5f	a3202559-c06a-458d-96be-45ea9b751b5f	3		32	0900267f-61e3-492d-98c4-160050d8df27
122	2021-12-14 14:28:14.111108+00	fb05ec64-0832-401b-a72b-02351657e4ca	fb05ec64-0832-401b-a72b-02351657e4ca	3		32	0900267f-61e3-492d-98c4-160050d8df27
123	2021-12-23 19:43:05.379826+00	98b973be-b58d-4a7e-8bea-6c3361679d6c	Wallace Cardoso Gomes	2	[{"changed": {"name": "Pontos por programa", "object": "WallStreet-azul", "fields": ["Processando"]}}, {"changed": {"name": "Pontos por programa", "object": "WallStreet-smiles", "fields": ["Processando"]}}, {"changed": {"name": "Pontos por programa", "object": "WallStreet-latam", "fields": ["Processando"]}}]	11	0900267f-61e3-492d-98c4-160050d8df27
124	2021-12-28 20:23:14.432231+00	1	Latam	2	[{"changed": {"fields": ["Nome", "Empresa", "Limita\\u00e7\\u00e3o de CPFs"]}}]	29	0900267f-61e3-492d-98c4-160050d8df27
125	2021-12-28 20:23:19.6829+00	2	TUDO AZUL	2	[]	29	0900267f-61e3-492d-98c4-160050d8df27
126	2021-12-28 20:23:28.989265+00	3	SMILES	2	[{"changed": {"fields": ["Limita\\u00e7\\u00e3o de CPFs"]}}]	29	0900267f-61e3-492d-98c4-160050d8df27
127	2021-12-28 20:24:29.031148+00	1	Latam	2	[{"changed": {"fields": ["Limita\\u00e7\\u00e3o de CPFs"]}}]	29	0900267f-61e3-492d-98c4-160050d8df27
128	2021-12-28 20:24:36.572678+00	3	SMILES	2	[{"changed": {"fields": ["Limita\\u00e7\\u00e3o de CPFs"]}}]	29	0900267f-61e3-492d-98c4-160050d8df27
129	2021-12-29 09:47:52.983596+00	1c13666e-e8fb-492a-8652-404a60ef8942	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
130	2021-12-29 09:48:03.377272+00	d3281f52-6e34-4f37-a0f0-cbce5fe31518	d3281f52-6e34-4f37-a0f0-cbce5fe31518	3		32	0900267f-61e3-492d-98c4-160050d8df27
131	2021-12-30 12:12:34.974253+00	1	Latam	2	[{"changed": {"fields": ["Limita\\u00e7\\u00e3o de CPFs"]}}]	29	0900267f-61e3-492d-98c4-160050d8df27
132	2021-12-30 12:12:39.91845+00	2	TUDO AZUL	2	[{"changed": {"fields": ["Limita\\u00e7\\u00e3o de CPFs"]}}]	29	0900267f-61e3-492d-98c4-160050d8df27
133	2021-12-30 12:12:44.317292+00	3	SMILES	2	[{"changed": {"fields": ["Limita\\u00e7\\u00e3o de CPFs"]}}]	29	0900267f-61e3-492d-98c4-160050d8df27
134	2021-12-31 01:03:18.526615+00	759908bc-94e3-4acb-82c7-1688ab901c7a	plinyo silva	2	[{"changed": {"name": "Pontos por programa", "object": "plinyo silva-smiles", "fields": ["Processando"]}}]	11	0900267f-61e3-492d-98c4-160050d8df27
135	2021-12-31 01:03:56.397829+00	759908bc-94e3-4acb-82c7-1688ab901c7a	plinyo silva	2	[{"changed": {"name": "Pontos por programa", "object": "plinyo silva-azul", "fields": ["Ativo"]}}]	11	0900267f-61e3-492d-98c4-160050d8df27
136	2021-12-31 01:15:22.959261+00	41b760a7-09f8-41d8-8152-71e5dd08f259	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
137	2021-12-31 01:16:15.700092+00	ac31a4f7-a66c-4482-9639-5650e58914d0	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
138	2022-01-03 10:32:35.162221+00	da491fc7-64b9-4708-88d0-593ba04a21df	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
139	2022-01-03 10:32:35.175365+00	37615eb8-0aae-45d6-8848-0ccbe6608715	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
140	2022-01-03 10:32:35.177001+00	b71b96d1-233c-4b04-8b06-07dbd6c28e4c	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
141	2022-01-03 10:32:35.178513+00	4e112dec-c8be-47b8-b383-b25fa488eb4b	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
142	2022-01-03 10:32:35.179847+00	a1695000-5df4-4568-80fe-2317faa63d51	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
143	2022-01-03 10:32:35.181912+00	b5ce594e-200e-4cd7-bee0-10f8fccf2558	wallace.gomes@teclat.com.br	3		36	0900267f-61e3-492d-98c4-160050d8df27
144	2022-01-03 10:32:35.183491+00	be1ed94b-04d8-45cf-89e7-9c2b1b21e906	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
145	2022-01-03 10:32:35.184786+00	7b77c9b9-a3d8-4861-ad26-be1a992fb4ee	plinyosilvadev@gmail.com	3		36	0900267f-61e3-492d-98c4-160050d8df27
146	2022-01-03 10:32:45.127699+00	8ed4797e-1e90-4b01-a813-375ab3e0e7c3	8ed4797e-1e90-4b01-a813-375ab3e0e7c3	3		32	0900267f-61e3-492d-98c4-160050d8df27
147	2022-01-03 10:32:45.1298+00	4b7714ac-23a9-4778-b0cc-0d13f74dbf0c	4b7714ac-23a9-4778-b0cc-0d13f74dbf0c	3		32	0900267f-61e3-492d-98c4-160050d8df27
148	2022-01-03 10:32:45.131293+00	9712264b-2fa6-4dd4-80ac-206d9cde576c	9712264b-2fa6-4dd4-80ac-206d9cde576c	3		32	0900267f-61e3-492d-98c4-160050d8df27
149	2022-01-03 10:32:45.132792+00	80a04011-9880-4e94-91df-e597ea4a0333	80a04011-9880-4e94-91df-e597ea4a0333	3		32	0900267f-61e3-492d-98c4-160050d8df27
150	2022-01-03 10:32:45.135861+00	f1b8ac87-87fc-4f48-9aa3-d5aaf1d96783	f1b8ac87-87fc-4f48-9aa3-d5aaf1d96783	3		32	0900267f-61e3-492d-98c4-160050d8df27
151	2022-01-03 10:32:45.136935+00	bc493dfd-367d-498a-b47c-13400e902a4c	bc493dfd-367d-498a-b47c-13400e902a4c	3		32	0900267f-61e3-492d-98c4-160050d8df27
152	2022-01-03 10:32:45.137908+00	ef1a4acf-e400-4764-b6b0-2ecf63dabb22	ef1a4acf-e400-4764-b6b0-2ecf63dabb22	3		32	0900267f-61e3-492d-98c4-160050d8df27
153	2022-01-03 10:32:45.139235+00	c2c98d25-622d-4acc-9153-8e4e5a2b9b44	c2c98d25-622d-4acc-9153-8e4e5a2b9b44	3		32	0900267f-61e3-492d-98c4-160050d8df27
154	2022-01-03 10:32:45.141028+00	6e977a84-d90f-4600-be2b-e6bcdcfd3f02	6e977a84-d90f-4600-be2b-e6bcdcfd3f02	3		32	0900267f-61e3-492d-98c4-160050d8df27
155	2022-01-03 10:32:45.141944+00	218466d2-1275-49c6-9dab-a6e8339973fc	218466d2-1275-49c6-9dab-a6e8339973fc	3		32	0900267f-61e3-492d-98c4-160050d8df27
156	2022-01-03 10:32:45.142859+00	c44c8241-22d6-4a8a-b240-bae393641146	c44c8241-22d6-4a8a-b240-bae393641146	3		32	0900267f-61e3-492d-98c4-160050d8df27
157	2022-01-03 10:32:45.146264+00	8273845f-d0d3-49a5-81a3-e74c7b7be3a4	8273845f-d0d3-49a5-81a3-e74c7b7be3a4	3		32	0900267f-61e3-492d-98c4-160050d8df27
158	2022-01-03 10:32:45.147556+00	099b4774-bee3-452b-bb2c-61c9428547de	099b4774-bee3-452b-bb2c-61c9428547de	3		32	0900267f-61e3-492d-98c4-160050d8df27
159	2022-01-03 10:32:45.14866+00	a7dc7dd9-53da-4ea0-b1c3-fe88f6945baa	a7dc7dd9-53da-4ea0-b1c3-fe88f6945baa	3		32	0900267f-61e3-492d-98c4-160050d8df27
160	2022-01-03 10:32:45.149678+00	2d0d5337-d9e0-4783-9aff-1a0fa1243a90	2d0d5337-d9e0-4783-9aff-1a0fa1243a90	3		32	0900267f-61e3-492d-98c4-160050d8df27
161	2022-01-03 10:32:45.150787+00	c6547d5d-79f0-413a-8a17-8636a6c2db18	c6547d5d-79f0-413a-8a17-8636a6c2db18	3		32	0900267f-61e3-492d-98c4-160050d8df27
162	2022-01-03 10:32:45.151715+00	28ccec9f-e4db-4f2c-96d7-d8008076c0af	28ccec9f-e4db-4f2c-96d7-d8008076c0af	3		32	0900267f-61e3-492d-98c4-160050d8df27
163	2022-01-03 10:32:45.152629+00	2f65cb25-49db-4279-bdf5-46a0ff81587d	2f65cb25-49db-4279-bdf5-46a0ff81587d	3		32	0900267f-61e3-492d-98c4-160050d8df27
164	2022-01-03 10:32:45.153892+00	a033484e-2981-4d3d-bda4-dab9dd603e3b	a033484e-2981-4d3d-bda4-dab9dd603e3b	3		32	0900267f-61e3-492d-98c4-160050d8df27
165	2022-01-03 10:32:45.15568+00	f73a4806-c833-44db-8414-f8efb9e4fcb1	f73a4806-c833-44db-8414-f8efb9e4fcb1	3		32	0900267f-61e3-492d-98c4-160050d8df27
166	2022-01-03 10:32:45.157233+00	658fb48c-bc98-4cb4-9bb6-aacb13b11a19	658fb48c-bc98-4cb4-9bb6-aacb13b11a19	3		32	0900267f-61e3-492d-98c4-160050d8df27
167	2022-01-03 10:32:45.161569+00	22fe2fb5-0647-423f-91a3-190b7a9254e2	22fe2fb5-0647-423f-91a3-190b7a9254e2	3		32	0900267f-61e3-492d-98c4-160050d8df27
168	2022-01-03 10:32:45.163136+00	c3d55be1-d6a6-4a20-94c8-2d3453f4f2b3	c3d55be1-d6a6-4a20-94c8-2d3453f4f2b3	3		32	0900267f-61e3-492d-98c4-160050d8df27
169	2022-01-03 10:32:45.164994+00	884b1156-81ae-4441-8212-617e8ec4d60f	884b1156-81ae-4441-8212-617e8ec4d60f	3		32	0900267f-61e3-492d-98c4-160050d8df27
170	2022-01-03 10:32:45.166866+00	eec6ed19-fbc6-4105-b5bd-b83fe42587d0	eec6ed19-fbc6-4105-b5bd-b83fe42587d0	3		32	0900267f-61e3-492d-98c4-160050d8df27
171	2022-01-03 10:32:45.168108+00	9cc66e51-1e4e-4ba3-a099-a23099b88982	9cc66e51-1e4e-4ba3-a099-a23099b88982	3		32	0900267f-61e3-492d-98c4-160050d8df27
172	2022-01-03 10:32:45.16902+00	b59b3b4c-14e2-4498-a182-f7f54ef76b25	b59b3b4c-14e2-4498-a182-f7f54ef76b25	3		32	0900267f-61e3-492d-98c4-160050d8df27
173	2022-01-03 10:32:45.170271+00	9a1dff04-9f28-4f10-ba23-bf35a8022fe5	9a1dff04-9f28-4f10-ba23-bf35a8022fe5	3		32	0900267f-61e3-492d-98c4-160050d8df27
174	2022-01-03 10:32:45.171691+00	5401dc2b-d0f8-485e-a0e5-bc45f4f78a2d	5401dc2b-d0f8-485e-a0e5-bc45f4f78a2d	3		32	0900267f-61e3-492d-98c4-160050d8df27
175	2022-01-03 10:32:45.172708+00	8e163d4c-285a-4c7d-839f-ad709150317c	8e163d4c-285a-4c7d-839f-ad709150317c	3		32	0900267f-61e3-492d-98c4-160050d8df27
176	2022-01-03 10:32:45.173755+00	7c7566df-6123-4507-be9a-e0a034f350af	7c7566df-6123-4507-be9a-e0a034f350af	3		32	0900267f-61e3-492d-98c4-160050d8df27
177	2022-01-03 10:32:45.174672+00	29e1da60-2f1d-4b71-a79e-acb53f6fe053	29e1da60-2f1d-4b71-a79e-acb53f6fe053	3		32	0900267f-61e3-492d-98c4-160050d8df27
178	2022-01-03 10:32:45.176026+00	faae6d3f-7756-46d2-afe7-52a925b840a7	faae6d3f-7756-46d2-afe7-52a925b840a7	3		32	0900267f-61e3-492d-98c4-160050d8df27
179	2022-01-03 10:32:45.177234+00	ad3a6a82-c37b-425a-8758-3fadfad20e86	ad3a6a82-c37b-425a-8758-3fadfad20e86	3		32	0900267f-61e3-492d-98c4-160050d8df27
180	2022-01-03 10:32:45.179004+00	86676ddb-9c76-44c3-8acd-f5b26df19003	86676ddb-9c76-44c3-8acd-f5b26df19003	3		32	0900267f-61e3-492d-98c4-160050d8df27
181	2022-01-03 10:32:45.180357+00	cfe255bd-2cd8-408a-abcd-43a726176d58	cfe255bd-2cd8-408a-abcd-43a726176d58	3		32	0900267f-61e3-492d-98c4-160050d8df27
182	2022-01-03 10:32:53.204934+00	274b820c-2942-4bbf-aa29-1b6efae0bd16	wallace.gomes@teclat.com.br	3		35	0900267f-61e3-492d-98c4-160050d8df27
183	2022-01-03 10:32:53.207227+00	76d6cb82-36bd-4e4b-b3f7-e5346c341d1e	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
184	2022-01-03 10:32:53.208715+00	c8554737-25a1-43ba-ab55-fb7c7e412bd0	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
185	2022-01-03 10:32:53.210059+00	d08c8edc-cb99-469a-bcdf-9500ca1d2b55	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
186	2022-01-03 23:05:27.12694+00	d886d244-0a2c-4514-be5d-cd2c211965a5	cartão 2	2	[{"changed": {"fields": ["Pontua\\u00e7\\u00e3o"]}}]	14	0900267f-61e3-492d-98c4-160050d8df27
187	2022-01-05 16:39:33.343116+00	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	RPA Smiles	2	[{"changed": {"name": "Pontos por programa", "object": "RPA SMILES-smiles", "fields": ["Processando"]}}]	11	84664fab-7dd5-4698-bcd2-683e26e1d20d
188	2022-01-06 18:40:18.157804+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	0900267f-61e3-492d-98c4-160050d8df27
189	2022-01-06 18:41:24.706698+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	0900267f-61e3-492d-98c4-160050d8df27
190	2022-01-06 18:41:48.709101+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	0900267f-61e3-492d-98c4-160050d8df27
191	2022-01-06 18:42:01.408737+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam	2	[]	22	0900267f-61e3-492d-98c4-160050d8df27
192	2022-01-06 18:42:26.172353+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam	2	[{"changed": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas", "fields": ["Cotado em"]}}]	22	0900267f-61e3-492d-98c4-160050d8df27
193	2022-01-06 18:42:46.063556+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam	2	[{"changed": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas", "fields": ["Cotado em"]}}]	22	0900267f-61e3-492d-98c4-160050d8df27
194	2022-01-06 18:43:00.799038+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	0900267f-61e3-492d-98c4-160050d8df27
195	2022-01-06 18:43:13.668993+00	a4b8e9cc-4a9c-4ffb-aca5-b5b82e17ac49	HotMilhas - Latam	2	[{"added": {"name": "Valor da cota\\u00e7\\u00e3o", "object": "HotMilhas"}}]	22	0900267f-61e3-492d-98c4-160050d8df27
196	2022-01-06 22:11:28.298748+00	1	LATAM PASS	2	[{"changed": {"fields": ["Nome"]}}]	29	84664fab-7dd5-4698-bcd2-683e26e1d20d
197	2022-01-06 23:50:27.116117+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Is active"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
198	2022-01-07 16:19:03.799696+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
199	2022-01-07 16:19:43.450152+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Or\\u00e7amentos"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
200	2022-01-07 16:56:49.197026+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Is active", "Premium", "Or\\u00e7amentos"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
201	2022-01-07 17:06:44.253581+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Is active"]}}]	8	0900267f-61e3-492d-98c4-160050d8df27
202	2022-01-07 18:13:39.426852+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
203	2022-01-07 18:15:16.628613+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
204	2022-01-07 18:17:31.856997+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["\\u00daltimo login", "Premium", "C\\u00f3digo"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
205	2022-01-07 18:17:54.336777+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
206	2022-01-07 18:36:25.018054+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
207	2022-01-07 18:41:45.389957+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
208	2022-01-07 18:45:04.522297+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
209	2022-01-07 18:46:42.818509+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
210	2022-01-07 19:02:25.382849+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
211	2022-01-07 19:11:24.958873+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Or\\u00e7amentos"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
212	2022-01-07 19:13:00.854022+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Or\\u00e7amentos"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
213	2022-01-07 19:16:14.301271+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
214	2022-01-07 19:53:02.642354+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
215	2022-01-07 19:53:24.725857+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
216	2022-01-07 19:58:46.819201+00	6b08ee64-555f-48f1-b9b8-1e7cdb6417fa	1540310	2	[{"changed": {"fields": ["Produto", "Descri\\u00e7\\u00e3o", "Id Hotmart"]}}]	30	0900267f-61e3-492d-98c4-160050d8df27
217	2022-01-11 14:53:32.582807+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
218	2022-01-11 14:54:30.046999+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
219	2022-01-11 14:55:23.445059+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
220	2022-01-11 14:55:51.408881+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
221	2022-01-11 14:59:35.903051+00	440fb1fc-1fa8-42a1-9048-e3b9eb52bd95	wallace.gomes2@teclat.com.br	3		36	84664fab-7dd5-4698-bcd2-683e26e1d20d
222	2022-01-11 14:59:48.588766+00	13afed34-412b-4489-a27b-c8d4d6bf3165	13afed34-412b-4489-a27b-c8d4d6bf3165	3		32	84664fab-7dd5-4698-bcd2-683e26e1d20d
223	2022-01-11 14:59:48.590526+00	2890a947-8d7e-4eef-8eba-8fdd354b5e8d	2890a947-8d7e-4eef-8eba-8fdd354b5e8d	3		32	84664fab-7dd5-4698-bcd2-683e26e1d20d
224	2022-01-11 15:11:10.738508+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
225	2022-01-11 17:54:20.435454+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
226	2022-01-11 18:13:29.316019+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
227	2022-01-11 18:14:26.860848+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
228	2022-01-14 00:19:17.88385+00	c7c070df-b45c-4756-bb4c-435e766ec8b0	c7c070df-b45c-4756-bb4c-435e766ec8b0	3		32	0900267f-61e3-492d-98c4-160050d8df27
229	2022-01-14 00:19:17.885948+00	79952e10-d627-4bc9-b599-6beba90b3a00	79952e10-d627-4bc9-b599-6beba90b3a00	3		32	0900267f-61e3-492d-98c4-160050d8df27
230	2022-01-14 00:19:17.887119+00	180ff060-4a55-456b-b0a2-adf8a464c91b	180ff060-4a55-456b-b0a2-adf8a464c91b	3		32	0900267f-61e3-492d-98c4-160050d8df27
231	2022-01-14 00:19:17.888303+00	d3ef28ff-918b-41a6-8a1a-9488d5c0045f	d3ef28ff-918b-41a6-8a1a-9488d5c0045f	3		32	0900267f-61e3-492d-98c4-160050d8df27
232	2022-01-14 00:19:44.512895+00	751a1192-e59d-4ece-a1c9-970c01a6a5c3	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
233	2022-01-14 00:19:44.515098+00	0b8e896c-5ce6-47ea-aaa7-81ed9a52d66d	gerdsonp@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
234	2022-01-14 00:19:44.516356+00	6349f84f-3953-4707-80c1-b0efdce8f911	gerdsonp@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
235	2022-01-14 00:19:44.517997+00	89b980ff-7060-48d6-9a2c-b1194b0b2cdd	gerdsonp@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
236	2022-01-17 14:34:14.691953+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
237	2022-01-17 15:06:44.835316+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
238	2022-01-17 15:07:25.477383+00	b4c06e76-183a-4c51-8804-a2c039786fd3	wallace.gomes2@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
239	2022-01-19 12:06:56.072013+00	8220eb98-e758-4a2b-b34a-c997f0a12781	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
240	2022-01-19 12:06:56.081768+00	6b2a1f67-5f47-45cf-9c21-e9bb3f5718d1	plinyosilvadev20@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
241	2022-01-19 12:06:56.083132+00	ccd651cd-6c8c-43f9-9f7d-ecfbcb033502	plinyosilvadev20@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
242	2022-01-19 12:06:56.084719+00	53d563d1-ac6e-4010-9076-e3d12d11a65c	plinyosilvadev20@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
243	2022-01-21 02:13:25.369894+00	774c4e72-3403-416f-a4b9-22b05171c0f2	wallace.gomes@teste6.com	3		35	84664fab-7dd5-4698-bcd2-683e26e1d20d
244	2022-01-21 02:13:25.372147+00	440a5cdb-c38f-49e9-94f1-d264190fa65b	wallace.gomes@teste6.com	3		35	84664fab-7dd5-4698-bcd2-683e26e1d20d
245	2022-01-21 02:13:25.374289+00	f7a987b9-7bd0-4b5c-bbfc-689a1f71671c	wallace.gomes@teste6.com	3		35	84664fab-7dd5-4698-bcd2-683e26e1d20d
246	2022-01-28 17:26:44.466538+00	a5c451e8-8e0c-4862-baf4-7cc47b2a1eb2	plinyosilvadev21@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
247	2022-01-28 17:26:44.471006+00	0176607c-d96c-4b19-a036-095485f12ae8	plinyosilvadev21@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
248	2022-01-28 17:26:44.472401+00	94bea8bc-499d-4f9e-b0ef-4dbe650e7f94	plinyosilvadev21@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
249	2022-01-28 17:26:44.473529+00	ab34b009-f06c-4972-b1a9-07cfee598807	plinyosilvadev@gmail.com	3		35	0900267f-61e3-492d-98c4-160050d8df27
250	2022-03-09 13:39:53.710823+00	2916a94f-942e-4647-999f-ef33dcd86aa0	TESTE	1	[{"added": {}}]	23	84664fab-7dd5-4698-bcd2-683e26e1d20d
251	2022-03-09 13:40:13.065095+00	0c4ac28b-420f-4658-88a1-a1ecccf08c51	Outro TESTE	1	[{"added": {}}]	23	84664fab-7dd5-4698-bcd2-683e26e1d20d
252	2022-03-09 13:40:34.862495+00	98d3cef4-a63a-4896-9c42-41d7457de566	Teste 3	1	[{"added": {}}]	23	84664fab-7dd5-4698-bcd2-683e26e1d20d
253	2022-03-09 15:03:09.287846+00	3215f072-4fc6-4614-81db-709d07f074a5	Esse tem que vir primeiro	1	[{"added": {}}]	23	84664fab-7dd5-4698-bcd2-683e26e1d20d
254	2022-03-09 15:04:05.531939+00	2916a94f-942e-4647-999f-ef33dcd86aa0	TESTE	2	[{"changed": {"fields": ["Ordem"]}}]	23	84664fab-7dd5-4698-bcd2-683e26e1d20d
255	2022-03-09 15:05:13.086589+00	a43027ac-2a44-4c3e-89eb-aaf82fa3c6ee	TESTE 2	1	[{"added": {}}]	23	84664fab-7dd5-4698-bcd2-683e26e1d20d
256	2022-03-12 19:33:45.423348+00	ae80c086-99bc-4038-a533-fd1bc7b88c4c	plinyosilvadev@gmail.com	2	[{"changed": {"fields": ["CPM"]}}]	35	0900267f-61e3-492d-98c4-160050d8df27
257	2022-03-18 22:59:37.538105+00	1	LATAM PASS	2	[{"changed": {"fields": ["Limita\\u00e7\\u00e3o de CPFs"]}}]	29	0900267f-61e3-492d-98c4-160050d8df27
258	2022-04-20 12:55:09.021858+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br	2	[{"changed": {"fields": ["Premium"]}}]	8	84664fab-7dd5-4698-bcd2-683e26e1d20d
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	authtoken	tokenproxy
8	account	account
9	account	company
10	account	userprograms
11	titulares	holder
12	titulares	points
13	compradores	buyer
14	cartoes	card
15	passageiros	passenger
16	calculators	calculators
17	coin	coin
18	applications	application
19	cotacoes	quote
20	cotacoes	platform
21	cotacoes	platformvalue
22	cotacoes	quoteplatform
23	suporte	support
24	novidades	news
25	orcamentos	budget
26	orcamentos	wayticket
27	orcamentos	returnticket
28	orcamentos	passenger
29	programas	programs
31	pagamentos	payments
32	gerenciador	manager
33	gerenciador	launch
30	pagamentos	plans
34	gerenciador	product
35	gerenciador	milescpm
36	gerenciador	emission
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	programas	0001_initial	2021-10-26 04:50:07.642853+00
2	account	0001_initial	2021-10-26 04:50:07.690045+00
3	account	0002_auto_20210811_1709	2021-10-26 04:50:07.822936+00
4	account	0003_alter_account_cpf	2021-10-26 04:50:07.837612+00
5	account	0004_account_photo	2021-10-26 04:50:07.849902+00
6	account	0005_auto_20210813_1136	2021-10-26 04:50:07.867421+00
7	account	0006_auto_20210818_1858	2021-10-26 04:50:07.910253+00
8	account	0007_account_surname	2021-10-26 04:50:07.92489+00
9	account	0008_company	2021-10-26 04:50:07.958542+00
10	account	0009_company_logo	2021-10-26 04:50:07.970364+00
11	account	0010_auto_20210916_1328	2021-10-26 04:50:08.154001+00
12	account	0011_auto_20210916_1733	2021-10-26 04:50:08.242028+00
13	account	0012_alter_account_programs	2021-10-26 04:50:08.25655+00
14	account	0013_alter_account_programs	2021-10-26 04:50:08.279561+00
15	account	0014_auto_20210921_1013	2021-10-26 04:50:08.305191+00
16	account	0015_auto_20210921_1018	2021-10-26 04:50:08.343638+00
17	account	0016_alter_account_is_active	2021-10-26 04:50:08.359452+00
18	account	0017_alter_account_cpf	2021-10-26 04:50:08.374709+00
19	account	0018_auto_20211005_2145	2021-10-26 04:50:08.424602+00
20	contenttypes	0001_initial	2021-10-26 04:50:08.447466+00
21	admin	0001_initial	2021-10-26 04:50:08.493803+00
22	admin	0002_logentry_remove_auto_add	2021-10-26 04:50:08.509386+00
23	admin	0003_logentry_add_action_flag_choices	2021-10-26 04:50:08.526428+00
24	applications	0001_initial	2021-10-26 04:50:08.559055+00
25	contenttypes	0002_remove_content_type_name	2021-10-26 04:50:08.591315+00
26	auth	0001_initial	2021-10-26 04:50:08.698882+00
27	auth	0002_alter_permission_name_max_length	2021-10-26 04:50:08.72214+00
28	auth	0003_alter_user_email_max_length	2021-10-26 04:50:08.73698+00
29	auth	0004_alter_user_username_opts	2021-10-26 04:50:08.754206+00
30	auth	0005_alter_user_last_login_null	2021-10-26 04:50:08.767692+00
31	auth	0006_require_contenttypes_0002	2021-10-26 04:50:08.772652+00
32	auth	0007_alter_validators_add_error_messages	2021-10-26 04:50:08.784987+00
33	auth	0008_alter_user_username_max_length	2021-10-26 04:50:08.796876+00
34	auth	0009_alter_user_last_name_max_length	2021-10-26 04:50:08.809977+00
35	auth	0010_alter_group_name_max_length	2021-10-26 04:50:08.835412+00
36	auth	0011_update_proxy_permissions	2021-10-26 04:50:08.858176+00
37	auth	0012_alter_user_first_name_max_length	2021-10-26 04:50:08.871688+00
38	authtoken	0001_initial	2021-10-26 04:50:08.914292+00
39	authtoken	0002_auto_20160226_1747	2021-10-26 04:50:08.973994+00
40	authtoken	0003_tokenproxy	2021-10-26 04:50:08.982246+00
41	calculators	0001_initial	2021-10-26 04:50:09.02264+00
42	cartoes	0001_initial	2021-10-26 04:50:09.069555+00
43	cartoes	0002_alter_card_benefit_program	2021-10-26 04:50:09.083926+00
44	cartoes	0003_card_due_day	2021-10-26 04:50:09.10539+00
45	cartoes	0004_auto_20210827_1835	2021-10-26 04:50:09.132442+00
46	cartoes	0005_alter_card_coin	2021-10-26 04:50:09.152369+00
47	coin	0001_initial	2021-10-26 04:50:09.190037+00
48	compradores	0001_initial	2021-10-26 04:50:09.252101+00
49	compradores	0002_auto_20210806_1649	2021-10-26 04:50:09.308381+00
50	compradores	0003_alter_buyer_cnpj	2021-10-26 04:50:09.3439+00
51	compradores	0004_alter_buyer_cnpj	2021-10-26 04:50:09.368363+00
52	programas	0002_programs_photo	2021-10-26 04:50:09.380937+00
53	cotacoes	0001_initial	2021-10-26 04:50:09.408266+00
54	cotacoes	0002_quote_photo	2021-10-26 04:50:09.416034+00
55	cotacoes	0003_remove_quote_photo	2021-10-26 04:50:09.424302+00
56	cotacoes	0004_alter_quote_program	2021-10-26 04:50:09.468735+00
57	cotacoes	0005_auto_20211003_0805	2021-10-26 04:50:09.548467+00
58	cotacoes	0006_auto_20211003_0912	2021-10-26 04:50:09.730578+00
59	cotacoes	0007_alter_platformvalue_date_time	2021-10-26 04:50:09.739115+00
60	cotacoes	0008_alter_platformvalue_date_time	2021-10-26 04:50:09.750646+00
61	cotacoes	0009_alter_platformvalue_date_time	2021-10-26 04:50:09.761196+00
62	cotacoes	0010_alter_platformvalue_date_time	2021-10-26 04:50:09.771905+00
63	cotacoes	0011_alter_platformvalue_date_time	2021-10-26 04:50:09.782569+00
64	titulares	0001_initial	2021-10-26 04:50:09.838447+00
65	titulares	0002_points	2021-10-26 04:50:09.891749+00
66	titulares	0003_alter_points_expire_date	2021-10-26 04:50:09.925559+00
67	titulares	0004_auto_20210910_2053	2021-10-26 04:50:09.964902+00
68	titulares	0005_auto_20210916_1454	2021-10-26 04:50:10.141479+00
69	titulares	0006_alter_holder_cpf	2021-10-26 04:50:10.184934+00
70	titulares	0007_auto_20211005_2150	2021-10-26 04:50:10.256334+00
80	novidades	0001_initial	2021-10-26 04:50:11.297989+00
81	novidades	0002_auto_20210903_1936	2021-10-26 04:50:11.310507+00
82	orcamentos	0001_initial	2021-10-26 04:50:11.626998+00
83	orcamentos	0002_alter_budget_proposal_number	2021-10-26 04:50:11.670357+00
84	orcamentos	0003_auto_20210906_1027	2021-10-26 04:50:11.791632+00
85	orcamentos	0004_auto_20210906_1748	2021-10-26 04:50:11.912151+00
86	orcamentos	0005_auto_20210906_1844	2021-10-26 04:50:12.145587+00
87	orcamentos	0006_auto_20210916_1328	2021-10-26 04:50:12.211021+00
88	orcamentos	0007_auto_20210921_1013	2021-10-26 04:50:12.820786+00
89	orcamentos	0008_auto_20210921_1914	2021-10-26 04:50:14.303135+00
90	orcamentos	0009_auto_20210923_1512	2021-10-26 04:50:15.201624+00
91	orcamentos	0010_rename_economy_budget_savings	2021-10-26 04:50:15.236453+00
92	orcamentos	0011_auto_20210930_1411	2021-10-26 04:50:15.482014+00
93	orcamentos	0012_budget_show_compared_price	2021-10-26 04:50:15.529912+00
94	orcamentos	0013_budget_selected_currency_to_compare	2021-10-26 04:50:15.568316+00
95	orcamentos	0014_auto_20211020_1403	2021-10-26 04:50:15.790059+00
96	pagamentos	0001_initial	2021-10-26 04:50:15.925565+00
97	pagamentos	0002_sales_payment_email	2021-10-26 04:50:15.973196+00
98	pagamentos	0003_auto_20210917_1819	2021-10-26 04:50:16.121009+00
99	pagamentos	0004_alter_payments_status	2021-10-26 04:50:16.178474+00
100	pagamentos	0005_auto_20211013_1723	2021-10-26 04:50:16.205352+00
101	passageiros	0001_initial	2021-10-26 04:50:16.314354+00
102	passageiros	0002_auto_20210806_1813	2021-10-26 04:50:16.474574+00
103	passageiros	0003_alter_passenger_email	2021-10-26 04:50:16.535434+00
104	passageiros	0004_auto_20210916_1328	2021-10-26 04:50:16.704849+00
105	passageiros	0005_auto_20211005_2150	2021-10-26 04:50:16.97926+00
106	sessions	0001_initial	2021-10-26 04:50:17.011252+00
107	suporte	0001_initial	2021-10-26 04:50:17.028807+00
108	suporte	0002_alter_support_category	2021-10-26 04:50:17.041032+00
109	gerenciador	0010_auto_20211026_1127	2021-10-29 22:14:57.843202+00
111	gerenciador	0001_initial	2021-11-04 00:03:59.860023+00
112	gerenciador	0002_auto_20210927_1736	2021-11-04 00:04:00.167505+00
113	gerenciador	0003_manager_status	2021-11-04 00:04:00.228216+00
114	gerenciador	0004_auto_20210927_1810	2021-11-04 00:04:00.702144+00
115	gerenciador	0005_alter_manager_status	2021-11-04 00:04:00.784716+00
116	gerenciador	0006_launch	2021-11-04 00:04:00.973722+00
117	gerenciador	0007_alter_launch_observation	2021-11-04 00:04:01.004654+00
118	gerenciador	0008_auto_20211014_0813	2021-11-04 00:04:01.058677+00
119	gerenciador	0009_launch_manager	2021-11-04 00:04:01.126186+00
120	gerenciador	0010_alter_manager_options	2021-11-04 00:04:01.164507+00
121	gerenciador	0011_rename_cmp_purchase_manager_cpm_purchase	2021-11-04 00:04:01.196172+00
122	gerenciador	0012_rename_shipping_date_manager_shipping_date	2021-11-04 00:04:01.227936+00
123	gerenciador	0013_rename_holfer_receive_manager_holder_receive	2021-11-04 00:04:01.283844+00
124	gerenciador	0014_auto_20211103_1430	2021-11-04 00:04:01.46258+00
125	gerenciador	0015_alter_launch_manager	2021-11-04 00:04:01.517133+00
126	gerenciador	0016_auto_20211103_1549	2021-11-04 00:04:01.75296+00
127	pagamentos	0006_rename_products_plans	2021-11-04 00:04:01.86015+00
128	pagamentos	0007_alter_plans_options	2021-11-04 00:04:01.88186+00
129	gerenciador	0017_product	2021-11-19 00:12:49.475427+00
130	gerenciador	0018_alter_product_manager	2021-11-19 00:12:49.529676+00
131	account	0019_auto_20211119_1121	2021-11-19 15:00:49.862469+00
132	account	0020_remove_account_is_admin	2021-11-19 15:00:49.900322+00
133	gerenciador	0019_alter_product_available	2021-11-24 20:06:14.332289+00
134	gerenciador	0020_auto_20211123_2147	2021-11-24 22:51:01.739185+00
135	gerenciador	0021_auto_20211123_2214	2021-11-24 22:51:01.960976+00
136	gerenciador	0022_milescpm	2021-11-24 22:51:02.029698+00
137	gerenciador	0023_auto_20211125_1514	2021-11-26 15:01:47.162039+00
138	gerenciador	0024_auto_20211126_1939	2021-11-26 22:51:42.844499+00
139	gerenciador	0025_auto_20211130_1359	2021-11-30 22:41:19.726553+00
140	gerenciador	0026_emission_sale_date	2021-12-08 13:11:16.309735+00
141	gerenciador	0027_emission_passenger_outsourced	2021-12-09 20:36:20.884255+00
142	gerenciador	0028_launch_cia	2022-01-04 11:14:35.014583+00
143	gerenciador	0029_auto_20220104_0804	2022-01-04 11:14:35.070164+00
144	account	0021_alter_account_last_login	2022-01-06 23:50:05.750064+00
145	account	0022_auto_20220107_0801	2022-01-07 11:09:06.424186+00
146	account	0023_alter_account_last_login	2022-01-11 18:06:39.410346+00
147	gerenciador	0030_alter_milescpm_cpm	2022-01-28 13:53:28.219105+00
148	titulares	0008_auto_20220218_1253	2022-02-18 16:27:03.510695+00
149	gerenciador	0031_auto_20220218_1934	2022-02-18 22:39:34.10431+00
150	suporte	0003_support_order	2022-03-07 16:41:29.872921+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
8365hl77bukljqkers0qymdnvad2y4la	.eJxVjTsOwjAQBe_iGlux1_GHMj1niHa9NgmgRMqnQtwdR0oB9Zt58xY97tvQ72te-pHFVYAPvrSWJSMkaV32MqAGSZa4kDZNBi0uvxpheubpcPmB031WaZ62ZSR1IOpcV3WbOb-6k_07GHAdqt3E2qBoCnEyteNKYUctRwyhIBsPibzXtnVgTcxMMThoEoLOleEkPl8wp0I0:1mfUTi:AqVcoCQUAVRjANnrUlgWzD4e39FmSgWjo8dAWoh2iRI	2021-11-09 21:59:30.161617+00
cmkbrredokukaxoz47c1i1plbdyvotod	.eJxVjTsOwjAQBe_iGlux1_GHMj1niHa9NgmgRMqnQtwdR0oB9Zt58xY97tvQ72te-pHFVYAPvrSWJSMkaV32MqAGSZa4kDZNBi0uvxpheubpcPmB031WaZ62ZSR1IOpcV3WbOb-6k_07GHAdqt3E2qBoCnEyteNKYUctRwyhIBsPibzXtnVgTcxMMThoEoLOleEkPl8wp0I0:1mhXWH:UAww-poOuO7Rf_AWZoGeIeLRJYengm13tfbZGD-IyoM	2021-11-15 13:38:37.683024+00
r765ejmrtsmwfeouji3v9xkqnbqjaxzr	.eJxVjTsOwjAQBe_iGlux1_GHMj1niHa9NgmgRMqnQtwdR0oB9Zt58xY97tvQ72te-pHFVYAPvrSWJSMkaV32MqAGSZa4kDZNBi0uvxpheubpcPmB031WaZ62ZSR1IOpcV3WbOb-6k_07GHAdqt3E2qBoCnEyteNKYUctRwyhIBsPibzXtnVgTcxMMThoEoLOleEkPl8wp0I0:1miQGf:Gzk7Z-vJXJMw1EzGy7Gysa6okpd-cjsqKF7AnqW70UU	2021-11-18 00:06:09.77226+00
awhwy2y4epkra7zvmpikt6y5g29cjoxj	.eJxVjTsOwjAQBe_iGlux1_GHMj1niHa9NgmgRMqnQtwdR0oB9Zt58xY97tvQ72te-pHFVYAPvrSWJSMkaV32MqAGSZa4kDZNBi0uvxpheubpcPmB031WaZ62ZSR1IOpcV3WbOb-6k_07GHAdqt3E2qBoCnEyteNKYUctRwyhIBsPibzXtnVgTcxMMThoEoLOleEkPl8wp0I0:1mij4t:JafTC4_1XZGu51G-05QdSNbHZCWf3l3za0YlIUeMo30	2021-11-18 20:11:15.885855+00
ti5yddpwmamo1r7lrf77r1f7so7c1r75	.eJxVjTsOwjAQBe_iGlux1_GHMj1niHa9NgmgRMqnQtwdR0oB9Zt58xY97tvQ72te-pHFVYAPvrSWJSMkaV32MqAGSZa4kDZNBi0uvxpheubpcPmB031WaZ62ZSR1IOpcV3WbOb-6k_07GHAdqt3E2qBoCnEyteNKYUctRwyhIBsPibzXtnVgTcxMMThoEoLOleEkPl8wp0I0:1mk2J1:lBNzsOPgD5TBg69cALfEB7H3gkywLVYLaaH-t6GrnvM	2021-11-22 10:55:15.210389+00
1k5vgkj27eftosdh0nvd1n6r5xf3gtpr	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1mng4p:6SUyGt8H_iUcRq5EZw-UZn2LiJm6DGLvpArh7fWMRf0	2021-12-02 11:59:39.176802+00
hta0xnuuugszacir5xu5e2c71axuylte	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1msl9G:zLgOJ-mrUxn6I-GAs9QrrgCgTRI4G4PZ_euGa6QEcZw	2021-12-16 12:25:14.762866+00
n97gxjdigpmfezmki5bj7uwi6xkb3n0p	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1mvqnk:yObNoJ1RWVLyZwHdVen4OpJUTp5bcjTUcVIMDWJpzCI	2021-12-25 01:03:48.768011+00
jkjxuutjn2fb2asdf4sp9q6wqzi9ogfv	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1n2IsQ:Xe96LN9vRM19BlrR6uUOzhAUmlyOTMYdtG7PWFREGog	2022-01-11 20:15:18.560378+00
ctc9fdk8h8eulvnyjg6sm8dsf3vxbffz	.eJxVzMsOwiAQheF3YS2EAToMLt37DA0wYKumJL2sjO-uTbrQ9fm_8xJ93Nah35Yy9yOLsyCH6GpM0jN30mEgmTIbiWSLwQJsNIvTL0sxP8q0W77H6dZUbtM6j0ntiTrWRV0bl-flaP8OhrgMX40lVKiFKnm0DBQgobXsNWgHmiGa0JHJ6DqiZK11QFDR-xSqR11JvD_UOT_A:1n59EJ:VhsVvNs1c5do_RGh-Pj3hxbcaD9H2F_QpYQmDGLusbc	2022-01-19 16:33:39.583663+00
fvpvbbh13kdrna0666d53slj5a4d6pev	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1n8AIB:guBvN_ghCD0ObDJHIsSE1LOahwkmUN6oCbB4zxCaY0M	2022-01-28 00:18:07.083164+00
c4tpx8nh9dklksfmtlw0vu37zvowek6b	.eJxVzMsOwiAQheF3YS2EAToMLt37DA0wYKumJL2sjO-uTbrQ9fm_8xJ93Nah35Yy9yOLsyCH6GpM0jN30mEgmTIbiWSLwQJsNIvTL0sxP8q0W77H6dZUbtM6j0ntiTrWRV0bl-flaP8OhrgMX40lVKiFKnm0DBQgobXsNWgHmiGa0JHJ6DqiZK11QFDR-xSqR11JvD_UOT_A:1nAjIl:gtlbbVnLDLBl3qki-EF0D9sww-I-IRiYwy7VKinoBMg	2022-02-04 02:05:19.507673+00
f9hk97k5bjj7y7fs95egfb5qckir0trn	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1nDV0p:Q4vsAkzT99CQDpluMeFYfD8h3QdIUJRtJsjd3Uc8PnA	2022-02-11 17:26:15.30589+00
pmvg7y3gnt6z2d9mtwzer6egxnup1s44	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1nMFxZ:8LCyWSySOyWt2SQ4zGM-X6VDcFAes1b39PWtv-sBxME	2022-03-07 21:11:05.367672+00
vj2sx1pa4ymwpy1fqxzw9d5t5bbjzk4h	.eJxVzMsOwiAQheF3YS2EAToMLt37DA0wYKumJL2sjO-uTbrQ9fm_8xJ93Nah35Yy9yOLsyCH6GpM0jN30mEgmTIbiWSLwQJsNIvTL0sxP8q0W77H6dZUbtM6j0ntiTrWRV0bl-flaP8OhrgMX40lVKiFKnm0DBQgobXsNWgHmiGa0JHJ6DqiZK11QFDR-xSqR11JvD_UOT_A:1nMdRe:oRjzPpjfPV91eT_Cc4_7ENHEuLsB_BqbPxzoDfUVlPw	2022-03-08 22:15:42.256399+00
a4tr4om045p513vxbz0elnb3nclr0dyl	.eJxVzMsOwiAQheF3YS2EAToMLt37DA0wYKumJL2sjO-uTbrQ9fm_8xJ93Nah35Yy9yOLsyCH6GpM0jN30mEgmTIbiWSLwQJsNIvTL0sxP8q0W77H6dZUbtM6j0ntiTrWRV0bl-flaP8OhrgMX40lVKiFKnm0DBQgobXsNWgHmiGa0JHJ6DqiZK11QFDR-xSqR11JvD_UOT_A:1nRwUn:1M_zL-VZEXP15z3nGKkUGINPSCkn7fYKeNdwqdGej3c	2022-03-23 13:36:53.739948+00
idveakfktnliumrv1ceerfouxy7yx5kv	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1nT7U5:2RQzG2blM8MUwMHwGgtGx0FXlNTQL4btFuLZGvmRa7E	2022-03-26 19:33:01.233271+00
g52iczqltqg89p68v37jshelz8yo5xw8	.eJxVjUsOwjAMBe-SNY0c14kTluw5Q5XGDuWjVupnhbg7qtQFrN_MvLfp8rYO3bbo3N3FnA0kAAxcm-C0bSihNCkWalwA8CBRKrI5_Wp9Lk8dd1ceebxNtkzjOt97uyP2WBd7nURfl4P9Cwx5GfbnoBFRqXgOFWqtyVHhpCE5EG4RYusZlIsIZaQeSQWoYk6s5DWazxc-Cj_Y:1nVLZ2:jwJGuNqimW-L2UXR3qYeEsHNWutDC6cyoJB4ri1E9tQ	2022-04-01 22:59:20.973203+00
jma256nmm3iirqp64swcghe6qivu6ctu	.eJxVzMsOwiAQheF3YS2EAToMLt37DA0wYKumJL2sjO-uTbrQ9fm_8xJ93Nah35Yy9yOLsyCH6GpM0jN30mEgmTIbiWSLwQJsNIvTL0sxP8q0W77H6dZUbtM6j0ntiTrWRV0bl-flaP8OhrgMX40lVKiFKnm0DBQgobXsNWgHmiGa0JHJ6DqiZK11QFDR-xSqR11JvD_UOT_A:1nh9qv:uYG6mTrFuVBfbonGMQouzxm-yEK_57I7XatodhbPIT0	2022-05-04 12:54:37.626749+00
\.


--
-- Data for Name: gerenciador_emission; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.gerenciador_emission (id, number, protocol_id, miles_total, tickets_issued, miles_to_issue, miles_issued, locator, category, status, balance_after_issue, issue_date, flight_date, create_check_in_warning, created_at, updated_at, owner_id, passenger_id, holder_id, passengers_quantity, program_id, value, sale_date, passenger_outsourced, cia, observation) FROM stdin;
432cb575-0aba-41bc-83c9-9905a5049aca	E1000	4c68e979-d4ee-4cd2-a20a-6d996e7b5570	\N	\N	\N	1000	dfgfd	Emissão Própria	Ativo	\N	2022-02-04	2022-02-04	t	2022-02-04 04:21:31.843695+00	2022-02-04 04:21:31.843708+00	0900267f-61e3-492d-98c4-160050d8df27	850c919a-69a6-4f32-b63c-e7f20dfe0e70	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	1	7.78210116731514	2022-02-04	\N	aaa	
3ee77f29-f383-4bde-a120-b845226718fe	E1001	dc3ff64e-4cd5-4613-bc1d-3189a7ae74f6	\N	\N	\N	1000.0	\N	Venda Terceirizada	Ativo	1000	2022-02-04	\N	f	2022-02-04 04:37:35.845341+00	2022-02-04 04:37:35.845352+00	0900267f-61e3-492d-98c4-160050d8df27	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	1	1	40.0	2022-02-04	PASS 1	\N	
7f58c43f-e08d-420c-ad24-cd91101c58ae	E1000	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdwdwd	Venda Direta	Ativo	220	2022-02-17	2022-02-17	f	2022-02-17 10:05:46.563172+00	2022-02-17 10:05:46.563193+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	teste	
6133a584-8122-44eb-b6b8-008489e28a32	E1001	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	efef	Venda Direta	Ativo	218	2022-02-17	2022-02-17	f	2022-02-17 10:06:13.363466+00	2022-02-17 10:06:13.363483+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	efe	
17add50b-caf5-486a-981a-e39cc4094292	E1002	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	efef	Venda Direta	Ativo	216	2022-02-17	2022-02-17	f	2022-02-17 10:06:29.678443+00	2022-02-17 10:06:29.678461+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	efe	
3da4ec22-d05a-4b19-b5fa-d3e9761ec835	E1003	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdwd	Venda Direta	Ativo	214	2022-02-17	2022-02-17	f	2022-02-17 10:07:06.132697+00	2022-02-17 10:07:06.132718+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	wdwdw	
77255b35-fea2-4201-989c-64c0bb940cf6	E1004	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dawdw	Venda Direta	Ativo	212	2022-02-17	2022-02-17	f	2022-02-17 10:07:49.430667+00	2022-02-17 10:07:49.430686+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	222	
80f446c2-863e-45fc-afc7-64c006a1557d	E1005	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdwd	Venda Direta	Ativo	210	2022-02-17	2022-02-17	f	2022-02-17 10:08:21.130925+00	2022-02-17 10:08:21.130943+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	wdwd	
da7794cc-306e-4f90-9676-903d1d33e8e2	E1006	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdw	Venda Direta	Ativo	208	2022-02-17	2022-02-17	f	2022-02-17 10:09:25.882561+00	2022-02-17 10:09:25.88258+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	wdw	
a2f9eaf6-367b-41f5-89b1-9761985aac72	E1007	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdw	Venda Direta	Ativo	206	2022-02-17	2022-02-17	f	2022-02-17 10:09:38.392618+00	2022-02-17 10:09:38.392636+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	wdw	
50c4e708-3d2c-4bf8-90c4-a7e995886f04	E1008	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdw	Venda Direta	Ativo	204	2022-02-17	2022-02-17	f	2022-02-17 10:09:48.006908+00	2022-02-17 10:09:48.006926+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	wdw	
20047d4e-5e9c-4e4c-9126-dcbfa2d4a2a5	E1009	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdw	Venda Direta	Ativo	202	2022-02-17	2022-02-17	f	2022-02-17 10:10:17.258178+00	2022-02-17 10:10:17.258203+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	wdw	
4c59aac6-6d71-4335-834f-b87c217e634c	E1010	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	2d2d	Venda Direta	Ativo	200	2022-02-17	2022-02-17	f	2022-02-17 10:14:50.718347+00	2022-02-17 10:14:50.718366+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	2d2d	
41eec80e-0fe8-433b-bf75-91f4cf1cabb6	E1011	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdwd	Venda Direta	Ativo	198	2022-02-17	2022-02-17	f	2022-02-17 10:24:42.449065+00	2022-02-17 10:24:42.449089+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	dwdw	dwwd
79ed4a56-0380-4fba-aea2-409b4d88c853	E1012	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	dwdwd	Venda Direta	Ativo	196	2022-02-17	2022-02-18	f	2022-02-17 10:24:56.2069+00	2022-02-17 10:24:56.206919+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	dwdw	dwwd
69d27df2-28f0-47c6-8526-bc8d6ea4010e	E1013	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	2	d2d2	Venda Direta	Ativo	194	2022-02-17	2022-02-17	f	2022-02-17 10:25:11.134511+00	2022-02-17 10:25:11.134529+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.2	2022-02-17	\N	2d2d2	
5f27cb26-465a-4ae5-8286-d0a9dbb80f7e	E1014	23fc64ce-c26d-4025-9232-03b707964800	\N	\N	\N	3	d2d2	Venda Direta	Ativo	191	2022-02-17	2022-02-17	f	2022-02-17 10:25:23.372177+00	2022-02-17 10:25:23.372196+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	0.3	2022-02-17	\N	2d2d2	
a875837e-e2ef-4c6b-b388-a03657535f33	E1015	69d22527-f793-49e8-bf59-b79125c69a61	\N	\N	\N	4.0	\N	Venda Terceirizada	Ativo	9996	2022-02-17	\N	f	2022-02-17 11:02:25.351839+00	2022-02-17 11:02:25.351857+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	c988d95e-f4eb-4104-8aed-272e0829b045	1	1	0.08	2022-01-11	PASS 1	\N	dwdw
c509716f-0d26-4df7-bc22-489fb2a292b8	E1016	052015ec-7959-43ef-9f81-5c8b8978521d	\N	\N	\N	222	ddwd	Emissão Própria	Ativo	\N	2022-02-17	2022-02-17	f	2022-02-17 11:05:01.130077+00	2022-02-17 11:05:01.1301+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	5301edbf-99e2-4fcf-a352-2cff48a8a826	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	7.925400000000001	\N	\N	wwdwd	dwdw
30d96b0e-d0bc-4bc3-b877-42ca04419d63	E1017	852a2b86-423f-4536-8498-dee8661bfc53	\N	\N	\N	222	dwdw	Emissão Própria	Ativo	\N	2022-02-18	2022-02-18	f	2022-02-17 11:05:42.458895+00	2022-02-17 11:05:42.458908+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	fd0dfe34-3d53-489f-b557-43504b40b453	c988d95e-f4eb-4104-8aed-272e0829b045	\N	1	7.925400000000001	\N	\N	dwdwd	dwdwdw
c8b2fd0a-f216-4e57-8735-599260e4d64e	E1018	103badc3-d9bf-4c25-aabc-b9086e570782	\N	\N	\N	20	d2d2d2	Emissão Própria	Ativo	\N	2022-03-17	2022-03-17	f	2022-03-18 02:37:38.627682+00	2022-03-18 02:37:38.627703+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	5301edbf-99e2-4fcf-a352-2cff48a8a826	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	2	0.2	\N	\N	dawdawd	dwdwdw
826a5e04-a07a-49f4-871b-0aa6dcd866e6	E1019	d30ed5c9-9734-4f2f-8c72-b65cbfc567c3	\N	\N	\N	300	awawdawd	Emissão Própria	Ativo	\N	2022-03-17	2022-03-17	f	2022-03-18 02:38:14.320113+00	2022-03-18 02:38:14.32013+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	5301edbf-99e2-4fcf-a352-2cff48a8a826	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	2	3.0	\N	\N	dawdwd	TESTE
840e1e6f-49ab-46e3-85fe-38ff8278fa76	E1020	f4040984-8a5c-4502-8d78-e00087e2708e	\N	\N	\N	30	22d2d2	Emissão Própria	Ativo	\N	2022-03-17	2022-03-17	f	2022-03-18 02:39:52.073428+00	2022-03-18 02:39:52.073451+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	5301edbf-99e2-4fcf-a352-2cff48a8a826	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	1	4.370818815331011	\N	\N	dwwdw	TESTE Callback
36e829ae-4cec-4c55-b255-2d3502292ef7	E1002	fb4305f6-5bb7-4450-8126-919bdbe81ded	\N	\N	\N	1000	aaa	Emissão Própria	Ativo	\N	2022-03-18	2022-03-18	f	2022-03-18 23:00:23.381376+00	2022-03-18 23:00:23.381413+00	0900267f-61e3-492d-98c4-160050d8df27	850c919a-69a6-4f32-b63c-e7f20dfe0e70	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	1	103795152327655.77	\N	\N	asd	asd
4f0b4ca5-a93a-42f8-887f-9c02b85c9cf7	E1003	dc3ff64e-4cd5-4613-bc1d-3189a7ae74f6	\N	\N	\N	1000.0	\N	Venda Terceirizada	Ativo	0	2022-03-18	\N	f	2022-03-18 23:01:22.794674+00	2022-03-18 23:01:22.794698+00	0900267f-61e3-492d-98c4-160050d8df27	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	1	1	40.0	2022-02-04	PASS 2	\N	
a2c97d8f-f9ad-415a-9dbf-ab25f66c4f80	E1004	86132711-6edb-419b-a132-9fd3623091ba	\N	\N	\N	1000.0	\N	Venda Terceirizada	Ativo	4000	2022-03-18	\N	f	2022-03-18 23:02:09.121074+00	2022-03-18 23:02:09.121102+00	0900267f-61e3-492d-98c4-160050d8df27	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	1	1	24.0	2022-02-04	PASS 1	\N	
\.


--
-- Data for Name: gerenciador_launch; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.gerenciador_launch (id, account, code, cost_profit, credit, date, description, miles, nature, observation, parcels, parcels_value, purchase_value, real_storage, status, sub_group1, sub_group2, sub_group3, theoretical_storage, type, quantity, financial, created_at, updated_at, buyer_id, holder_id, owner_id, payment_form_id, program_id, category, protocol, manager_id, date_first_payment, cia) FROM stdin;
0aec22e4-c490-4d3c-9d8e-9aca30042921	\N	VM	500	500	2022-01-27	fsefef	5000	CONTABIL		3	166.67	0	0	REALIZADA	COMPRA	MILHAS	\N	-5000	ALIENAÇÃO DE BENS	-5000	0	2022-01-27 21:27:57.525091+00	2022-01-27 21:28:09.21056+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	2022012716e3	531436bd-0326-492a-8a70-3a78cbe6cf39	\N	\N
b407ea64-ef9e-471c-897e-162dcfb1a932	\N	RV	0	-166.67	2022-02-21	fsefef - RECEB. 2/3	5000	FINANCEIRA		3	166.67	0	0	REALIZADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	166.67	2022-01-27 21:27:57.538627+00	2022-02-21 23:53:50.168158+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	2022012716e3	531436bd-0326-492a-8a70-3a78cbe6cf39	\N	\N
4f296fe8-6f36-4318-ab10-2da659a95557	\N	RV	0	-166.67	2022-02-21	fsefef - RECEB. 1/3	5000	FINANCEIRA		3	166.67	0	0	REALIZADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	166.67	2022-01-27 21:27:57.533052+00	2022-02-21 23:51:52.919492+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	2022012716e3	531436bd-0326-492a-8a70-3a78cbe6cf39	\N	\N
48958b3a-0a70-4999-bbb5-eebae50e1fe6	\N	RV	0	-166.67	2022-02-21	fsefef - RECEB. 3/3	5000	FINANCEIRA		3	166.67	0	0	REALIZADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	166.67	2022-01-27 21:27:57.544693+00	2022-02-21 23:53:50.470776+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	2022012716e3	531436bd-0326-492a-8a70-3a78cbe6cf39	\N	\N
c203f6b7-5314-46d2-8798-1290a04303fc	\N	EM	0	0	2022-01-28	sdfg	5700	CONTABIL		\N	\N	\N	5700	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	5700	MOVIMENTACAO DE ESTOQUE	5700	0	2022-01-28 17:27:09.825076+00	2022-01-28 17:27:09.825089+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Acúmulo de Milhas	20220128bd36	b32f2543-efa3-44cd-8495-9e93431ea71b	\N	\N
b1510192-0d46-48cc-9015-11a63e41a335	\N	EM	0	0	2022-03-07	acumulo	11525	CONTABIL		\N	\N	\N	11525	ATRASADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	11525	MOVIMENTACAO DE ESTOQUE	11525	0	2022-03-07 15:23:07.506856+00	2022-03-07 15:23:07.506883+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Acúmulo de Milhas	20220307aec8	82a18c82-691c-4043-b6c4-9da4c1105483	\N	\N
c34c8582-cad2-471c-8a65-67e44bc675b7	\N	EM	-200	-200	2022-01-28	sdfg	10000	CONTABIL		1	200	200	10000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	10000	MOVIMENTACAO DE ESTOQUE	10000	0	2022-01-28 17:28:23.700723+00	2022-03-18 23:03:07.293302+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	1	Compra de Milhas	20220128f841	becf173e-4c8d-4645-8a1e-c367ee043db3	\N	\N
587034a8-a33e-4396-9aa5-15b01f3ea466	\N	PV	0	200	2022-01-30	sdfg - PAG 1/1	10000	FINANCEIRA		1	200	200	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-200	2022-01-28 17:28:23.707732+00	2022-01-30 23:35:48.964473+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	1	Compra de Milhas	20220128f841	becf173e-4c8d-4645-8a1e-c367ee043db3	\N	\N
25d5e3e4-eb66-407c-be0e-f2a4d52f034d	\N	PV	0	5000	2022-03-10	produto 1 - PAG 1/1	0	FINANCEIRA		1	5000	5000	0	ATRASADA	COMPRA	PRODUTOS	\N	0	DESPESA/SAIDA	0	-5000	2022-02-04 03:53:50.53908+00	2022-02-04 03:53:50.53909+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	Compra de Produtos	202202042670	dcff56bc-e320-481a-85b1-3a5cf8fd5916	\N	\N
10f86c55-f840-4624-b93b-a48498f4bd69	\N	EM	-30	-30	2022-02-21	TESTE COMPRA	2000	CONTABIL		1	30	30	2000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	2000	MOVIMENTACAO DE ESTOQUE	2000	0	2022-01-24 23:51:17.972035+00	2022-02-21 13:55:40.147771+00	\N	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	3	Compra de Milhas	2022012431e4	b7e36906-0f65-457b-add1-18189b27e57b	\N	\N
bb92e973-c18d-4b0f-8d6f-29f6d7aacef0	\N	PV	0	1000	2022-01-05	dcdcd - PAG 1/1	100	FINANCEIRA	cweece	1	1000	1000	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-1000	2022-01-21 20:25:40.483809+00	2022-01-25 19:09:50.571433+00	\N	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	20220121933f	2a4b3cd6-5175-4b36-85b0-4d02b8e3651d	\N	\N
dc775e14-fb69-4c2a-a4f7-d786b8437a41	\N	PV	0	30	2022-01-05	TESTE COMPRA - PAG 1/1	2000	FINANCEIRA		1	30	30	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-30	2022-01-24 23:51:17.979828+00	2022-01-25 19:09:55.286563+00	\N	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	3	Compra de Milhas	2022012431e4	b7e36906-0f65-457b-add1-18189b27e57b	\N	\N
4aeba8aa-7c9a-4afd-b14c-a38335c12e68	\N	PV	0	400	2022-01-16	COMPRA TUDO AZUL - PAG 1/1	30000	FINANCEIRA		1	400	400	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-400	2022-01-05 11:29:11.388452+00	2022-01-25 19:09:59.727564+00	\N	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	2	Compra de Milhas	20220105ea07	09db80c9-544b-4370-a16d-3cb9159aef19	\N	\N
618ab8a1-aae1-4880-bf97-89cf006a5491	\N	PV	0	50	2022-01-21	COMPRA 1 - PAG 2/4	20000	FINANCEIRA		4	50	200	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-50	2022-01-03 18:35:57.0968+00	2022-01-25 19:10:07.264024+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	202201032262	cb5830d6-4ad9-4080-9560-52bf62338ada	\N	\N
0824b1c2-192a-4813-9a72-487cf83c206b	\N	CO	-22	-22	2022-01-25	TESTE	\N	CONTABIL		1	22	22	0	REALIZADA	COMPRA	CONTABILIDADE	VIDA	0	AQUISIÇÃO DE BENS	0	0	2022-01-25 19:12:41.414459+00	2022-01-25 19:12:41.414476+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	a22633f0-295c-455c-abb1-1c5cf33caf8c	\N	Despesas Diversas	20220125636d	92224d78-ad5b-40ea-a0c7-b64317a83ed9	2022-01-10	\N
d3ecb170-d3cb-4d49-9e4f-fb0e8de4068d	\N	PV	0	22	2022-01-25	TESTE - PAG 1/1	\N	FINANCEIRA		\N	-22	22	0	REALIZADA	COMPRA	CONTABILIDADE	VIDA	0	RECEITAS/ENTRADAS	0	-22	2022-01-25 19:12:41.419637+00	2022-01-25 19:12:41.419654+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	a22633f0-295c-455c-abb1-1c5cf33caf8c	\N	Despesas Diversas	20220125636d	92224d78-ad5b-40ea-a0c7-b64317a83ed9	2022-01-10	\N
a893510b-c45d-4995-a702-a9f064cac3cd	\N	EM	-1000	-1000	2021-12-24	dcdcd	100	CONTABIL	cweece	1	1000	1000	100	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	100	MOVIMENTACAO DE ESTOQUE	100	0	2022-01-21 20:25:40.476533+00	2022-01-27 21:26:17.929866+00	\N	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	20220121933f	2a4b3cd6-5175-4b36-85b0-4d02b8e3651d	\N	\N
cd63eedf-f3f1-4798-af79-097ec9c41ab3	\N	RV	0	-3000	2022-02-04	produto 1 - RECEB 1/1	0	FINANCEIRA		1	3000	0	0	ATRASADA	SAÍDA/DÉBITO/EXPIRAÇÃO	\N	\N	0	RECEITAS/ENTRADAS	0	3000	2022-02-04 03:54:47.887073+00	2022-02-04 03:54:47.887082+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	Venda de Produtos	20220204a08a	91a76fc3-8c1e-46d1-ba81-378272947a4f	2022-02-04	\N
2211600f-0c10-461d-a6a5-f30de3e9853b	\N	RV	0	-120	2022-02-04	asdf - RECEB. 1/1	5000	FINANCEIRA		1	120	0	0	REALIZADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	120	2022-02-04 03:52:49.443497+00	2022-02-04 03:53:29.957956+00	097ffcce-ba20-4144-8172-8026f35b8c21	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Venda de Milhas	20220204d56c	d9a7738e-1a5a-4770-bd54-5a2a2770b337	\N	\N
b797ac60-1c57-4358-8b3f-a59c9cb5834b	\N	CP	-5000	-5000	2022-02-04	produto 1	0	CONTABIL		1	5000	5000	0	REALIZADA	COMPRA	PRODUTOS	\N	5	AQUISIÇÃO DE BENS	5	0	2022-02-04 03:53:50.534266+00	2022-02-04 03:53:57.057397+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	Compra de Produtos	202202042670	dcff56bc-e320-481a-85b1-3a5cf8fd5916	\N	\N
fd159bc4-f74b-44d4-a1ae-1b4de217c43b	\N	EP	0	0	2022-02-04	produto 1 - ENTREGA	0	CONTABIL		1	0	5000	5	REALIZADA	COMPRAS PARA VENDA	PRODUTOS	\N	0	MOVIMENTACAO DE ESTOQUE	0	0	2022-02-04 03:53:50.550026+00	2022-02-04 03:54:02.366998+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	Compra de Produtos	202202042670	dcff56bc-e320-481a-85b1-3a5cf8fd5916	\N	\N
3c3512ca-18f9-48a2-9cb6-eb499aaf9a2c	\N	VP	3000	3000	2022-02-04	produto 1 - VENDA	0	CONTABIL		1	3000	0	0	REALIZADA	VENDA	PRODUTOS	\N	-2	ALIENAÇÃO DE BENS	2	0	2022-02-04 03:54:47.883601+00	2022-02-04 03:54:56.784224+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	Venda de Produtos	20220204a08a	91a76fc3-8c1e-46d1-ba81-378272947a4f	2022-02-04	\N
e2cb3d72-e721-4372-8bec-f23fc50a9dde	\N	SP	0	0	2022-02-04	produto 1 - ENTREGA	0	CONTABIL		1	0	0	-2	ATRASADA	SAÍDA/DÉBITO/EXPIRAÇÃO	PRODUTOS	\N	0	MOVIMENTACAO DE ESTOQUE	0	0	2022-02-04 03:54:47.890192+00	2022-02-04 03:54:47.890201+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	Venda de Produtos	20220204a08a	91a76fc3-8c1e-46d1-ba81-378272947a4f	2022-02-04	\N
706acf44-8339-40a9-8201-957919628e14	\N	AC	\N	\N	2022-01-24	2222	\N	OPERACIONAL		\N	\N	\N	\N	REALIZADA	COMPROMISSO/TAREFA	\N	\N	\N	AGENDAMENTO	\N	\N	2022-01-24 18:20:35.801718+00	2022-02-18 19:14:44.925702+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Agendamento de Compromisso	20220124e253	d93d3289-bbaa-41dd-86c6-3482c47d8401	\N	\N
595bc5b7-18f2-492b-8b9c-de73da02aef8	\N	PV	0	50	2022-02-21	COMPRA 1 - PAG 3/4	20000	FINANCEIRA		4	50	200	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-50	2022-01-03 18:35:57.103322+00	2022-02-21 13:55:40.310702+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	202201032262	cb5830d6-4ad9-4080-9560-52bf62338ada	\N	\N
858ab2d3-ed38-475d-96e0-fb7a8d4fc262	\N	EM	-10	0	2022-03-17	TESTE DE MILHAS	1000	CONTABIL		\N	\N	\N	1000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	1000	MOVIMENTACAO DE ESTOQUE	1000	0	2022-03-18 02:37:32.749293+00	2022-03-18 02:37:32.749315+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	Acúmulo de Milhas	202203179566	8023ce2d-af43-404f-9851-e768a8194827	\N	\N
a24cb60c-8eab-4a63-b782-4713342b09cd	\N	CP	-2001	-2001	2022-04-03	ssss	0	CONTABIL		1	2001	2001	0	REALIZADA	COMPRA	PRODUTOS	\N	2	AQUISIÇÃO DE BENS	2	0	2022-04-03 19:11:03.055637+00	2022-04-03 19:11:03.05565+00	\N	dc437656-4d42-4d5d-a345-d50f90aead85	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	1	Compra de Produtos Acumulando Milhas	202204035e5c	8cdcf4be-bf72-4d69-a399-4fa192d69c8b	\N	\N
e7bd0eb1-922a-4e5f-b8d6-be04738c7af1	\N	CP	-3000	-3000	2022-01-24	TESTE	0	CONTABIL		1	3000	3000	0	REALIZADA	COMPRA	PRODUTOS	\N	1	AQUISIÇÃO DE BENS	1	0	2022-01-24 19:02:56.894714+00	2022-01-24 19:02:56.894728+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Compra de Produtos	20220124fee4	2521e5d4-9d93-415e-985c-a7681d041542	\N	\N
b87bb536-b81f-427a-93e4-656ca5f542ec	\N	RV	0	-200	2022-02-21	Desdcacw - RECEB 1/10	\N	FINANCEIRA		10	200	\N	0	REALIZADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.358184+00	2022-02-21 13:55:53.830033+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
b7607239-d7f0-428f-ace6-efd1d96bbac2	\N	PV	0	3000	2022-01-24	TESTE - PAG 1/1	0	FINANCEIRA		1	3000	3000	0	REALIZADA	COMPRA	PRODUTOS	\N	0	DESPESA/SAIDA	0	-3000	2022-01-24 19:02:56.898421+00	2022-01-24 19:02:56.898434+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Compra de Produtos	20220124fee4	2521e5d4-9d93-415e-985c-a7681d041542	\N	\N
e322678a-df24-4faf-8416-7e382b3f9261	\N	EP	0	0	2022-01-24	TESTE - ENTREGA	0	CONTABIL		1	0	3000	1	REALIZADA	COMPRAS PARA VENDA	PRODUTOS	\N	0	MOVIMENTACAO DE ESTOQUE	0	0	2022-01-24 19:02:56.90863+00	2022-01-24 19:02:56.908641+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Compra de Produtos	20220124fee4	2521e5d4-9d93-415e-985c-a7681d041542	\N	\N
2daeff9c-2ea7-48e7-bbe0-1cc86780d304	\N	EM	-45	-45	2022-01-24	TESTE COMPRA 2	2000	CONTABIL		2	22.5	45	2000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	2000	MOVIMENTACAO DE ESTOQUE	2000	0	2022-01-24 23:54:01.815343+00	2022-01-24 23:54:01.815357+00	\N	98b973be-b58d-4a7e-8bea-6c3361679d6c	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	2	Compra de Milhas	20220124deeb	0e46a163-72c9-4f8f-add8-ac6917c00a59	\N	\N
6f35ab6f-3baf-4d15-b6af-269c44ba1e0a	\N	PV	0	22.5	2022-01-24	TESTE COMPRA 2 - PAG 1/2	2000	FINANCEIRA		2	22.5	45	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22.5	2022-01-24 23:54:01.823107+00	2022-01-24 23:54:01.823123+00	\N	98b973be-b58d-4a7e-8bea-6c3361679d6c	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	2	Compra de Milhas	20220124deeb	0e46a163-72c9-4f8f-add8-ac6917c00a59	\N	\N
ac548d34-1829-4de5-9e61-84fbf05969be	\N	PV	0	22.5	2022-01-24	TESTE COMPRA 2 - PAG 2/2	2000	FINANCEIRA		2	22.5	45	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22.5	2022-01-24 23:54:01.829883+00	2022-01-24 23:54:01.829897+00	\N	98b973be-b58d-4a7e-8bea-6c3361679d6c	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	2	Compra de Milhas	20220124deeb	0e46a163-72c9-4f8f-add8-ac6917c00a59	\N	\N
2da63cf0-bb67-48b5-acff-6df8305ef352	\N	EM	-200	-200	2022-01-03	COMPRA 1	20000	CONTABIL		4	50	200	20000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	20000	MOVIMENTACAO DE ESTOQUE	20000	0	2022-01-03 18:35:57.08314+00	2022-01-25 19:09:26.695509+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	202201032262	cb5830d6-4ad9-4080-9560-52bf62338ada	\N	\N
69d22527-f793-49e8-bf59-b79125c69a61	\N	VM	200	200	2022-01-11	TESTE VENDA 10	10000	CONTABIL		1	200	0	-4.0	REALIZADA	COMPRA	MILHAS	\N	-10000	ALIENAÇÃO DE BENS	-10000	0	2022-01-11 14:23:13.1858+00	2022-02-17 11:02:25.325309+00	6e086081-583f-4ee1-bed3-43200fc66cb3	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	202201112209	c73d375c-0767-4e25-accc-3d4c7965125e	\N	\N
b67782a6-72af-40fa-8e4f-4f561cf0d970	\N	PV	0	2001	2022-05-10	ssss - PAG 1/1	0	FINANCEIRA		1	2001	2001	0	AGENDADA	COMPRAS PARA VENDA	PRODUTOS	\N	0	DESPESA/SAIDA	0	-2001	2022-04-03 19:11:03.061521+00	2022-04-03 19:11:03.061534+00	\N	dc437656-4d42-4d5d-a345-d50f90aead85	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	1	Compra de Produtos Acumulando Milhas	202204035e5c	8cdcf4be-bf72-4d69-a399-4fa192d69c8b	\N	\N
c47cd066-a397-43eb-b5c5-bfa0e5d7c980	\N	EP	0	0	2022-04-03	ssss - ENTREGA	0	CONTABIL		1	0	2001	2	REALIZADA	ENTRADA/CREDITO/ACUMULO	PRODUTOS	\N	0	MOVIMENTACAO DE ESTOQUE	0	0	2022-04-03 19:11:03.073849+00	2022-04-03 19:11:03.073861+00	\N	dc437656-4d42-4d5d-a345-d50f90aead85	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	1	Compra de Produtos Acumulando Milhas	202204035e5c	8cdcf4be-bf72-4d69-a399-4fa192d69c8b	\N	\N
57baa759-c388-49ae-beb4-8ea578c23404	\N	PV	0	2000	2022-01-17	TESTE COMPRA 10 - PAG 1/1	100000	FINANCEIRA		1	2000	2000	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-2000	2022-01-11 14:22:23.381006+00	2022-01-25 19:10:04.358273+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	20220111d482	2e965302-5d3a-454c-8ca4-a45ae9311c08	\N	\N
62d4549c-1b79-4ee9-b86a-1c8b41c78a51	\N	EM	0	0	2022-04-03	ssss - BÔNUS	0	CONTABIL		1	0	2001	1000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	1000	MOVIMENTACAO DE ESTOQUE	1000	0	2022-04-03 19:11:03.083207+00	2022-04-03 19:11:03.083236+00	\N	dc437656-4d42-4d5d-a345-d50f90aead85	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	1	Compra de Produtos Acumulando Milhas	202204035e5c	8cdcf4be-bf72-4d69-a399-4fa192d69c8b	\N	\N
fb921886-c03d-4173-92dd-55da66586eb1	\N	RV	0	-200	2022-04-25	Desdcacw - RECEB 4/10	\N	FINANCEIRA		10	200	\N	0	ATRASADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.372833+00	2022-01-25 19:56:07.372848+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
d04a9d73-34b0-4bd1-99c2-238adaec888b	\N	VS	2000	2000	2022-02-21	Desdcacw	\N	FINANCEIRA		10	200	\N	0	REALIZADA	COMPRA	PRODUTOS		0	DESPESA/SAIDA	0	0	2022-01-25 19:56:07.353156+00	2022-02-21 13:55:53.837202+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
34da73e8-ec05-475a-956f-59bc9dbb4f1c	\N	RV	0	-200	2022-02-21	Desdcacw - RECEB 2/10	\N	FINANCEIRA		10	200	\N	0	REALIZADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.363331+00	2022-02-21 23:53:50.153002+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
273360c8-7f1f-42bd-9299-77b2509e3d9c	\N	EM	-400	-400	2022-02-21	COMPRA TUDO AZUL	30000	CONTABIL		1	400	400	30000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	30000	MOVIMENTACAO DE ESTOQUE	30000	0	2022-01-05 11:29:11.380564+00	2022-02-21 13:55:40.204368+00	\N	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	2	Compra de Milhas	20220105ea07	09db80c9-544b-4370-a16d-3cb9159aef19	\N	\N
cae34fb0-d318-4547-a24f-52a8f894354c	\N	EM	-2000	-2000	2022-02-21	TESTE COMPRA 10	100000	CONTABIL		1	2000	2000	100000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	100000	MOVIMENTACAO DE ESTOQUE	100000	0	2022-01-11 14:22:23.372914+00	2022-02-21 13:55:40.223752+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	20220111d482	2e965302-5d3a-454c-8ca4-a45ae9311c08	\N	\N
f7354dc8-49bb-4ad4-aa94-a65332bbba8a	\N	RV	0	-200	2022-02-21	Desdcacw - RECEB 3/10	\N	FINANCEIRA		10	200	\N	0	REALIZADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.368337+00	2022-02-21 23:53:50.45759+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
6a420cf2-ee3c-4fdf-b141-cf9e6ba4729b	\N	RV	0	-200	2022-05-25	Desdcacw - RECEB 5/10	\N	FINANCEIRA		10	200	\N	0	AGENDADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.377304+00	2022-01-25 19:56:07.377321+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
207b67ea-e04d-4c90-a64c-bafee8b36188	\N	RV	0	-200	2022-01-11	TESTE VENDA 10 - RECEB. 1/1	10000	FINANCEIRA		1	200	0	0	REALIZADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	200	2022-01-11 14:23:13.191503+00	2022-01-27 21:24:50.786676+00	6e086081-583f-4ee1-bed3-43200fc66cb3	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	202201112209	c73d375c-0767-4e25-accc-3d4c7965125e	\N	\N
52ff975b-7f66-42d0-922d-753f04203d8c	\N	EM	0	0	2022-02-21	teste - BÔNUS	1000	CONTABIL		\N	\N	\N	100	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	100	MOVIMENTACAO DE ESTOQUE	100	0	2022-01-18 15:32:47.716026+00	2022-02-21 13:55:40.266083+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	Transferência Bumerangue	20220118ea54	9d0eb26d-7b75-4817-b4fc-6b1f081a1c67	\N	\N
103badc3-d9bf-4c25-aabc-b9086e570782	\N	SM	0.2	0	2022-03-17	Emissão avulsa de passagem	\N	CONTABIL	\N	\N	\N	\N	-20.0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-20.0	MOVIMENTACAO DE ESTOQUE	-20.0	0	2022-03-18 02:37:38.625906+00	2022-03-18 02:37:38.625931+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	Uso Próprio de Milhas	2022031756ab	270beec8-e0d2-47b4-98fd-39c152ad5aee	\N	\N
562e3820-176e-47b0-9e68-2b6db6533a10	\N	PV	0	3000	2022-03-10	produto 2 - PAG 1/1	0	FINANCEIRA		1	3000	3000	0	ATRASADA	COMPRA	PRODUTOS	\N	0	DESPESA/SAIDA	0	-3000	2022-02-04 03:54:21.421074+00	2022-02-04 03:54:21.421084+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	Compra de Produtos	20220204e737	44fe4817-40d1-4320-921f-8f9de3ea3b94	\N	\N
48f70ac5-8fae-4086-82c7-b5fb9c7d284a	\N	VM	250	250	2022-01-19	TESTE 19	10000	CONTABIL		1	250	0	0.0	REALIZADA	COMPRA	MILHAS	\N	-10000	ALIENAÇÃO DE BENS	-10000	0	2022-01-19 15:03:40.926379+00	2022-01-27 21:26:35.22386+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	202201196265	da20b22b-982c-4c3d-b922-d232a9db48df	\N	\N
068f972d-1cfc-4ea2-9ee4-46eb84d18aa3	\N	EM	0	0	2022-01-28	sdfg	10000	CONTABIL		\N	\N	\N	10000	ATRASADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	10000	MOVIMENTACAO DE ESTOQUE	10000	0	2022-01-28 17:32:12.922237+00	2022-03-18 13:49:20.263483+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Acúmulo de Milhas	202201280c23	70b9b877-b647-4e16-8511-57c0c37857b2	\N	\N
443872f5-d1b3-49d0-936d-ad05d0afc1ec	\N	RV	0	-250	2022-01-21	TESTE 19 - RECEB. 1/1	10000	FINANCEIRA		1	250	0	0	REALIZADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	250	2022-01-19 15:03:40.933607+00	2022-01-27 21:26:37.650849+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	202201196265	da20b22b-982c-4c3d-b922-d232a9db48df	\N	\N
a1dce935-7fa4-4784-b5a3-715007b11c99	\N	CP	-10000	-10000	2022-01-24	awdwd	0	CONTABIL		1	10000	10000	0	REALIZADA	COMPRA	PRODUTOS	\N	2	AQUISIÇÃO DE BENS	2	0	2022-01-24 17:56:02.399878+00	2022-01-24 17:56:12.112217+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Compra de Produtos	202201241a6f	e9c21d27-3cf6-497e-84c2-338487e11d89	\N	\N
7023b7da-6179-4bb7-b555-e4fc825ca613	\N	EP	0	0	2022-01-24	awdwd - ENTREGA	0	CONTABIL		1	0	10000	2	REALIZADA	COMPRAS PARA VENDA	PRODUTOS	\N	0	MOVIMENTACAO DE ESTOQUE	0	0	2022-01-24 17:56:02.40804+00	2022-01-24 17:56:15.579844+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Compra de Produtos	202201241a6f	e9c21d27-3cf6-497e-84c2-338487e11d89	\N	\N
58cfac5f-0ac7-4cbd-bf75-32254c147d6f	\N	PV	0	10000	2022-01-24	awdwd - PAG 1/1	0	FINANCEIRA		1	10000	10000	0	REALIZADA	COMPRA	PRODUTOS	\N	0	DESPESA/SAIDA	0	-10000	2022-01-24 17:56:02.404128+00	2022-01-24 17:56:35.027756+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Compra de Produtos	202201241a6f	e9c21d27-3cf6-497e-84c2-338487e11d89	\N	\N
8bd63c80-1f28-435a-9b6b-24a9b70394b5	\N	RV	0	-200	2022-06-25	Desdcacw - RECEB 6/10	\N	FINANCEIRA		10	200	\N	0	AGENDADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.381681+00	2022-01-25 19:56:07.381697+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
b3316253-3e2c-406f-a0de-dfafce22facf	\N	RV	0	-200	2022-07-25	Desdcacw - RECEB 7/10	\N	FINANCEIRA		10	200	\N	0	AGENDADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.385715+00	2022-01-25 19:56:07.385731+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
95882dad-4e00-45cc-aa10-d918022c930e	\N	RV	0	-200	2022-08-25	Desdcacw - RECEB 8/10	\N	FINANCEIRA		10	200	\N	0	AGENDADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.389854+00	2022-01-25 19:56:07.38987+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
43560deb-7d32-449a-914f-f8f65f59fa91	\N	EM	-220	0	2022-02-21	Esta é uma descrição em grande mesmo, tem que aparecer os "..."	10000	CONTABIL		\N	\N	\N	10000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	10000	MOVIMENTACAO DE ESTOQUE	10000	0	2022-01-04 10:42:19.023708+00	2022-02-21 13:55:40.183453+00	\N	98b973be-b58d-4a7e-8bea-6c3361679d6c	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Acúmulo de Milhas	202201041c8d	7305f3b0-d510-48e2-afde-5cfa752e3536	\N	\N
d3e140d1-4fcf-4d8a-a34d-5efa3ca29038	\N	EM	-262.17	-222.8	2022-01-24	dawdw - RECEBIMENTO	1000	CONTABIL		1	222.8	\N	1000	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	1000	MOVIMENTACAO DE ESTOQUE	1000	0	2022-01-24 21:26:35.591956+00	2022-01-24 23:51:45.923404+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	20220124f205	0ccff5c6-c72b-4238-a5c2-8f4dde0a6113	2022-02-05	\N
6bc146e1-4c2f-4c19-a439-000eec59fc13	\N	PV	0	222.8	2022-01-24	dawdw - PAG 1/1	1000	FINANCEIRA		1	222.8	\N	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222.8	2022-01-24 21:26:35.598627+00	2022-01-24 23:52:47.336569+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	20220124f205	0ccff5c6-c72b-4238-a5c2-8f4dde0a6113	2022-02-05	\N
451aee26-5a64-4817-9888-0d9204f19aee	\N	CO	-22	-22	2022-01-25	TESTE	\N	CONTABIL		1	22	22	0	REALIZADA	COMPRA	ASSISTÊNCIA TÉCNICA	VEICULAR	0	AQUISIÇÃO DE BENS	0	0	2022-01-25 19:11:02.445234+00	2022-01-25 19:11:02.445249+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Despesas Diversas	2022012542f9	fc2395d1-cac9-44d6-89e1-1accf150fed2	2022-01-05	\N
fe2f6484-db77-4a0d-a471-8e0c645efbcf	\N	PV	0	22	2022-01-25	TESTE - PAG 1/1	\N	FINANCEIRA		\N	-22	22	0	REALIZADA	COMPRA	ASSISTÊNCIA TÉCNICA	VEICULAR	0	RECEITAS/ENTRADAS	0	-22	2022-01-25 19:11:02.449872+00	2022-01-25 19:11:02.449886+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Despesas Diversas	2022012542f9	fc2395d1-cac9-44d6-89e1-1accf150fed2	2022-01-05	\N
9e309f84-4d1c-4229-88a1-b33ca4c5ed8c	\N	RV	0	-200	2022-09-25	Desdcacw - RECEB 9/10	\N	FINANCEIRA		10	200	\N	0	AGENDADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.394048+00	2022-01-25 19:56:07.394068+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
72d3628b-957b-487f-9e1b-71121a151c67	\N	RV	0	-200	2022-10-25	Desdcacw - RECEB 10/10	\N	FINANCEIRA		10	200	\N	0	AGENDADA	ENTREGA	PRODUTOS		0	MOVIMENTACAO DE ESTOQUE	0	200	2022-01-25 19:56:07.398387+00	2022-01-25 19:56:07.398403+00	60e71341-63bc-4fda-ae84-171520b11379	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Venda Passagens c/ Dinheiro	2022012577b5	bdd0a5a4-8779-4614-a0e8-d057b6ef8326	\N	\N
70789c81-a6cd-47ad-a851-a00d9a1cc349	\N	RV	0	-200	2022-01-03	VENDA 1 - RECEB. 1/1	10000	FINANCEIRA		1	200	0	0	REALIZADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	200	2022-01-03 23:25:00.252169+00	2022-01-27 21:24:41.924105+00	6e086081-583f-4ee1-bed3-43200fc66cb3	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	20220103ed93	b4d2a158-91ad-4070-9244-5893a9114f20	\N	\N
2103b191-c3fc-4c14-a84e-0499304dc67f	\N	VM	200	200	2022-01-03	VENDA 1	10000	CONTABIL		1	200	0	0.0	REALIZADA	COMPRA	MILHAS	\N	-10000	ALIENAÇÃO DE BENS	-10000	0	2022-01-03 23:25:00.245485+00	2022-01-27 21:26:29.477776+00	6e086081-583f-4ee1-bed3-43200fc66cb3	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	20220103ed93	b4d2a158-91ad-4070-9244-5893a9114f20	\N	\N
69e26872-4ba6-4220-941f-6d390d481583	\N	CP	-3000	-3000	2022-02-04	produto 2	0	CONTABIL		1	3000	3000	0	REALIZADA	COMPRA	PRODUTOS	\N	3	AQUISIÇÃO DE BENS	3	0	2022-02-04 03:54:21.417308+00	2022-02-04 04:38:31.646609+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	Compra de Produtos	20220204e737	44fe4817-40d1-4320-921f-8f9de3ea3b94	\N	\N
cf6d181a-fd27-4acb-a40d-578e1b46e285	\N	EP	0	0	2022-02-04	produto 2 - ENTREGA	0	CONTABIL		1	0	3000	3	REALIZADA	COMPRAS PARA VENDA	PRODUTOS	\N	0	MOVIMENTACAO DE ESTOQUE	0	0	2022-02-04 03:54:21.430493+00	2022-02-04 04:38:38.292843+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	Compra de Produtos	20220204e737	44fe4817-40d1-4320-921f-8f9de3ea3b94	\N	\N
34b0a8d7-8458-464f-97b2-0583ccbffeae	\N	RV	0	-80	2022-02-04	asdf - RECEB. 1/1	2000	FINANCEIRA		1	80	0	0	ATRASADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	80	2022-02-04 03:53:14.806675+00	2022-02-04 03:53:14.806685+00	251baf5c-fe8d-4c2b-98b9-3ab23af4b07c	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Venda de Milhas	20220204028f	1266c9c8-1e17-4139-a2dd-3a0cfcd78d5a	\N	\N
7b60f47c-4c23-439e-b926-b5cda69d1ec0	\N	SM	39.37	0	2022-01-24	dawdw - ENVIO	1000	CONTABIL		1	222.8	\N	-1000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-1000	MOVIMENTACAO DE ESTOQUE	-1000	0	2022-01-24 21:26:35.583612+00	2022-02-18 20:31:47.799649+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	20220124f205	0ccff5c6-c72b-4238-a5c2-8f4dde0a6113	2022-02-05	\N
da164312-7285-4aa1-b975-60f79ff7d5aa	\N	EM	-300	-300	2022-02-21	TESTE CRON	10000	CONTABIL		1	300	300	10000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	10000	MOVIMENTACAO DE ESTOQUE	10000	0	2022-01-12 01:18:01.459447+00	2022-02-21 13:55:40.246852+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	20220111dbfe	7530d2f3-3f12-438b-a027-39474c7af581	\N	\N
d30ed5c9-9734-4f2f-8c72-b65cbfc567c3	\N	SM	3.0	0	2022-03-17	Emissão avulsa de passagem	\N	CONTABIL	\N	\N	\N	\N	-300.0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-300.0	MOVIMENTACAO DE ESTOQUE	-300.0	0	2022-03-18 02:38:14.318445+00	2022-03-18 02:38:14.318465+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	Uso Próprio de Milhas	20220317052f	ac68aeb3-b38c-4b54-a40e-f5f83edbf552	\N	\N
dc3ff64e-4cd5-4613-bc1d-3189a7ae74f6	\N	VM	80	80	2022-02-04	asdf	2000	CONTABIL		1	80	0	-2000.0	REALIZADA	COMPRA	MILHAS	\N	-2000	ALIENAÇÃO DE BENS	-2000	0	2022-02-04 03:53:14.797273+00	2022-03-18 23:01:22.758231+00	251baf5c-fe8d-4c2b-98b9-3ab23af4b07c	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Venda de Milhas	20220204028f	1266c9c8-1e17-4139-a2dd-3a0cfcd78d5a	\N	\N
86132711-6edb-419b-a132-9fd3623091ba	\N	VM	120	120	2022-02-04	asdf	5000	CONTABIL		1	120	0	-1000.0	REALIZADA	COMPRA	MILHAS	\N	-5000	ALIENAÇÃO DE BENS	-5000	0	2022-02-04 03:52:49.435622+00	2022-03-18 23:02:09.066265+00	097ffcce-ba20-4144-8172-8026f35b8c21	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Venda de Milhas	20220204d56c	d9a7738e-1a5a-4770-bd54-5a2a2770b337	\N	\N
5dc769cf-9c5e-44cc-8197-2a6b7f8007fd	\N	SM	0	0	2022-02-04	asdfgsdg	1000	CONTABIL		\N	\N	\N	-1000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-1000	MOVIMENTACAO DE ESTOQUE	-1000	0	2022-02-04 04:03:28.658864+00	2022-02-04 04:16:41.100338+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Uso Próprio de Milhas	20220204b932	35aa9c7b-ae42-490f-b575-1243a7ab0c9d	\N	\N
2a75c57b-9121-47bf-8394-e8ec84025b9a	\N	SM	58.2	0	2022-02-21	ddwdw - ENVIO	222	CONTABIL	dawdw	\N	\N	\N	-222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-222	\N	-222	0	2022-02-17 09:51:21.184795+00	2022-02-21 23:53:22.364846+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência entre Programas com Bônus	20220217e339	c8d5e19c-4faa-4b99-8d7e-c5abcec9ce3e	\N	\N
2c566108-4ad6-486c-8280-ee6d82d16c91	\N	PV	0	110	2022-02-21	TESTE - PAG 1/1	2000	FINANCEIRA		1	110	\N	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-110	2022-02-05 18:40:51.480735+00	2022-02-21 23:53:50.339876+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	20220205ed8d	6a0e9eb9-4e44-443a-8e09-38f15b48671d	2022-03-05	\N
4c68e979-d4ee-4cd2-a20a-6d996e7b5570	\N	SM	-7.78210116731514	0	2022-02-04	Emissão avulsa de passagem	\N	CONTABIL	\N	\N	\N	\N	-1000.0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-1000.0	MOVIMENTACAO DE ESTOQUE	-1000.0	0	2022-02-04 04:21:31.835964+00	2022-02-04 04:21:31.835981+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Uso Próprio de Milhas	202202040759	f98c9557-2238-469b-b4a9-1d019d2fa0fb	\N	\N
3c6f56d8-bb88-463b-aafe-30460b2e5c48	\N	VP	1500	1500	2022-02-04	produto 1 - VENDA	0	CONTABIL		1	1500	0	0	ATRASADA	VENDA	PRODUTOS	\N	-1	ALIENAÇÃO DE BENS	1	0	2022-02-04 03:55:15.634007+00	2022-02-04 03:55:15.634017+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	Venda de Produtos	202202040a7d	b1a58450-7802-4f3c-b044-f7b1468311b6	2022-02-04	\N
7ff086fb-ac28-45e3-b381-25185d03b5c2	\N	RV	0	-1500	2022-02-04	produto 1 - RECEB 1/1	0	FINANCEIRA		1	1500	0	0	ATRASADA	SAÍDA/DÉBITO/EXPIRAÇÃO	\N	\N	0	RECEITAS/ENTRADAS	0	1500	2022-02-04 03:55:15.636874+00	2022-02-04 03:55:15.636883+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	Venda de Produtos	202202040a7d	b1a58450-7802-4f3c-b044-f7b1468311b6	2022-02-04	\N
4e605be6-5ef4-4b51-bf04-795fae7f72cc	\N	SP	0	0	2022-02-04	produto 1 - ENTREGA	0	CONTABIL		1	0	0	-1	ATRASADA	SAÍDA/DÉBITO/EXPIRAÇÃO	PRODUTOS	\N	0	MOVIMENTACAO DE ESTOQUE	0	0	2022-02-04 03:55:15.639638+00	2022-02-04 03:55:15.639648+00	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	Venda de Produtos	202202040a7d	b1a58450-7802-4f3c-b044-f7b1468311b6	2022-02-04	\N
5b0661cf-565e-4281-bbdf-d1ed2886d450	\N	AC	\N	\N	2022-02-01	Aviso de check-in passageiro 1	\N	OPERACIONAL	\N	\N	\N	\N	\N	ATRASADA	COMPROMISSO/TAREFA	\N	\N	\N	AGENDAMENTO	\N	\N	2022-02-04 04:21:31.842618+00	2022-02-04 04:21:31.842631+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Agendamento de Compromisso	202202040759	9a3155a9-712d-4f43-a251-c5222afe78bb	\N	\N
b9e26ee9-ca83-4b24-9999-5f4c04abc4f2	\N	PV	0	0	2022-02-21	dwdw - PAG 1/1		FINANCEIRA		1	0	0	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	0	2022-02-11 14:48:37.963588+00	2022-02-21 23:53:50.362992+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	a22633f0-295c-455c-abb1-1c5cf33caf8c	1	Compra de Milhas	20220211ff3c	79dc0821-821e-4df9-87cb-6baf5be12827	\N	\N
052015ec-7959-43ef-9f81-5c8b8978521d	\N	SM	7.925400000000001	0	2022-02-17	Emissão avulsa de passagem	\N	CONTABIL	\N	\N	\N	\N	-222.0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-222.0	MOVIMENTACAO DE ESTOQUE	-222.0	0	2022-02-17 11:05:01.128177+00	2022-02-17 11:05:01.128203+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Uso Próprio de Milhas	202202174a02	82dfc5fd-d13b-452d-989b-ad04f6014cb2	\N	\N
236e0958-737f-4aab-aea2-f9fa926df6ba	\N	RV	0	-22	2022-02-17	dwdw - PAG 1/1	222	FINANCEIRA		1	22	0	0	REALIZADA	VENDA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	22	2022-02-17 10:03:53.015172+00	2022-02-17 10:05:12.042434+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda Passagens c/ Milhas	20220217474c	1c3d1d4c-2f32-4c96-a8b1-3f4302e9ac65	\N	\N
23fc64ce-c26d-4025-9232-03b707964800	\N	VM	22	22	2022-02-17	dwdw	222	CONTABIL		1	22	0	-31.0	REALIZADA	VENDA	MILHAS	\N	-222	ALIENAÇÃO DE BENS	-222	0	2022-02-17 10:03:53.007023+00	2022-02-17 10:25:23.396142+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda Passagens c/ Milhas	20220217474c	1c3d1d4c-2f32-4c96-a8b1-3f4302e9ac65	\N	\N
6ca5ecc1-7a6b-4fe1-b70c-c96c2d0ef4c4	\N	SM	-71.4	0	2022-02-21	TESTE - ENVIO	2000	CONTABIL	TESTE	\N	\N	\N	-2000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-2000	\N	-2000	0	2022-02-05 18:42:49.836182+00	2022-02-21 23:51:52.937862+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência entre Programas	202202058dde	ed32f895-6d48-43e8-ad1e-e70bf1ccdeea	\N	\N
b35f00b0-4326-4fb7-bb8b-359e8a04ee22	\N	EM	-181.4	-110	2022-02-21	TESTE - RECEBIMENTO	2000	CONTABIL		1	110	\N	2000	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	2000	MOVIMENTACAO DE ESTOQUE	2000	0	2022-02-05 18:40:51.473157+00	2022-02-21 23:51:52.95849+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	20220205ed8d	6a0e9eb9-4e44-443a-8e09-38f15b48671d	2022-03-05	\N
bd9fd0ac-8063-4bc2-a04f-124c3f9ae655	\N	SM	71.4	0	2022-02-21	TESTE - ENVIO	2000	CONTABIL		1	110	\N	-2000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-2000	MOVIMENTACAO DE ESTOQUE	-2000	0	2022-02-05 18:40:51.464002+00	2022-02-21 23:51:52.974081+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	20220205ed8d	6a0e9eb9-4e44-443a-8e09-38f15b48671d	2022-03-05	\N
bfccf522-6cec-46ae-a306-958ec04fd600	\N	SM	71.4	0	2022-02-21	dawdawd - ENVIO	2000	CONTABIL	adwdw	\N	\N	\N	-2000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-2000	\N	-2000	0	2022-02-05 19:53:57.984165+00	2022-02-21 23:51:52.99038+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência entre Programas	20220205d818	59c48d29-383a-4d1f-95ca-4366fb470bfc	\N	\N
852a2b86-423f-4536-8498-dee8661bfc53	\N	SM	7.925400000000001	0	2022-02-18	Emissão avulsa de passagem	\N	CONTABIL	\N	\N	\N	\N	-222.0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-222.0	MOVIMENTACAO DE ESTOQUE	-222.0	0	2022-02-17 11:05:42.457511+00	2022-02-17 11:05:42.457527+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Uso Próprio de Milhas	20220217103c	18921a0d-2554-4e0b-85b9-1768c00886e2	\N	\N
f4040984-8a5c-4502-8d78-e00087e2708e	\N	SM	4.370818815331011	0	2022-03-17	Emissão avulsa de passagem	\N	CONTABIL	\N	\N	\N	\N	-30.0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-30.0	MOVIMENTACAO DE ESTOQUE	-30.0	0	2022-03-18 02:39:52.071533+00	2022-03-18 02:39:52.071552+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Uso Próprio de Milhas	20220317084b	a0d1e580-81fc-4c3b-9ced-6b1ee3c96038	\N	\N
43a7bab8-7421-4a6b-8caf-4263b46d5307	\N	EM	-22	-22	2022-05-02	dawdw - MÊS 4/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.888869+00	2022-02-17 11:54:39.888885+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
70d62892-c4c0-470a-9f64-2fcb587ed0ae	\N	EM	-22	-22	2022-06-02	dawdw - MÊS 5/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.895051+00	2022-02-17 11:54:39.895073+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
01bc8b96-ff91-40f8-8bf2-088ec191b200	\N	EM	-22	-22	2022-07-02	dawdw - MÊS 6/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.901397+00	2022-02-17 11:54:39.901412+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
43b9176e-f030-424d-a6e3-d62ae11c78f9	\N	EM	-22	-22	2022-08-02	dawdw - MÊS 7/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.908067+00	2022-02-17 11:54:39.908089+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
8cf5a5d7-8af0-4d8b-9be3-a358b3d7b8e3	\N	EM	-22	-22	2022-09-02	dawdw - MÊS 8/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.914651+00	2022-02-17 11:54:39.914672+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
9f21717e-315f-4c56-92de-2a3c000ba261	\N	EM	-22	-22	2022-10-02	dawdw - MÊS 9/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.92174+00	2022-02-17 11:54:39.921756+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
916e137d-391b-4f83-bb31-7c41a13b09ac	\N	EM	-22	-22	2022-11-02	dawdw - MÊS 10/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.928016+00	2022-02-17 11:54:39.928031+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
3ed25a44-7f6f-4c8a-83f9-0a1c7eb7f059	\N	EM	-22	-22	2022-12-02	dawdw - MÊS 11/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.934218+00	2022-02-17 11:54:39.934233+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
fd2fbc7d-7eba-4740-acc4-db3bd9a29e95	\N	EM	-22	-22	2023-01-02	dawdw - MÊS 12/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.940184+00	2022-02-17 11:54:39.9402+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
12cc746e-2c9c-43ed-8738-934a1a314a4f	\N	PV	0	22	2022-05-05	dawdw - PAG 3/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:39.959043+00	2022-02-17 11:54:39.95906+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
eab8535f-6a72-4e66-a115-a21550925dfd	\N	PV	0	22	2022-06-05	dawdw - PAG 4/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:39.965169+00	2022-02-17 11:54:39.965188+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
6a233084-e7c9-4a1f-88a3-e6f5a9c4e3bb	\N	PV	0	22	2022-07-05	dawdw - PAG 5/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:39.971627+00	2022-02-17 11:54:39.971643+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
1c3304bc-279f-497a-9819-07e37ce1cebd	\N	PV	0	22	2022-08-05	dawdw - PAG 6/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:39.977638+00	2022-02-17 11:54:39.977653+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
0600d087-783c-441e-ab0a-e8980a031ed6	\N	PV	0	22	2022-09-05	dawdw - PAG 7/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:39.983849+00	2022-02-17 11:54:39.983866+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
7f96f3d7-6bf0-417b-97d2-3fb2cd4a85a2	\N	PV	0	22	2022-10-05	dawdw - PAG 8/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:39.992073+00	2022-02-17 11:54:39.992097+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
d79e033d-d1f8-4766-9cb1-e1ed962be017	\N	PV	0	22	2022-11-05	dawdw - PAG 9/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:40.000137+00	2022-02-17 11:54:40.00016+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
dc930bd8-83d8-4a0a-a183-7d1dba1257ee	\N	PV	0	22	2022-12-05	dawdw - PAG 10/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:40.008287+00	2022-02-17 11:54:40.00831+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
eb942664-b803-4666-97ef-d802c03c6961	\N	PV	0	22	2023-01-05	dawdw - PAG 11/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:40.01608+00	2022-02-17 11:54:40.016104+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
509fa787-f049-441c-9fa8-5f852ed8ac45	\N	PV	0	22	2023-02-05	dawdw - PAG 12/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:40.024194+00	2022-02-17 11:54:40.024217+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
d8966363-6e77-409c-9fa7-0f42e3b491e6	\N	EM	-22	-22	2022-02-21	dawdw - MÊS 2/12	222	CONTABIL		1	0	22	222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.87117+00	2022-02-21 23:53:50.23768+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
fb4305f6-5bb7-4450-8126-919bdbe81ded	\N	SM	103795152327655.77	0	2022-03-18	Emissão avulsa de passagem	\N	CONTABIL	\N	\N	\N	\N	-1000.0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-1000.0	MOVIMENTACAO DE ESTOQUE	-1000.0	0	2022-03-18 23:00:23.378338+00	2022-03-18 23:00:23.378362+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	0900267f-61e3-492d-98c4-160050d8df27	\N	1	Uso Próprio de Milhas	202203183dd9	62ef9354-70aa-41c6-b54a-d37eafd81105	\N	\N
fa453bb4-1951-4c20-aaf8-75b22c346579	\N	EM	-222	-222	2022-04-22	dwdw - MÊS 3/12	22	CONTABIL		1	0	222	22	ATRASADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.219708+00	2022-02-17 12:01:55.219726+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
b2e9694b-0764-4412-a99f-a982e93df4fc	\N	EM	-222	-222	2022-05-22	dwdw - MÊS 4/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.226104+00	2022-02-17 12:01:55.226121+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
1ffb7d89-00d5-4723-9029-38bd1db19dd9	\N	EM	-222	-222	2022-06-22	dwdw - MÊS 5/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.232921+00	2022-02-17 12:01:55.232945+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
32074863-942b-49a7-8145-bc8f46a4234c	\N	EM	-222	-222	2022-07-22	dwdw - MÊS 6/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.239941+00	2022-02-17 12:01:55.239959+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
a982b8b3-1536-45c0-8c07-795d43a7fc1a	\N	EM	-222	-222	2022-08-22	dwdw - MÊS 7/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.246271+00	2022-02-17 12:01:55.246289+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
f4e65562-1094-4178-a3d0-6d9c0a58d29b	\N	EM	-222	-222	2022-09-22	dwdw - MÊS 8/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.252391+00	2022-02-17 12:01:55.252409+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
d7d12a1c-135b-4373-9801-beb669e5a5ff	\N	EM	-222	-222	2022-10-22	dwdw - MÊS 9/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.259643+00	2022-02-17 12:01:55.259667+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
f07e907b-96dd-4e81-9bc7-32e9bd650f96	\N	EM	-222	-222	2022-11-22	dwdw - MÊS 10/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.267935+00	2022-02-17 12:01:55.267958+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
1b6d9bef-6ae5-4fe1-9d9f-312c46acde22	\N	EM	-222	-222	2022-12-22	dwdw - MÊS 11/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.274584+00	2022-02-17 12:01:55.274601+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
832a0ce3-5678-4756-926d-c6fdec03433b	\N	EM	-222	-222	2023-01-22	dwdw - MÊS 12/12	22	CONTABIL		1	0	222	22	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.282052+00	2022-02-17 12:01:55.282069+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
d2c8302e-3705-4701-86c6-8d2e286c8b32	\N	PV	0	222	2022-05-05	dwdw - PAG 3/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.304296+00	2022-02-17 12:01:55.304314+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
d47e98dc-8682-47d6-9dbb-b249cc96d756	\N	PV	0	222	2022-06-05	dwdw - PAG 4/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.311989+00	2022-02-17 12:01:55.312007+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
b8028573-59a2-4aaa-b93e-9cb863657eaa	\N	PV	0	222	2022-07-05	dwdw - PAG 5/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.318403+00	2022-02-17 12:01:55.318419+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
e1329859-d399-453d-9b8e-6c270b1ff2ac	\N	PV	0	222	2022-08-05	dwdw - PAG 6/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.324367+00	2022-02-17 12:01:55.324385+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
07df48ff-abfd-435d-a2de-bc03407c6244	\N	PV	0	222	2022-09-05	dwdw - PAG 7/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.330868+00	2022-02-17 12:01:55.330885+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
2678c6cf-f889-4027-89b3-55c7057abbc4	\N	PV	0	222	2022-10-05	dwdw - PAG 8/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.34347+00	2022-02-17 12:01:55.343487+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
81b38cce-401c-470d-a517-1218b53c58a2	\N	PV	0	222	2022-11-05	dwdw - PAG 9/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.34997+00	2022-02-17 12:01:55.349988+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
55b1b2f8-d1a8-4eb4-92c9-6c1c9bd60d68	\N	PV	0	222	2022-12-05	dwdw - PAG 10/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.356181+00	2022-02-17 12:01:55.356198+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
2905353a-0070-404e-9f4d-95aed3d4fec6	\N	EM	0	0	2022-02-21	dawdw - BÔNUS	222	CONTABIL		1	0	0	0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	0	MOVIMENTACAO DE ESTOQUE	4.44	0	2022-02-17 11:54:40.040919+00	2022-02-21 23:53:50.19336+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
67ffd0d2-c945-4825-87c7-e23fe9862116	\N	PV	0	222	2022-02-21	dwdw - PAG 1/12	22	FINANCEIRA		1	0	222	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.288505+00	2022-02-21 23:53:50.261058+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
cf99cee4-95c9-436e-83e0-cefe094808e9	\N	PV	0	222	2023-01-05	dwdw - PAG 11/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.362876+00	2022-02-17 12:01:55.362893+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
bc5731ad-a6ed-4a6e-9765-3d5e9008deec	\N	PV	0	222	2023-02-05	dwdw - PAG 12/12	22	FINANCEIRA		1	0	222	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.369592+00	2022-02-17 12:01:55.36961+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
d9563b3f-4896-4ca7-8100-e9271de33dca	\N	EM	-300	0	2022-03-31	ac	10000	CONTABIL		\N	\N	\N	10000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	10000	MOVIMENTACAO DE ESTOQUE	10000	0	2022-03-31 13:43:12.912347+00	2022-03-31 13:43:12.912371+00	\N	dc437656-4d42-4d5d-a345-d50f90aead85	0900267f-61e3-492d-98c4-160050d8df27	\N	3	Acúmulo de Milhas	202203310164	8f976963-8997-4bbf-b34a-9ecfc356dbd1	\N	\N
3db21822-67cc-4622-b265-feeadbb7f3b0	\N	EM	-22	-22	2022-04-22	dawdw - MÊS 3/12	222	CONTABIL		1	0	22	222	ATRASADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.334214+00	2022-02-17 12:03:51.33423+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
8b5affc1-58f0-4267-b078-fe470e458eb4	\N	EM	-22	-22	2022-05-22	dawdw - MÊS 4/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.340524+00	2022-02-17 12:03:51.340541+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
60147634-5389-44fe-9c25-cc5ff9f8f662	\N	EM	-22	-22	2022-06-22	dawdw - MÊS 5/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.346733+00	2022-02-17 12:03:51.346758+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
1a7235c3-6d26-490e-9a7e-03461a5c0c07	\N	EM	-22	-22	2022-07-22	dawdw - MÊS 6/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.352983+00	2022-02-17 12:03:51.352998+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
a9130945-1c5b-4630-91c2-9f306d26d8a7	\N	EM	-22	-22	2022-08-22	dawdw - MÊS 7/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.359046+00	2022-02-17 12:03:51.359063+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
332a5d4e-5a80-47d6-9b1c-e2764c84a2b4	\N	EM	-22	-22	2022-09-22	dawdw - MÊS 8/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.364946+00	2022-02-17 12:03:51.364962+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
b89f77c3-5fec-4f7e-ae2d-022bc314a371	\N	EM	-22	-22	2022-10-22	dawdw - MÊS 9/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.371035+00	2022-02-17 12:03:51.371051+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
a5b75cbc-5ef7-49f6-a109-a309db827be6	\N	EM	-22	-22	2022-11-22	dawdw - MÊS 10/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.377495+00	2022-02-17 12:03:51.377511+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
1dc1defa-f19e-49fb-ad14-0c21193fc9df	\N	EM	-22	-22	2022-12-22	dawdw - MÊS 11/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.383639+00	2022-02-17 12:03:51.383654+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
70652294-98db-4907-b912-6991e2c28ff9	\N	EM	-22	-22	2023-01-22	dawdw - MÊS 12/12	222	CONTABIL		1	0	22	222	AGENDADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.390179+00	2022-02-17 12:03:51.390196+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
05ed844b-560c-49d4-b4b2-c989074391ba	\N	PV	0	22	2022-05-05	dawdw - PAG 3/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.409976+00	2022-02-17 12:03:51.409993+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
e4c11a40-92a6-40bd-a411-7fd98b6834d7	\N	PV	0	22	2022-06-05	dawdw - PAG 4/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.416499+00	2022-02-17 12:03:51.416516+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
b81a71a3-00ef-45ac-8652-ce54c92c53ff	\N	PV	0	22	2022-07-05	dawdw - PAG 5/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.423055+00	2022-02-17 12:03:51.423077+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
32bfd8bf-b542-487d-8195-eed4a75aba7c	\N	PV	0	22	2022-08-05	dawdw - PAG 6/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.429583+00	2022-02-17 12:03:51.429601+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
b7d48be2-b2b9-468d-a053-e9583fed456a	\N	PV	0	22	2022-09-05	dawdw - PAG 7/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.436517+00	2022-02-17 12:03:51.436534+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
21891497-0c63-4bee-9845-141cffe0f01a	\N	PV	0	22	2022-10-05	dawdw - PAG 8/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.443063+00	2022-02-17 12:03:51.44308+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
f25ed264-ab2b-4f36-867e-b035a4dadc16	\N	PV	0	22	2022-11-05	dawdw - PAG 9/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.449606+00	2022-02-17 12:03:51.449626+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
c131daab-28b6-4993-80d3-3c3230acde7c	\N	PV	0	22	2022-12-05	dawdw - PAG 10/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.456405+00	2022-02-17 12:03:51.456422+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
18b9f874-11b3-4412-982e-f9482e4fe435	\N	PV	0	22	2022-02-21	dawdw - PAG 1/12	222	FINANCEIRA		1	0	22	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.396333+00	2022-02-21 23:53:50.284396+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
92cacdc4-7b4d-4432-ac2b-90a8dd759847	\N	EM	0	0	2022-02-21	dwdw - BÔNUS	22	CONTABIL		1	0	0	0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	0	MOVIMENTACAO DE ESTOQUE	4.84	0	2022-02-17 12:01:55.382868+00	2022-02-21 23:53:50.411686+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
8e2ac7a0-54a8-418a-bcac-58c7fae505e6	\N	PV	0	22	2023-01-05	dawdw - PAG 11/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.463666+00	2022-02-17 12:03:51.463683+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
eb238f7f-41bd-4bc7-a661-b1916d0fa83e	\N	PV	0	22	2023-02-05	dawdw - PAG 12/12	222	FINANCEIRA		1	0	22	0	AGENDADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.470523+00	2022-02-17 12:03:51.47054+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
5e87b6e0-6b8e-4300-af7a-195ebf7d51db	\N	VM	80	80	2022-03-31	v1	2000	CONTABIL		1	80	0	0	REALIZADA	VENDA	MILHAS	\N	-2000	ALIENAÇÃO DE BENS	-2000	0	2022-03-31 13:43:52.916387+00	2022-03-31 13:43:52.916419+00	097ffcce-ba20-4144-8172-8026f35b8c21	dc437656-4d42-4d5d-a345-d50f90aead85	0900267f-61e3-492d-98c4-160050d8df27	\N	3	Venda de Milhas	202203319089	80c4b80c-e427-4eb8-ab8d-ae1be28535ee	\N	\N
c616da2c-926b-44ba-8357-c3e3dded7463	\N	RV	0	-80	2022-03-31	v1 - RECEB. 1/1	2000	FINANCEIRA		1	80	0	0	ATRASADA	VENDA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	80	2022-03-31 13:43:52.93384+00	2022-03-31 13:43:52.933871+00	097ffcce-ba20-4144-8172-8026f35b8c21	dc437656-4d42-4d5d-a345-d50f90aead85	0900267f-61e3-492d-98c4-160050d8df27	\N	3	Venda de Milhas	202203319089	80c4b80c-e427-4eb8-ab8d-ae1be28535ee	\N	\N
dc90c9a6-38be-4de6-9b21-3e98d0fc88e8	\N	EM	0	0	2022-02-21	ddw - BÔNUS	222	CONTABIL		1	2	2	48.84	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	48.84	MOVIMENTACAO DE ESTOQUE	48.84	0	2022-02-17 12:31:41.263323+00	2022-02-21 23:53:50.215688+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas com Recorrência Mensal e Bônus	20220217509f	a566ee22-8a9b-453c-a441-262d66ef0b54	\N	\N
a199d7e6-7b0e-4105-87c2-4cd968ca0db7	\N	PV	0	22	2022-02-21	dwdw - PAG 1/1	222	FINANCEIRA		1	22	0	0	REALIZADA	DESPESAS COMERCIAIS	TAXAS/IMPOSTOS C/VENDAS	\N	0	MOVIMENTACAO DE ESTOQUE	0	-22	2022-02-17 12:09:43.300572+00	2022-02-21 23:53:50.313656+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Venda Passagens c/ Milhas e Dinheiro	20220217dd80	78999572-1574-444e-8755-a26cc7197494	\N	\N
cf9072c6-1da3-4f86-8fca-497443e1f347	\N	PV	0	2	2022-02-21	ddw - PAG 1/1	222	FINANCEIRA		1	2	2	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-2	2022-02-17 12:31:41.251026+00	2022-02-21 23:53:50.326025+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas com Recorrência Mensal e Bônus	20220217509f	a566ee22-8a9b-453c-a441-262d66ef0b54	\N	\N
0c716749-9001-49b3-b1ca-4fbf17e2e78f	\N	EM	0	0	2022-02-21	dawdw - BÔNUS	222	CONTABIL		1	0	0	0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	0	MOVIMENTACAO DE ESTOQUE	48.84	0	2022-02-17 12:03:51.48395+00	2022-02-21 23:53:50.450772+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
c8e1caaa-0dd7-4213-b568-7308e452e211	\N	EM	0	0	2022-02-21	dawdw - BÔNUS	222	CONTABIL		1	0	0	0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	0	MOVIMENTACAO DE ESTOQUE	48.84	0	2022-02-17 12:03:51.477002+00	2022-02-21 23:51:53.070331+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
640ae564-0699-4be3-a714-739eedd2e114	\N	VM	22	22	2022-02-21	dwdw	222	CONTABIL		1	44	0	0	REALIZADA	VENDA	PRODUTOS	\N	-222	ALIENAÇÃO DE BENS	-222	0	2022-02-17 12:09:43.277929+00	2022-02-21 23:51:53.083926+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Venda Passagens c/ Milhas e Dinheiro	20220217dd80	78999572-1574-444e-8755-a26cc7197494	\N	\N
170b5598-1ab7-4117-a05f-adfdea73aab7	\N	SM	0	0	2022-02-21	dawd	222	CONTABIL	wdwd	\N	\N	\N	-222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-222	MOVIMENTACAO DE ESTOQUE	-222	0	2022-02-17 09:56:31.330331+00	2022-02-21 23:51:53.099188+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Uso Próprio de Milhas	20220217d4ee	eec81f8e-078e-477e-af6c-bdfc4cb7faca	\N	\N
fde111ea-6cba-4655-9f03-25d667ac3834	\N	EM	-22	-22	2022-02-21	dawdw - MÊS 1/12	222	CONTABIL		1	0	22	222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.321244+00	2022-02-21 23:51:53.120823+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
fb65e9b7-d95d-41fb-a530-a304f2cb9bc0	\N	RV	0	-22	2022-02-21	dwdw - RECEB 1/1	222	FINANCEIRA		1	44	0	0	REALIZADA	VENDA	PRODUTOS	\N	0	RECEITAS/ENTRADAS	0	44	2022-02-17 12:09:43.287831+00	2022-02-21 23:51:53.133849+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Venda Passagens c/ Milhas e Dinheiro	20220217dd80	78999572-1574-444e-8755-a26cc7197494	\N	\N
4ea243a0-b034-4060-aaff-c760b47fadf5	\N	RV	0	-22	2022-02-21	dwdw - RECEB. 1/1	22	FINANCEIRA		1	22	0	0	REALIZADA	COMPRA	MILHAS	\N	0	RECEITAS/ENTRADAS	0	22	2022-02-17 10:02:51.909423+00	2022-02-21 23:51:53.146072+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	2022021731a5	3608e65e-3e51-4adf-aa6b-1d3829f324ab	\N	\N
d2956b40-8f73-4489-953a-4f02e2367aa1	\N	PV	0	22	2022-02-21	dwdw - PAG 1/1	2222	FINANCEIRA		1	22	22	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-18 20:20:28.961712+00	2022-02-21 23:53:50.249764+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	2	Compra de Milhas com Bônus	202202182774	49750390-bf16-4f89-aacb-856833611de5	\N	\N
8189cced-481c-42c6-bdba-f9d3425ab5d1	\N	PV	0	22	2022-02-21	12323 - PAG 1/1	\N	FINANCEIRA		\N	-22	22	0	REALIZADA	COMPRAS PARA VENDA	PRODUTOS	FEDERAL	0	RECEITAS/ENTRADAS	0	-22	2022-02-18 20:57:02.110189+00	2022-02-21 23:53:50.291126+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Despesas Diversas	202202181a68	d7ee6863-d1d9-4402-8681-cee756d3516f	2022-03-05	\N
7b1e6a0c-e494-42df-97d4-9e757364663b	\N	PV	0	22	2022-02-21	22 - PAG 1/1	123	FINANCEIRA	dawdwdw	1	22	\N	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-18 20:35:18.31186+00	2022-02-21 23:53:50.301758+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros com Bônus	20220218e7a5	cdf62f44-f0d1-4e0d-ab69-c3c4d88e1be1	2022-03-05	\N
d0a5187c-499f-4531-a5b9-718457857a2e	\N	PV	0	2	2022-02-21	2323 - PAG 1/1	123	FINANCEIRA		1	2	\N	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-2	2022-02-18 20:33:25.086443+00	2022-02-21 23:53:50.351234+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	202202184157	8625a30e-430e-4f46-bee4-eb90fafc0df8	2022-03-05	\N
ce477fd9-5b12-486d-b6e9-7812c1eb2867	\N	RV	0	0	2022-02-21	awdwdw - RECEB 2/2	\N	FINANCEIRA	dawdw	\N	\N	\N	0	REALIZADA	RECEITAS DIVERSAS	\N	\N	0	RECEITAS/ENTRADAS	0	22	2022-02-18 20:56:45.819009+00	2022-02-21 23:53:50.369898+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Receitas Diversas	20220218cca9	765674a7-00fc-409e-afb7-f1634b11df8c	\N	\N
60c5fb99-3711-481b-83a5-f38e8bc7b120	\N	EM	0	0	2022-02-21	ddw - BÔNUS	222	CONTABIL		1	2	2	48.84	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	48.84	MOVIMENTACAO DE ESTOQUE	48.84	0	2022-02-17 12:31:41.257205+00	2022-02-21 23:51:53.206269+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas com Recorrência Mensal e Bônus	20220217509f	a566ee22-8a9b-453c-a441-262d66ef0b54	\N	\N
545ff69c-b947-4975-937e-1c17a9456f0c	\N	SM	0	0	2022-02-21	dawd	222	CONTABIL	wdwd	\N	\N	\N	-222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-222	MOVIMENTACAO DE ESTOQUE	-222	0	2022-02-17 09:57:55.144761+00	2022-02-21 23:53:22.331237+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Expiração/Uso Próprio de Milhas	20220217f0d3	efed0e38-cc50-4763-9a35-30eb7bdb1bb5	\N	\N
eb7c055a-2517-4644-844a-f53c08e8a9de	\N	SM	32.25	0	2022-02-21	2323 - ENVIO	123	CONTABIL		1	2	\N	-123	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-123	MOVIMENTACAO DE ESTOQUE	-123	0	2022-02-18 20:33:25.070409+00	2022-02-21 23:53:22.347645+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	202202184157	8625a30e-430e-4f46-bee4-eb90fafc0df8	2022-03-05	\N
5b9ad63f-3bde-43ec-8a7c-6d698bf713a2	\N	EM	-22	-22	2022-02-21	dwdw	2222	CONTABIL		1	22	22	2222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	2222	MOVIMENTACAO DE ESTOQUE	2222	0	2022-02-18 20:20:28.954591+00	2022-02-21 23:53:22.384325+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	2	Compra de Milhas com Bônus	202202182774	49750390-bf16-4f89-aacb-856833611de5	\N	\N
8ef86ac4-d59e-4646-8fc9-212d5a86132e	\N	SM	324.13	0	2022-02-21	22 - ENVIO	22	CONTABIL	d2d	\N	\N	\N	-22	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-22	\N	-22	0	2022-02-18 20:50:07.412033+00	2022-02-21 23:53:22.400933+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	Transferência entre Programas com Defasagem	2022021837b1	96c2a704-6f6e-4980-a5e8-b0a86bd1a1ad	\N	\N
788c64aa-2646-45bc-9bf6-99f87868e8d9	\N	EM	-34.25	-2	2022-02-21	2323 - RECEBIMENTO	123	CONTABIL		1	2	\N	123	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	123	MOVIMENTACAO DE ESTOQUE	123	0	2022-02-18 20:33:25.079747+00	2022-02-21 23:53:22.419692+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros	202202184157	8625a30e-430e-4f46-bee4-eb90fafc0df8	2022-03-05	\N
4175bda6-c6f2-4bae-8ff1-823dffc6435c	\N	EM	-324.13	0	2022-02-21	22 - ENTRADA	22	CONTABIL	d2d	\N	\N	\N	11	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	11	MOVIMENTACAO DE ESTOQUE	11	0	2022-02-18 20:50:07.419282+00	2022-02-21 23:53:22.44207+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência entre Programas com Defasagem	2022021837b1	96c2a704-6f6e-4980-a5e8-b0a86bd1a1ad	\N	\N
87f97956-4da9-43e2-bb3c-b8ae26145900	\N	EM	-4.39	0	2022-02-21	222 - ENTRADA	123	CONTABIL	222	\N	\N	\N	123	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	123	MOVIMENTACAO DE ESTOQUE	123	0	2022-02-18 20:47:32.54962+00	2022-02-21 23:53:22.460828+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência entre Programas	20220218a21b	250ad667-e2a7-4649-89ec-5c61435f11b0	\N	\N
59b1dea0-4e5d-4c22-9e72-69989554ca02	\N	EM	-1.637	0	2022-02-21	teste - BÔNUS	1000	CONTABIL		\N	\N	\N	100	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	100	MOVIMENTACAO DE ESTOQUE	100	0	2022-01-18 15:32:47.711102+00	2022-02-21 13:55:40.282711+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência Bumerangue	20220118ea54	9d0eb26d-7b75-4817-b4fc-6b1f081a1c67	\N	\N
7a50cd93-10ca-452a-9925-33161e9d0f4c	\N	EM	-14.733	0	2022-02-21	teste - ENTRADA	1000	CONTABIL		\N	\N	\N	1000	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	1000	MOVIMENTACAO DE ESTOQUE	1000	0	2022-01-18 15:32:47.705912+00	2022-02-21 13:55:40.301626+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	Transferência Bumerangue	20220118ea54	9d0eb26d-7b75-4817-b4fc-6b1f081a1c67	\N	\N
7b75bd1b-d93f-4519-880d-6a86e077de84	\N	PV	0	50	2022-02-21	COMPRA 1 - PAG 1/4	20000	FINANCEIRA		4	50	200	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-50	2022-01-03 18:35:57.089382+00	2022-02-21 13:55:40.32231+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	202201032262	cb5830d6-4ad9-4080-9560-52bf62338ada	\N	\N
b45b5528-a4f4-4343-a834-9f6fe06cc35f	\N	PV	0	300	2022-02-21	TESTE CRON - PAG 1/1	10000	FINANCEIRA		1	300	300	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-300	2022-01-12 01:18:01.464432+00	2022-02-21 13:55:40.333876+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	20220111dbfe	7530d2f3-3f12-438b-a027-39474c7af581	\N	\N
8c9aaf0f-9041-4d9c-950d-467ac5edcf1a	\N	SM	16.37	0	2022-02-21	teste - ENVIO	1000	CONTABIL		\N	\N	\N	-1000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-1000	\N	-1000	0	2022-01-18 15:32:47.699017+00	2022-02-21 13:55:40.347575+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência Bumerangue	20220118ea54	9d0eb26d-7b75-4817-b4fc-6b1f081a1c67	\N	\N
f5259f56-2db7-4178-ac7f-167802b73c57	\N	EM	-200	0	2022-02-21	TESTE	10000	CONTABIL		\N	\N	\N	10000	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	10000	MOVIMENTACAO DE ESTOQUE	10000	0	2022-01-22 20:18:26.602055+00	2022-02-21 13:55:40.363669+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Acúmulo de Milhas	20220122b8bd	2a540c73-8dc0-41f5-84be-288ae867aabe	\N	\N
b95144aa-d342-4eaa-a4dd-b465ef9f2510	\N	PV	0	50	2022-02-21	COMPRA 1 - PAG 4/4	20000	FINANCEIRA		4	50	200	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-50	2022-01-03 18:35:57.110109+00	2022-02-21 13:55:40.374523+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas	202201032262	cb5830d6-4ad9-4080-9560-52bf62338ada	\N	\N
1c947cc2-b2be-4848-a656-6dd8322ff1bc	\N	EM	71.4	0	2022-02-21	dawdawd - ENTRADA	2000	CONTABIL	adwdw	\N	\N	\N	2000	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	2000	MOVIMENTACAO DE ESTOQUE	2000	0	2022-02-05 19:53:57.992167+00	2022-02-21 23:51:53.010031+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	Transferência entre Programas	20220205d818	59c48d29-383a-4d1f-95ca-4366fb470bfc	\N	\N
c56bda57-20eb-4a40-8fbf-6f9a0171a320	\N	EM	71.4	0	2022-02-21	TESTE - ENTRADA	2000	CONTABIL	TESTE	\N	\N	\N	2000	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	2000	MOVIMENTACAO DE ESTOQUE	2000	0	2022-02-05 18:42:49.84483+00	2022-02-21 23:51:53.032502+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	Transferência entre Programas	202202058dde	ed32f895-6d48-43e8-ad1e-e70bf1ccdeea	\N	\N
c3723ef3-08dd-4025-bc22-50487f977eb7	\N	EM	0	0	2022-02-21	dwdw		CONTABIL		1	0	0		REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N		MOVIMENTACAO DE ESTOQUE		0	2022-02-11 14:48:37.956249+00	2022-02-21 23:51:53.051287+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	a22633f0-295c-455c-abb1-1c5cf33caf8c	1	Compra de Milhas	20220211ff3c	79dc0821-821e-4df9-87cb-6baf5be12827	\N	\N
5bfdcf31-d988-4651-a8fd-dbe02f1290bf	\N	SM	0	0	2022-02-21	dwd	2222	CONTABIL	wdwd	\N	\N	\N	-2222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-2222	MOVIMENTACAO DE ESTOQUE	-2222	0	2022-02-17 09:53:36.503118+00	2022-02-21 23:51:53.161976+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Uso Próprio de Milhas	202202175c3e	aee12717-baf7-48d6-9647-3245dac0ca00	\N	\N
049cb235-37e9-4425-84c0-8d76f7c338fa	\N	VM	22	22	2022-02-21	dwdw	22	CONTABIL		1	22	0	0	REALIZADA	COMPRA	MILHAS	\N	-22	ALIENAÇÃO DE BENS	-22	0	2022-02-17 10:02:51.892686+00	2022-02-21 23:51:53.174574+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Venda de Milhas	2022021731a5	3608e65e-3e51-4adf-aa6b-1d3829f324ab	\N	\N
c1fba2c3-5429-4975-8533-f45025e10087	\N	CS	-22	-22	2022-02-21	dwdw - TAXAS	222	OPERACIONAL		1	\N	0	0	REALIZADA	CONTRATAÇÃO	TAXAS/IMPOSTOS C/VENDAS	CONTRATANTE	0	AGENDAMENTO	0	0	2022-02-17 12:09:43.2942+00	2022-02-21 23:51:53.186036+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Venda Passagens c/ Milhas e Dinheiro	20220217dd80	78999572-1574-444e-8755-a26cc7197494	\N	\N
3cf47b35-fcbf-4b71-aa18-c606563cb8a5	\N	EM	-222	-222	2022-02-21	dwdw - MÊS 1/12	22	CONTABIL		1	0	222	22	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.205609+00	2022-02-21 23:51:53.234476+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
09d3dc33-5b08-4c10-95dd-30bc8ce7d542	\N	EM	-22	-22	2022-02-21	dawdw - MÊS 1/12	222	CONTABIL		1	0	22	222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.864922+00	2022-02-21 23:51:53.255683+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
e97c8a2f-961c-4ed2-b4fa-6c0c49bff588	\N	EM	0	0	2022-02-21	dawdw - BÔNUS	222	CONTABIL		1	0	0	0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	0	MOVIMENTACAO DE ESTOQUE	4.44	0	2022-02-17 11:54:40.032288+00	2022-02-21 23:51:53.276934+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
89f1080e-f0a4-417e-b21d-3fd7e8ee8b01	\N	EM	0	0	2022-02-21	dwdw - BÔNUS	22	CONTABIL		1	0	0	0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	0	MOVIMENTACAO DE ESTOQUE	4.84	0	2022-02-17 12:01:55.376333+00	2022-02-21 23:51:53.299269+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
2f16a662-3caa-49f9-8a99-4dc74822a2b7	\N	EM	-2	-2	2022-02-21	ddw - MÊS 1/1	222	CONTABIL		1	2	2	222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:31:41.244516+00	2022-02-21 23:51:53.322613+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas com Recorrência Mensal e Bônus	20220217509f	a566ee22-8a9b-453c-a441-262d66ef0b54	\N	\N
a7728965-7310-468f-8533-954ab47712e6	\N	EM	-58.2	0	2022-02-21	ddwdw - ENTRADA	222	CONTABIL	dawdw	\N	\N	\N	222	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 09:51:21.193252+00	2022-02-21 23:51:53.344655+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência entre Programas com Bônus	20220217e339	c8d5e19c-4faa-4b99-8d7e-c5abcec9ce3e	\N	\N
aed7663e-2112-40f9-bcf5-6ba874ff28d2	\N	EM	0	0	2022-02-21	ddwdw - BONUS	222	CONTABIL	dawdw	\N	\N	\N	222	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 09:51:21.198831+00	2022-02-21 23:51:53.369195+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência entre Programas com Bônus	20220217e339	c8d5e19c-4faa-4b99-8d7e-c5abcec9ce3e	\N	\N
28353da0-1194-4f39-b18b-3d345ac44642	\N	CO	-22	-22	2022-02-21	12323	\N	CONTABIL		1	22	22	0	REALIZADA	COMPRAS PARA VENDA	PRODUTOS	FEDERAL	0	AQUISIÇÃO DE BENS	0	0	2022-02-18 20:57:02.105529+00	2022-02-21 23:53:22.305713+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	Despesas Diversas	202202181a68	d7ee6863-d1d9-4402-8681-cee756d3516f	2022-03-05	\N
b0f01adf-841a-4ab4-91a5-71872af33ae6	\N	RV	0	0	2022-02-21	awdwdw - RECEB 1/2	\N	FINANCEIRA	dawdw	\N	\N	\N	0	REALIZADA	RECEITAS DIVERSAS	\N	\N	0	RECEITAS/ENTRADAS	0	22	2022-02-18 20:56:45.81573+00	2022-02-21 23:53:22.313117+00	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	Receitas Diversas	20220218cca9	765674a7-00fc-409e-afb7-f1634b11df8c	\N	\N
d270964a-4d64-4335-aa3f-fe112519f333	\N	AC	\N	\N	2022-02-21	asd	\N	OPERACIONAL	eee	\N	\N	\N	\N	REALIZADA	COMPROMISSO/TAREFA	\N	\N	\N	AGENDAMENTO	\N	\N	2022-02-18 20:08:51.3155+00	2022-02-21 23:53:22.471911+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Agendamento de Compromisso	202202185dcf	9b2175a3-0ee2-4cff-a52b-6da49284c05b	\N	\N
4226de89-7e61-4fdc-a0d4-5e59c6ef0676	\N	EM	0	0	2022-02-21	dwdw - BÔNUS	2222	CONTABIL		1	22	22	488.84	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	488.84	MOVIMENTACAO DE ESTOQUE	488.84	0	2022-02-18 20:20:28.968234+00	2022-02-21 23:53:22.489787+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	2	Compra de Milhas com Bônus	202202182774	49750390-bf16-4f89-aacb-856833611de5	\N	\N
d0842499-b36e-40aa-bae1-21605276b2ff	\N	SM	4.39	0	2022-02-21	222 - ENVIO	123	CONTABIL	222	\N	\N	\N	-123	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-123	\N	-123	0	2022-02-18 20:47:32.541767+00	2022-02-21 23:53:22.505568+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	Transferência entre Programas	20220218a21b	250ad667-e2a7-4649-89ec-5c61435f11b0	\N	\N
fa2d8be6-6332-45ee-863b-3b8539327bfa	\N	EM	-32.25	0	2022-02-21	22 - RECEBIMENTO	123	CONTABIL	dawdwdw	1	22	\N	123	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	123	MOVIMENTACAO DE ESTOQUE	123	0	2022-02-18 20:35:18.297561+00	2022-02-21 23:53:22.52466+00	\N	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros com Bônus	20220218e7a5	cdf62f44-f0d1-4e0d-ab69-c3c4d88e1be1	2022-03-05	\N
cfdef548-6141-49ea-bf3e-e6bdb29e9a92	\N	EM	-22	-22	2022-02-21	22 - BÔNUS	22	CONTABIL	dawdwdw	1	22	\N	22	REALIZADA	SAÍDA/DÉBITO/EXPIRAÇÃO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-18 20:35:18.304637+00	2022-02-21 23:53:22.543479+00	\N	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros com Bônus	20220218e7a5	cdf62f44-f0d1-4e0d-ab69-c3c4d88e1be1	2022-03-05	\N
5a9709a5-25ef-4c20-9ca2-8a34670d869c	\N	SM	32.25	0	2022-02-21	22 - ENVIO	123	CONTABIL	dawdwdw	1	22	\N	-123	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	-123	MOVIMENTACAO DE ESTOQUE	-123	0	2022-02-18 20:35:18.288371+00	2022-02-21 23:53:22.55962+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Transferência entre Membros com Bônus	20220218e7a5	cdf62f44-f0d1-4e0d-ab69-c3c4d88e1be1	2022-03-05	\N
a966bdf4-c0c4-4b6e-b073-ff6548f9afbe	\N	PV	0	22	2022-02-21	dawdw - PAG 1/12	222	FINANCEIRA		1	0	22	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:39.946804+00	2022-02-21 23:53:50.272818+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
8947d9a1-928f-448d-be6f-6f88b035fb0a	\N	EM	-222	-222	2022-02-21	dwdw - MÊS 2/12	22	CONTABIL		1	0	222	22	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	22	MOVIMENTACAO DE ESTOQUE	22	0	2022-02-17 12:01:55.212925+00	2022-02-21 23:53:50.3916+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
a4942015-8d5a-4842-8ed1-5174fa773c96	\N	EM	-22	-22	2022-02-21	dawdw - MÊS 2/12	222	CONTABIL		1	0	22	222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 12:03:51.328058+00	2022-02-21 23:53:50.43037+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
94215134-290f-41be-95cd-9a03e2cd7453	\N	EM	-22	-22	2022-02-21	dawdw - MÊS 3/12	222	CONTABIL		1	0	22	222	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	222	MOVIMENTACAO DE ESTOQUE	222	0	2022-02-17 11:54:39.882407+00	2022-02-21 23:53:50.494833+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
fe79f151-c53a-444a-ad72-dde044962d05	\N	EM	0	0	2022-02-21	dawdw - BÔNUS	222	CONTABIL		1	0	0	0	REALIZADA	ENTRADA/CREDITO/ACUMULO	MILHAS	\N	0	MOVIMENTACAO DE ESTOQUE	4.44	0	2022-02-17 11:54:40.049123+00	2022-02-21 23:53:50.519315+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
20051f65-ae3b-4baf-80c7-415e634ff61a	\N	PV	0	22	2022-02-21	dawdw - PAG 2/12	222	FINANCEIRA		1	0	22	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 12:03:51.403059+00	2022-02-21 23:53:50.534028+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual e Bônus	202202179fac	a6240cde-58b6-4b13-a3d6-0bac28ba829a	\N	\N
988af301-6fe2-4d5f-879d-0c58af98fbc7	\N	PV	0	222	2022-02-21	dwdw - PAG 2/12	22	FINANCEIRA		1	0	222	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-222	2022-02-17 12:01:55.296202+00	2022-02-21 23:53:50.54876+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	2022021788b8	ff6d059a-d589-4c89-a7cf-293116d6d393	\N	\N
f86904bd-a14d-4fc6-b2b3-061993423f08	\N	PV	0	22	2022-02-21	dawdw - PAG 2/12	222	FINANCEIRA		1	0	22	0	REALIZADA	COMPRAS PARA VENDA	MILHAS	\N	0	DESPESA/SAIDA	0	-22	2022-02-17 11:54:39.953102+00	2022-02-21 23:53:50.563262+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	84664fab-7dd5-4698-bcd2-683e26e1d20d	e390e9e5-4af8-4458-9716-4e00fd2f2307	1	Compra de Milhas Pacote Anual com Bônus	20220217eded	0526ea8c-03eb-4173-988d-ce4e2312cbf3	\N	\N
\.


--
-- Data for Name: gerenciador_manager; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.gerenciador_manager (id, protocol, cliente, payment_form_id, products, service_type, type_revenue, category, sub_category, expense_type, miles, purchase_value, due_day, parcels, parcel_value, description, bonus, bonus_miles, entries, day_month, recurring_purchase_value, day_recurrence, monthly, quantity, remarks, date_first_payment, cpm, price_miles, cost_miles, stock, quantity_sold, acquisition_cost, sale_value, profit, cpm_sale, cpm_purchase, sales_profit, cpm_profit, value_without_rates, rate_value, total_value, service_value, costs, transfer_value, conversion_factor, cost_stock, bonus_source, bonus_destination, recurrence, revenue_value, expense_value, observation, date, scheduled_date, purchase_date, payment_first_date, date_first_bonus, recurrent_bonus_date, date_recurrence, first_date_recurring_payment, arrival_date, date_credit_miles, date_sale, first_date_parcel, delivery_date, date_hiring, date_execution_service, shipping_date, date_receipt, date_credit_bonus, final_score, date_bonus_origin, date_bonus_destination, pricefy_miles, bonus_calculation_formula, created_at, updated_at, buyer_id, holder_id, holder_transf_id, holder_receive_id, origin_program_id, owner_id, program_id, target_program_id, status, sub_group1, sub_group2, sub_group3, sugested_cpm) FROM stdin;
cb5830d6-4ad9-4080-9560-52bf62338ada	202201032262	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas	\N	\N	20000	200	\N	4	50	COMPRA 1	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-03	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-03 18:35:57.074212+00	2022-01-03 18:35:57.074226+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
b4d2a158-91ad-4070-9244-5893a9114f20	20220103ed93	\N	\N	\N	\N	\N	Venda de Milhas	\N	\N	10000	\N	-	1	200	VENDA 1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	100	200	\N	20	10.00	100	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-03	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-03	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-03 23:25:00.234821+00	2022-01-03 23:25:00.234835+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
7305f3b0-d510-48e2-afde-5cfa752e3536	202201041c8d	\N	\N	\N	\N	\N	Acúmulo de Milhas	\N	\N	10000	\N	\N	\N	\N	Esta é uma descrição em grande mesmo, tem que aparecer os "..."	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-04 10:42:19.014797+00	2022-01-04 10:42:19.01481+00	\N	98b973be-b58d-4a7e-8bea-6c3361679d6c	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
09db80c9-544b-4370-a16d-3cb9159aef19	20220105ea07	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas	\N	\N	30000	400	\N	1	400	COMPRA TUDO AZUL	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-05 11:29:11.369437+00	2022-01-05 11:29:11.369451+00	\N	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	2	\N	ANALYSIS	\N	\N	\N	\N
2e965302-5d3a-454c-8ca4-a45ae9311c08	20220111d482	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas	\N	\N	100000	2000	\N	1	2000	TESTE COMPRA 10	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-11 14:22:23.358619+00	2022-01-11 14:22:23.358633+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
c73d375c-0767-4e25-accc-3d4c7965125e	202201112209	\N	\N	\N	\N	\N	Venda de Milhas	\N	\N	10000	\N	-	1	200	TESTE VENDA 10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	163.7	200	\N	20	16.37	36.3	3.63	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-11	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-11	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-11 14:23:13.175516+00	2022-01-11 14:23:13.175529+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
7530d2f3-3f12-438b-a027-39474c7af581	20220111dbfe	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas	\N	\N	10000	300	05	1	300	TESTE CRON	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-12	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-12 01:18:01.447988+00	2022-01-12 01:18:01.448004+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
9d0eb26d-7b75-4817-b4fc-6b1f081a1c67	20220118ea54	\N	\N	\N	\N	\N	Transferência Bumerangue	\N	\N	1000	\N	\N	\N	\N	teste	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	16.37	\N	16.37	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10	10	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-18	2022-01-19	\N	\N	2022-01-19	2022-01-19	t	\N	2022-01-18 15:32:47.688308+00	2022-01-18 15:32:47.688324+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	1	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	ANALYSIS	\N	\N	\N	\N
da20b22b-982c-4c3d-b922-d232a9db48df	202201196265	\N	\N	\N	\N	\N	Venda de Milhas	\N	\N	10000	\N	-	1	250	TESTE 19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	163.7	250	\N	25	16.37	86.30	8.63	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-19 15:03:40.915681+00	2022-01-19 15:03:40.915695+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
2a4b3cd6-5175-4b36-85b0-4d02b8e3651d	20220121933f	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas	\N	\N	100	1000	\N	1	1000	dcdcd	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	cweece	\N	2021-12-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-21 20:25:40.465324+00	2022-01-21 20:25:40.465337+00	\N	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
2a540c73-8dc0-41f5-84be-288ae867aabe	20220122b8bd	\N	\N	\N	\N	\N	Acúmulo de Milhas	\N	\N	10000	\N	\N	\N	\N	TESTE	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-22 20:18:26.592767+00	2022-01-22 20:18:26.592781+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
e9c21d27-3cf6-497e-84c2-338487e11d89	202201241a6f	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Produtos	\N	\N	\N	10000	\N	1	\N	awdwd	\N	\N	\N	\N	\N	\N	\N	2	\N	2022-02-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-24	\N	\N	\N	\N	\N	\N	2022-01-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-24 17:56:02.385227+00	2022-01-24 17:56:02.385244+00	\N	\N	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	ANALYSIS	\N	\N	\N	\N
d93d3289-bbaa-41dd-86c6-3482c47d8401	20220124e253	\N	\N	\N	\N	\N	Agendamento de Compromisso	\N	\N	\N	\N	\N	\N	\N	2222	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-24 18:20:35.790715+00	2022-01-24 18:20:35.790739+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
2521e5d4-9d93-415e-985c-a7681d041542	20220124fee4	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Produtos	\N	\N	\N	3000	\N	1	\N	TESTE	\N	\N	\N	\N	\N	\N	\N	1	\N	2022-02-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-24	\N	\N	\N	\N	\N	\N	2022-01-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-24 19:02:56.881835+00	2022-01-24 19:02:56.881853+00	\N	\N	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	ANALYSIS	\N	\N	\N	\N
0ccff5c6-c72b-4238-a5c2-8f4dde0a6113	20220124f205	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	\N	\N	\N	1000	\N	05	1	222.8	dawdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-05	\N	\N	39.37	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	222.80	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-24	2022-01-24	\N	\N	\N	\N	t	\N	2022-01-24 21:26:35.571442+00	2022-01-24 21:26:35.571468+00	\N	\N	c988d95e-f4eb-4104-8aed-272e0829b045	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
b7e36906-0f65-457b-add1-18189b27e57b	2022012431e4	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas	\N	\N	2000	30	\N	1	30	TESTE COMPRA	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2021-12-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-24 23:51:17.959634+00	2022-01-24 23:51:17.959652+00	\N	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	3	\N	ANALYSIS	\N	\N	\N	\N
0e46a163-72c9-4f8f-add8-ac6917c00a59	20220124deeb	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas	\N	\N	2000	45	\N	2	22.5	TESTE COMPRA 2	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2021-12-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-24 23:54:01.791894+00	2022-01-24 23:54:01.791911+00	\N	98b973be-b58d-4a7e-8bea-6c3361679d6c	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	2	\N	ANALYSIS	\N	\N	\N	\N
fc2395d1-cac9-44d6-89e1-1accf150fed2	2022012542f9	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Despesas Diversas	\N	\N	\N	\N	\N	1	22	TESTE	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2021-12-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-25 19:11:02.433481+00	2022-01-25 19:11:02.433504+00	\N	\N	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	ANALYSIS	\N	\N	\N	\N
92224d78-ad5b-40ea-a0c7-b64317a83ed9	20220125636d	\N	a22633f0-295c-455c-abb1-1c5cf33caf8c	\N	\N	\N	Despesas Diversas	\N	\N	\N	\N	\N	1	22	TESTE	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2021-12-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-25 19:12:41.402364+00	2022-01-25 19:12:41.402383+00	\N	\N	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	ANALYSIS	\N	\N	\N	\N
bdd0a5a4-8779-4614-a0e8-d057b6ef8326	2022012577b5	\N	\N	\N	\N	\N	Venda Passagens c/ Dinheiro	\N	\N	\N	\N	\N	10	200	Desdcacw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2000	\N	\N	\N	\N	\N	\N	\N	2000	0	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-25 19:56:07.340256+00	2022-01-25 19:56:07.34028+00	60e71341-63bc-4fda-ae84-171520b11379	\N	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	ANALYSIS	\N	\N	\N	\N
531436bd-0326-492a-8a70-3a78cbe6cf39	2022012716e3	\N	\N	\N	\N	\N	Venda de Milhas	\N	\N	5000	\N	-	3	166.67	fsefef	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	178.5	500	\N	100	35.70	321.5	64.3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-27	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-01-27	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-27 21:27:57.513741+00	2022-01-27 21:27:57.513756+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
b32f2543-efa3-44cd-8495-9e93431ea71b	20220128bd36	\N	\N	\N	\N	\N	Acúmulo de Milhas	\N	\N	5700	\N	\N	\N	\N	sdfg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-28 17:27:09.806236+00	2022-01-28 17:27:09.806254+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
becf173e-4c8d-4645-8a1e-c367ee043db3	20220128f841	\N	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	\N	\N	Compra de Milhas	\N	\N	10000	200	10	1	200	sdfg	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-28 17:28:23.683113+00	2022-01-28 17:28:23.68313+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
70b9b877-b647-4e16-8511-57c0c37857b2	202201280c23	\N	\N	\N	\N	\N	Acúmulo de Milhas	\N	\N	10000	\N	\N	\N	\N	sdfg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-01-28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-01-28 17:32:12.905654+00	2022-01-28 17:32:12.905676+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
d9a7738e-1a5a-4770-bd54-5a2a2770b337	20220204d56c	\N	\N	\N	\N	\N	Venda de Milhas	\N	\N	5000	\N	-	1	120	asdf	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	38.9	120	\N	24	7.78	81.1	16.22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 03:52:49.423645+00	2022-02-04 03:52:49.42366+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
1266c9c8-1e17-4139-a2dd-3a0cfcd78d5a	20220204028f	\N	\N	\N	\N	\N	Venda de Milhas	\N	\N	2000	\N	-	1	80	asdf	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	15.56	80	\N	40	7.78	64.44	32.22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 03:53:14.785305+00	2022-02-04 03:53:14.785318+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
dcff56bc-e320-481a-85b1-3a5cf8fd5916	202202042670	\N	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	\N	\N	Compra de Produtos	\N	\N	\N	5000	10	1	\N	produto 1	\N	\N	\N	\N	\N	\N	\N	5	\N	2022-03-10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-04	\N	\N	\N	\N	\N	\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 03:53:50.519585+00	2022-02-04 03:53:50.519598+00	\N	\N	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	ANALYSIS	\N	\N	\N	\N
44fe4817-40d1-4320-921f-8f9de3ea3b94	20220204e737	\N	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	\N	\N	Compra de Produtos	\N	\N	\N	3000	10	1	\N	produto 2	\N	\N	\N	\N	\N	\N	\N	3	\N	2022-03-10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-04	\N	\N	\N	\N	\N	\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 03:54:21.403967+00	2022-02-04 03:54:21.40398+00	\N	\N	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	ANALYSIS	\N	\N	\N	\N
91a76fc3-8c1e-46d1-ba81-378272947a4f	20220204a08a	\N	\N	bd862519-38db-4833-9a6e-30f33e1c4b40	\N	\N	Venda de Produtos	\N	\N	\N	\N	-	1	3000		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	2	\N	3000	1000	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-04	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 03:54:47.864426+00	2022-02-04 03:54:47.864543+00	\N	\N	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	ANALYSIS	\N	\N	\N	\N
b1a58450-7802-4f3c-b044-f7b1468311b6	202202040a7d	\N	\N	bd862519-38db-4833-9a6e-30f33e1c4b40	\N	\N	Venda de Produtos	\N	\N	\N	\N	-	1	1500		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	1	\N	1500	500	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-04	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 03:55:15.615799+00	2022-02-04 03:55:15.615814+00	\N	\N	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	\N	\N	ANALYSIS	\N	\N	\N	\N
35aa9c7b-ae42-490f-b575-1243a7ab0c9d	20220204b932	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	1000	\N	\N	\N	\N	asdfgsdg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 04:03:28.648778+00	2022-02-04 04:03:28.648791+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
f98c9557-2238-469b-b4a9-1d019d2fa0fb	202202040759	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	-1000.0	\N	\N	\N	\N	Emissão avulsa de passagem	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2022-02-01	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 04:21:31.83202+00	2022-02-04 04:21:31.832035+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
9a3155a9-712d-4f43-a251-c5222afe78bb	202202040759	\N	\N	\N	\N	\N	Agendamento de Compromisso	\N	\N	\N	\N	\N	\N	\N	Aviso de check-in passageiro 1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2022-02-01	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-04 04:21:31.840001+00	2022-02-04 04:21:31.840011+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
6a0e9eb9-4e44-443a-8e09-38f15b48671d	20220205ed8d	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	\N	\N	\N	2000	\N	05	1	110	TESTE	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-03-05	\N	\N	71.4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	110	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-06	2022-02-06	\N	\N	\N	\N	t	\N	2022-02-05 18:40:51.448915+00	2022-02-05 18:40:51.448933+00	\N	\N	c988d95e-f4eb-4104-8aed-272e0829b045	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
ed32f895-6d48-43e8-ad1e-e70bf1ccdeea	202202058dde	\N	\N	\N	\N	\N	\N	\N	\N	2000	\N	\N	\N	\N	TESTE	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	71.4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	TESTE	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-06	2022-02-07	\N	\N	\N	\N	t	\N	2022-02-05 18:42:49.824767+00	2022-02-05 18:42:49.824784+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	1	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	ANALYSIS	\N	\N	\N	\N
59c48d29-383a-4d1f-95ca-4366fb470bfc	20220205d818	\N	\N	\N	\N	\N	\N	\N	\N	2000	\N	\N	\N	\N	dawdawd	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	71.4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	adwdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-07	2022-02-07	\N	\N	\N	\N	t	\N	2022-02-05 19:53:57.972462+00	2022-02-05 19:53:57.972482+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	1	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	2	ANALYSIS	\N	\N	\N	\N
79dc0821-821e-4df9-87cb-6baf5be12827	20220211ff3c	\N	a22633f0-295c-455c-abb1-1c5cf33caf8c	\N	\N	\N	Compra de Milhas	\N	\N		0	\N	1	0	dwdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-03-10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-11 14:48:37.941923+00	2022-02-11 14:48:37.941936+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
c8d5e19c-4faa-4b99-8d7e-c5abcec9ce3e	20220217e339	\N	\N	\N	\N	\N	Transferência entre Programas com Bônus	\N	\N	222	\N	\N	\N	\N	ddwdw	222	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	58.2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	dawdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-18	2022-02-18	2022-02-18	\N	\N	\N	t	\N	2022-02-17 09:51:21.173887+00	2022-02-17 09:51:21.173906+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	\N	1	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	ANALYSIS	\N	\N	\N	\N
aee12717-baf7-48d6-9647-3245dac0ca00	202202175c3e	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	2222	\N	\N	\N	\N	dwd	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	wdwd	\N	2022-02-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-17 09:53:36.490898+00	2022-02-17 09:53:36.490918+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
eec81f8e-078e-477e-af6c-bdfc4cb7faca	20220217d4ee	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	222	\N	\N	\N	\N	dawd	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	wdwd	\N	2022-02-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-17 09:56:31.319539+00	2022-02-17 09:56:31.319565+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
efed0e38-cc50-4763-9a35-30eb7bdb1bb5	20220217f0d3	\N	\N	\N	\N	\N	Expiração/Uso Próprio de Milhas	\N	\N	222	\N	\N	\N	\N	dawd	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	wdwd	\N	2022-02-18	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-17 09:57:55.133164+00	2022-02-17 09:57:55.133183+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
3608e65e-3e51-4adf-aa6b-1d3829f324ab	2022021731a5	\N	\N	\N	\N	\N	Venda de Milhas	\N	\N	22	\N	-	1	22	dwdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.79	22	\N	1000	35.70	21.21	964.3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-17 10:02:51.879814+00	2022-02-17 10:02:51.879834+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
1c3d1d4c-2f32-4c96-a8b1-3f4302e9ac65	20220217474c	\N	\N	\N	Selecionar	\N	Venda Passagens c/ Milhas	\N	\N	222	\N	-	1	22	dwdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7.93	22	\N	99.1	35.70	22	63.4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-17 10:03:52.99425+00	2022-02-17 10:03:52.99427+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
82dfc5fd-d13b-452d-989b-ad04f6014cb2	202202174a02	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	-222.0	\N	\N	\N	\N	Emissão avulsa de passagem	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2022-02-14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-17 11:05:01.121463+00	2022-02-17 11:05:01.121488+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
18921a0d-2554-4e0b-85b9-1768c00886e2	20220217103c	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	-222.0	\N	\N	\N	\N	Emissão avulsa de passagem	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2022-02-15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-17 11:05:42.452936+00	2022-02-17 11:05:42.452955+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
0526ea8c-03eb-4173-988d-ce4e2312cbf3	20220217eded	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas Pacote Anual com Bônus	\N	\N	222	0	\N	1	\N	dawdw	2	0	3	\N	\N	2	22	\N	\N	2022-03-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-17	\N	\N	\N	\N	2022-03-02	2022-04-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	%	2022-02-17 11:54:39.852662+00	2022-02-17 11:54:39.852679+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
ff6d059a-d589-4c89-a7cf-293116d6d393	2022021788b8	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas Pacote Anual com Bônus	\N	\N	22	0	\N	1	\N	dwdw	22	0	2	\N	\N	22	222	\N	\N	2022-03-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-17	\N	\N	\N	\N	2022-03-22	2022-04-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	%	2022-02-17 12:01:55.191065+00	2022-02-17 12:01:55.191084+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
a6240cde-58b6-4b13-a3d6-0bac28ba829a	202202179fac	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas Pacote Anual e Bônus	\N	\N	222	0	\N	1	\N	dawdw	22	0	2	\N	\N	22	22	\N	\N	2022-03-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-17	\N	\N	\N	\N	2022-03-22	2022-04-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	%	2022-02-17 12:03:51.308087+00	2022-02-17 12:03:51.308106+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
78999572-1574-444e-8755-a26cc7197494	20220217dd80	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Venda Passagens c/ Milhas e Dinheiro	\N	\N	222	\N	05	1	44	dwdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7.93	0	\N	99.1	35.70	36.07	63.4	22	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-17 12:09:43.263129+00	2022-02-17 12:09:43.263147+00	5ba52e1a-d2d8-4a12-9e75-f8243f449413	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
a566ee22-8a9b-453c-a441-262d66ef0b54	20220217509f	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas com Recorrência Mensal e Bônus	\N	\N	222	2	05	1	\N	ddw	22	0	2	\N	\N	2	\N	\N	\N	2022-03-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-17	\N	\N	\N	2022-03-02	2022-03-02	2022-04-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	%	2022-02-17 12:31:41.231937+00	2022-02-17 12:31:41.231957+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
9b2175a3-0ee2-4cff-a52b-6da49284c05b	202202185dcf	\N	\N	\N	\N	\N	Agendamento de Compromisso	\N	\N	\N	\N	\N	\N	\N	asd	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	eee	\N	2022-02-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-18 20:08:51.305125+00	2022-02-18 20:08:51.305142+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
49750390-bf16-4f89-aacb-856833611de5	202202182774	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Compra de Milhas com Bônus	\N	\N	2222	22	\N	1	\N	dwdw	22	0	\N	\N	\N	\N	\N	\N	\N	2022-03-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-18	\N	\N	2022-02-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	%	2022-02-18 20:20:28.942035+00	2022-02-18 20:20:28.942054+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	2	\N	ANALYSIS	\N	\N	\N	\N
8625a30e-430e-4f46-bee4-eb90fafc0df8	202202184157	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Transferência entre Membros	\N	\N	123	\N	05	1	2	2323	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-03-05	\N	\N	32.25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-18	2022-02-18	\N	\N	\N	\N	t	\N	2022-02-18 20:33:25.058223+00	2022-02-18 20:33:25.05824+00	\N	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	c988d95e-f4eb-4104-8aed-272e0829b045	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
cdf62f44-f0d1-4e0d-ab69-c3c4d88e1be1	20220218e7a5	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Transferência entre Membros com Bônus	\N	\N	123	\N	05	1	22	22	22	\N	\N	\N	\N	\N	\N	\N	\N	2022-03-05	\N	\N	32.25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	\N	\N	\N	dawdwdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-20	2022-02-20	2022-02-21	\N	\N	\N	t	\N	2022-02-18 20:35:18.275483+00	2022-02-18 20:35:18.275503+00	\N	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
250ad667-e2a7-4649-89ec-5c61435f11b0	20220218a21b	\N	\N	\N	\N	\N	Transferência entre Programas	\N	\N	123	\N	\N	\N	\N	222	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.39	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	222	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-19	2022-02-19	\N	\N	\N	\N	t	\N	2022-02-18 20:47:32.528527+00	2022-02-18 20:47:32.528546+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	1	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	ANALYSIS	\N	\N	\N	\N
96c2a704-6f6e-4980-a5e8-b0a86bd1a1ad	2022021837b1	\N	\N	\N	\N	\N	Transferência entre Programas com Defasagem	\N	\N	22	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	324.13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	d2d	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-02-18	2022-02-18	\N	\N	\N	\N	t	\N	2022-02-18 20:50:07.399324+00	2022-02-18 20:50:07.399349+00	\N	c988d95e-f4eb-4104-8aed-272e0829b045	\N	\N	2	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	1	ANALYSIS	\N	\N	\N	\N
765674a7-00fc-409e-afb7-f1634b11df8c	20220218cca9	\N	\N	\N	\N	\N	Receitas Diversas	\N	\N	\N	\N	\N	\N	\N	awdwdw	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	dawdw	\N	2022-02-18	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-18 20:56:45.805799+00	2022-02-18 20:56:45.805824+00	\N	\N	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	ANALYSIS	\N	\N	\N	\N
d7ee6863-d1d9-4402-8681-cee756d3516f	202202181a68	\N	e390e9e5-4af8-4458-9716-4e00fd2f2307	\N	\N	\N	Despesas Diversas	\N	\N	\N	\N	\N	1	22	12323	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-03-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-02-18	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-02-18 20:57:02.094607+00	2022-02-18 20:57:02.094626+00	\N	\N	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	\N	\N	ANALYSIS	\N	\N	\N	\N
82a18c82-691c-4043-b6c4-9da4c1105483	20220307aec8	\N	\N	\N	\N	\N	Acúmulo de Milhas	\N	\N	11525	\N	\N	\N	\N	acumulo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-03-07	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-03-07 15:23:07.491717+00	2022-03-07 15:23:07.49175+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
8023ce2d-af43-404f-9851-e768a8194827	202203179566	\N	\N	\N	\N	\N	Acúmulo de Milhas	\N	\N	1000	\N	\N	\N	\N	TESTE DE MILHAS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-03-16	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-03-18 02:37:32.726247+00	2022-03-18 02:37:32.726282+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	2	\N	ANALYSIS	\N	\N	\N	\N
270beec8-e0d2-47b4-98fd-39c152ad5aee	2022031756ab	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	-20.0	\N	\N	\N	\N	Emissão avulsa de passagem	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2022-03-14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-03-18 02:37:38.618568+00	2022-03-18 02:37:38.618592+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	2	\N	ANALYSIS	\N	\N	\N	\N
ac68aeb3-b38c-4b54-a40e-f5f83edbf552	20220317052f	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	-300.0	\N	\N	\N	\N	Emissão avulsa de passagem	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2022-03-14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-03-18 02:38:14.312928+00	2022-03-18 02:38:14.312955+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	2	\N	ANALYSIS	\N	\N	\N	\N
a0d1e580-81fc-4c3b-9ced-6b1ee3c96038	20220317084b	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	-30.0	\N	\N	\N	\N	Emissão avulsa de passagem	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2022-03-14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-03-18 02:39:52.064653+00	2022-03-18 02:39:52.064681+00	\N	751fa42a-fa91-41ba-8a52-d69ddec813c2	\N	\N	\N	84664fab-7dd5-4698-bcd2-683e26e1d20d	1	\N	ANALYSIS	\N	\N	\N	\N
62ef9354-70aa-41c6-b54a-d37eafd81105	202203183dd9	\N	\N	\N	\N	\N	Uso Próprio de Milhas	\N	\N	-1000.0	\N	\N	\N	\N	Emissão avulsa de passagem	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2022-03-15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-03-18 23:00:23.370186+00	2022-03-18 23:00:23.370208+00	\N	759908bc-94e3-4acb-82c7-1688ab901c7a	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	\N
8f976963-8997-4bbf-b34a-9ecfc356dbd1	202203310164	\N	\N	\N	\N	\N	Acúmulo de Milhas	\N	\N	10000	\N	\N	\N	\N	ac	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-03-31	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-03-31 13:43:12.885266+00	2022-03-31 13:43:12.885295+00	\N	dc437656-4d42-4d5d-a345-d50f90aead85	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	3	\N	ANALYSIS	\N	\N	\N	\N
80c4b80c-e427-4eb8-ab8d-ae1be28535ee	202203319089	\N	\N	\N	\N	\N	Venda de Milhas	\N	\N	2000	\N	-	1	80	v1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	60	80	\N	40	30.00	20	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-03-31	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-03-31	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-03-31 13:43:52.893992+00	2022-03-31 13:43:52.894021+00	\N	dc437656-4d42-4d5d-a345-d50f90aead85	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	3	\N	ANALYSIS	\N	\N	\N	\N
8cdcf4be-bf72-4d69-a399-4fa192d69c8b	202204035e5c	\N	d886d244-0a2c-4514-be5d-cd2c211965a5	\N	\N	\N	Compra de Produtos Acumulando Milhas	\N	\N	\N	2001	10	1	2001	ssss	\N	1000	\N	\N	\N	\N	\N	2	\N	2022-05-10	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	2022-04-03	\N	\N	\N	\N	\N	\N	2022-04-03	2022-04-03	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2022-04-03 19:11:03.041171+00	2022-04-03 19:11:03.041189+00	\N	dc437656-4d42-4d5d-a345-d50f90aead85	\N	\N	\N	0900267f-61e3-492d-98c4-160050d8df27	1	\N	ANALYSIS	\N	\N	\N	0
\.


--
-- Data for Name: gerenciador_milescpm; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.gerenciador_milescpm (id, quantity, "CPM", created_at, updated_at, owner_id, holder_id, program_id, real_storage, theoretical_storage) FROM stdin;
b3685ef2-d7c2-40dc-a41e-81c10e4cc6e0	0	0	2022-01-11 18:38:16.497858+00	2022-01-11 18:38:16.497869+00	93f86f08-ea2a-4749-a902-d75280651b7b	9208bf7c-5d26-4968-aa13-1c295d8a86f8	2	0	0
822b271f-230b-44cd-b97c-c7295ad41e54	0	0	2022-01-11 18:38:16.503979+00	2022-01-11 18:38:16.50399+00	93f86f08-ea2a-4749-a902-d75280651b7b	9208bf7c-5d26-4968-aa13-1c295d8a86f8	3	0	0
5b8c2ff9-da66-4544-9d63-aaf73fafb26d	0	0	2022-01-11 18:38:16.509948+00	2022-01-11 18:38:16.509959+00	93f86f08-ea2a-4749-a902-d75280651b7b	9208bf7c-5d26-4968-aa13-1c295d8a86f8	1	0	0
81fdb64e-3326-42a2-8a71-7708fb3c9292	0	0	2022-01-14 14:10:30.12596+00	2022-01-14 14:10:30.125972+00	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2	f1c6baa9-85c5-48f7-abca-8445e1f51a1c	2	0	0
5ef20cee-9f7d-4536-a24e-6a25cb8acdb1	0	0	2022-01-14 14:10:30.131829+00	2022-01-14 14:10:30.131841+00	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2	f1c6baa9-85c5-48f7-abca-8445e1f51a1c	3	0	0
09572025-da71-45b8-a08d-aceedd6481cd	0	0	2022-01-05 16:14:04.027558+00	2022-01-05 16:39:33.335089+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	2	0	0
7b518d32-ed1c-4213-a285-23738b4fafc5	0	0	2022-01-05 16:14:04.032557+00	2022-01-05 16:39:33.339876+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	3	0	0
f1fb3db9-0663-4553-852e-b19ae0603350	0	0	2022-01-14 14:10:30.136485+00	2022-01-14 14:10:30.136497+00	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2	f1c6baa9-85c5-48f7-abca-8445e1f51a1c	1	0	0
9f73b747-d959-477d-8171-bd6288a01930	0	0	2022-01-16 21:42:08.633861+00	2022-01-16 21:42:08.633878+00	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9	5ba3c0de-301e-4e5a-8b2e-4a10e7f233bc	2	0	0
1d7a5e94-39fa-4b3f-b0fb-ab95edcc14a9	0	0	2022-01-16 21:42:08.643035+00	2022-01-16 21:42:08.643051+00	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9	5ba3c0de-301e-4e5a-8b2e-4a10e7f233bc	3	0	0
c6591160-344a-4198-adc5-560cd069cae8	0	0	2022-01-16 21:42:08.648062+00	2022-01-16 21:42:08.648077+00	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9	5ba3c0de-301e-4e5a-8b2e-4a10e7f233bc	1	0	0
6d09da15-8b85-4da3-a85d-e625ffe5ff27	0	0	2022-01-16 21:57:27.896884+00	2022-01-16 21:57:27.8969+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5	651ede0e-1a41-403b-a6e5-c475037b2f0d	2	0	0
486bd9d5-e867-45f9-8a2e-55907da11a32	0	0	2022-01-06 23:34:23.342409+00	2022-01-06 23:34:23.34242+00	b4c06e76-183a-4c51-8804-a2c039786fd3	d59170d4-b5e2-4f73-a108-6789c08c437c	2	0	0
2fab3de9-9406-4bb6-945f-5f9cfddc6a6d	0	0	2022-01-06 23:34:23.349803+00	2022-01-06 23:34:23.349815+00	b4c06e76-183a-4c51-8804-a2c039786fd3	d59170d4-b5e2-4f73-a108-6789c08c437c	3	0	0
3b0ae9ea-5c47-4cb5-a1ff-71bea577710f	0	0	2022-01-06 23:34:23.357435+00	2022-01-06 23:34:23.357469+00	b4c06e76-183a-4c51-8804-a2c039786fd3	d59170d4-b5e2-4f73-a108-6789c08c437c	1	0	0
da261a24-62fe-41e9-874a-5d4bab052fdf	0	0	2022-01-06 23:59:19.763877+00	2022-01-06 23:59:19.76389+00	b4c06e76-183a-4c51-8804-a2c039786fd3	fb32ef50-afb5-4839-ac78-3e28e9aaf429	2	0	0
d8e245ad-09a7-4b32-b666-8af19356224c	0	0	2022-01-06 23:59:19.771236+00	2022-01-06 23:59:19.771247+00	b4c06e76-183a-4c51-8804-a2c039786fd3	fb32ef50-afb5-4839-ac78-3e28e9aaf429	3	0	0
935b319a-2ef4-4034-a205-9f73bc68bf48	0	0	2022-01-06 23:59:19.775995+00	2022-01-06 23:59:19.776006+00	b4c06e76-183a-4c51-8804-a2c039786fd3	fb32ef50-afb5-4839-ac78-3e28e9aaf429	1	0	0
9a733efa-5627-49a1-b22c-bbb69c48a7ec	0	0	2022-01-05 16:01:24.274231+00	2022-01-07 01:37:10.459654+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	751fa42a-fa91-41ba-8a52-d69ddec813c2	3	0	0
30c45bf5-caee-409a-97c6-3c81a9b1567b	0	0	2022-01-16 21:57:27.901966+00	2022-01-16 21:57:27.901982+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5	651ede0e-1a41-403b-a6e5-c475037b2f0d	3	0	0
6ebb6f83-2596-4178-8d38-923b1bfe7652	0	0	2022-01-16 21:57:27.906411+00	2022-01-16 21:57:27.906425+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5	651ede0e-1a41-403b-a6e5-c475037b2f0d	1	0	0
4f0157ab-aa18-443c-8081-405ee4102eb2	2000	22.5	2022-01-24 23:54:01.809884+00	2022-01-24 23:54:01.813236+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	98b973be-b58d-4a7e-8bea-6c3361679d6c	2	2000	2000
d9fbb5c2-5801-49f0-a196-33adb90a50bd	680	10	2022-01-05 16:01:24.269217+00	2022-03-18 02:38:14.360089+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	751fa42a-fa91-41ba-8a52-d69ddec813c2	2	680	680
8bfefbab-b645-443f-b7ec-fc9ef72ce007	122	8377.04918032787	2022-01-27 21:26:17.918832+00	2022-02-21 23:53:22.541739+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	1	122	122
320b3237-389e-43c7-a1a3-a68b61e79d55	8788	1692.2722791637223	2022-01-21 20:47:12.812499+00	2022-02-21 23:53:50.246608+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	c988d95e-f4eb-4104-8aed-272e0829b045	2	8788	8788
ae80c086-99bc-4038-a533-fd1bc7b88c4c	9700	3210159350319.251	2022-01-28 17:27:09.820599+00	2022-03-18 23:03:07.291003+00	0900267f-61e3-492d-98c4-160050d8df27	759908bc-94e3-4acb-82c7-1688ab901c7a	1	9700	5700
54bf5c53-898e-4eb2-82f0-9457c3dc2618	0	0	2022-03-31 13:41:37.666465+00	2022-03-31 13:41:37.666499+00	0900267f-61e3-492d-98c4-160050d8df27	dc437656-4d42-4d5d-a345-d50f90aead85	2	0	0
2cbda82d-16c7-4d91-880d-264df53426d0	10000	30	2022-03-31 13:41:37.676486+00	2022-03-31 13:43:52.921616+00	0900267f-61e3-492d-98c4-160050d8df27	dc437656-4d42-4d5d-a345-d50f90aead85	3	10000	8000
0930927a-214a-4c1b-bc3a-9180c21ce03c	1000	0	2022-03-31 13:41:37.684697+00	2022-04-03 19:11:03.082004+00	0900267f-61e3-492d-98c4-160050d8df27	dc437656-4d42-4d5d-a345-d50f90aead85	1	1000	1000
24a9bf38-409b-45e9-b46a-e08f311930d5	2000	15	2022-02-21 13:55:40.132066+00	2022-02-21 13:55:40.146369+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	3	2000	2000
67763224-2c79-4e97-91fc-4c609411764a	10000	22	2022-02-21 13:55:40.166275+00	2022-02-21 13:55:40.182211+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	98b973be-b58d-4a7e-8bea-6c3361679d6c	1	10000	10000
4443acef-09d7-46ec-82f5-efdd59285005	90000	13.797777777777778	2022-01-05 11:29:29.532451+00	2022-02-21 13:55:40.203125+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	2	90000	90000
0216863d-da1d-421f-a015-818743f0dfc0	2946	145.69396051103368	2022-01-07 01:37:10.463718+00	2022-03-18 02:39:52.120681+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	751fa42a-fa91-41ba-8a52-d69ddec813c2	1	2946	2946
1451e737-155e-4600-a6ee-3e02121293fd	123	262.1951219512195	2022-02-21 23:53:22.513591+00	2022-02-21 23:53:22.52342+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	2309da7d-d03d-4fbf-bf44-f3fae14fcee7	1	123	123
3a0579a5-32cd-42fe-9a3d-11636e4be443	288877	32.67031402845967	2022-01-03 18:36:04.170489+00	2022-02-21 23:53:50.559186+00	84664fab-7dd5-4698-bcd2-683e26e1d20d	c988d95e-f4eb-4104-8aed-272e0829b045	1	288761	238330
\.


--
-- Data for Name: gerenciador_product; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.gerenciador_product (id, quantity, price, description, purchase_date, arrival_date, available, created_at, updated_at, manager_id, owner_id) FROM stdin;
6c5b24c8-3858-40f4-b7ca-29189dedf31d	2	5000.0	awdwd	\N	2022-01-24	t	2022-01-24 17:56:02.393635+00	2022-01-24 17:56:15.576684+00	e9c21d27-3cf6-497e-84c2-338487e11d89	84664fab-7dd5-4698-bcd2-683e26e1d20d
0c0d3944-ea6e-45bf-b831-53b705d1609f	1	3000.0	TESTE	\N	2022-01-24	t	2022-01-24 19:02:56.889888+00	2022-01-24 19:02:56.905877+00	2521e5d4-9d93-415e-985c-a7681d041542	84664fab-7dd5-4698-bcd2-683e26e1d20d
bd862519-38db-4833-9a6e-30f33e1c4b40	2	1000.0	produto 1	\N	2022-02-04	t	2022-02-04 03:53:50.528917+00	2022-02-04 03:55:15.629996+00	dcff56bc-e320-481a-85b1-3a5cf8fd5916	0900267f-61e3-492d-98c4-160050d8df27
70ea5945-7686-417a-8980-c4fdb01ecd93	3	1000.0	produto 2	\N	2022-02-04	t	2022-02-04 03:54:21.411873+00	2022-02-04 04:38:38.289352+00	44fe4817-40d1-4320-921f-8f9de3ea3b94	0900267f-61e3-492d-98c4-160050d8df27
ab5fa8a6-bb2e-4e28-9ab2-45ce424cc0b1	2	1000.5	ssss	\N	2022-04-03	t	2022-04-03 19:11:03.048997+00	2022-04-03 19:11:03.070819+00	8cdcf4be-bf72-4d69-a399-4fa192d69c8b	0900267f-61e3-492d-98c4-160050d8df27
\.


--
-- Data for Name: novidades_news; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.novidades_news (id, image, created_at, updated_at, link, title) FROM stdin;
68a144b6-d7f9-4b2a-9280-5533db295b01		2021-10-26 22:03:09.285464+00	2021-10-26 22:03:09.285485+00	https://sistema-dev.controlmilhas.com.br/	Inicial
\.


--
-- Data for Name: orcamentos_budget; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.orcamentos_budget (id, proposal_number, proposal_date, proposal_validity, coin, tariff_economic, tariff_executive, tariff_premiun, fuel_economic, fuel_executive, fuel_premiun, boarding_economic, boarding_executive, boarding_premiun, bags_acess_economic, bags_acess_executive, bags_acess_premiun, others_economic, others_executive, others_premiun, service_economic, service_executive, service_premiun, total_coin_economic, total_coin_executive, total_coin_premiun, total_economic, total_executive, total_premiun, airline_tickets, baggage_cabin, baggage_23, baggage_10, all_tx, transfer_hotel, priority, travel_insurance, created_at, updated_at, company_id, owner_id, client, payment_forms, proposal_deadline, infa_economic, infa_executive, infa_premiun, adults, babies, savings, email_client, kids, phone_client, price_company, ticket_details, adopted_rate, adopted_tax, capared_rate, custo_milheiro, economy_percent, economy_real, miles, tax1_cot1, tax1_cot2, tax1_ref_dol, tax2_cot1, tax2_cot2, tax2_ref_dol, tax3_cot1, tax3_cot2, tax3_ref_dol, tax4_cot1, tax4_cot2, tax4_ref_dol, tax5_cot1, tax5_cot2, tax5_ref_dol, tax6_cot1, tax6_cot2, tax6_ref_dol, total_cot1, total_cot2, total_geral_cot1, total_geral_cot2, total_geral_ref_dol, total_rate, total_real_cot1, total_real_cot2, total_real_ref_dol, total_ref_dol, baggage_bag_details, baggage_dispatch_details, baggage_hand_details, compared_rate, general_infos, saving_percent, saving_real, "showBagageDetails", "showGeneralInfos", "showPaymentForms", "showTicketDetails", tariff, taxes, thousand_cost, total, total_geral_dol, total_ticket1, total_ticket2, total_ticket_dol, show_compared_price, selected_currency_to_compare) FROM stdin;
3d905817-0836-4174-b5a8-ae0f609c104a	1	2021-11-04T00:17:33.213Z	2021-11-04T00:17:33.213Z	R$	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-11-04 00:16:47.985385+00	2021-11-04 00:17:31.23314+00	20c34a72-fd04-480e-8e11-71378bf8644a	84664fab-7dd5-4698-bcd2-683e26e1d20d	TESTE	DAWDWDDW	\N	\N	\N	\N	1	0	81.44	teste@teste.com	1	+12 (31) 23123-1231	1196.58		222	0	\N	\N	\N	\N	222	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	49.284	222	\N	222	49.284	222	1196.58	0	Deve caber embaixo do assento dianteiroddddd	Observar as dimensões e o peso estabelecidos pela Companhia.	Deve caber no compartimento superior do avião.	1196.58		81.44	974.58	t	f	t	f	222	0	222	222	222	49.284	222	222	t	$
\.


--
-- Data for Name: orcamentos_passenger; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.orcamentos_passenger (id, name, birth_date, cnpj_cpf, passport_rg, phone, created_at, updated_at, budget_id) FROM stdin;
\.


--
-- Data for Name: orcamentos_returnticket; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.orcamentos_returnticket (id, flight, airline, departure_date, departure_time, arrival_date, arrival_time, duration, stops, created_at, updated_at, budget_id, baggage_bag, baggage_dispatch, baggage_hand, classe, destination_airport, destination_city, origin_airport, origin_city) FROM stdin;
\.


--
-- Data for Name: orcamentos_wayticket; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.orcamentos_wayticket (id, flight, airline, departure_date, departure_time, arrival_date, arrival_time, duration, stops, created_at, updated_at, budget_id, baggage_bag, baggage_dispatch, baggage_hand, classe, destination_airport, destination_city, origin_airport, origin_city) FROM stdin;
a891a3a9-269d-4a83-b34d-90472d51fed9	FDADOWDJ	ADwdWD	22/11/2222	22:11	22/11/2222	23:23	22:12	1	2021-11-04 00:16:48.005802+00	2021-11-04 00:16:48.005824+00	3d905817-0836-4174-b5a8-ae0f609c104a	3	2	2	Executiva	22323	2212323	TESTE	TESTe
\.


--
-- Data for Name: pagamentos_payments; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pagamentos_payments (id, transaction, status, created_at, updated_at, product_id, user_id, payment_email) FROM stdin;
81790e5b-8c3a-4e2f-9664-15f83a6d57d8	HP02316330308193	APPROVED	2021-11-26 16:09:15.854697+00	2021-11-26 16:09:33.050287+00	6b08ee64-555f-48f1-b9b8-1e7cdb6417fa	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br
7c04adf9-a4a8-4a87-b6ed-81a6b164d694	HP16016401857678	APPROVED	2022-01-07 19:59:15.291464+00	2022-01-07 19:59:24.802953+00	6b08ee64-555f-48f1-b9b8-1e7cdb6417fa	0900267f-61e3-492d-98c4-160050d8df27	plinyosilvadev@gmail.com
8460532f-62f1-4bea-8fa3-6d5d0175a109	HP12916415856973	APPROVED	2022-01-07 20:06:41.584376+00	2022-01-07 20:06:41.584393+00	6b08ee64-555f-48f1-b9b8-1e7cdb6417fa	84664fab-7dd5-4698-bcd2-683e26e1d20d	wallace.gomes@teclat.com.br
\.


--
-- Data for Name: pagamentos_plans; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pagamentos_plans (id, product, id_hotmart, created_at, updated_at, description, link) FROM stdin;
6b08ee64-555f-48f1-b9b8-1e7cdb6417fa	Plano Premium	1540310	2021-11-26 16:08:53.028312+00	2022-01-07 19:58:46.813576+00	acesso premium ao SISTEMA CONTROL MILHAS	\N
\.


--
-- Data for Name: passageiros_passenger; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.passageiros_passenger (id, code, full_name, birth_date, cpf, identity, passport, cell, another_contact, email, status, notes, created_at, updated_at, owner_id) FROM stdin;
850c919a-69a6-4f32-b63c-e7f20dfe0e70	P1002	passageiro 1	1990-01-01	00000111223	\N	\N	\N	\N	\N	t		2021-12-09 17:01:07.856554+00	2021-12-09 17:01:07.856571+00	0900267f-61e3-492d-98c4-160050d8df27
fd0dfe34-3d53-489f-b557-43504b40b453	P1001	TESTESTE	1998-03-20	14420932893	\N	\N	\N	\N	\N	t	TESTE	2021-11-03 23:36:05.314742+00	2022-01-04 12:55:06.857405+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
5301edbf-99e2-4fcf-a352-2cff48a8a826	P1003	TESTE IDADE	1993-11-23	14423232323	adwdwdwd	\N	\N	\N	\N	t		2022-01-04 13:14:40.485+00	2022-01-04 13:16:48.633074+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
dd57ad3c-6347-4d8a-bdab-3cea75d411b0	P1004	TESTE	2022-01-07	12312312312	\N	\N	\N	\N	\N	t		2022-01-07 18:46:18.945702+00	2022-01-07 18:46:18.945719+00	b4c06e76-183a-4c51-8804-a2c039786fd3
\.


--
-- Data for Name: programas_programs; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.programas_programs (id, name, company, category, type, cpf_limitation, type_limitation, status, created_at, updated_at, photo) FROM stdin;
2	TUDO AZUL	AZUL	AÉREO	PRINCIPAL	50	INDETERMINADA	t	2021-11-05 00:59:21.516134+00	2021-12-30 12:12:39.916524+00	programs_img/TUDO_AZUL.jpeg
3	SMILES	GOL	AÉREO	MILHAS	50	Anual	t	2021-11-08 20:11:20.30371+00	2021-12-30 12:12:44.315694+00	programs_img/SMILES.png
1	LATAM PASS	latam	\N	\N	3	\N	t	2021-11-04 22:50:35.076244+00	2022-03-18 22:59:37.532139+00	programs_img/Latam_PASS.png
\.


--
-- Data for Name: suporte_support; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.suporte_support (id, category, title, content, created_at, updated_at, "order") FROM stdin;
0c4ac28b-420f-4658-88a1-a1ecccf08c51	Ferramentas	Outro TESTE	<p>Outra categoria</p>	2022-03-09 13:40:13.06243+00	2022-03-09 13:40:13.06246+00	2
98d3cef4-a63a-4896-9c42-41d7457de566	Tutorial	Teste 3	<p>Mais um teste 3</p>	2022-03-09 13:40:34.86009+00	2022-03-09 13:40:34.860118+00	3
3215f072-4fc6-4614-81db-709d07f074a5	Tutorial	Esse tem que vir primeiro	<p>TESTE primeiro</p>	2022-03-09 15:03:09.284684+00	2022-03-09 15:03:09.284703+00	1
2916a94f-942e-4647-999f-ef33dcd86aa0	Tutorial	TESTE	<p>Esse &eacute; s&oacute; um teste</p>	2022-03-09 13:39:53.708482+00	2022-03-09 15:04:05.530032+00	4
a43027ac-2a44-4c3e-89eb-aaf82fa3c6ee	Tutorial	TESTE 2	<p>Totorial 2</p>	2022-03-09 15:05:13.083764+00	2022-03-09 15:05:13.083861+00	2
\.


--
-- Data for Name: titulares_holder; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.titulares_holder (id, code, full_name, surname, cpf, identity, passport, cnh, birth_date, sign, cell, another_contact, email, cep, address, number, complement, state, city, district, bank, agency, number_account, pix_key, status, notes, created_at, updated_at, owner_id) FROM stdin;
9bcf51fb-beab-4f09-9227-d844ce36636d	T1001	asdawddawd	dawddw	21312323233	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-10-27 20:32:00.598174+00	2021-10-27 20:32:00.598194+00	3787f54d-da3c-46e7-8a13-b4bdfb120e31
fe52f95e-e49c-4b4e-93d6-36ce1d1d5bad	T1002	wdadwdwd	dawdwd	23515125251	222232222232323	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-10-27 20:32:09.254253+00	2021-10-27 20:32:17.594431+00	3787f54d-da3c-46e7-8a13-b4bdfb120e31
709cfd47-a168-409f-b528-027a0b208375	T1003	TESTESTES	APELIDO	44444444444	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-10-27 20:32:39.18429+00	2021-10-27 20:32:39.184312+00	3787f54d-da3c-46e7-8a13-b4bdfb120e31
9ac1cbd4-9b3c-4481-9be4-4f6ad5a97faf	T1001	admin	admin	\N	\N	\N	\N	\N	\N	(85) 98538-5235	\N	carlosvictortecprof@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-03 20:22:12.060412+00	2021-11-03 20:22:12.060432+00	ec1b14d2-6165-48d2-a49e-1d8316b23f65
eea6eb8e-3ea5-4f79-82c5-7a7361099c38	T1001	admin	admin	\N	\N	\N	\N	\N	\N	(85) 93213-1231	\N	teste@gmail.combr	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-03 20:26:45.32133+00	2021-11-03 20:26:45.32135+00	21e184d9-f929-4d38-b965-68f84ff98a81
630294ae-1bbb-4df9-b5ba-9a3752cf89b7	T1001	novo teste	novo teste	\N	\N	\N	\N	\N	\N	(85) 83213-1213	\N	novo@iteste.com.br	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-03 20:27:16.826455+00	2021-11-03 20:27:16.826478+00	14905b2f-d341-4021-b697-809098bd8651
00b70395-ade1-4c25-b20b-884379766eb8	T1001	Savio T	Savio T	\N	\N	\N	\N	\N	\N		\N	saviotorquato@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-03 20:27:35.634247+00	2021-11-03 20:27:35.634265+00	8fd31a84-1666-498b-932c-20743c9e8618
c58ea37e-b83e-4156-b29a-79a38532ad4a	T1001	Wallace	Wallace	\N	\N	\N	\N	\N	\N		\N	wallaceteste@teste.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-03 20:27:42.659273+00	2021-11-03 20:27:42.659293+00	d0dba31a-53e1-4df6-bf09-a3b61dcfa233
8090ad5c-0d2c-42be-9a8e-9d68220bfb43	T1001	Wallace TESTESTESTES	Wallace TESTESTESTES	\N	\N	\N	\N	\N	\N		\N	wallacetesteteste@teste.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-03 20:28:53.064726+00	2021-11-03 20:28:53.064745+00	ee8cb94e-6802-4c5a-a581-39ce7e2c68f0
2309da7d-d03d-4fbf-bf44-f3fae14fcee7	T1001	TESTANDO	TITULAR	14420782781	232323	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-03 23:20:40.942476+00	2021-11-03 23:20:40.942496+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
65539fd7-57cd-4c03-b442-4682a3352d04	T1001	Wallace TESTETESTE	Wallace TESTETESTE	\N	\N	\N	\N	\N	\N	(21) 97567-8836	\N	wallace.gomes@teste6.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-21 02:09:42.294491+00	2022-01-21 02:09:42.294507+00	d0043339-81ec-47b3-8f97-eaf35203b2bd
ffb080b7-90b0-4e49-8103-4c9b02e0e31b	T1005	TESTE STATUS	TESTE	21312321323	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f		2021-11-19 13:54:25.172063+00	2021-11-19 13:54:39.672175+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
16c3d82f-a200-46d5-a158-136306cf1bc0	T1006	INATIVO	INATIVO	21312312323	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f		2021-11-23 19:13:14.633416+00	2021-11-23 19:13:19.940876+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
70a81fc1-629a-4b0a-8337-c23228e2f2c4	T1004	TESTE	adkmwkdnwikd	12412412412	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f		2021-11-17 19:20:28.269416+00	2021-11-23 21:34:49.85323+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
dc437656-4d42-4d5d-a345-d50f90aead85	T1002	titular 2	titular 2	22222222222	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-03-31 13:41:37.653475+00	2022-03-31 13:41:37.653508+00	0900267f-61e3-492d-98c4-160050d8df27
c988d95e-f4eb-4104-8aed-272e0829b045	T1003	TESTE RELACIONAMENTO	RELACAO	93247239784	\N	\N	\N	2021-12-15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-08 12:04:23.953214+00	2021-12-16 02:15:27.551409+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
98b973be-b58d-4a7e-8bea-6c3361679d6c	T1002	Wallace Cardoso Gomes	WallStreet	14420782781	\N	\N	\N	\N	\N	\N	\N	wallace.gomes@teclat.com.br	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-03 23:21:33.293306+00	2021-12-23 19:43:05.37214+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
759908bc-94e3-4acb-82c7-1688ab901c7a	T1001	plinyo silva	plinyo silva	0000005222255	\N	\N	\N	\N	\N	\N	\N	plinyosilvadev@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2021-11-09 21:01:12.162845+00	2021-12-31 01:03:56.380206+00	0900267f-61e3-492d-98c4-160050d8df27
bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	T1008	RPA Smiles	RPA SMILES	23163240372	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-05 16:14:04.021005+00	2022-01-05 16:39:33.328118+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
d59170d4-b5e2-4f73-a108-6789c08c437c	T1001	Wallace Cardoso Gomes	Wallace Cardoso Gomes	\N	\N	\N	\N	\N	\N	(21) 97567-8836	\N	wallace.gomes2@teclat.com.br	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-06 23:34:23.33239+00	2022-01-06 23:34:23.332402+00	b4c06e76-183a-4c51-8804-a2c039786fd3
fb32ef50-afb5-4839-ac78-3e28e9aaf429	T1002	TESTE LIVELO	TESTE LIVELO	24592927320	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-06 23:59:19.754278+00	2022-01-06 23:59:19.754292+00	b4c06e76-183a-4c51-8804-a2c039786fd3
751fa42a-fa91-41ba-8a52-d69ddec813c2	T1007	RPA LIVELO	RPA LIVELO	24592927320	dwdwdw	\N	\N	\N	Escorpião	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-05 16:01:24.262046+00	2022-01-07 01:37:10.448706+00	84664fab-7dd5-4698-bcd2-683e26e1d20d
88fb2719-84c7-4cfb-b23a-ce455fc87cb6	T1001	gerdsonp@gmail.com	gerdsonp@gmail.com	\N	\N	\N	\N	\N	\N	(85) 98693-4550	\N	gerdsonp@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-11 18:36:28.407149+00	2022-01-11 18:36:28.407161+00	381b2a1a-6674-433d-bead-8c7d5a8462ee
9208bf7c-5d26-4968-aa13-1c295d8a86f8	T1001	Wallace Gomes	Wallace Gomes	\N	\N	\N	\N	\N	\N	(21) 97567-8836	\N	wallace.gomes3@teclat.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-11 18:38:16.490757+00	2022-01-11 18:38:16.490767+00	93f86f08-ea2a-4749-a902-d75280651b7b
f1c6baa9-85c5-48f7-abca-8445e1f51a1c	T1001	testedawdWDWD	testedawdWDWD	\N	\N	\N	\N	\N	\N	(21) 93829-3829	\N	teste2323@teste.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-14 14:10:30.119718+00	2022-01-14 14:10:30.119728+00	5f8da80c-905b-40c8-a1ba-fe4fc19b9bd2
5ba3c0de-301e-4e5a-8b2e-4a10e7f233bc	T1001	TESTE dawdawd	TESTE dawdawd	\N	\N	\N	\N	\N	\N	(23) 21321-3232	\N	teste12345@teste12345.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-16 21:42:08.625406+00	2022-01-16 21:42:08.62542+00	d61c2bb6-6a82-4933-99ea-b690a9eb4ad9
d5769f07-bbed-445f-a66f-f311eb433e7f	T1001	Plinyo Silva	Plinyo Silva	\N	\N	\N	\N	\N	\N	(85) 90000-0000	\N	plinyosilvadev20@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-16 21:44:50.780938+00	2022-01-16 21:44:50.780951+00	0deefd7f-ec79-45e6-800c-2101a586aa2d
651ede0e-1a41-403b-a6e5-c475037b2f0d	T1001	wallace teste 3	wallace teste 3	\N	\N	\N	\N	\N	\N	(21) 97667-8836	\N	wallace.gomes5@teclat.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-16 21:57:27.889807+00	2022-01-16 21:57:27.889822+00	50acd49c-7a3a-42d9-a5cc-0c40010516c5
9e26bd72-2d26-4a52-b334-9caf0324f6ed	T1001	plinyo	plinyo	\N	\N	\N	\N	\N	\N	(85) 98603-0000	\N	plinyosilvadev21@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		2022-01-17 10:09:52.393527+00	2022-01-17 10:09:52.393558+00	ee483e14-b3e5-47ba-a822-79f2b3be77fc
\.


--
-- Data for Name: titulares_points; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.titulares_points (id, program, points, expire_date, status, username, password, created_at, updated_at, holder_id, process, error, "passwordSent") FROM stdin;
e92dcb8a-c6e1-44b5-a3d7-d7a6fb43eeb5	smiles	\N	\N	f	\N	\N	2021-12-09 17:17:33.674156+00	2022-01-23 04:01:09.608855+00	759908bc-94e3-4acb-82c7-1688ab901c7a	f	f	f
70d3ef9c-dfb1-4a31-aa40-612a7a32da59	smiles	\N	\N	f	14420782781	wdawd	2021-11-17 19:18:35.350478+00	2022-04-26 04:02:04.357633+00	98b973be-b58d-4a7e-8bea-6c3361679d6c	f	f	f
76bf0942-cfaa-40ba-9fb7-3e803485399f	latam	\N	\N	f	14420782781	dawdwd	2021-11-17 19:18:34.372458+00	2022-04-26 04:03:08.367528+00	98b973be-b58d-4a7e-8bea-6c3361679d6c	f	f	f
495fd339-8bc7-4b40-b243-e89bc167d3da	livelo	\N	\N	f	14420782781	123	2022-02-18 15:23:06.729514+00	2022-04-26 04:03:29.934394+00	98b973be-b58d-4a7e-8bea-6c3361679d6c	f	t	t
aa37c0f0-ede3-4c25-baad-ec0ecc507b04	smiles	\N	\N	f	93247239784		2022-02-17 12:12:51.394259+00	2022-04-26 04:04:00.386755+00	c988d95e-f4eb-4104-8aed-272e0829b045	f	f	f
d253dc2e-5a02-436f-a019-08a6bf0c17c1	livelo	\N	\N	t	24592927320	134256	2022-01-07 00:10:26.985025+00	2022-04-26 04:04:27.782342+00	fb32ef50-afb5-4839-ac78-3e28e9aaf429	f	f	f
dad0a595-771c-4168-9780-5ba0a5c98f47	livelo	\N	\N	f	24592927320	134256	2022-01-05 16:01:50.332154+00	2022-04-26 04:04:50.340293+00	751fa42a-fa91-41ba-8a52-d69ddec813c2	f	f	f
e4d07bc4-194a-4ed6-be74-1dc3f195a73b	azul	\N	\N	f	0000005222255	12345678	2021-12-23 11:05:24.799648+00	2022-04-26 04:05:17.073788+00	759908bc-94e3-4acb-82c7-1688ab901c7a	f	f	f
d4c01f45-96ba-4c85-a04f-45bd08324428	SMILES	0	\N	f	\N	\N	2021-12-09 17:04:10.374783+00	2022-01-23 04:00:36.217277+00	759908bc-94e3-4acb-82c7-1688ab901c7a	f	f	f
336ede80-6378-408e-80e8-50432dffc378	tap	200	31/08/2022	t	wallacecardosogomes@gmail.com	Diagrama2015%	2021-12-23 12:59:17.180366+00	2022-04-26 04:05:43.694586+00	759908bc-94e3-4acb-82c7-1688ab901c7a	f	f	f
f1458936-d845-42ec-aec9-f3cb5a3f46c1	tap	\N	\N	f	dionisiagazos@gmail.com	8B#GHa4jcBp$yxcK	2021-12-23 18:29:31.450021+00	2022-04-26 04:06:17.514258+00	98b973be-b58d-4a7e-8bea-6c3361679d6c	f	t	t
575d5807-52c7-49ed-8589-73dc0c4ddc8f	azul	\N	\N	f	14420782781	wdwd	2021-11-17 19:18:36.378249+00	2022-04-26 04:06:44.941497+00	98b973be-b58d-4a7e-8bea-6c3361679d6c	f	f	f
9815fba5-ac87-4eba-bfaf-cd24f4f29769	smiles	\N	\N	f	23163240372	7941	2022-01-05 16:14:16.791317+00	2022-04-26 04:08:16.524166+00	bf5a2f0a-65e3-49fa-9e9f-ff2a50e68cad	f	f	f
\.


--
-- Name: account_account_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.account_account_groups_id_seq', 1, false);


--
-- Name: account_account_programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.account_account_programs_id_seq', 398, true);


--
-- Name: account_account_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.account_account_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 104, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 148, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 258, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 36, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 150, true);


--
-- Name: programas_programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.programas_programs_id_seq', 3, true);


--
-- Name: account_account account_account_email_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account
    ADD CONSTRAINT account_account_email_key UNIQUE (email);


--
-- Name: account_account_groups account_account_groups_account_id_group_id_33a11f43_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_groups
    ADD CONSTRAINT account_account_groups_account_id_group_id_33a11f43_uniq UNIQUE (account_id, group_id);


--
-- Name: account_account_groups account_account_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_groups
    ADD CONSTRAINT account_account_groups_pkey PRIMARY KEY (id);


--
-- Name: account_account account_account_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account
    ADD CONSTRAINT account_account_pkey PRIMARY KEY (id);


--
-- Name: account_account_programs account_account_programs_account_id_programs_id_67ef40f5_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_programs
    ADD CONSTRAINT account_account_programs_account_id_programs_id_67ef40f5_uniq UNIQUE (account_id, programs_id);


--
-- Name: account_account_programs account_account_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_programs
    ADD CONSTRAINT account_account_programs_pkey PRIMARY KEY (id);


--
-- Name: account_account_user_permissions account_account_user_per_account_id_permission_id_fa4fbca7_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_user_permissions
    ADD CONSTRAINT account_account_user_per_account_id_permission_id_fa4fbca7_uniq UNIQUE (account_id, permission_id);


--
-- Name: account_account_user_permissions account_account_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_user_permissions
    ADD CONSTRAINT account_account_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: account_company account_company_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_company
    ADD CONSTRAINT account_company_pkey PRIMARY KEY (id);


--
-- Name: account_userprograms account_userprograms_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_userprograms
    ADD CONSTRAINT account_userprograms_pkey PRIMARY KEY (id);


--
-- Name: applications_application applications_application_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.applications_application
    ADD CONSTRAINT applications_application_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: calculators_calculators calculators_calculators_owner_id_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.calculators_calculators
    ADD CONSTRAINT calculators_calculators_owner_id_key UNIQUE (owner_id);


--
-- Name: calculators_calculators calculators_calculators_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.calculators_calculators
    ADD CONSTRAINT calculators_calculators_pkey PRIMARY KEY (id);


--
-- Name: cartoes_card cartoes_card_owner_id_surname_5020f073_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cartoes_card
    ADD CONSTRAINT cartoes_card_owner_id_surname_5020f073_uniq UNIQUE (owner_id, surname);


--
-- Name: cartoes_card cartoes_card_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cartoes_card
    ADD CONSTRAINT cartoes_card_pkey PRIMARY KEY (id);


--
-- Name: coin_coin coin_coin_owner_id_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.coin_coin
    ADD CONSTRAINT coin_coin_owner_id_key UNIQUE (owner_id);


--
-- Name: coin_coin coin_coin_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.coin_coin
    ADD CONSTRAINT coin_coin_pkey PRIMARY KEY (id);


--
-- Name: compradores_buyer compradores_buyer_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.compradores_buyer
    ADD CONSTRAINT compradores_buyer_pkey PRIMARY KEY (id);


--
-- Name: cotacoes_platform cotacoes_platform_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cotacoes_platform
    ADD CONSTRAINT cotacoes_platform_pkey PRIMARY KEY (id);


--
-- Name: cotacoes_platformvalue cotacoes_platformvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cotacoes_platformvalue
    ADD CONSTRAINT cotacoes_platformvalue_pkey PRIMARY KEY (id);


--
-- Name: cotacoes_quote cotacoes_quote_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cotacoes_quote
    ADD CONSTRAINT cotacoes_quote_pkey PRIMARY KEY (id);


--
-- Name: cotacoes_quoteplatform cotacoes_quoteplatform_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cotacoes_quoteplatform
    ADD CONSTRAINT cotacoes_quoteplatform_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: gerenciador_emission gerenciador_emission_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_emission
    ADD CONSTRAINT gerenciador_emission_pkey PRIMARY KEY (id);


--
-- Name: gerenciador_launch gerenciador_launch_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_launch
    ADD CONSTRAINT gerenciador_launch_pkey PRIMARY KEY (id);


--
-- Name: gerenciador_manager gerenciador_manager_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_pkey PRIMARY KEY (id);


--
-- Name: gerenciador_milescpm gerenciador_milescpm_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_milescpm
    ADD CONSTRAINT gerenciador_milescpm_pkey PRIMARY KEY (id);


--
-- Name: gerenciador_product gerenciador_product_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_product
    ADD CONSTRAINT gerenciador_product_pkey PRIMARY KEY (id);


--
-- Name: novidades_news novidades_news_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.novidades_news
    ADD CONSTRAINT novidades_news_pkey PRIMARY KEY (id);


--
-- Name: orcamentos_budget orcamentos_budget_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_budget
    ADD CONSTRAINT orcamentos_budget_pkey PRIMARY KEY (id);


--
-- Name: orcamentos_passenger orcamentos_passenger_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_passenger
    ADD CONSTRAINT orcamentos_passenger_pkey PRIMARY KEY (id);


--
-- Name: orcamentos_returnticket orcamentos_returnticket_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_returnticket
    ADD CONSTRAINT orcamentos_returnticket_pkey PRIMARY KEY (id);


--
-- Name: orcamentos_wayticket orcamentos_wayticket_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_wayticket
    ADD CONSTRAINT orcamentos_wayticket_pkey PRIMARY KEY (id);


--
-- Name: pagamentos_plans pagamentos_products_id_hotmart_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pagamentos_plans
    ADD CONSTRAINT pagamentos_products_id_hotmart_key UNIQUE (id_hotmart);


--
-- Name: pagamentos_plans pagamentos_products_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pagamentos_plans
    ADD CONSTRAINT pagamentos_products_pkey PRIMARY KEY (id);


--
-- Name: pagamentos_plans pagamentos_products_product_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pagamentos_plans
    ADD CONSTRAINT pagamentos_products_product_key UNIQUE (product);


--
-- Name: pagamentos_payments pagamentos_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pagamentos_payments
    ADD CONSTRAINT pagamentos_sales_pkey PRIMARY KEY (id);


--
-- Name: pagamentos_payments pagamentos_sales_transaction_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pagamentos_payments
    ADD CONSTRAINT pagamentos_sales_transaction_key UNIQUE (transaction);


--
-- Name: passageiros_passenger passageiros_passenger_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.passageiros_passenger
    ADD CONSTRAINT passageiros_passenger_pkey PRIMARY KEY (id);


--
-- Name: programas_programs programas_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.programas_programs
    ADD CONSTRAINT programas_programs_pkey PRIMARY KEY (id);


--
-- Name: suporte_support suporte_support_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.suporte_support
    ADD CONSTRAINT suporte_support_pkey PRIMARY KEY (id);


--
-- Name: titulares_holder titulares_holder_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.titulares_holder
    ADD CONSTRAINT titulares_holder_pkey PRIMARY KEY (id);


--
-- Name: titulares_points titulares_points_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.titulares_points
    ADD CONSTRAINT titulares_points_pkey PRIMARY KEY (id);


--
-- Name: account_account_email_3d3b3e7a_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_account_email_3d3b3e7a_like ON public.account_account USING btree (email varchar_pattern_ops);


--
-- Name: account_account_groups_account_id_7aa27e9f; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_account_groups_account_id_7aa27e9f ON public.account_account_groups USING btree (account_id);


--
-- Name: account_account_groups_group_id_31ca8e7b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_account_groups_group_id_31ca8e7b ON public.account_account_groups USING btree (group_id);


--
-- Name: account_account_programs_account_id_0a1a419e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_account_programs_account_id_0a1a419e ON public.account_account_programs USING btree (account_id);


--
-- Name: account_account_programs_programs_id_560c6ff8; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_account_programs_programs_id_560c6ff8 ON public.account_account_programs USING btree (programs_id);


--
-- Name: account_account_user_permissions_account_id_8c2c4a68; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_account_user_permissions_account_id_8c2c4a68 ON public.account_account_user_permissions USING btree (account_id);


--
-- Name: account_account_user_permissions_permission_id_e6a453ba; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_account_user_permissions_permission_id_e6a453ba ON public.account_account_user_permissions USING btree (permission_id);


--
-- Name: account_company_user_id_6402f831; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_company_user_id_6402f831 ON public.account_company USING btree (user_id);


--
-- Name: account_userprograms_programs_id_811ff628; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_userprograms_programs_id_811ff628 ON public.account_userprograms USING btree (programs_id);


--
-- Name: account_userprograms_user_id_02928b67; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX account_userprograms_user_id_02928b67 ON public.account_userprograms USING btree (user_id);


--
-- Name: applications_application_owner_id_5b77f5bb; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX applications_application_owner_id_5b77f5bb ON public.applications_application USING btree (owner_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: cartoes_card_owner_id_28ac0bed; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX cartoes_card_owner_id_28ac0bed ON public.cartoes_card USING btree (owner_id);


--
-- Name: compradores_buyer_owner_id_6181086e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX compradores_buyer_owner_id_6181086e ON public.compradores_buyer USING btree (owner_id);


--
-- Name: cotacoes_platformvalue_quote_platform_id_8e586eaf; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX cotacoes_platformvalue_quote_platform_id_8e586eaf ON public.cotacoes_platformvalue USING btree (quote_platform_id);


--
-- Name: cotacoes_quote_program_id_bf7515d9; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX cotacoes_quote_program_id_bf7515d9 ON public.cotacoes_quote USING btree (program_id);


--
-- Name: cotacoes_quoteplatform_platform_id_c6da0b91; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX cotacoes_quoteplatform_platform_id_c6da0b91 ON public.cotacoes_quoteplatform USING btree (platform_id);


--
-- Name: cotacoes_quoteplatform_quote_id_8567d1f3; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX cotacoes_quoteplatform_quote_id_8567d1f3 ON public.cotacoes_quoteplatform USING btree (quote_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: gerenciador_emission_holder_id_d802ecf4; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_emission_holder_id_d802ecf4 ON public.gerenciador_emission USING btree (holder_id);


--
-- Name: gerenciador_emission_owner_id_bc70bd09; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_emission_owner_id_bc70bd09 ON public.gerenciador_emission USING btree (owner_id);


--
-- Name: gerenciador_emission_passenger_id_1ec5489e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_emission_passenger_id_1ec5489e ON public.gerenciador_emission USING btree (passenger_id);


--
-- Name: gerenciador_emission_program_id_84177e8c; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_emission_program_id_84177e8c ON public.gerenciador_emission USING btree (program_id);


--
-- Name: gerenciador_emission_protocol_id_27a55ee3; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_emission_protocol_id_27a55ee3 ON public.gerenciador_emission USING btree (protocol_id);


--
-- Name: gerenciador_launch_buyer_id_4abef295; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_launch_buyer_id_4abef295 ON public.gerenciador_launch USING btree (buyer_id);


--
-- Name: gerenciador_launch_holder_id_76470825; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_launch_holder_id_76470825 ON public.gerenciador_launch USING btree (holder_id);


--
-- Name: gerenciador_launch_manager_id_f607a39e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_launch_manager_id_f607a39e ON public.gerenciador_launch USING btree (manager_id);


--
-- Name: gerenciador_launch_owner_id_58283631; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_launch_owner_id_58283631 ON public.gerenciador_launch USING btree (owner_id);


--
-- Name: gerenciador_launch_payment_form_id_f974f889; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_launch_payment_form_id_f974f889 ON public.gerenciador_launch USING btree (payment_form_id);


--
-- Name: gerenciador_launch_program_id_4421a493; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_launch_program_id_4421a493 ON public.gerenciador_launch USING btree (program_id);


--
-- Name: gerenciador_manager_buyer_id_9d50589f; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_buyer_id_9d50589f ON public.gerenciador_manager USING btree (buyer_id);


--
-- Name: gerenciador_manager_holder_id_9d6952d5; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_holder_id_9d6952d5 ON public.gerenciador_manager USING btree (holder_id);


--
-- Name: gerenciador_manager_holder_transf_id_37762901; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_holder_transf_id_37762901 ON public.gerenciador_manager USING btree (holder_transf_id);


--
-- Name: gerenciador_manager_holfer_receive_id_490dc09c; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_holfer_receive_id_490dc09c ON public.gerenciador_manager USING btree (holder_receive_id);


--
-- Name: gerenciador_manager_origin_program_id_9768e753; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_origin_program_id_9768e753 ON public.gerenciador_manager USING btree (origin_program_id);


--
-- Name: gerenciador_manager_owner_id_4738c74f; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_owner_id_4738c74f ON public.gerenciador_manager USING btree (owner_id);


--
-- Name: gerenciador_manager_payment_form_id_e3938f92; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_payment_form_id_e3938f92 ON public.gerenciador_manager USING btree (payment_form_id);


--
-- Name: gerenciador_manager_program_id_6717f825; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_program_id_6717f825 ON public.gerenciador_manager USING btree (program_id);


--
-- Name: gerenciador_manager_target_program_id_c16d379c; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_manager_target_program_id_c16d379c ON public.gerenciador_manager USING btree (target_program_id);


--
-- Name: gerenciador_milescpm_holder_id_6523a4d1; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_milescpm_holder_id_6523a4d1 ON public.gerenciador_milescpm USING btree (holder_id);


--
-- Name: gerenciador_milescpm_owner_id_da096c70; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_milescpm_owner_id_da096c70 ON public.gerenciador_milescpm USING btree (owner_id);


--
-- Name: gerenciador_milescpm_program_id_7fd10bdf; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_milescpm_program_id_7fd10bdf ON public.gerenciador_milescpm USING btree (program_id);


--
-- Name: gerenciador_product_manager_id_f18b6193; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_product_manager_id_f18b6193 ON public.gerenciador_product USING btree (manager_id);


--
-- Name: gerenciador_product_owner_id_ac34c461; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX gerenciador_product_owner_id_ac34c461 ON public.gerenciador_product USING btree (owner_id);


--
-- Name: orcamentos_budget_company_id_24c0a422; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX orcamentos_budget_company_id_24c0a422 ON public.orcamentos_budget USING btree (company_id);


--
-- Name: orcamentos_budget_owner_id_d5f7fe18; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX orcamentos_budget_owner_id_d5f7fe18 ON public.orcamentos_budget USING btree (owner_id);


--
-- Name: orcamentos_passenger_budget_id_cf8bdf85; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX orcamentos_passenger_budget_id_cf8bdf85 ON public.orcamentos_passenger USING btree (budget_id);


--
-- Name: orcamentos_returnticket_budget_id_242523e8; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX orcamentos_returnticket_budget_id_242523e8 ON public.orcamentos_returnticket USING btree (budget_id);


--
-- Name: orcamentos_wayticket_budget_id_117c4d55; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX orcamentos_wayticket_budget_id_117c4d55 ON public.orcamentos_wayticket USING btree (budget_id);


--
-- Name: pagamentos_products_id_hotmart_f915a7a7_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pagamentos_products_id_hotmart_f915a7a7_like ON public.pagamentos_plans USING btree (id_hotmart varchar_pattern_ops);


--
-- Name: pagamentos_products_product_999b1c78_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pagamentos_products_product_999b1c78_like ON public.pagamentos_plans USING btree (product varchar_pattern_ops);


--
-- Name: pagamentos_sales_product_id_668bd457; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pagamentos_sales_product_id_668bd457 ON public.pagamentos_payments USING btree (product_id);


--
-- Name: pagamentos_sales_status_8a2a7e38_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pagamentos_sales_status_8a2a7e38_like ON public.pagamentos_payments USING btree (status varchar_pattern_ops);


--
-- Name: pagamentos_sales_transaction_c84b714b_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pagamentos_sales_transaction_c84b714b_like ON public.pagamentos_payments USING btree (transaction varchar_pattern_ops);


--
-- Name: pagamentos_sales_user_id_cf87e6df; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pagamentos_sales_user_id_cf87e6df ON public.pagamentos_payments USING btree (user_id);


--
-- Name: passageiros_passenger_owner_id_406fc081; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX passageiros_passenger_owner_id_406fc081 ON public.passageiros_passenger USING btree (owner_id);


--
-- Name: titulares_holder_owner_id_c380f80a; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX titulares_holder_owner_id_c380f80a ON public.titulares_holder USING btree (owner_id);


--
-- Name: titulares_points_holder_id_10fedc2f; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX titulares_points_holder_id_10fedc2f ON public.titulares_points USING btree (holder_id);


--
-- Name: account_account_groups account_account_grou_account_id_7aa27e9f_fk_account_a; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_groups
    ADD CONSTRAINT account_account_grou_account_id_7aa27e9f_fk_account_a FOREIGN KEY (account_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_account_groups account_account_groups_group_id_31ca8e7b_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_groups
    ADD CONSTRAINT account_account_groups_group_id_31ca8e7b_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_account_programs account_account_prog_account_id_0a1a419e_fk_account_a; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_programs
    ADD CONSTRAINT account_account_prog_account_id_0a1a419e_fk_account_a FOREIGN KEY (account_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_account_programs account_account_prog_programs_id_560c6ff8_fk_programas; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_programs
    ADD CONSTRAINT account_account_prog_programs_id_560c6ff8_fk_programas FOREIGN KEY (programs_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_account_user_permissions account_account_user_account_id_8c2c4a68_fk_account_a; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_user_permissions
    ADD CONSTRAINT account_account_user_account_id_8c2c4a68_fk_account_a FOREIGN KEY (account_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_account_user_permissions account_account_user_permission_id_e6a453ba_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_account_user_permissions
    ADD CONSTRAINT account_account_user_permission_id_e6a453ba_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_company account_company_user_id_6402f831_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_company
    ADD CONSTRAINT account_company_user_id_6402f831_fk_account_account_id FOREIGN KEY (user_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_userprograms account_userprograms_programs_id_811ff628_fk_programas; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_userprograms
    ADD CONSTRAINT account_userprograms_programs_id_811ff628_fk_programas FOREIGN KEY (programs_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_userprograms account_userprograms_user_id_02928b67_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.account_userprograms
    ADD CONSTRAINT account_userprograms_user_id_02928b67_fk_account_account_id FOREIGN KEY (user_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: applications_application applications_applica_owner_id_5b77f5bb_fk_account_a; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.applications_application
    ADD CONSTRAINT applications_applica_owner_id_5b77f5bb_fk_account_a FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_account_account_id FOREIGN KEY (user_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: calculators_calculators calculators_calculators_owner_id_b1750461_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.calculators_calculators
    ADD CONSTRAINT calculators_calculators_owner_id_b1750461_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cartoes_card cartoes_card_owner_id_28ac0bed_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cartoes_card
    ADD CONSTRAINT cartoes_card_owner_id_28ac0bed_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coin_coin coin_coin_owner_id_3935e096_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.coin_coin
    ADD CONSTRAINT coin_coin_owner_id_3935e096_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compradores_buyer compradores_buyer_owner_id_6181086e_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.compradores_buyer
    ADD CONSTRAINT compradores_buyer_owner_id_6181086e_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cotacoes_platformvalue cotacoes_platformval_quote_platform_id_8e586eaf_fk_cotacoes_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cotacoes_platformvalue
    ADD CONSTRAINT cotacoes_platformval_quote_platform_id_8e586eaf_fk_cotacoes_ FOREIGN KEY (quote_platform_id) REFERENCES public.cotacoes_quoteplatform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cotacoes_quote cotacoes_quote_program_id_bf7515d9_fk_programas_programs_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cotacoes_quote
    ADD CONSTRAINT cotacoes_quote_program_id_bf7515d9_fk_programas_programs_id FOREIGN KEY (program_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cotacoes_quoteplatform cotacoes_quoteplatfo_platform_id_c6da0b91_fk_cotacoes_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cotacoes_quoteplatform
    ADD CONSTRAINT cotacoes_quoteplatfo_platform_id_c6da0b91_fk_cotacoes_ FOREIGN KEY (platform_id) REFERENCES public.cotacoes_platform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cotacoes_quoteplatform cotacoes_quoteplatform_quote_id_8567d1f3_fk_cotacoes_quote_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.cotacoes_quoteplatform
    ADD CONSTRAINT cotacoes_quoteplatform_quote_id_8567d1f3_fk_cotacoes_quote_id FOREIGN KEY (quote_id) REFERENCES public.cotacoes_quote(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_account_id FOREIGN KEY (user_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_emission gerenciador_emission_holder_id_d802ecf4_fk_titulares_holder_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_emission
    ADD CONSTRAINT gerenciador_emission_holder_id_d802ecf4_fk_titulares_holder_id FOREIGN KEY (holder_id) REFERENCES public.titulares_holder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_emission gerenciador_emission_owner_id_bc70bd09_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_emission
    ADD CONSTRAINT gerenciador_emission_owner_id_bc70bd09_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_emission gerenciador_emission_passenger_id_1ec5489e_fk_passageir; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_emission
    ADD CONSTRAINT gerenciador_emission_passenger_id_1ec5489e_fk_passageir FOREIGN KEY (passenger_id) REFERENCES public.passageiros_passenger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_emission gerenciador_emission_program_id_84177e8c_fk_programas; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_emission
    ADD CONSTRAINT gerenciador_emission_program_id_84177e8c_fk_programas FOREIGN KEY (program_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_emission gerenciador_emission_protocol_id_27a55ee3_fk_gerenciad; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_emission
    ADD CONSTRAINT gerenciador_emission_protocol_id_27a55ee3_fk_gerenciad FOREIGN KEY (protocol_id) REFERENCES public.gerenciador_launch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_launch gerenciador_launch_buyer_id_4abef295_fk_compradores_buyer_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_launch
    ADD CONSTRAINT gerenciador_launch_buyer_id_4abef295_fk_compradores_buyer_id FOREIGN KEY (buyer_id) REFERENCES public.compradores_buyer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_launch gerenciador_launch_holder_id_76470825_fk_titulares_holder_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_launch
    ADD CONSTRAINT gerenciador_launch_holder_id_76470825_fk_titulares_holder_id FOREIGN KEY (holder_id) REFERENCES public.titulares_holder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_launch gerenciador_launch_manager_id_f607a39e_fk_gerenciad; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_launch
    ADD CONSTRAINT gerenciador_launch_manager_id_f607a39e_fk_gerenciad FOREIGN KEY (manager_id) REFERENCES public.gerenciador_manager(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_launch gerenciador_launch_owner_id_58283631_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_launch
    ADD CONSTRAINT gerenciador_launch_owner_id_58283631_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_launch gerenciador_launch_payment_form_id_f974f889_fk_cartoes_card_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_launch
    ADD CONSTRAINT gerenciador_launch_payment_form_id_f974f889_fk_cartoes_card_id FOREIGN KEY (payment_form_id) REFERENCES public.cartoes_card(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_launch gerenciador_launch_program_id_4421a493_fk_programas_programs_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_launch
    ADD CONSTRAINT gerenciador_launch_program_id_4421a493_fk_programas_programs_id FOREIGN KEY (program_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_buyer_id_9d50589f_fk_compradores_buyer_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_buyer_id_9d50589f_fk_compradores_buyer_id FOREIGN KEY (buyer_id) REFERENCES public.compradores_buyer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_holder_id_9d6952d5_fk_titulares_holder_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_holder_id_9d6952d5_fk_titulares_holder_id FOREIGN KEY (holder_id) REFERENCES public.titulares_holder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_holder_receive_id_d27049c3_fk_titulares; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_holder_receive_id_d27049c3_fk_titulares FOREIGN KEY (holder_receive_id) REFERENCES public.titulares_holder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_holder_transf_id_37762901_fk_titulares; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_holder_transf_id_37762901_fk_titulares FOREIGN KEY (holder_transf_id) REFERENCES public.titulares_holder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_origin_program_id_9768e753_fk_programas; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_origin_program_id_9768e753_fk_programas FOREIGN KEY (origin_program_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_owner_id_4738c74f_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_owner_id_4738c74f_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_payment_form_id_e3938f92_fk_cartoes_card_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_payment_form_id_e3938f92_fk_cartoes_card_id FOREIGN KEY (payment_form_id) REFERENCES public.cartoes_card(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_program_id_6717f825_fk_programas; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_program_id_6717f825_fk_programas FOREIGN KEY (program_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_manager gerenciador_manager_target_program_id_c16d379c_fk_programas; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_manager
    ADD CONSTRAINT gerenciador_manager_target_program_id_c16d379c_fk_programas FOREIGN KEY (target_program_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_milescpm gerenciador_milescpm_holder_id_6523a4d1_fk_titulares_holder_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_milescpm
    ADD CONSTRAINT gerenciador_milescpm_holder_id_6523a4d1_fk_titulares_holder_id FOREIGN KEY (holder_id) REFERENCES public.titulares_holder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_milescpm gerenciador_milescpm_owner_id_da096c70_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_milescpm
    ADD CONSTRAINT gerenciador_milescpm_owner_id_da096c70_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_milescpm gerenciador_milescpm_program_id_7fd10bdf_fk_programas; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_milescpm
    ADD CONSTRAINT gerenciador_milescpm_program_id_7fd10bdf_fk_programas FOREIGN KEY (program_id) REFERENCES public.programas_programs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_product gerenciador_product_manager_id_f18b6193_fk_gerenciad; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_product
    ADD CONSTRAINT gerenciador_product_manager_id_f18b6193_fk_gerenciad FOREIGN KEY (manager_id) REFERENCES public.gerenciador_manager(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerenciador_product gerenciador_product_owner_id_ac34c461_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.gerenciador_product
    ADD CONSTRAINT gerenciador_product_owner_id_ac34c461_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orcamentos_budget orcamentos_budget_company_id_24c0a422_fk_account_company_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_budget
    ADD CONSTRAINT orcamentos_budget_company_id_24c0a422_fk_account_company_id FOREIGN KEY (company_id) REFERENCES public.account_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orcamentos_budget orcamentos_budget_owner_id_d5f7fe18_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_budget
    ADD CONSTRAINT orcamentos_budget_owner_id_d5f7fe18_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orcamentos_passenger orcamentos_passenger_budget_id_cf8bdf85_fk_orcamentos_budget_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_passenger
    ADD CONSTRAINT orcamentos_passenger_budget_id_cf8bdf85_fk_orcamentos_budget_id FOREIGN KEY (budget_id) REFERENCES public.orcamentos_budget(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orcamentos_returnticket orcamentos_returntic_budget_id_242523e8_fk_orcamento; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_returnticket
    ADD CONSTRAINT orcamentos_returntic_budget_id_242523e8_fk_orcamento FOREIGN KEY (budget_id) REFERENCES public.orcamentos_budget(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orcamentos_wayticket orcamentos_wayticket_budget_id_117c4d55_fk_orcamentos_budget_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.orcamentos_wayticket
    ADD CONSTRAINT orcamentos_wayticket_budget_id_117c4d55_fk_orcamentos_budget_id FOREIGN KEY (budget_id) REFERENCES public.orcamentos_budget(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pagamentos_payments pagamentos_payments_product_id_49e43edb_fk_pagamentos_plans_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pagamentos_payments
    ADD CONSTRAINT pagamentos_payments_product_id_49e43edb_fk_pagamentos_plans_id FOREIGN KEY (product_id) REFERENCES public.pagamentos_plans(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pagamentos_payments pagamentos_sales_user_id_cf87e6df_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pagamentos_payments
    ADD CONSTRAINT pagamentos_sales_user_id_cf87e6df_fk_account_account_id FOREIGN KEY (user_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: passageiros_passenger passageiros_passenger_owner_id_406fc081_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.passageiros_passenger
    ADD CONSTRAINT passageiros_passenger_owner_id_406fc081_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: titulares_holder titulares_holder_owner_id_c380f80a_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.titulares_holder
    ADD CONSTRAINT titulares_holder_owner_id_c380f80a_fk_account_account_id FOREIGN KEY (owner_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: titulares_points titulares_points_holder_id_10fedc2f_fk_titulares_holder_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.titulares_points
    ADD CONSTRAINT titulares_points_holder_id_10fedc2f_fk_titulares_holder_id FOREIGN KEY (holder_id) REFERENCES public.titulares_holder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

