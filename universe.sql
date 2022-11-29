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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    name character varying(30) NOT NULL,
    constellations_id integer NOT NULL,
    ancient boolean
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellation_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(3,2),
    apparent_magnitude numeric(4,2),
    constellations_id integer
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    planet_distance_km integer NOT NULL,
    year integer,
    diameter_km numeric(7,2)
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
    satellites integer NOT NULL,
    type character varying(30) NOT NULL,
    diameter_km integer,
    ring_presence boolean,
    fun_facts text
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
    name character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    apparent_magnitud numeric(4,2) NOT NULL,
    constellation_latin_name integer
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
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellation_id_seq'::regclass);


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
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES ('Libra', 49, true);
INSERT INTO public.constellations VALUES ('Lupus', 50, true);
INSERT INTO public.constellations VALUES ('Bootes', 9, true);
INSERT INTO public.constellations VALUES ('Caelum', 10, false);
INSERT INTO public.constellations VALUES ('Camelopardalis', 11, false);
INSERT INTO public.constellations VALUES ('Cancer', 12, true);
INSERT INTO public.constellations VALUES ('Canes Venatici', 13, false);
INSERT INTO public.constellations VALUES ('Canis Maior', 14, true);
INSERT INTO public.constellations VALUES ('Lynx', 51, false);
INSERT INTO public.constellations VALUES ('Lyra', 52, true);
INSERT INTO public.constellations VALUES ('Mensa', 53, false);
INSERT INTO public.constellations VALUES ('Microscopium', 54, false);
INSERT INTO public.constellations VALUES ('Monoceros', 55, false);
INSERT INTO public.constellations VALUES ('Musca', 56, false);
INSERT INTO public.constellations VALUES ('Norma', 57, false);
INSERT INTO public.constellations VALUES ('Octans', 58, false);
INSERT INTO public.constellations VALUES ('Ophiuchus', 59, true);
INSERT INTO public.constellations VALUES ('Orion', 60, true);
INSERT INTO public.constellations VALUES ('Pavo', 61, false);
INSERT INTO public.constellations VALUES ('Pegasus', 62, true);
INSERT INTO public.constellations VALUES ('Perseus', 63, true);
INSERT INTO public.constellations VALUES ('Phoenix', 64, false);
INSERT INTO public.constellations VALUES ('Pictor', 65, false);
INSERT INTO public.constellations VALUES ('Pisces', 66, true);
INSERT INTO public.constellations VALUES ('Piscis Austrinus', 67, true);
INSERT INTO public.constellations VALUES ('Puppis', 68, false);
INSERT INTO public.constellations VALUES ('Pyxis', 69, false);
INSERT INTO public.constellations VALUES ('Reticulum', 70, false);
INSERT INTO public.constellations VALUES ('Sagitta', 71, true);
INSERT INTO public.constellations VALUES ('Sagittarius', 72, true);
INSERT INTO public.constellations VALUES ('Scorpius', 73, true);
INSERT INTO public.constellations VALUES ('Sculptor', 74, false);
INSERT INTO public.constellations VALUES ('Scutum', 75, false);
INSERT INTO public.constellations VALUES ('Serpens', 76, true);
INSERT INTO public.constellations VALUES ('Andromeda', 1, true);
INSERT INTO public.constellations VALUES ('Antila', 2, false);
INSERT INTO public.constellations VALUES ('Apus', 3, false);
INSERT INTO public.constellations VALUES ('Aquarius', 4, true);
INSERT INTO public.constellations VALUES ('Aquila', 5, true);
INSERT INTO public.constellations VALUES ('Ara', 6, true);
INSERT INTO public.constellations VALUES ('Aries', 7, true);
INSERT INTO public.constellations VALUES ('Auriga', 8, true);
INSERT INTO public.constellations VALUES ('Canis Minor', 15, true);
INSERT INTO public.constellations VALUES ('Capricornus', 16, true);
INSERT INTO public.constellations VALUES ('Carina', 17, false);
INSERT INTO public.constellations VALUES ('Cassiopeia', 18, true);
INSERT INTO public.constellations VALUES ('Centaurus', 19, true);
INSERT INTO public.constellations VALUES ('Cepheus', 20, true);
INSERT INTO public.constellations VALUES ('Cetus', 21, true);
INSERT INTO public.constellations VALUES ('Chamaeleon', 22, false);
INSERT INTO public.constellations VALUES ('Circinus', 23, false);
INSERT INTO public.constellations VALUES ('Columba', 24, false);
INSERT INTO public.constellations VALUES ('Coma Berenices', 25, false);
INSERT INTO public.constellations VALUES ('Corona Australis', 26, true);
INSERT INTO public.constellations VALUES ('Corona Borealis', 27, true);
INSERT INTO public.constellations VALUES ('Corvus', 28, true);
INSERT INTO public.constellations VALUES ('Crater', 29, true);
INSERT INTO public.constellations VALUES ('Crux', 30, false);
INSERT INTO public.constellations VALUES ('Cygnus', 31, true);
INSERT INTO public.constellations VALUES ('Delphinus', 32, true);
INSERT INTO public.constellations VALUES ('Dorado', 33, false);
INSERT INTO public.constellations VALUES ('Draco', 34, true);
INSERT INTO public.constellations VALUES ('Equuleus', 35, true);
INSERT INTO public.constellations VALUES ('Eridanus', 36, true);
INSERT INTO public.constellations VALUES ('Fornax', 37, false);
INSERT INTO public.constellations VALUES ('Gemini', 38, true);
INSERT INTO public.constellations VALUES ('Grus', 39, false);
INSERT INTO public.constellations VALUES ('Hercules', 40, true);
INSERT INTO public.constellations VALUES ('Horologium', 41, false);
INSERT INTO public.constellations VALUES ('Hydra', 42, true);
INSERT INTO public.constellations VALUES ('Hydrus', 43, false);
INSERT INTO public.constellations VALUES ('Indus', 44, false);
INSERT INTO public.constellations VALUES ('Lacerta', 45, false);
INSERT INTO public.constellations VALUES ('Leo', 46, true);
INSERT INTO public.constellations VALUES ('Leo Minor', 47, false);
INSERT INTO public.constellations VALUES ('Lepus', 48, true);
INSERT INTO public.constellations VALUES ('Sextans', 77, false);
INSERT INTO public.constellations VALUES ('Taurus', 78, true);
INSERT INTO public.constellations VALUES ('Telescopium', 79, false);
INSERT INTO public.constellations VALUES ('Triangulum', 80, true);
INSERT INTO public.constellations VALUES ('Triangulum Australe', 81, false);
INSERT INTO public.constellations VALUES ('Tucana', 82, false);
INSERT INTO public.constellations VALUES ('Ursa Maior', 83, true);
INSERT INTO public.constellations VALUES ('Ursa Minor', 84, true);
INSERT INTO public.constellations VALUES ('Vela', 85, false);
INSERT INTO public.constellations VALUES ('Virgo', 86, true);
INSERT INTO public.constellations VALUES ('Volans', 87, false);
INSERT INTO public.constellations VALUES ('Vulpecula', 88, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, 72);
INSERT INTO public.galaxy VALUES (2, 'Circinus Galaxy', 9.13, 12.10, 23);
INSERT INTO public.galaxy VALUES (3, 'NGC 4214', 9.58, 10.24, 13);
INSERT INTO public.galaxy VALUES (4, 'NGC 300', 7.01, -17.92, 74);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 2.64, 6.19, 80);
INSERT INTO public.galaxy VALUES (6, 'Fornax Dwarf', 0.46, 9.18, 37);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Triton', 1, 8, 354800, 1846, 2705.00);
INSERT INTO public.moon VALUES ('Umbriel', 2, 7, 265970, 1851, 1190.00);
INSERT INTO public.moon VALUES ('Titania', 3, 7, 435840, 1787, 1580.00);
INSERT INTO public.moon VALUES ('Titan', 4, 6, 1221850, 1655, 5150.00);
INSERT INTO public.moon VALUES ('Phoebe', 5, 6, 12952000, 1898, 220.00);
INSERT INTO public.moon VALUES ('Narvi', 6, 6, 18719000, 2003, 8.00);
INSERT INTO public.moon VALUES ('Dione', 7, 6, 377400, 1684, 1120.00);
INSERT INTO public.moon VALUES ('Sinope', 8, 5, 23700700, 1914, 28.00);
INSERT INTO public.moon VALUES ('Leda', 9, 5, 11094000, 1974, 10.00);
INSERT INTO public.moon VALUES ('Kore', 10, 5, 24543000, 2003, 2.00);
INSERT INTO public.moon VALUES ('Himalia', 11, 5, 11480000, 1904, 170.00);
INSERT INTO public.moon VALUES ('Europa', 12, 5, 670900, 1610, 3126.00);
INSERT INTO public.moon VALUES ('Ganymede', 13, 5, 1070000, 1610, 5276.00);
INSERT INTO public.moon VALUES ('Callisto', 14, 5, 1883000, 1610, 4800.00);
INSERT INTO public.moon VALUES ('Deimos', 15, 4, 23460, 1877, 8.00);
INSERT INTO public.moon VALUES ('Phobos', 16, 4, 9270, 1877, 28.20);
INSERT INTO public.moon VALUES ('Moon', 17, 3, 384400, NULL, 3476.00);
INSERT INTO public.moon VALUES ('Charon', 18, 10, 19571, 1978, 1207.00);
INSERT INTO public.moon VALUES ('Proteus', 19, 8, 117600, 1989, 420.00);
INSERT INTO public.moon VALUES ('Ophelia', 20, 7, 53440, 1986, 30.40);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'Ceres', 0, 'dwarf', 942, false, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', 5, 'dwarf', 2370, false, NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', 2, 'dwarf', 1150, false, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', 1, 'dwarf', 2326, false, NULL);
INSERT INTO public.planet VALUES (1, 'Mercury', 0, 'terrestrial', 4880, false, 'Believe it or not, scientists have found actual ice on Mercury! Because the planet has very little atmosphere and its axis has very little tilt there are permanently-shadowed craters at Mercurys north and  south poles that contain ice.');
INSERT INTO public.planet VALUES (2, 'Venus', 0, 'terrestrial', 12104, false, 'Days on Venus are loooooong - it takes 243 Earth days for Venus to fully rotate.');
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'terrestrial', 12756, false, 'It takes roughly eight minutes for light to reach Earth from the sun.');
INSERT INTO public.planet VALUES (4, 'Mars', 2, 'terrestrial', 6794, false, 'The planets blood-red color -- caused by the oxidation (rusting) of iron in its soil -- earned it the name Mars after the bloodthirsty Roman god of war.');
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, 'gas giant', 142984, true, 'You could fit 11 Earths along Jupiters equator.');
INSERT INTO public.planet VALUES (6, 'Saturn', 82, 'gas giant', 108728, true, 'Saturn leads the solat system moon count with 82 moons!');
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 'ice giant', 51118, true, 'While other planets and moons are named for mythological characters, Uranuss 27 moons (among them Titania, Oberon, Puck and Juliet), take their names from the writtings of William Shakespeare and Alexander Poe.');
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 'ice giant', 49532, true, 'The windiest planet in the solar system, Neptune can experience winds of more than 1.200 miles per hour. Compare that to Earths worst storms that top out at 250 miles per hour.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 448, 1.98, 84);
INSERT INTO public.star VALUES (2, 'Tupi', 109, 7.12, 70);
INSERT INTO public.star VALUES (3, 'Sargas', 272, 1.87, 73);
INSERT INTO public.star VALUES (4, 'Nashira', 139, 3.68, 16);
INSERT INTO public.star VALUES (5, 'Electra', 370, 3.70, 78);
INSERT INTO public.star VALUES (6, 'Achernar', 144, 0.46, 36);


--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellation_id_seq', 88, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellations constellations_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_constellation_id_key UNIQUE (constellations_id);


--
-- Name: constellations constellations_latin_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_latin_name_key UNIQUE (name);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


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
-- Name: galaxy galaxy_constellation_latin_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_latin_name_fkey FOREIGN KEY (constellations_id) REFERENCES public.constellations(constellations_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

