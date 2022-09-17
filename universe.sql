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
    galaxy_id numeric NOT NULL,
    cluster_id numeric NOT NULL,
    name character varying(225),
    lya integer,
    life boolean,
    times_visited integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_cluster (
    galaxy_cluster_id numeric NOT NULL,
    name character varying(255),
    lya integer NOT NULL,
    active_species integer
);


ALTER TABLE public.galaxy_cluster OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id numeric NOT NULL,
    planet_id numeric NOT NULL,
    name character varying(255),
    orbital_period integer,
    notes text,
    times_visited integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id numeric NOT NULL,
    star_id numeric NOT NULL,
    name character varying(255),
    miles_or_lya integer,
    description text,
    moons_found integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id numeric NOT NULL,
    galaxy_id numeric NOT NULL,
    name character varying(255),
    lya integer,
    planets boolean,
    amount_of_planets integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Milky Way', 27000, true, 42);
INSERT INTO public.galaxy VALUES (2, 1, 'Draco', 1000000, false, 0);
INSERT INTO public.galaxy VALUES (3, 2, 'Messier 81', 12000000, false, 0);
INSERT INTO public.galaxy VALUES (4, 2, 'Messier 82', 11420000, false, 0);
INSERT INTO public.galaxy VALUES (5, 3, 'M51', 23160000, false, 0);
INSERT INTO public.galaxy VALUES (6, 3, 'NGC5195', 108000000, false, 0);


--
-- Data for Name: galaxy_cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_cluster VALUES (1, 'Local Group', 5000000, 1);
INSERT INTO public.galaxy_cluster VALUES (2, 'M81 Group', 11000000, 0);
INSERT INTO public.galaxy_cluster VALUES (3, 'M101 Group', 24000000, 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Earths Moon', 1, 'only moon', 6);
INSERT INTO public.moon VALUES (2, 4, 'Deimos', 1, 'one sibling', 0);
INSERT INTO public.moon VALUES (3, 4, 'Phobos', 0, 'one sibling', 0);
INSERT INTO public.moon VALUES (4, 5, 'Metis', 0, 'inner', 0);
INSERT INTO public.moon VALUES (5, 5, 'Adrastea', 0, 'inner', 0);
INSERT INTO public.moon VALUES (6, 5, 'Thebe', 0, 'inner', 0);
INSERT INTO public.moon VALUES (7, 5, 'Io', 1, 'inner', 0);
INSERT INTO public.moon VALUES (8, 5, 'Europa', 2, 'galilean', 0);
INSERT INTO public.moon VALUES (9, 5, 'Ganymede', 4, 'galilean', 0);
INSERT INTO public.moon VALUES (10, 5, 'Callisto', 7, 'galilean', 0);
INSERT INTO public.moon VALUES (11, 5, 'Themisto', 17, 'galilean', 0);
INSERT INTO public.moon VALUES (12, 5, 'Ieda', 130, 'themisto', 0);
INSERT INTO public.moon VALUES (13, 5, 'Ersa', 241, 'himalia', 0);
INSERT INTO public.moon VALUES (14, 5, 'Himalia', 249, 'himalia', 0);
INSERT INTO public.moon VALUES (15, 5, 'Pandia', 251, 'himalia', 0);
INSERT INTO public.moon VALUES (16, 5, 'Lysithea', 252, 'himalia', 0);
INSERT INTO public.moon VALUES (17, 5, 'Elara', 259, 'himalia', 0);
INSERT INTO public.moon VALUES (18, 5, 'Dia', 456, 'himalia', 0);
INSERT INTO public.moon VALUES (19, 5, 'Carpo', 489, 'himalia', 0);
INSERT INTO public.moon VALUES (20, 5, 'Valetudo', 528, 'valetudo', 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 61287000, 'too hot for life', 0);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 157140000, 'too hot for life', 0);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 0, 'type 0 species', 1);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 81077000, 'no water for life', 2);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 368650000, 'gas planet', 53);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 836770000, 'gas planet', 20);
INSERT INTO public.planet VALUES (7, 1, 'Uranis', 1773700000, 'gas planet', 27);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 2086600000, 'gas planet', 14);
INSERT INTO public.planet VALUES (9, 2, 'Proxima Centauri B', 4, 'habitable zone', 0);
INSERT INTO public.planet VALUES (10, 2, 'Proxima Centauri C', 4, '7x earth size', 0);
INSERT INTO public.planet VALUES (11, 3, 'Alpha Centauri Ab', 4, 'unconfirmed', 0);
INSERT INTO public.planet VALUES (12, 5, 'Barnards Star B', 6, 'unconfirmed', 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sol', 0, true, 8);
INSERT INTO public.star VALUES (2, 1, 'Proxima Centauri', 4, true, 3);
INSERT INTO public.star VALUES (3, 1, 'Rigil Kentaurus', 4, true, 2);
INSERT INTO public.star VALUES (4, 1, 'Toliman', 4, true, 1);
INSERT INTO public.star VALUES (5, 1, 'Barnards Star', 6, true, 3);
INSERT INTO public.star VALUES (6, 1, 'Luhman 16', 7, true, 2);


--
-- Name: galaxy_cluster galaxy_cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_cluster
    ADD CONSTRAINT galaxy_cluster_name_key UNIQUE (name);


--
-- Name: galaxy_cluster galaxy_cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_cluster
    ADD CONSTRAINT galaxy_cluster_pkey PRIMARY KEY (galaxy_cluster_id);


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

