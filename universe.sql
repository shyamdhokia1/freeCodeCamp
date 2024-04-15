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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance numeric(5,2) NOT NULL,
    description text
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    age integer NOT NULL,
    description text,
    distance numeric(5,2),
    has_life boolean NOT NULL,
    is_big boolean NOT NULL
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
    name character varying(60),
    age integer NOT NULL,
    description text,
    distance numeric(5,2),
    has_rocks boolean NOT NULL,
    is_big boolean NOT NULL,
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
    name character varying(60),
    age integer NOT NULL,
    description text,
    distance numeric(5,2),
    has_moons boolean NOT NULL,
    is_big boolean NOT NULL,
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
    name character varying(60),
    age integer NOT NULL,
    description text,
    distance numeric(5,2),
    has_planets boolean NOT NULL,
    is_big boolean NOT NULL,
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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Ceres', 4600000, 413.79, 'The largest asteroid in the asteroid belt');
INSERT INTO public.asteroids VALUES (2, 'Vesta', 4600000, 324.62, 'The second-largest asteroid in the asteroid belt');
INSERT INTO public.asteroids VALUES (3, 'Pallas', 4600000, 401.78, 'One of the largest asteroids in the asteroid belt');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Wimble', 344, 'So dank', 423.45, true, false);
INSERT INTO public.galaxy VALUES (2, 'jimble', 344, 'So dank', 423.45, true, false);
INSERT INTO public.galaxy VALUES (3, 'Wble', 344, 'So dank', 423.45, true, false);
INSERT INTO public.galaxy VALUES (4, 'Wie', 344, 'So dank', 423.45, true, false);
INSERT INTO public.galaxy VALUES (5, 'ble', 344, 'So dank', 423.45, true, false);
INSERT INTO public.galaxy VALUES (6, 'Wime', 344, 'So dank', 423.45, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Krendelion', 23234, 'oh shizznit', 231.23, true, true, 5);
INSERT INTO public.moon VALUES (2, 'Noctis', 12345, 'A mysterious, dark moon', 876.54, true, true, 3);
INSERT INTO public.moon VALUES (3, 'Aurum', 4567, 'A glittering, golden moon', 210.98, true, false, 6);
INSERT INTO public.moon VALUES (4, 'Aquaris', 9876, 'A water-covered, oceanic moon', 654.32, true, true, 5);
INSERT INTO public.moon VALUES (5, 'Zephyra', 3210, 'A wind-swept, ethereal moon', 109.87, false, false, 1);
INSERT INTO public.moon VALUES (6, 'Ignita', 6789, 'A fiery, volcanic moon', 234.56, true, true, 4);
INSERT INTO public.moon VALUES (7, 'Crystalis', 2109, 'A moon of crystalline formations', 765.43, true, false, 7);
INSERT INTO public.moon VALUES (8, 'Sylvana', 8765, 'A lush, forested moon', 345.67, true, true, 6);
INSERT INTO public.moon VALUES (9, 'Glacius', 1234, 'A frozen, icy moon', 901.23, false, true, 7);
INSERT INTO public.moon VALUES (10, 'Luminaria', 5678, 'A brightly lit, radiant moon', 456.78, false, false, 8);
INSERT INTO public.moon VALUES (11, 'Erosus', 9012, 'A weathered, rocky moon', 210.98, true, true, 9);
INSERT INTO public.moon VALUES (12, 'Verdanta', 3456, 'A lush, verdant moon', 654.32, true, false, 10);
INSERT INTO public.moon VALUES (13, 'Vorticia', 7890, 'A chaotic, swirling moon', 109.87, false, true, 11);
INSERT INTO public.moon VALUES (14, 'Serenitas', 2345, 'A peaceful, tranquil moon', 345.67, true, false, 12);
INSERT INTO public.moon VALUES (15, 'Umbra', 6789, 'A dark, shadowy moon', 876.54, true, true, 3);
INSERT INTO public.moon VALUES (16, 'Solaris', 1234, 'A sun-like, radiant moon', 210.98, false, false, 8);
INSERT INTO public.moon VALUES (17, 'Gaia', 5678, 'A life-bearing, fertile moon', 654.32, true, true, 10);
INSERT INTO public.moon VALUES (18, 'Nebula', 9012, 'A moon shrouded in cosmic clouds', 109.87, false, true, 11);
INSERT INTO public.moon VALUES (19, 'Cryos', 3456, 'A frigid, icy moon', 345.67, false, false, 7);
INSERT INTO public.moon VALUES (20, 'Arcanus', 7890, 'A moon of mysterious, arcane power', 210.98, true, true, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'cassandra', 32, 'she nasty', 32.22, false, true, 2);
INSERT INTO public.planet VALUES (2, 'caliban', 32, 'she nasty', 32.22, false, true, 2);
INSERT INTO public.planet VALUES (3, 'Zephyr', 21, 'A gentle, wind-swept planet', 41.70, true, false, 1);
INSERT INTO public.planet VALUES (4, 'Ignitus', 45, 'A volcanic, fiery world', 29.30, false, true, 3);
INSERT INTO public.planet VALUES (5, 'Aquaria', 28, 'An ocean-covered planet', 37.80, true, false, 1);
INSERT INTO public.planet VALUES (6, 'Sylvan', 18, 'A lush, forested planet', 24.90, true, true, 2);
INSERT INTO public.planet VALUES (7, 'Glacius', 53, 'A frozen, icy planet', 51.20, false, true, 3);
INSERT INTO public.planet VALUES (8, 'Lumina', 31, 'A brightly lit, luminous planet', 33.50, false, false, 1);
INSERT INTO public.planet VALUES (9, 'Erosia', 39, 'A weathered, rocky planet', 27.10, true, true, 2);
INSERT INTO public.planet VALUES (10, 'Verdant', 22, 'A lush, verdant planet', 19.80, true, false, 1);
INSERT INTO public.planet VALUES (11, 'Vortex', 47, 'A chaotic, swirling planet', 42.40, false, true, 3);
INSERT INTO public.planet VALUES (12, 'Serenity', 26, 'A peaceful, tranquil planet', 30.60, true, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'dogfish', 33302, 'ohyee', 34.34, true, false, 1);
INSERT INTO public.star VALUES (2, 'wogfish', 33302, 'ohyee', 34.34, true, false, 2);
INSERT INTO public.star VALUES (3, 'domefish', 33302, 'ohyee', 34.34, true, false, 2);
INSERT INTO public.star VALUES (4, 'purpdrank', 33302, 'ohyee', 34.34, true, false, 3);
INSERT INTO public.star VALUES (5, 'greend', 33302, 'ohyee', 34.34, true, false, 3);
INSERT INTO public.star VALUES (6, 'wolandino', 33302, 'ohyee', 34.34, true, false, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniq UNIQUE (galaxy_id);


--
-- Name: star uniq2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniq2 UNIQUE (star_id);


--
-- Name: planet uniq3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniq3 UNIQUE (planet_id);


--
-- Name: moon uniq4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uniq4 UNIQUE (moon_id);


--
-- Name: asteroids uniq5; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT uniq5 UNIQUE (asteroids_id);


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

