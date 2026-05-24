--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    gpa numeric(2,1),
    major_id integer
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (86, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (87, 'Web Programming');
INSERT INTO public.courses VALUES (88, 'Database Systems');
INSERT INTO public.courses VALUES (89, 'Computer Networks');
INSERT INTO public.courses VALUES (90, 'SQL');
INSERT INTO public.courses VALUES (91, 'Machine Learning');
INSERT INTO public.courses VALUES (92, 'Computer Systems');
INSERT INTO public.courses VALUES (93, 'Web Applications');
INSERT INTO public.courses VALUES (94, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (95, 'Python');
INSERT INTO public.courses VALUES (96, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (97, 'Calculus');
INSERT INTO public.courses VALUES (98, 'Game Architecture');
INSERT INTO public.courses VALUES (99, 'Algorithms');
INSERT INTO public.courses VALUES (100, 'UNIX');
INSERT INTO public.courses VALUES (101, 'Server Administration');
INSERT INTO public.courses VALUES (102, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (88, 'Database Administration');
INSERT INTO public.majors VALUES (89, 'Web Development');
INSERT INTO public.majors VALUES (90, 'Data Science');
INSERT INTO public.majors VALUES (91, 'Network Engineering');
INSERT INTO public.majors VALUES (92, 'Computer Programming');
INSERT INTO public.majors VALUES (93, 'Game Design');
INSERT INTO public.majors VALUES (94, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (88, 86);
INSERT INTO public.majors_courses VALUES (89, 87);
INSERT INTO public.majors_courses VALUES (88, 88);
INSERT INTO public.majors_courses VALUES (90, 86);
INSERT INTO public.majors_courses VALUES (91, 89);
INSERT INTO public.majors_courses VALUES (88, 90);
INSERT INTO public.majors_courses VALUES (90, 91);
INSERT INTO public.majors_courses VALUES (91, 92);
INSERT INTO public.majors_courses VALUES (92, 89);
INSERT INTO public.majors_courses VALUES (88, 93);
INSERT INTO public.majors_courses VALUES (93, 94);
INSERT INTO public.majors_courses VALUES (90, 95);
INSERT INTO public.majors_courses VALUES (92, 96);
INSERT INTO public.majors_courses VALUES (94, 92);
INSERT INTO public.majors_courses VALUES (93, 97);
INSERT INTO public.majors_courses VALUES (89, 86);
INSERT INTO public.majors_courses VALUES (90, 97);
INSERT INTO public.majors_courses VALUES (89, 96);
INSERT INTO public.majors_courses VALUES (93, 98);
INSERT INTO public.majors_courses VALUES (94, 89);
INSERT INTO public.majors_courses VALUES (93, 99);
INSERT INTO public.majors_courses VALUES (94, 100);
INSERT INTO public.majors_courses VALUES (94, 101);
INSERT INTO public.majors_courses VALUES (92, 92);
INSERT INTO public.majors_courses VALUES (92, 95);
INSERT INTO public.majors_courses VALUES (91, 102);
INSERT INTO public.majors_courses VALUES (89, 93);
INSERT INTO public.majors_courses VALUES (91, 99);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (49, 'Rhea', 'Kellems', 2.5, 88);
INSERT INTO public.students VALUES (50, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (51, 'Kimberly', 'Whitley', 3.8, 89);
INSERT INTO public.students VALUES (52, 'Jimmy', 'Felipe', 3.7, 88);
INSERT INTO public.students VALUES (53, 'Kyle', 'Stimson', 2.8, NULL);
INSERT INTO public.students VALUES (54, 'Casares', 'Hijo', 4.0, 93);
INSERT INTO public.students VALUES (55, 'Noe', 'Savage', 3.6, NULL);
INSERT INTO public.students VALUES (56, 'Sterling', 'Boss', 3.9, 93);
INSERT INTO public.students VALUES (57, 'Brian', 'Davis', 2.3, NULL);
INSERT INTO public.students VALUES (58, 'Kaija', 'Uronen', 3.7, 93);
INSERT INTO public.students VALUES (59, 'Faye', 'Conn', 2.1, 93);
INSERT INTO public.students VALUES (60, 'Efren', 'Reilly', 3.9, 89);
INSERT INTO public.students VALUES (61, 'Danh', 'Nhung', 2.4, NULL);
INSERT INTO public.students VALUES (62, 'Maxine', 'Hagenes', 2.9, 88);
INSERT INTO public.students VALUES (63, 'Larry', 'Saunders', 2.2, 90);
INSERT INTO public.students VALUES (64, 'Karl', 'Kuhar', NULL, 89);
INSERT INTO public.students VALUES (65, 'Lieke', 'Hazenveld', 3.5, 93);
INSERT INTO public.students VALUES (66, 'Obie', 'Hilpert', NULL, 89);
INSERT INTO public.students VALUES (67, 'Peter', 'Booysen', 2.9, NULL);
INSERT INTO public.students VALUES (68, 'Nathan', 'Turner', 3.3, 88);
INSERT INTO public.students VALUES (69, 'Gerald', 'Osiki', 2.2, 90);
INSERT INTO public.students VALUES (70, 'Vanya', 'Hassanah', 4.0, 93);
INSERT INTO public.students VALUES (71, 'Roxelana', 'Florescu', 3.2, 88);
INSERT INTO public.students VALUES (72, 'Helene', 'Parker', 3.4, 90);
INSERT INTO public.students VALUES (73, 'Mariana', 'Russel', 1.8, 89);
INSERT INTO public.students VALUES (74, 'Ajit', 'Dhungel', 3.0, NULL);
INSERT INTO public.students VALUES (75, 'Mehdi', 'Vandenberghe', 1.9, 88);
INSERT INTO public.students VALUES (76, 'Dejon', 'Howell', 4.0, 89);
INSERT INTO public.students VALUES (77, 'Aliya', 'Gulgowski', 2.6, 94);
INSERT INTO public.students VALUES (78, 'Ana', 'Tupajic', 3.1, 90);
INSERT INTO public.students VALUES (79, 'Hugo', 'Duran', 3.8, NULL);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 102, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 94, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 79, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

