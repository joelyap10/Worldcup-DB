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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (398, 2018, 'Final', 547, 548, 4, 2);
INSERT INTO public.games VALUES (399, 2018, 'Third Place', 549, 550, 2, 0);
INSERT INTO public.games VALUES (400, 2018, 'Semi-Final', 548, 550, 2, 1);
INSERT INTO public.games VALUES (401, 2018, 'Semi-Final', 547, 549, 1, 0);
INSERT INTO public.games VALUES (402, 2018, 'Quarter-Final', 548, 551, 3, 2);
INSERT INTO public.games VALUES (403, 2018, 'Quarter-Final', 550, 552, 2, 0);
INSERT INTO public.games VALUES (404, 2018, 'Quarter-Final', 549, 553, 2, 1);
INSERT INTO public.games VALUES (405, 2018, 'Quarter-Final', 547, 554, 2, 0);
INSERT INTO public.games VALUES (406, 2018, 'Eighth-Final', 550, 555, 2, 1);
INSERT INTO public.games VALUES (407, 2018, 'Eighth-Final', 552, 556, 1, 0);
INSERT INTO public.games VALUES (408, 2018, 'Eighth-Final', 549, 557, 3, 2);
INSERT INTO public.games VALUES (409, 2018, 'Eighth-Final', 553, 558, 2, 0);
INSERT INTO public.games VALUES (410, 2018, 'Eighth-Final', 548, 559, 2, 1);
INSERT INTO public.games VALUES (411, 2018, 'Eighth-Final', 551, 560, 2, 1);
INSERT INTO public.games VALUES (412, 2018, 'Eighth-Final', 554, 561, 2, 1);
INSERT INTO public.games VALUES (413, 2018, 'Eighth-Final', 547, 562, 4, 3);
INSERT INTO public.games VALUES (414, 2014, 'Final', 563, 562, 1, 0);
INSERT INTO public.games VALUES (415, 2014, 'Third Place', 564, 553, 3, 0);
INSERT INTO public.games VALUES (416, 2014, 'Semi-Final', 562, 564, 1, 0);
INSERT INTO public.games VALUES (417, 2014, 'Semi-Final', 563, 553, 7, 1);
INSERT INTO public.games VALUES (418, 2014, 'Quarter-Final', 564, 565, 1, 0);
INSERT INTO public.games VALUES (419, 2014, 'Quarter-Final', 562, 549, 1, 0);
INSERT INTO public.games VALUES (420, 2014, 'Quarter-Final', 553, 555, 2, 1);
INSERT INTO public.games VALUES (421, 2014, 'Quarter-Final', 563, 547, 1, 0);
INSERT INTO public.games VALUES (422, 2014, 'Eighth-Final', 553, 566, 2, 1);
INSERT INTO public.games VALUES (423, 2014, 'Eighth-Final', 555, 554, 2, 0);
INSERT INTO public.games VALUES (424, 2014, 'Eighth-Final', 547, 567, 2, 0);
INSERT INTO public.games VALUES (425, 2014, 'Eighth-Final', 563, 568, 2, 1);
INSERT INTO public.games VALUES (426, 2014, 'Eighth-Final', 564, 558, 2, 1);
INSERT INTO public.games VALUES (427, 2014, 'Eighth-Final', 565, 569, 2, 1);
INSERT INTO public.games VALUES (428, 2014, 'Eighth-Final', 562, 556, 1, 0);
INSERT INTO public.games VALUES (429, 2014, 'Eighth-Final', 549, 570, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (547, 'France');
INSERT INTO public.teams VALUES (548, 'Croatia');
INSERT INTO public.teams VALUES (549, 'Belgium');
INSERT INTO public.teams VALUES (550, 'England');
INSERT INTO public.teams VALUES (551, 'Russia');
INSERT INTO public.teams VALUES (552, 'Sweden');
INSERT INTO public.teams VALUES (553, 'Brazil');
INSERT INTO public.teams VALUES (554, 'Uruguay');
INSERT INTO public.teams VALUES (555, 'Colombia');
INSERT INTO public.teams VALUES (556, 'Switzerland');
INSERT INTO public.teams VALUES (557, 'Japan');
INSERT INTO public.teams VALUES (558, 'Mexico');
INSERT INTO public.teams VALUES (559, 'Denmark');
INSERT INTO public.teams VALUES (560, 'Spain');
INSERT INTO public.teams VALUES (561, 'Portugal');
INSERT INTO public.teams VALUES (562, 'Argentina');
INSERT INTO public.teams VALUES (563, 'Germany');
INSERT INTO public.teams VALUES (564, 'Netherlands');
INSERT INTO public.teams VALUES (565, 'Costa Rica');
INSERT INTO public.teams VALUES (566, 'Chile');
INSERT INTO public.teams VALUES (567, 'Nigeria');
INSERT INTO public.teams VALUES (568, 'Algeria');
INSERT INTO public.teams VALUES (569, 'Greece');
INSERT INTO public.teams VALUES (570, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 429, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 570, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

