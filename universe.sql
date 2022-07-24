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
    name character varying(60) NOT NULL,
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years numeric,
    is_there_life boolean NOT NULL,
    info text,
    galaxy_id integer NOT NULL
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
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years numeric,
    is_there_life boolean NOT NULL,
    info text,
    planet_id integer NOT NULL
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
    name character varying(60) NOT NULL,
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years numeric,
    is_there_life boolean NOT NULL,
    info text,
    star_id integer NOT NULL
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
    age_in_millions_of_years numeric,
    info text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_gazer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_gazer (
    star_gazer_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star_gazer OWNER TO freecodecamp;

--
-- Name: star_gazer_star_gazer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_gazer_star_gazer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_gazer_star_gazer_id_seq OWNER TO freecodecamp;

--
-- Name: star_gazer_star_gazer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_gazer_star_gazer_id_seq OWNED BY public.star_gazer.star_gazer_id;


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
-- Name: star_gazer star_gazer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_gazer ALTER COLUMN star_gazer_id SET DEFAULT nextval('public.star_gazer_star_gazer_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('the milky way', 923, 13600, true, 'it''s our galaxy', 1);
INSERT INTO public.galaxy VALUES ('twix', 100000, 25000, false, 'it''s all crispy chocolate', 2);
INSERT INTO public.galaxy VALUES ('bananaroam', 500000, 50000, true, 'the bananamen are coming(although really slowly)', 3);
INSERT INTO public.galaxy VALUES ('simpsonite', 3000000, 0.00003, true, 'homer is watching us', 4);
INSERT INTO public.galaxy VALUES ('kramikske', 3000, 2000000, true, 'there''s only a small boy with black hair', 5);
INSERT INTO public.galaxy VALUES ('idontknowanymore', 30000000, 40000000, false, 'I guess I forgot', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 12, 14, false, 'not so far away', 3);
INSERT INTO public.moon VALUES (3, 'alpha', 15, 2.1, false, 'He''s the man', 44);
INSERT INTO public.moon VALUES (4, 'beta', 25, 15.4, false, 'just follows the alfa', 5);
INSERT INTO public.moon VALUES (5, 'gamma', 13, 48, false, 'That''s the shshop next door', 5);
INSERT INTO public.moon VALUES (6, 'delta', 14, 47.1, false, 'could it be a triangle?', 7);
INSERT INTO public.moon VALUES (7, 'epsilon', 17, 654, false, 'Wouldn''t know if I cared.', 45);
INSERT INTO public.moon VALUES (8, 'zeta', 2, 231.01, false, 'I once know a woman called Zita, but no zeta.', 3);
INSERT INTO public.moon VALUES (9, 'eta', 3, 253.4, false, 'seems like she lost it', 6);
INSERT INTO public.moon VALUES (10, 'theta', 84, 17, true, 'Where do angels go for fun in the weekend? To watch movies in the THETA.', 41);
INSERT INTO public.moon VALUES (11, 'iota', 65, 29, false, 'ik snap er geen iota van', 2);
INSERT INTO public.moon VALUES (12, 'kappa', 56, 54, true, 'Isn''t that a clothing mark?', 1);
INSERT INTO public.moon VALUES (13, 'lambda', 42, 14, true, 'One more letter and you can dance on it.', 5);
INSERT INTO public.moon VALUES (14, 'mu', 21, 258.1, true, 'It''s a cow!', 40);
INSERT INTO public.moon VALUES (15, 'nu1', 4, 24, false, '', 41);
INSERT INTO public.moon VALUES (16, 'xi', 236, 37, true, '', 44);
INSERT INTO public.moon VALUES (17, 'omicron', 812, 5378, true, NULL, 3);
INSERT INTO public.moon VALUES (18, 'pi1', 2, 121, false, NULL, 45);
INSERT INTO public.moon VALUES (19, 'rho', 154, 52.002, false, NULL, 5);
INSERT INTO public.moon VALUES (20, 'sigma', 124, 13.4, true, NULL, 7);
INSERT INTO public.moon VALUES (21, 'tau', 23, 1, false, NULL, 41);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 23, 5, false, 'it''s not Freddy', 2);
INSERT INTO public.planet VALUES (2, 'Venus', 11, 6, false, 'loved by men', 2);
INSERT INTO public.planet VALUES (3, 'Earth', 0, 7, true, 'almost destroyed, we''re getting there', 2);
INSERT INTO public.planet VALUES (4, 'Mars', 17, 8.3, false, 'yummy', 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', 25, 4.2, false, 'silly name', 4);
INSERT INTO public.planet VALUES (6, 'Saturn', 19, 16.8, false, 'I don''t know anything', 5);
INSERT INTO public.planet VALUES (7, 'Uranus', 450, 11.7, true, 'is quite alive', 2);
INSERT INTO public.planet VALUES (40, 'Neptune', 275, 12, true, 'fishy business on the side', 5);
INSERT INTO public.planet VALUES (41, 'Achelous', 12, 19, false, 'take the bull by the horns', 2);
INSERT INTO public.planet VALUES (43, 'Oceanu', 29, 35, false, 'really watered down', 7);
INSERT INTO public.planet VALUES (44, 'Siren', 31, 14.3, true, 'looks worse then she sings', 4);
INSERT INTO public.planet VALUES (45, 'Acheron', 31, 11.25, false, 'nice name', 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'sol', 152, 4603, 'it''s hot up there', 1);
INSERT INTO public.star VALUES (3, 'sirius', 8611, 230, 'it''s sirius alright', 1);
INSERT INTO public.star VALUES (4, 'canopus', 310, 10, '', 1);
INSERT INTO public.star VALUES (5, 'arcturus', 37, 7105, 'don''t know anything about it', 1);
INSERT INTO public.star VALUES (7, 'Alpha Centauri A.', 4365, 5000, 'are there partly horse partly humans there?', 1);
INSERT INTO public.star VALUES (8, 'vega', 25, 455.3, 'Nothing to do with vegas', 1);


--
-- Data for Name: star_gazer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_gazer VALUES (3, 'stefaan', 45, 2, 1, 1);
INSERT INTO public.star_gazer VALUES (5, 'Pascal', 3, 2, 3, 3);
INSERT INTO public.star_gazer VALUES (6, 'giovannie', 7, 2, 20, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 45, true);


--
-- Name: star_gazer_star_gazer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_gazer_star_gazer_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_official_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_official_name_key UNIQUE (name);


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
-- Name: star_gazer mustbeunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_gazer
    ADD CONSTRAINT mustbeunique UNIQUE (name);


--
-- Name: planet planet_official_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_official_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star_gazer star_gazer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_gazer
    ADD CONSTRAINT star_gazer_pkey PRIMARY KEY (star_gazer_id);


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
-- Name: star_gazer star_gazer_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_gazer
    ADD CONSTRAINT star_gazer_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star_gazer star_gazer_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_gazer
    ADD CONSTRAINT star_gazer_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star_gazer star_gazer_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_gazer
    ADD CONSTRAINT star_gazer_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star_gazer star_gazer_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_gazer
    ADD CONSTRAINT star_gazer_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

