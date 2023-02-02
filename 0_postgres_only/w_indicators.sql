--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1

-- Started on 2023-02-02 12:36:16

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

\connect qstep

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

--
-- TOC entry 4545 (class 0 OID 0)
-- Name: qstep; Type: DATABASE PROPERTIES; Schema: -; Owner: qstep
--

ALTER DATABASE qstep SET search_path TO '$user', 'public', 'topology', 'tiger';


\connect qstep

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
-- TOC entry 287 (class 1259 OID 19922)
-- Name: world_indicators; Type: TABLE; Schema: public; Owner: pg_database_owner
--

CREATE TABLE public.world_indicators (
    country character varying(100),
    countrycode character varying(3),
    electricity double precision,
    forest_area double precision,
    gross_domestic_savings double precision,
    labor double precision,
    area_classification character varying(30)
);


ALTER TABLE public.world_indicators OWNER TO pg_database_owner;

--
-- TOC entry 4538 (class 0 OID 19922)
-- Dependencies: 287
-- Data for Name: world_indicators; Type: TABLE DATA; Schema: public; Owner: pg_database_owner
--

INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('American Samoa', 'ASM', NULL, 89.3999958, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Heavily indebted poor countries (HIPC)', 'HPC', 22.19974888, 32.16145453, 10.84948573, 217155454, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('IBRD only', 'IBD', 87.06442066, 33.91522004, 33.01455258, 1979378351, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('IDA & IBRD total', 'IBT', 76.31162904, 32.27228718, 32.2001378, 2437749266, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Late-demographic dividend', 'LTE', 97.49831444, 38.70940915, 36.15504425, 1161067673, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Latin America & Caribbean', 'LCN', 93.58022997, 47.69788302, 22.51411, 250595091, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Latin America & Caribbean (excluding high income)', 'LAC', 93.39696052, 49.01209481, 22.06936075, 238067545, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Latin America & the Caribbean (IDA & IBRD countries)', 'TLA', 93.45292566, 47.8152759, 22.50952268, 244002720, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Low & middle income', 'LMY', 76.0842464, 32.39888554, 32.53593353, 2427765184, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Middle income', 'MIC', 81.50511999, 33.40349061, 32.85038985, 2220689299, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('North America', 'NAC', 100, 35.73359107, 18.61922282, 169814515, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Upper middle income', 'UMC', 96.94192645, 34.57555932, 34.50365732, 1247327086, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Andorra', 'AND', 100, 34.04255319, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Angola', 'AGO', 28.21688461, 47.40835807, 52.0181532, 8022529, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Austria', 'AUT', 100, 46.63356745, 26.84399959, 4017205, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Bahamas, The', 'BHS', 100, 51.44855145, 30.81881214, 175263, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Belarus', 'BLR', 100, 41.59148055, 27.22681662, 4963330, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Belize', 'BLZ', 84.57375336, 62.10127266, 13.58790461, 110924, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Benin', 'BEN', 27.03466225, 42.66583895, 9.858710238, 3186622, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Bhutan', 'BTN', 59.80811164, 69.67101126, 25.85020651, 296022, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Bolivia', 'BOL', 68.288209, 54.21766824, 17.70796558, 4262106, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Bosnia and Herzegovina', 'BIH', 100, 42.67578125, -16.13353149, 1514351, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Brunei Darussalam', 'BRN', 100, 73.81404175, 59.13023728, 176779, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Bulgaria', 'BGR', 100, 33.60640648, 13.16584853, 3333125, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Cambodia', 'KHM', 20.5, 60.79197825, 9.90485616, 6809224, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Cameroon', 'CMR', 47.33861923, 44.45854752, 20.18707583, 8084403, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Cayman Islands', 'CYM', 100, 52.91666587, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Central African Republic', 'CAF', 8.133627892, 35.83742656, 1.742342107, 1654183, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Colombia', 'COL', 96.8, 54.25990029, 16.95159601, 19953131, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Congo, Dem. Rep.', 'COD', 6, 68.67603273, 5.35366109, 21266406, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Congo, Rep.', 'COG', 33.8, 65.80087848, 57.97993026, 1446308, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Costa Rica', 'CRI', 99.053051, 48.78574226, 16.74868926, 1943549, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Cote d''Ivoire', 'CIV', 58.9, 32.72012579, 17.53804892, 6482355, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Croatia', 'HRV', 100, 34.00643317, 21.68251224, 1935849, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Czech Republic', 'CZE', 100, 34.2609371, 31.47334507, 5180451, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Dominica', 'DMA', 87.68852997, 61.32000224, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Dominican Republic', 'DOM', 90.141224, 34.19581867, 19.78178871, 3473100, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Ecuador', 'ECU', 95.83265, 53.69318825, 20.77361973, 6293995, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Equatorial Guinea', 'GNQ', NULL, 60.07130125, 83.28704328, 273087, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Estonia', 'EST', 100, 53.1257372, 28.34757152, 673822, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Fiji', 'FJI', 82.08673859, 54.58456539, NULL, 325095, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Finland', 'FIN', 100, 72.69772481, 28.69509146, 2627895, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('French Polynesia', 'PYF', 100, 35.51912568, NULL, 105359, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Gabon', 'GAB', 81.6, 85.38052548, 57.43227798, 394914, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Gambia, The', 'GMB', 30.4562675, 46.54150198, 5.170626261, 484422, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Georgia', 'GEO', 97.93505412, 39.89782703, 15.66824025, 2002620, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Germany', 'DEU', 100, 32.64135795, 23.87424702, 41261131, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Ghana', 'GHA', 54.64947891, 39.78641118, 3.72900079, 9240769, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Grenada', 'GRD', 87.86652374, 49.97058756, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Guam', 'GUM', 100, 46.2962963, NULL, 76054, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Guatemala', 'GTM', 78.41213989, 36.74878686, 3.796596652, 4725239, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Guinea-Bissau', 'GNB', NULL, 73.68421053, -4.084588196, 542200, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Guyana', 'GUY', 77.5, 84.33832868, -0.320246493, 265321, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Honduras', 'HND', 68.903309, 51.76512646, 9.145054569, 2829332, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Indonesia', 'IDN', 85.97065735, 54.01778568, 27.52800212, 101395729, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Korea, Dem. People’s Rep.', 'PRK', NULL, 52.31293082, NULL, 14682190, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Korea, Rep.', 'KOR', 100, 64.58440888, 34.51324547, 24279594, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Lao PDR', 'LAO', 57.2, 73.09233508, 20.19291197, 2705434, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Latvia', 'LVA', 100, 53.00983903, 20.66146992, 1093788, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Liberia', 'LBR', NULL, 46.50124585, -132.7272392, 1031421, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Liechtenstein', 'LIE', 100, 43.1250006, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Lithuania', 'LTU', 100, 33.83854499, 16.82122199, 1553567, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Luxembourg', 'LUX', 100, 35.67901109, 46.55163791, 207421, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Malawi', 'MWI', 6.63094902, 36.08400509, -4.110919596, 5219611, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Malaysia', 'MYS', NULL, 63.58240755, 44.34009471, 10922365, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Marshall Islands', 'MHL', 75.97669983, 70.22222413, -36.56029279, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Mexico', 'MEX', 98.932728, 34.50860362, 20.85030811, 44110186, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Micronesia, Fed. Sts.', 'FSM', 55.5058136, 91.41428811, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Montenegro', 'MNE', 99.83022071, 46.54275093, 0.199614985, 248285, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Mozambique', 'MOZ', 12.02174759, 50.96645388, 2.255935412, 9542141, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Myanmar', 'MMR', 47.4370079, 50.999449, NULL, 23486251, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('New Caledonia', 'NCL', 100, 45.89715536, NULL, 109635, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Trinidad and Tobago', 'TTO', 97.40485382, 44.83430799, NULL, 655138, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Afghanistan', 'AFG', 23, 2.067824648, -33.76417609, 8607338, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Albania', 'ALB', 100, 28.55474542, 12.02330681, 1281634, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Algeria', 'DZA', NULL, 0.644906665, 54.7882002, 9984928, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Japan', 'JPN', 100, 68.40877915, 26.25886035, 66732912, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Cuba', 'CUB', 96.93735504, 25.33821871, 13.44950385, 4803671, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Cyprus', 'CYP', 100, 18.70671062, 21.91540995, 518098, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Denmark', 'DNK', 100, 13.14400217, 27.71094304, 2900837, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Djibouti', 'DJI', 56.26431656, 0.241587571, NULL, 301860, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Mauritania', 'MRT', 18.2, 0.259047249, 9.712222774, 848344, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Mauritius', 'MUS', 98.77565002, 18.81773437, 17.47037321, 544400, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Moldova', 'MDA', 98.6, 11.0367893, -9.87086989, 1418023, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Mongolia', 'MNG', 86.2, 7.278766189, 32.68586805, 1063124, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Morocco', 'MAR', 80.27787781, 12.1017253, 24.20307123, 10670390, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Namibia', 'NAM', 39.66730499, 9.305348055, 21.3035093, 671395, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Nauru', 'NRU', NULL, 0, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Nepal', 'NPL', 46.22322083, 25.3644925, 11.55565976, 13163939, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Netherlands', 'NLD', 100, 10.81161137, 28.91158377, 8579461, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('South Sudan', 'SSD', NULL, NULL, NULL, 3097145, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sudan', 'SDN', 33.65529251, NULL, 13.9125455, 8589632, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Brazil', 'BRA', 97.093513, 60.62760375, 20.6057468, 89784647, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Canada', 'CAN', 100, 38.22242456, 26.34309273, 17695801, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Russian Federation', 'RUS', 100, 49.37248915, 33.18668818, 74220774, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('United States', 'USA', 100, 33.2634426, 17.84828904, 152118714, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Europe & Central Asia', 'ECS', 99.93330928, 37.57778527, 23.94934431, 407717962, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Europe & Central Asia (excluding high income)', 'ECA', 99.83487098, 38.50771253, 27.88595003, 177679274, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Europe & Central Asia (IDA & IBRD countries)', 'TEC', 99.85397054, 38.38377711, 26.51721359, 197144497, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Turks and Caicos Islands', 'TCA', 96.12085724, 36.21052792, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Tuvalu', 'TUV', 95.67805481, 33.33333333, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Vanuatu', 'VUT', 29.67459106, 36.09515997, 19.60461667, 88803, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Venezuela, RB', 'VEN', 98.85987091, 54.09330537, 42.1940093, 11742257, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Vietnam', 'VNM', 96.1, 42.17434773, 29.0461389, 46516141, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Virgin Islands (U.S.)', 'VIR', 100, 53.51428441, NULL, 53848, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Zambia', 'ZMB', 22.56822205, 67.66434846, NULL, 4997107, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Zimbabwe', 'ZWE', 35.54419708, 44.61419155, -7.42123596, 5835195, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Caribbean small states', 'CSS', 90.47319937, 85.49020636, NULL, 2918711, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Central Europe and the Baltics', 'CEB', 100, 33.19175623, 21.17659846, 48861939, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Euro area', 'EMU', 100, 37.03699296, 23.80225338, 156247520, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('European Union', 'EUU', 100, 36.96674267, 22.56758483, 236287237, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Pacific island small states', 'PSS', 61.77482709, 62.12367618, NULL, 687934, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Not classified', 'INX', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Small states', 'SST', 68.49740724, 36.88917753, 45.57578559, 12743409, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Australia', 'AUS', 100, 16.61494604, 24.81799623, 10554464, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('China', 'CHN', 98.12897491, 20.56237213, 45.84221426, 761944037, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Arab World', 'ARB', 80.20927897, 1.687258255, 41.231747, 95820797, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Early-demographic dividend', 'EAR', 70.77280372, 22.7163632, 28.9634099, 1053404953, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('East Asia & Pacific', 'EAS', 93.81805211, 26.09456653, 34.64195462, 1165229249, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('East Asia & Pacific (excluding high income)', 'EAP', 93.10415161, 29.21496228, 42.22193637, 1044301507, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('East Asia & Pacific (IDA & IBRD countries)', 'TEA', 93.1042139, 29.03980293, 42.22096387, 1029619317, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Fragile and conflict affected situations', 'FCS', 34.58628723, 28.61563764, 26.61953742, 137830483, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Tunisia', 'TUN', 99.3, 5.889546859, 21.29278021, 3398005, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Turkey', 'TUR', NULL, 13.85341008, 23.63196903, 22316274, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Turkmenistan', 'TKM', 99.70436096, 8.782159045, 38.76379542, 2028599, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Uganda', 'UGA', 8.9, 17.16130324, 11.87368944, 9810357, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Ukraine', 'UKR', 99.8855617, 16.52628672, 24.72580671, 22163073, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('United Arab Emirates', 'ARE', 100, 4.393128696, 35.78445266, 2937065, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('United Kingdom', 'GBR', 100, 12.48708304, 14.91049884, 30590477, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Uruguay', 'URY', 98.68147278, 8.695006564, 19.62920143, 1584040, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Uzbekistan', 'UZB', 99.69625854, 7.745651152, 34.09280053, 11144733, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('West Bank and Gaza', 'PSE', 99.34732819, 1.523255827, -33.48234612, 734126, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Yemen, Rep.', 'YEM', 57.29527283, 1.039831809, NULL, 4580441, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Other small states', 'OSS', 62.05165773, 26.40195044, 49.0930956, 9136765, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('South Asia', 'SAS', 64.39221217, 16.93919011, 28.93666791, 583405541, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('South Asia (IDA & IBRD)', 'TSA', 64.39221217, 16.93919011, 28.93666791, 583405541, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('High income', 'HIC', 99.91685718, 28.70748414, 23.18822553, 550554357, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('IDA blend', 'IDB', 57.64193599, 21.54610616, 25.13924863, 137727702, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('IDA only', 'IDX', 31.35454736, 29.48744721, 12.21456074, 320643212, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('IDA total', 'IDA', 40.28529132, 27.51270199, 18.61737321, 458370915, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Least developed countries: UN classification', 'LDC', 26.29384823, 30.58314423, 19.37485468, 298453734, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Low income', 'LIC', 21.1754412, 26.61793457, 9.819272765, 207075884, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Lower middle income', 'LMC', 67.47692628, 30.00433028, 26.7468536, 973362213, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Middle East & North Africa', 'MEA', 93.43494483, 1.992157582, 40.95138021, 111126248, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Middle East & North Africa (excluding high income)', 'MNA', 92.36806831, 2.419297048, 37.07269062, 93880382, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Middle East & North Africa (IDA & IBRD countries)', 'TMN', 92.27205567, 2.419921538, 37.56058481, 93146256, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('OECD members', 'OED', 99.87097488, 31.12507429, 22.20286691, 577585780, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Post-demographic dividend', 'PST', 99.96127321, 31.45919844, 22.33370692, 521881416, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Pre-demographic dividend', 'PRE', 26.55110243, 29.74733429, 28.45202408, 231203422, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sub-Saharan Africa', 'SSF', 29.86736663, 29.0764602, 23.61196676, 290430934, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sub-Saharan Africa (excluding high income)', 'SSA', 29.86005347, 29.07517519, 23.61196676, 290430934, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sub-Saharan Africa (IDA & IBRD countries)', 'TSS', 29.86736663, 29.0764602, 23.61196676, 290430934, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('World', 'WLD', 80.20709632, 30.99623804, 25.93264344, 2978319541, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Antigua and Barbuda', 'ATG', 92.2, 22.27272771, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Argentina', 'ARG', 96.84909058, 11.03011302, 24.82874662, 17549561, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Armenia', 'ARM', 99.8, 11.66139796, 13.95102611, 1307908, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Aruba', 'ABW', 100, 2.33333326, 24.18504314, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Azerbaijan', 'AZE', 99.31898499, 10.61214629, 47.45697744, 3888448, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Bahrain', 'BHR', 100, 0.608108092, 46.77073688, 453393, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Bangladesh', 'BGD', 44.23, 11.17769071, 21.05571375, 52170458, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Barbados', 'BRB', 99.97779846, 14.65116323, 11.57339697, 152587, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Belgium', 'BEL', 100, 22.2655222, 27.27548536, 4616055, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Bermuda', 'BMU', 100, 18.51851819, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Botswana', 'BWA', 37.45701218, 21.07352708, 42.49251459, 716616, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('British Virgin Islands', 'VGB', NULL, 24.40000057, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Burkina Faso', 'BFA', 12.23582554, 21.74342105, 8.048052946, 5325133, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Burundi', 'BDI', 3.207317073, 7.048286604, -4.5, 3168049, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Cabo Verde', 'CPV', 67, 20.74193458, NULL, 185374, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Chad', 'TCD', 4.621730328, 4.876905972, 30.81211008, 3684687, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Curacao', 'CUW', 100, NULL, 18.99498599, NULL, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Channel Islands', 'CHI', NULL, 4.040404256, NULL, 75442, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Chile', 'CHL', 97.97382355, 21.57539867, 30.54303924, 7004262, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Comoros', 'COM', 51.28876495, 22.56851081, -0.042543481, 147847, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Egypt, Arab Rep.', 'EGY', 99.4, 0.067306243, 15.71030641, 23260715, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('El Salvador', 'SLV', 87.525839, 14.91312741, -0.578028248, 2405158, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Eritrea', 'ERI', 34.6183815, 15.38613861, -28.43516466, 1369829, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Eswatini', 'SWZ', 35.77423859, 31.45348837, 7.110095436, 296930, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Ethiopia', 'ETH', 14, 13, NULL, 33545918, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Faroe Islands', 'FRO', 100, 0.057306586, 10.00154419, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('France', 'FRA', 100, 28.9668477, 22.53807538, 28917082, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Gibraltar', 'GIB', 100, 0, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Greece', 'GRC', 100, 29.10783553, 13.82287495, 5025650, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Greenland', 'GRL', 100, 0.000535997, 6.57255411, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Guinea', 'GIN', 20.2, 27.3644799, 19.20941208, 3157264, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Haiti', 'HTI', 34.60700989, 3.809869376, -1.481834142, 3665512, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Hungary', 'HUN', 100, 22.12922665, 23.14748128, 4273380, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Iceland', 'ISL', 100, 0.364089776, 17.68521549, 174963, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('India', 'IND', 67.08669281, 22.77318301, 32.2551399, 451555845, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Iran, Islamic Rep.', 'IRN', 98.40288544, 6.564491066, 46.7203934, 24182880, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Iraq', 'IRQ', NULL, 1.886274779, 42.5070569, 6604869, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Hong Kong SAR, China', 'HKG', 100, NULL, 33.27644507, 3553436, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Ireland', 'IRL', 100, 10.08622481, 40.09056772, 2159359, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Isle of Man', 'IMN', 100, 6.070175506, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Israel', 'ISR', 100, 7.162661738, 20.44530672, 3085680, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Kosovo', 'XKX', 100, NULL, -9.933797318, NULL, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Italy', 'ITA', 100, 29.77833685, 20.99296145, 24380933, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Jamaica', 'JAM', 88.68343353, 31.32040741, 7.00095391, 1253714, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Jordan', 'JOR', 99.15599823, 1.10494107, -7.351367654, 1456030, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Kazakhstan', 'KAZ', 99.37663269, 1.236063266, 38.89448697, 7949603, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Kenya', 'KEN', 25.96982574, 7.110728468, 7.220399442, 13292856, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Kiribati', 'KIR', 69.67640546, 14.99999953, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Macao SAR, China', 'MAC', 100, NULL, 58.26244942, 258002, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Kuwait', 'KWT', 100, 0.311447822, 52.13834612, 1172159, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Kyrgyz Republic', 'KGZ', 99.44230769, 4.532325275, -2.054723922, 2311441, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Lebanon', 'LBN', 99.60125732, 13.3431085, 4.171312818, 1512170, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Lesotho', 'LSO', 10.44579601, 1.416337286, NULL, 882524, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Libya', 'LBY', 90.17337799, 0.123327688, 64.23680036, 1997897, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Monaco', 'MCO', 100, NULL, NULL, NULL, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Madagascar', 'MDG', 15.32285976, 22.07586752, 4.854587035, 8782870, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Maldives', 'MDV', 91.087883, 3.333333333, NULL, 127203, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Mali', 'MLI', 17.89640808, 4.511592457, 12.73430468, 4793276, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Malta', 'MLT', 100, 1.093749981, 18.89889345, 161288, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sint Maarten (Dutch part)', 'SXM', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Nicaragua', 'NIC', 73.821815, 28.78510886, 3.02225407, 2167272, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('New Zealand', 'NZL', 100, 38.67304698, 23.97306935, 2178594, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('North Macedonia', 'MKD', 100, 38.34054267, 3.619746666, 886512, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Northern Mariana Islands', 'MNP', 99.95397949, 67.69565085, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Norway', 'NOR', 100, 33.10663698, 38.59313142, 2431376, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Palau', 'PLW', 98.91650733, 87.60869399, 3.256437039, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Panama', 'PAN', 85.37091064, 64.32606941, 22.85850532, 1495406, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Papua New Guinea', 'PNG', 19.86060333, 74.16420086, NULL, 2410988, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Paraguay', 'PRY', 94.686886, 46.50138434, 31.06840498, 2662080, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Peru', 'PER', 77.173645, 59.00625, 23.62402243, 13761026, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Portugal', 'PRT', 100, 36.03367224, 14.55394048, 5503823, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Puerto Rico', 'PRI', 100, 52.18376495, 31.91811129, 1407002, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Samoa', 'WSM', 91.23090363, 60.42402827, NULL, 35755, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sao Tome and Principe', 'STP', 55.92195511, 58.33333333, NULL, 50294, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Senegal', 'SEN', 47.1, 45.04752506, 9.079531135, 3177988, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Seychelles', 'SYC', 95.70980835, 88.4130395, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sierra Leone', 'SLE', 11.33248552, 39.12441119, 0.944674983, 2065742, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Slovak Republic', 'SVK', 100, 40.16632017, 25.12442108, 2661942, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Slovenia', 'SVN', 100, 61.71797418, 27.74233301, 1018972, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Solomon Islands', 'SLB', 19.38389969, 80.06430868, -10.07796708, 200745, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Spain', 'ESP', 100, 34.62720119, 25.01617295, 21270027, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sri Lanka', 'LKA', 77.56867981, 33.77451762, 17.89722853, 8192167, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('St. Kitts and Nevis', 'KNA', 96.09822083, 42.30769231, NULL, NULL, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('St. Lucia', 'LCA', 91.84897614, 34.26229446, 26.04183209, 77905, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('St. Vincent and the Grenadines', 'VCT', 86.44233704, 66.66666667, NULL, 52149, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Suriname', 'SUR', 94.13384247, 98.53205128, NULL, 175710, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Sweden', 'SWE', 100, 68.76736365, 29.25746294, 4688555, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Tanzania', 'TZA', 13.17788315, 56.35583653, 24.40335874, 18730033, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Timor-Leste', 'TLS', 33.55041504, 53.66509751, 63.14419672, 270774, 'high area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Niger', 'NER', 7.1, 0.999447383, 9.709091921, 5492042, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Nigeria', 'NGA', 47.18107605, 12.17541201, 35.19804017, 42828205, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Oman', 'OMN', NULL, 0.006462036, 48.64362815, 946780, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Pakistan', 'PAK', 70.49060822, 2.467310087, 15.20695617, 49292570, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Philippines', 'PHL', 80.03903961, 23.7247208, 15.94582365, 33625210, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Poland', 'POL', 100, 30.03297098, 18.84947318, 17529374, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Qatar', 'QAT', 100, 0, 69.74353912, 544274, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Romania', 'ROU', 100, 27.78937299, 12.64057723, 9607668, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Rwanda', 'RWA', 4.8, 15.60599919, 5.782372876, 4314973, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('San Marino', 'SMR', 100, 0, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Saudi Arabia', 'SAU', 100, 0.454484135, 52.32224354, 7945226, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Serbia', 'SRB', 99.69072165, 28.31008461, 5.621518808, 3303149, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Singapore', 'SGP', 100, 23.73004357, 50.25497948, 2266575, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Somalia', 'SOM', 13.05195618, 11.3670418, NULL, 2538575, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('South Africa', 'ZAF', 80.9, 7.617736524, 18.54996236, 18031191, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('St. Martin (French part)', 'MAF', NULL, 18.38235294, NULL, NULL, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Switzerland', 'CHE', 100, 30.79609254, 31.26615298, 4171752, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Syrian Arab Republic', 'SYR', 92.15045929, 2.51130359, 20.35855442, 5196070, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Tajikistan', 'TJK', 99.3, 2.929408402, -3.144339911, 1789726, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Thailand', 'THA', 92.53581238, 31.51363307, 30.50645165, 37782107, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Togo', 'TGO', 26.67479706, 7.096892811, 6.105116004, 2587769, 'low area');
INSERT INTO public.world_indicators (country, countrycode, electricity, forest_area, gross_domestic_savings, labor, area_classification) VALUES ('Tonga', 'TON', 88.86142731, 12.5, -17.34389267, 37535, 'low area');


-- Completed on 2023-02-02 12:36:16

--
-- PostgreSQL database dump complete
--

