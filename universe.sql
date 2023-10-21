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
    name character varying NOT NULL,
    has_life boolean,
    age_in_millions_years numeric,
    distance_from_earth integer,
    size integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: habitable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.habitable (
    habitable_id integer NOT NULL,
    has_life boolean,
    galaxy_id integer,
    name character varying NOT NULL,
    growth character(1),
    water character(1)
);


ALTER TABLE public.habitable OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    age integer,
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    age integer,
    size integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    size_km integer,
    color text,
    years_alive integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Drip', true, 3, 200, 1000, 2);
INSERT INTO public.galaxy VALUES ('Milky_Way', true, 10, 0, 1000, 1);
INSERT INTO public.galaxy VALUES ('Void', false, 100, 1000, 10000, 3);
INSERT INTO public.galaxy VALUES ('Jabroni', true, 150, 6000, 15000, 4);
INSERT INTO public.galaxy VALUES ('Jiggles', false, 500, 5000, 50000, 5);
INSERT INTO public.galaxy VALUES ('WaterWeDune', false, 200, 2000, 2200, 6);


--
-- Data for Name: habitable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.habitable VALUES (1, NULL, NULL, 'Big Green', NULL, NULL);
INSERT INTO public.habitable VALUES (2, NULL, NULL, 'Big Brown', NULL, NULL);
INSERT INTO public.habitable VALUES (3, NULL, NULL, 'Big Suga', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('bro', 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Ovie', 2, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Sid', 3, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Iggu', 4, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Igguuu', 5, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Jad', 6, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Igguuu', 7, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Jag', 8, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Igguuu', 9, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Brag', 10, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Stag', 11, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Hurray', 12, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Stag', 13, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Blade', 14, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Craig', 15, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Dame', 16, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Lebron', 17, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Jimmy', 18, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Jokic', 19, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Siakam', 20, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('OG', 21, 11, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Bobo', 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Jojo', 2, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Ray', 3, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Bey', 4, 4, NULL, NULL);
INSERT INTO public.planet VALUES ('Dada', 5, 5, NULL, NULL);
INSERT INTO public.planet VALUES ('Jaja', 6, 6, NULL, NULL);
INSERT INTO public.planet VALUES ('Blaba', 7, 6, NULL, NULL);
INSERT INTO public.planet VALUES ('Rara', 8, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Haha', 9, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Kaka', 10, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Damn', 11, 4, NULL, NULL);
INSERT INTO public.planet VALUES ('Crazy', 12, 5, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'James', 100, 'B', 1000, 1);
INSERT INTO public.star VALUES (3, 'Mew', 5, 'G', 5, 2);
INSERT INTO public.star VALUES (4, 'Oracle', 8000, 'Y', 20000, 3);
INSERT INTO public.star VALUES (5, 'Squirtle', 6000, 'R', 6, 4);
INSERT INTO public.star VALUES (6, 'Saywhat', 600, 'Z', 10, 5);
INSERT INTO public.star VALUES (2, 'Jigallow', 1000, 'O', 10000, 6);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: habitable h_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitable
    ADD CONSTRAINT h_name UNIQUE (name);


--
-- Name: habitable habitable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitable
    ADD CONSTRAINT habitable_pkey PRIMARY KEY (habitable_id);


--
-- Name: moon m_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT m_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet p_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT p_id UNIQUE (planet_id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star s_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT s_name UNIQUE (name);


--
-- Name: galaxy u_n_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_n_name UNIQUE (name);


--
-- Name: habitable habitable_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitable
    ADD CONSTRAINT habitable_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- Name: star star_name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
