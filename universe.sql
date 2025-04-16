--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(100) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean NOT NULL,
    diameter integer,
    orbit_time numeric,
    is_spherical boolean
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
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    planet_type text,
    distance_from_star integer,
    is_spherical boolean
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
-- Name: readme; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.readme (
    description character varying(100),
    name character varying(30),
    readme_id integer NOT NULL,
    non_null integer NOT NULL,
    non_null_2 integer NOT NULL
);


ALTER TABLE public.readme OWNER TO freecodecamp;

--
-- Name: readme_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.readme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.readme_id_seq OWNER TO freecodecamp;

--
-- Name: readme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.readme_id_seq OWNED BY public.readme.readme_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric,
    is_active boolean NOT NULL,
    temperature integer,
    has_planets boolean
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: readme readme_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.readme ALTER COLUMN readme_id SET DEFAULT nextval('public.readme_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, 13600, 0, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', false, 14000, 2537000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy near Andromeda', false, 12000, 3000000, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Unusual galaxy with bright core', false, 10000, 29000000, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Face-on spiral galaxy', false, 10000, 23000000, true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular galaxy in Sculptor constellation', false, 400, 500000000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, false, 3475, 27.3, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, false, 22, 0.3, true);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, false, 12, 1.3, false);
INSERT INTO public.moon VALUES (4, 'Europa', 3, false, 3121, 3.5, true);
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, false, 5268, 7.1, true);
INSERT INTO public.moon VALUES (6, 'Callisto', 3, false, 4820, 16.7, true);
INSERT INTO public.moon VALUES (7, 'Titan', 4, false, 5150, 15.9, true);
INSERT INTO public.moon VALUES (8, 'Enceladus', 4, false, 504, 1.4, true);
INSERT INTO public.moon VALUES (9, 'Mimas', 4, false, 396, 0.9, true);
INSERT INTO public.moon VALUES (10, 'Io', 3, false, 3642, 1.8, true);
INSERT INTO public.moon VALUES (11, 'Triton', 5, false, 2706, 5.9, true);
INSERT INTO public.moon VALUES (12, 'Charon', 6, false, 1207, 6.4, true);
INSERT INTO public.moon VALUES (13, 'Vega I-a', 11, false, 800, 3.2, true);
INSERT INTO public.moon VALUES (14, 'Vega I-b', 11, false, 600, 1.7, true);
INSERT INTO public.moon VALUES (15, 'Sirius b1-m1', 8, false, 900, 2.0, true);
INSERT INTO public.moon VALUES (16, 'Sirius b1-m2', 8, false, 700, 3.1, true);
INSERT INTO public.moon VALUES (17, 'Rigel Prime-1', 10, false, 2000, 6.5, true);
INSERT INTO public.moon VALUES (18, 'Rigel Prime-2', 10, false, 1800, 7.2, true);
INSERT INTO public.moon VALUES (19, 'Vega II-a', 12, false, 1500, 4.5, true);
INSERT INTO public.moon VALUES (20, 'Vega II-b', 12, false, 1300, 4.0, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Terrestrial', 150, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 'Terrestrial', 228, true);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, false, 'Gas Giant', 778, true);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, false, 'Gas Giant', 1430, true);
INSERT INTO public.planet VALUES (5, 'Mercury', 1, false, 'Terrestrial', 58, true);
INSERT INTO public.planet VALUES (6, 'Venus', 1, false, 'Terrestrial', 108, true);
INSERT INTO public.planet VALUES (7, 'Proxima b', 2, false, 'Exoplanet', 5, true);
INSERT INTO public.planet VALUES (8, 'Sirius b1', 3, false, 'Rocky', 520, true);
INSERT INTO public.planet VALUES (9, 'Betelgeuse Alpha', 4, false, 'Gas Giant', 3000, true);
INSERT INTO public.planet VALUES (10, 'Rigel Prime', 5, false, 'Rocky', 1500, true);
INSERT INTO public.planet VALUES (11, 'Vega I', 6, false, 'Terrestrial', 900, true);
INSERT INTO public.planet VALUES (12, 'Vega II', 6, false, 'Gas Giant', 1100, true);


--
-- Data for Name: readme; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.readme VALUES ('test row 1', 'test', 1, 1, 1);
INSERT INTO public.readme VALUES ('test row 2', 'test2', 2, 2, 2);
INSERT INTO public.readme VALUES ('test row 3', 'test3', 3, 3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1989000000000000000000000000000, true, 5778, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 244600000000000000000000000000, true, 3042, true);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 4018000000000000000000000000000, true, 9940, true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 27800000000000000000000000000000, true, 3500, true);
INSERT INTO public.star VALUES (5, 'Rigel', 1, 35000000000000000000000000000000, true, 12100, true);
INSERT INTO public.star VALUES (6, 'Vega', 1, 4100000000000000000000000000000, true, 9602, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: readme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.readme_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: readme readme_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.readme
    ADD CONSTRAINT readme_name_key UNIQUE (name);


--
-- Name: readme readme_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.readme
    ADD CONSTRAINT readme_pkey PRIMARY KEY (readme_id);


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

