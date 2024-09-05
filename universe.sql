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
    description text,
    is_life boolean NOT NULL,
    age_in_billions_of_years numeric(4,1) NOT NULL,
    galaxy_types character varying(30) NOT NULL,
    distance_in_light_years_from_earth integer,
    radius_of_galaxy_in_light_years integer NOT NULL,
    name character varying(30) NOT NULL
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
    description text,
    is_spherical boolean NOT NULL,
    age_in_billions_of_years numeric(4,1) NOT NULL,
    distance_in_miles_from_earth integer,
    distance_in_light_years_from_earth integer,
    radius_of_moon_in_kilometers integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    description text,
    is_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_billions_of_years numeric(4,1) NOT NULL,
    planet_types character varying(30) NOT NULL,
    distance_in_miles_from_earth integer,
    distance_in_light_years_from_earth integer,
    radius_of_planet_in_miles integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    description text,
    is_spherical boolean NOT NULL,
    age_in_billions_of_years numeric(4,1) NOT NULL,
    star_types character varying(30) NOT NULL,
    distance_in_light_years_from_earth integer,
    radius_of_the_star_in_miles integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Our home galaxy, a barred sprial galaxy.', true, 13.6, 'barred sprial galaxy', 0, 52850, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 'The closest sprial galaxy to the Milky Way and the largest galaxy in in our local group.', true, 10.0, 'barred sprial galaxy', 2537000, 110000, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'A spiral galaxy in the local group, smaller than Andromeda and the Milky Way.', true, 12.0, 'sprial galaxy', 3000000, 30000, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'A spiral galaxy known for its bright nucleus and large central bulge, giving it the appearance of a sombrero hat.', true, 10.0, 'sprial galaxy', 2930000, 20000, 'Sombrero');
INSERT INTO public.galaxy VALUES (5, 'A classic sprial galaxy interacting with a small companion galaxy.', true, 5.0, 'sprial galaxy', 2300000, 30000, 'Whirlpool');
INSERT INTO public.galaxy VALUES (6, 'A giant elliptical galaxy in the Virgo Cluster, known for its supermassive black hole.', false, 13.0, 'giant elliptical', 5350000, 60000, 'Messier 87');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 3, 'Moon');
INSERT INTO public.moon VALUES (2, 'Moon of Mars.', true, 4.5, 34600000, 0, 8, 4, 'Phobos');
INSERT INTO public.moon VALUES (3, 'Moon of Mars', true, 4.5, 34600000, 0, 4, 4, 'Deimos');
INSERT INTO public.moon VALUES (4, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 5, 'Io');
INSERT INTO public.moon VALUES (5, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 5, 'Europa');
INSERT INTO public.moon VALUES (6, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 5, 'Ganymede');
INSERT INTO public.moon VALUES (7, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 5, 'Callisto');
INSERT INTO public.moon VALUES (8, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 6, 'Titan');
INSERT INTO public.moon VALUES (9, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 6, 'Enceladus');
INSERT INTO public.moon VALUES (10, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 6, 'Rhea');
INSERT INTO public.moon VALUES (11, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 6, 'Iapetus');
INSERT INTO public.moon VALUES (12, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 6, 'Mimas');
INSERT INTO public.moon VALUES (13, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 7, 'Miranda');
INSERT INTO public.moon VALUES (14, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 7, 'Ariel');
INSERT INTO public.moon VALUES (15, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 7, 'Umbriel');
INSERT INTO public.moon VALUES (16, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 7, 'Titania');
INSERT INTO public.moon VALUES (17, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 7, 'Oberon');
INSERT INTO public.moon VALUES (18, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 8, 'Triton');
INSERT INTO public.moon VALUES (19, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 8, 'Nereid');
INSERT INTO public.moon VALUES (20, 'Moon of Earth aka Luna.', true, 4.5, 238855, 0, 1079, 8, 'Charon');

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

-- CREATE TABLE public.planet (
--     planet_id integer NOT NULL,
--     description text,
--     is_life boolean NOT NULL,
--     is_spherical boolean NOT NULL,
--     age_in_billions_of_years numeric(4,1) NOT NULL,
--     planet_types character varying(30) NOT NULL,
--     distance_in_miles_from_earth integer,
--     radius_of_planet_in_miles integer NOT NULL,
--     star_id integer NOT NULL,
--     name character varying(30) NOT NULL
-- );

