--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO deploy;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO deploy;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO deploy;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: category_videos; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.category_videos (
    id bigint NOT NULL,
    category_id bigint NOT NULL,
    video_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.category_videos OWNER TO deploy;

--
-- Name: category_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.category_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_videos_id_seq OWNER TO deploy;

--
-- Name: category_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.category_videos_id_seq OWNED BY public.category_videos.id;


--
-- Name: friendships; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.friendships (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    friend_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.friendships OWNER TO deploy;

--
-- Name: friendships_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.friendships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendships_id_seq OWNER TO deploy;

--
-- Name: friendships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.friendships_id_seq OWNED BY public.friendships.id;


--
-- Name: pornstar_videos; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.pornstar_videos (
    id bigint NOT NULL,
    pornstar_id bigint NOT NULL,
    video_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.pornstar_videos OWNER TO deploy;

--
-- Name: pornstar_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.pornstar_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pornstar_videos_id_seq OWNER TO deploy;

--
-- Name: pornstar_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.pornstar_videos_id_seq OWNED BY public.pornstar_videos.id;


--
-- Name: pornstars; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.pornstars (
    id bigint NOT NULL,
    name character varying,
    dob date,
    "from" character varying,
    years character varying,
    ethnicity character varying,
    nationality character varying,
    measurements character varying,
    brasize character varying,
    height integer,
    weight integer,
    bodytype character varying,
    eyecolor character varying,
    hair character varying,
    show character varying,
    solo boolean,
    lesbian boolean,
    sex character varying,
    hetero boolean,
    special text,
    story text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    alias integer[],
    links character varying[]
);


ALTER TABLE public.pornstars OWNER TO deploy;

--
-- Name: pornstars_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.pornstars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pornstars_id_seq OWNER TO deploy;

--
-- Name: pornstars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.pornstars_id_seq OWNED BY public.pornstars.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO deploy;

--
-- Name: stocks; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.stocks (
    id bigint NOT NULL,
    ticker character varying,
    name character varying,
    last_price numeric,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    logo character varying
);


ALTER TABLE public.stocks OWNER TO deploy;

--
-- Name: stocks_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.stocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stocks_id_seq OWNER TO deploy;

--
-- Name: stocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.stocks_id_seq OWNED BY public.stocks.id;


--
-- Name: tag_videos; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.tag_videos (
    id bigint NOT NULL,
    tag_id bigint NOT NULL,
    video_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tag_videos OWNER TO deploy;

--
-- Name: tag_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.tag_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_videos_id_seq OWNER TO deploy;

--
-- Name: tag_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.tag_videos_id_seq OWNED BY public.tag_videos.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO deploy;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO deploy;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: user_stocks; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.user_stocks (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    stock_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.user_stocks OWNER TO deploy;

--
-- Name: user_stocks_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.user_stocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_stocks_id_seq OWNER TO deploy;

--
-- Name: user_stocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.user_stocks_id_seq OWNED BY public.user_stocks.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    admin boolean DEFAULT false,
    username character varying
);


ALTER TABLE public.users OWNER TO deploy;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO deploy;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: videos; Type: TABLE; Schema: public; Owner: deploy
--

CREATE TABLE public.videos (
    id bigint NOT NULL,
    site character varying,
    embed text,
    pornstars text,
    category text,
    duration integer,
    views integer,
    likes integer,
    dislikes integer,
    bigthumb text,
    bigthumbs text,
    weblink text,
    title text,
    thumb character varying,
    tags text,
    video_id character varying,
    thumbs text,
    preview text,
    description text,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.videos OWNER TO deploy;

--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE public.videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_id_seq OWNER TO deploy;

--
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: category_videos id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.category_videos ALTER COLUMN id SET DEFAULT nextval('public.category_videos_id_seq'::regclass);


--
-- Name: friendships id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.friendships ALTER COLUMN id SET DEFAULT nextval('public.friendships_id_seq'::regclass);


--
-- Name: pornstar_videos id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.pornstar_videos ALTER COLUMN id SET DEFAULT nextval('public.pornstar_videos_id_seq'::regclass);


--
-- Name: pornstars id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.pornstars ALTER COLUMN id SET DEFAULT nextval('public.pornstars_id_seq'::regclass);


--
-- Name: stocks id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.stocks ALTER COLUMN id SET DEFAULT nextval('public.stocks_id_seq'::regclass);


--
-- Name: tag_videos id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.tag_videos ALTER COLUMN id SET DEFAULT nextval('public.tag_videos_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: user_stocks id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.user_stocks ALTER COLUMN id SET DEFAULT nextval('public.user_stocks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: videos id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: category_videos category_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.category_videos
    ADD CONSTRAINT category_videos_pkey PRIMARY KEY (id);


--
-- Name: friendships friendships_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.friendships
    ADD CONSTRAINT friendships_pkey PRIMARY KEY (id);


--
-- Name: pornstar_videos pornstar_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.pornstar_videos
    ADD CONSTRAINT pornstar_videos_pkey PRIMARY KEY (id);


--
-- Name: pornstars pornstars_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.pornstars
    ADD CONSTRAINT pornstars_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: stocks stocks_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_pkey PRIMARY KEY (id);


--
-- Name: tag_videos tag_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.tag_videos
    ADD CONSTRAINT tag_videos_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: user_stocks user_stocks_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.user_stocks
    ADD CONSTRAINT user_stocks_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- Name: index_category_videos_on_category_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_category_videos_on_category_id ON public.category_videos USING btree (category_id);


--
-- Name: index_category_videos_on_video_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_category_videos_on_video_id ON public.category_videos USING btree (video_id);


--
-- Name: index_friendships_on_friend_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_friendships_on_friend_id ON public.friendships USING btree (friend_id);


--
-- Name: index_friendships_on_user_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_friendships_on_user_id ON public.friendships USING btree (user_id);


--
-- Name: index_pornstar_videos_on_pornstar_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_pornstar_videos_on_pornstar_id ON public.pornstar_videos USING btree (pornstar_id);


--
-- Name: index_pornstar_videos_on_video_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_pornstar_videos_on_video_id ON public.pornstar_videos USING btree (video_id);


--
-- Name: index_tag_videos_on_tag_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_tag_videos_on_tag_id ON public.tag_videos USING btree (tag_id);


--
-- Name: index_tag_videos_on_video_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_tag_videos_on_video_id ON public.tag_videos USING btree (video_id);


--
-- Name: index_user_stocks_on_stock_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_user_stocks_on_stock_id ON public.user_stocks USING btree (stock_id);


--
-- Name: index_user_stocks_on_user_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_user_stocks_on_user_id ON public.user_stocks USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: deploy
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: deploy
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_videos_on_site; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_videos_on_site ON public.videos USING btree (site);


--
-- Name: index_videos_on_site_and_video_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE UNIQUE INDEX index_videos_on_site_and_video_id ON public.videos USING btree (site, video_id);


--
-- Name: index_videos_on_video_id; Type: INDEX; Schema: public; Owner: deploy
--

CREATE INDEX index_videos_on_video_id ON public.videos USING btree (video_id);


--
-- Name: user_stocks fk_rails_15a036aef2; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.user_stocks
    ADD CONSTRAINT fk_rails_15a036aef2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: pornstar_videos fk_rails_19dd318781; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.pornstar_videos
    ADD CONSTRAINT fk_rails_19dd318781 FOREIGN KEY (video_id) REFERENCES public.videos(id);


--
-- Name: category_videos fk_rails_2fb6f15396; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.category_videos
    ADD CONSTRAINT fk_rails_2fb6f15396 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: pornstar_videos fk_rails_506ac2372a; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.pornstar_videos
    ADD CONSTRAINT fk_rails_506ac2372a FOREIGN KEY (pornstar_id) REFERENCES public.pornstars(id);


--
-- Name: user_stocks fk_rails_62699afff5; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.user_stocks
    ADD CONSTRAINT fk_rails_62699afff5 FOREIGN KEY (stock_id) REFERENCES public.stocks(id);


--
-- Name: tag_videos fk_rails_86ea732dc0; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.tag_videos
    ADD CONSTRAINT fk_rails_86ea732dc0 FOREIGN KEY (video_id) REFERENCES public.videos(id);


--
-- Name: tag_videos fk_rails_8ad8f79f08; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.tag_videos
    ADD CONSTRAINT fk_rails_8ad8f79f08 FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: friendships fk_rails_d78dc9c7fd; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.friendships
    ADD CONSTRAINT fk_rails_d78dc9c7fd FOREIGN KEY (friend_id) REFERENCES public.users(id);


--
-- Name: category_videos fk_rails_d8d2f6a78e; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.category_videos
    ADD CONSTRAINT fk_rails_d8d2f6a78e FOREIGN KEY (video_id) REFERENCES public.videos(id);


--
-- Name: friendships fk_rails_e3733b59b7; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY public.friendships
    ADD CONSTRAINT fk_rails_e3733b59b7 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

