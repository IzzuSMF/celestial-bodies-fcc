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
    name character varying(32) NOT NULL,
    description text,
    galaxy_type text,
    has_black_holes boolean
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
    name character varying(32) NOT NULL,
    description text,
    is_spherical boolean,
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
    name character varying(32) NOT NULL,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_info (
    planet_info_id integer NOT NULL,
    name character varying(32) NOT NULL,
    year_discovered integer,
    distance_from_earth_in_mill_km numeric,
    planet_id integer
);


ALTER TABLE public.planet_info OWNER TO freecodecamp;

--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_info_planet_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_info_planet_info_id_seq OWNER TO freecodecamp;

--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_info_planet_info_id_seq OWNED BY public.planet_info.planet_info_id;


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
    name character varying(32) NOT NULL,
    description text,
    age_in_bill_years integer,
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
-- Name: planet_info planet_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info ALTER COLUMN planet_info_id SET DEFAULT nextval('public.planet_info_planet_info_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Galaxy', 'Barred Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest large galaxy to ours', 'Barred Spiral', true);
INSERT INTO public.galaxy VALUES (3, 'NGC 4038', 'One of the Antannae Galaxies', 'Interacting', true);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'Relatively Isolated', 'Spiral', true);
INSERT INTO public.galaxy VALUES (5, 'NGC 4567 and NGC 4568', 'Butterfly galaxies', 'Unbarred Spiral', true);
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 'Cigar Galaxy', 'Irregular - Spiral', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Our Moon', true, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Small and irregularly shaped', false, 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Smaller of the two Mars moons', false, 5);
INSERT INTO public.moon VALUES (4, 'Metis', NULL, false, 6);
INSERT INTO public.moon VALUES (5, 'Adrastea', NULL, false, 6);
INSERT INTO public.moon VALUES (6, 'Thebe', NULL, false, 6);
INSERT INTO public.moon VALUES (7, 'Io', NULL, true, 6);
INSERT INTO public.moon VALUES (8, 'Europa', NULL, true, 6);
INSERT INTO public.moon VALUES (9, 'Ganymede', NULL, true, 6);
INSERT INTO public.moon VALUES (10, 'Callisto', NULL, true, 6);
INSERT INTO public.moon VALUES (11, 'Themisto', NULL, false, 6);
INSERT INTO public.moon VALUES (12, 'Pan', NULL, false, 7);
INSERT INTO public.moon VALUES (13, 'Daphnis', NULL, false, 7);
INSERT INTO public.moon VALUES (14, 'Pandora', NULL, false, 7);
INSERT INTO public.moon VALUES (15, 'Mimas', NULL, true, 7);
INSERT INTO public.moon VALUES (16, 'Enceladus', NULL, true, 7);
INSERT INTO public.moon VALUES (17, 'Tethys', NULL, true, 7);
INSERT INTO public.moon VALUES (18, 'Dione', NULL, true, 7);
INSERT INTO public.moon VALUES (19, 'Rhea', NULL, true, 7);
INSERT INTO public.moon VALUES (20, 'Titan', NULL, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 'Closest planet to the Sun', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'First planet to be explored by a Spacecraft', false, 1);
INSERT INTO public.planet VALUES (4, 'Earth', 'Our Home', true, 1);
INSERT INTO public.planet VALUES (5, 'Mars', 'Our future Home', true, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'Largest planet in Solar System', false, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Adorned with thousand of ringlets made of chunks of ice and rock', false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'First planet to be found with the aid of a telescope', false, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 'Dark, cold and very windy', false, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Dwarf planet', false, 1);
INSERT INTO public.planet VALUES (11, 'Proxima d', 'Orbits too close to its star to be habitable', false, 2);
INSERT INTO public.planet VALUES (12, 'Proxima b', 'It may be habitable', false, 2);
INSERT INTO public.planet VALUES (13, 'Ægir', 'Gas giant with rings', false, 5);


--
-- Data for Name: planet_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_info VALUES (1, 'Venus', 1610, 261, 3);
INSERT INTO public.planet_info VALUES (2, 'Mars', 1610, 225, 5);
INSERT INTO public.planet_info VALUES (3, 'Jupiter', 1610, 778, 6);
INSERT INTO public.planet_info VALUES (4, 'Saturn', 1610, 1200, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our Star', 5, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centuri', 'Nearest known star to the Sun', 5, 1);
INSERT INTO public.star VALUES (3, 'Wolf 359', 'Red dwarf in the costellation Leo', 0, 1);
INSERT INTO public.star VALUES (4, 'Lalande 21185', 'Star in the south of Ursa Major', 5, 1);
INSERT INTO public.star VALUES (5, 'Epsilon Eridani', 'Star in the southern constellation of Eridanus', 0, 1);
INSERT INTO public.star VALUES (6, 'Struve 2398', 'Binary Star System', 3, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_info_planet_info_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


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
-- Name: planet_info planet_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_name_key UNIQUE (name);


--
-- Name: planet_info planet_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_pkey PRIMARY KEY (planet_info_id);


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
-- Name: planet_info planet_info_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

