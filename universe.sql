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
    name character varying(30) NOT NULL,
    type character varying(20),
    magnitude numeric(3,2),
    constellation character varying(20)
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
    name character varying(30) NOT NULL,
    diameter_km numeric(6,2) NOT NULL,
    discoverer character varying(30),
    planet_id integer,
    features text
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
-- Name: more_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_planet (
    more_planet_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    day_length character varying(30),
    orbital_period character varying(30),
    has_rings boolean,
    relative_position integer
);


ALTER TABLE public.more_planet OWNER TO freecodecamp;

--
-- Name: more_planet_more_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_planet_more_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_planet_more_planet_id_seq OWNER TO freecodecamp;

--
-- Name: more_planet_more_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_planet_more_planet_id_seq OWNED BY public.more_planet.more_planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    is_habitable boolean NOT NULL,
    type character varying(20),
    star_id integer,
    more text
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
    distance_in_ly integer,
    type character varying(30),
    characteristics text,
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
-- Name: more_planet more_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet ALTER COLUMN more_planet_id SET DEFAULT nextval('public.more_planet_more_planet_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', -6.50, 'Sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'dwarf irregular', 0.90, 'Dorado');
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 'dwarf irregular', 2.70, 'Tucana');
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'spiral', 3.40, 'Andromeda');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'spiral', 5.70, 'Triangulum');
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'elliptical', 6.84, 'Centaurus');
INSERT INTO public.galaxy VALUES (8, 'Sculptor', 'spiral', 8.00, 'Sculptor');
INSERT INTO public.galaxy VALUES (7, 'Messier 81', 'spiral', 6.94, 'Ursa Major');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474.00, 'Thomas Harriot', 3, 'Rocky surface with maria (dark plains), highlands, and craters. Notable for its phases and tidal effects on Earth');
INSERT INTO public.moon VALUES (2, 'Phobos', 22.00, 'Asaph Hall', 4, 'Irregular shape, heavily cratered surface, and extreme proximity to Mars. It orbits very close to Mars and is gradually spiraling inward');
INSERT INTO public.moon VALUES (3, 'Deimos', 12.00, 'Asaph Hall', 4, 'Irregular shape, smoother surface compared to Phobos, and orbits Mars at a greater distance. It is slowly moving away from Mars');
INSERT INTO public.moon VALUES (4, 'Io', 3643.00, 'Galileo Galilei', 5, 'Most geologically active moon with numerous volcanoes, some of which are erupting sulfur and sulfur dioxide. Highly irregular surface with a lack of impact craters');
INSERT INTO public.moon VALUES (5, 'Europa', 3121.00, 'Galileo Galilei', 5, 'Icy surface with a subsurface ocean beneath the ice');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268.00, 'Galileo Galilei', 5, 'Largest moon in the solar system, with a magnetic field, ice-covered surface, and a mix of rocky and icy terrain');
INSERT INTO public.moon VALUES (7, 'Callisto', 4821.00, 'Galileo Galilei', 5, 'Heavily cratered with an ancient surface. It has a relatively low-density ice and rock composition');
INSERT INTO public.moon VALUES (8, 'Titan', 5151.00, 'Christian Huygens', 6, 'Thick atmosphere with clouds and rain of methane and ethane');
INSERT INTO public.moon VALUES (9, 'Rhea', 1527.00, 'Giovanni Domenico Cassini', 6, 'Icy surface with bright streaks and an unusually low density');
INSERT INTO public.moon VALUES (10, 'Enceladus', 502.00, 'William Herschel', 6, 'Icy moon with geysers that eject water vapor, indicating a subsurface ocean');
INSERT INTO public.moon VALUES (11, 'Mimas', 396.00, 'William Herschel', 6, 'Known for its large impact crater, Herschel, giving it a resemblance to the Death Star from Star Wars');
INSERT INTO public.moon VALUES (12, 'Tethys', 1066.00, 'Giovanni Domenico Cassini', 6, 'Icy surface with a large canyon system called Ithaca Chasma');
INSERT INTO public.moon VALUES (13, 'Dione', 1123.00, 'Giovanni Domenico Cassini', 6, 'Icy surface with a mixture of bright and dark regions, and faint rings');
INSERT INTO public.moon VALUES (14, 'Miranda', 471.00, 'Gerard Kuiper', 7, 'Extreme geological diversity with a fractured surface, and a mix of smooth plains and rugged terrain');
INSERT INTO public.moon VALUES (15, 'Ariel', 1159.00, 'William Lassell', 7, 'Ice-covered moon with a surface featuring canyons, valleys, and a large number of craters');
INSERT INTO public.moon VALUES (16, 'Umbriel', 1170.00, 'William Lassell', 7, 'Dark, cratered surface with fewer signs of geological activity compared to Ariel');
INSERT INTO public.moon VALUES (17, 'Titania', 1578.00, 'William Herschel', 7, 'Icy surface with large canyons and a history of tectonic activity');
INSERT INTO public.moon VALUES (18, 'Oberon', 1523.00, 'William Herschel', 7, 'Icy surface with a heavily cratered landscape and some large canyons');
INSERT INTO public.moon VALUES (19, 'Triton', 2706.00, 'William Lassell', 8, 'Largest moon of Neptune, with a retrograde orbit, geysers erupting nitrogen gas, and a very thin atmosphere');
INSERT INTO public.moon VALUES (20, 'Nereid', 340.00, 'Gerard Kuiper', 8, 'Irregular shape with a highly elliptical orbit');
INSERT INTO public.moon VALUES (22, 'Larissa', 194.00, 'Stephen P. Synnott', 8, 'Irregularly shaped with a few impact craters');
INSERT INTO public.moon VALUES (23, 'Despina', 148.00, 'Stephen P. Synnott', 8, 'Irregular shape with a surface marked by craters');
INSERT INTO public.moon VALUES (21, 'Proteus', 420.00, 'Stephen P. Synnott', 8, 'Irregular shape, heavily cratered surface');


