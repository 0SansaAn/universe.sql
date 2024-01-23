--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric,
    distance_from_earch integer,
    distance_from_moon integer,
    has_life boolean NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: id; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.id (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    id_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.id OWNER TO freecodecamp;

--
-- Name: id_id_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.id_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_id_id_seq OWNER TO freecodecamp;

--
-- Name: id_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.id_id_id_seq OWNED BY public.id.id_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean NOT NULL,
    description text NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean NOT NULL,
    description text NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric(4,1),
    distance_from_earth integer,
    has_life boolean NOT NULL,
    description text NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: id id_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.id ALTER COLUMN id_id SET DEFAULT nextval('public.id_id_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 3.45, 3, 4, false, 'Andromeda');
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxy', 3.45, 3, 4, false, 'Antennae Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 3.45, 3, 4, false, 'Backward Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 3.45, 3, 4, false, 'Black Eye Galaxy');
INSERT INTO public.galaxy VALUES (5, 'Bode’s Galaxy', 3.45, 3, 4, false, 'Bode’s Galaxy');
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 3.45, 3, 4, false, 'Butterfly Galaxies');


--
-- Data for Name: id; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.id VALUES (1, 2, 1, 3, 'beauty');
INSERT INTO public.id VALUES (1, 2, 2, 3, 'amazing');
INSERT INTO public.id VALUES (2, 3, 3, 4, 'interesting');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 3.4, 4, true, 'moon1', 2);
INSERT INTO public.moon VALUES (2, 'moon2', 3.2, 5, true, 'moon2', 17);
INSERT INTO public.moon VALUES (3, 'moon3', 5.7, 3, false, 'moon3', 3);
INSERT INTO public.moon VALUES (4, 'moon4', 6.7, 4, true, 'moon4', 4);
INSERT INTO public.moon VALUES (5, 'moon5', 7.8, 5, false, 'moon5', 5);
INSERT INTO public.moon VALUES (6, 'moon6', 3.4, 4, true, 'moon6', 2);
INSERT INTO public.moon VALUES (7, 'moon7', 3.2, 5, true, 'moon7', 17);
INSERT INTO public.moon VALUES (8, 'moon8', 5.7, 3, false, 'moon8', 3);
INSERT INTO public.moon VALUES (9, 'moon9', 6.7, 4, true, 'moon9', 4);
INSERT INTO public.moon VALUES (10, 'moon10', 7.8, 5, false, 'moon10', 5);
INSERT INTO public.moon VALUES (11, 'moon15', 3.4, 4, true, 'moon15', 2);
INSERT INTO public.moon VALUES (12, 'moon14', 3.2, 5, true, 'moon14', 17);
INSERT INTO public.moon VALUES (13, 'moon13', 5.7, 3, false, 'moon13', 3);
INSERT INTO public.moon VALUES (14, 'moon12', 6.7, 4, true, 'moon12', 4);
INSERT INTO public.moon VALUES (15, 'moon11', 7.8, 5, false, 'moon11', 5);
INSERT INTO public.moon VALUES (16, 'moon16', 3.4, 4, true, 'moon16', 2);
INSERT INTO public.moon VALUES (17, 'moon74', 3.2, 5, true, 'moon74', 17);
INSERT INTO public.moon VALUES (18, 'moon83', 5.7, 3, false, 'moon83', 3);
INSERT INTO public.moon VALUES (19, 'moon92', 6.7, 4, true, 'moon92', 4);
INSERT INTO public.moon VALUES (20, 'moon20', 7.8, 5, false, 'moon20', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'planet1', 2.3, 1, true, 'planet1', 11);
INSERT INTO public.planet VALUES (3, 'planet2', 3.4, 2, true, 'planet2', 12);
INSERT INTO public.planet VALUES (4, 'planet3', 1.3, 3, true, 'planet3', 13);
INSERT INTO public.planet VALUES (5, 'planet4', 1.4, 4, false, 'planet4', 11);
INSERT INTO public.planet VALUES (6, 'planet5', 1.5, 5, true, 'planet5', 12);
INSERT INTO public.planet VALUES (8, 'planet7', 4.6, 7, true, 'planet7', 15);
INSERT INTO public.planet VALUES (9, 'planet8', 4.6, 4, false, 'planet8', 14);
INSERT INTO public.planet VALUES (10, 'planet9', 2.3, 1, true, 'planet9', 11);
INSERT INTO public.planet VALUES (11, 'planet10', 3.4, 2, true, 'planet10', 12);
INSERT INTO public.planet VALUES (12, 'planet11', 1.3, 3, true, 'planet11', 13);
INSERT INTO public.planet VALUES (13, 'planet12', 1.4, 4, false, 'planet12', 11);
INSERT INTO public.planet VALUES (14, 'planet13', 1.5, 5, true, 'planet13', 12);
INSERT INTO public.planet VALUES (15, 'planet14', 4.5, 2, false, 'planet14', 16);
INSERT INTO public.planet VALUES (16, 'planet15', 4.6, 7, true, 'planet15', 15);
INSERT INTO public.planet VALUES (17, 'planet16', 4.6, 4, false, 'planet16', 14);
INSERT INTO public.planet VALUES (7, 'planet6', 4.5, 2, false, 'planet6', 16);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (11, 'star1', 23.2, 4, false, 'star1', 1);
INSERT INTO public.star VALUES (12, 'star2', 34.2, 2, false, 'star2', 2);
INSERT INTO public.star VALUES (13, 'star3', 23.4, 3, true, 'star3', 3);
INSERT INTO public.star VALUES (14, 'star4', 34.5, 4, true, 'star4', 4);
INSERT INTO public.star VALUES (15, 'star5', 34.2, 5, false, 'star5', 5);
INSERT INTO public.star VALUES (16, 'star6', 15.5, 6, true, 'star6', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: id_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.id_id_id_seq', 33, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 16, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: id id_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_name_key UNIQUE (name);


--
-- Name: id id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_pkey PRIMARY KEY (id_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