INSERT INTO public.planet VALUES (1, 'The closest planet to the Sun, known for its extreme temperature variations and small size.', false, true, 4.5, 'terrestrial planet', 48000000, 0, 1516, 2, 'Mercury');
INSERT INTO public.planet VALUES (2, 'Similar in size to Earth but with a thick, toxic atmosphere and surface temperatures hot enough to melt lead.', false, true, 4.5, 'terrestrial planet', 25000000, 0, 3760, 2, 'Venus');
INSERT INTO public.planet VALUES (3, 'Our home planet, characterized by its liquid water, diverse climate, and life-sustaining environment.', true, true, 4.5, 'terrestrial planet', 0, 0, 3959, 2, 'Earth');
INSERT INTO public.planet VALUES (4, 'Known as the Red Planet, it has the largest volcano and canyon in the solar system and has been a focus of exploration for potential past life.', false, true, 4.6, 'terrestrial planet', 140000000, 0, 2106, 2, 'Mars');
INSERT INTO public.planet VALUES (5, 'The largest planet in our solar system, famous for its Great Red Spot, a massive storm, and its extensive system of moons.', false, true, 4.5, 'gas giant planet', 484000000, 0, 43441, 2, 'Jupiter');
INSERT INTO public.planet VALUES (6, 'Saturn is the second-largest planet and has numerous moons, including the largest moon Titan.', false, true, 4.5, 'gas giant planet', 746000000, 0, 36184, 2, 'Saturn');
INSERT INTO public.planet VALUES (7, 'An ice giant with a unique tilt, causing extreme seasonal variations and a faint ring system.', false, true, 4.5, 'ice giant planet', 48000000, 0, 1516, 2, 'Uranus');
INSERT INTO public.planet VALUES (8, 'The farthest planet from the Sun, known for its deep blue color and strong winds.', false, true, 4.5, 'ice giant planet', 27000000, 0, 15299, 2, 'Neptune');
INSERT INTO public.planet VALUES (9, 'Very high temperatures; likely too hot for liquid water.', false, true, 10, 'terrestrial planet', 0, 40, 4400, 7, 'TRAPPIST-1b');
INSERT INTO public.planet VALUES (10, 'High temperatures; similar conditions to TRAPPIST-1b.', false, true, 10, 'terrestrial planet', 0, 40, 4280, 7, 'TRAPPIST-1c');
INSERT INTO public.planet VALUES (11, 'Potential for more moderate temperatures.', false, true, 10, 'terrestrial planet', 0, 40, 4240, 7, 'TRAPPIST-1d');
INSERT INTO public.planet VALUES (12, 'Located in the habitable zone where liquid water could potentially exist.', false, true, 10, 'terrestrial planet', 0, 40, 4080, 7, 'TRAPPIST-1e');

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The brightest star in the night sky, located in the constellation Canis Major.', true, 0.2, 'Spectral Type A1', 9, 740000, 1, 'Sirius');
INSERT INTO public.star VALUES (2, 'Our solar system star.', true, 4.6, 'Spectral Type G2', 0, 432690, 1, 'Sun');
INSERT INTO public.star VALUES (3, 'A red supergiant star in the constellation Orion, known for its large size and brightness.', true, 10.0, 'Spectral Type M1-2', 643, 330000000, 1, 'Betelgeuse');
INSERT INTO public.star VALUES (4, 'A bright blue supergiant star in Orion, one of the brightest stars in the night sky.', true, 9.0, 'Spectral Type B8', 860, 35, 1, 'Rigel');
INSERT INTO public.star VALUES (5, 'A bright star in the constellation Lyra, part of the Summer Triangle asterism.', true, 0.5, 'Spectral Type A0', 25, 1020000, 1, 'Vega');
INSERT INTO public.star VALUES (6, 'A bright star in the constellation Aquila, also part of the Summer Triangle.', true, 2.0, 'Spectral Type A7', 17, 780000, 1, 'Altair');
INSERT INTO public.star VALUES (7, 'TRAPPIST-1 is classified as an ultra-cool red dwarf star.', true, 10.0, 'M8V', 40, 432690, 1, 'TRAPPIST-1');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


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