--
-- Data for Name: more_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_planet VALUES (1, 1, 'Mercury', '59 days', '88 days', false, 1);
INSERT INTO public.more_planet VALUES (2, 2, 'Venus', '243 days', '225 days', false, 2);
INSERT INTO public.more_planet VALUES (3, 3, 'Earth', '24 hours', '365 days', false, 3);
INSERT INTO public.more_planet VALUES (4, 4, 'Mars', '1 day 37 minutes', '687 days', false, 4);
INSERT INTO public.more_planet VALUES (5, 5, 'Jupiter', '9 hours 56 minutes', '11.86 years', true, 5);
INSERT INTO public.more_planet VALUES (6, 6, 'Saturn', '10 hours 34 minutes', '29.4 years', true, 6);
INSERT INTO public.more_planet VALUES (7, 7, 'Uranus', '17 hours 14 minutes', '84 years', true, 7);
INSERT INTO public.more_planet VALUES (8, 8, 'Neptune', '16 hours 6 minutes', '165 years', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'rocky', 1, 'Mercury is the closest planet to the Sun and has the most extreme temperature fluctuations of any planet in our solar system');
INSERT INTO public.planet VALUES (2, 'Venus', false, 'rocky', 1, 'Venus has a thick atmosphere composed mostly of carbon dioxide, with clouds of sulfuric acid, making it the hottest planet in our solar system, with surface temperatures around 475 degrees Celsius');
INSERT INTO public.planet VALUES (3, 'Earth', true, 'rocky', 1, 'Earth is the only planet known to support liquid water on its surface, which is essential for life as we know it');
INSERT INTO public.planet VALUES (4, 'Mars', false, 'rocky', 1, 'Mars has the tallest volcano in the solar system, Olympus Mons, nearly three times the height of Mount Everest');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'gas giant', 1, 'Jupiter is the largest planet in our solar system and has a powerful magnetic field, which is 14 times stronger than that of Earth');
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'gas giant', 1, 'Saturn is renowned for its extensive and prominent ring system, which is made up of ice, rock, and dust particles');
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'ice giant', 1, 'Uranus has an unusual tilt, rotating on its side with an axial tilt of about 98 degrees, which means its poles are almost in the plane of its orbit around the Sun');
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'ice giant', 1, 'Neptune’s deep blue color is primarily due to the presence of methane in its atmosphere, which absorbs red light and reflects blue light');
INSERT INTO public.planet VALUES (9, 'Kepler-11b', false, 'rocky', 4, 'Kepler-11b is the innermost planet of the system');
INSERT INTO public.planet VALUES (10, 'Kepler-11c', false, 'Neptune-like', 4, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-11d', false, 'Neptune-like', 4, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-11e', false, 'Neptune-like', 4, NULL);
INSERT INTO public.planet VALUES (13, 'Kepler-11f', false, 'Neptune-like', 4, NULL);
INSERT INTO public.planet VALUES (14, 'Kepler-11g', false, 'Neptune-like', 4, 'Kepler-11g is the outermost planet of the system');
INSERT INTO public.planet VALUES (15, 'Proxima Centauri b', true, 'Super Earth', 7, 'Proxima Centauri b lies in the habitable zone where conditions might be right for liquid water to exist');
INSERT INTO public.planet VALUES (16, 'Kepler-90b', false, 'Super Earth', 5, NULL);
INSERT INTO public.planet VALUES (17, 'Kepler-90c', false, 'Super Earth', 5, NULL);
INSERT INTO public.planet VALUES (18, 'Kepler-90d', false, 'Neptune-like', 5, NULL);
INSERT INTO public.planet VALUES (19, 'Kepler-90e', false, 'Neptune-like', 5, NULL);
INSERT INTO public.planet VALUES (20, 'Kepler-90f', false, 'Neptune-like', 5, NULL);
INSERT INTO public.planet VALUES (21, 'Kepler-90g', false, 'gas giant', 5, NULL);
INSERT INTO public.planet VALUES (22, 'Kepler-90h', false, 'gas giant', 5, NULL);
INSERT INTO public.planet VALUES (23, 'Kepler-90i', false, 'Super Earth', 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 'G-type', 'Vital component of our solar system and plays a crucial role in supporting life on Earth', 1);
INSERT INTO public.star VALUES (2, 'AE Andromedae', 2544000, 'Cepheid variable star', 'Used as a standard candle to measure distances to galaxies due to its predictable pulsations', 4);
INSERT INTO public.star VALUES (3, 'R136a1', 163000, 'Wolf-Rayet star', 'One of the most massive and luminous stars known, with a mass over 100 times that of our Sun', 2);
INSERT INTO public.star VALUES (4, 'Kepler-11', 1679, 'G-type', 'Sun-like star slightly larger than the Sun', 1);
INSERT INTO public.star VALUES (5, 'Kepler-90', 2544, 'F-type', 'Possesses a planetary system that has the same number of observed planets as the Solar System', 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 4, 'Triple Star System', 'The closest star system to Earth', 1);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 4, 'Red dwarf', 'Nearest-known star to the Sun', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: more_planet_more_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_planet_more_planet_id_seq', 8, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: more_planet more_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet
    ADD CONSTRAINT more_planet_name_key UNIQUE (name);


--
-- Name: more_planet more_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet
    ADD CONSTRAINT more_planet_pkey PRIMARY KEY (more_planet_id);


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
-- Name: more_planet more_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet
    ADD CONSTRAINT more_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

