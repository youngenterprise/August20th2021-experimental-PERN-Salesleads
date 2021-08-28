CREATE DATABASE perntodo;

CREATE TABLE todos(
    index SERIAL PRIMARY KEY,
    name CHAR(100),
    title CHAR(100),
    company CHAR(100),
    outbound_date DATE NOT NULL DEFAULT CURRENT_DATE,
    interest CHAR(100)
);


\SET content 'C:\Users\Nakaw\Downloads\GC_assignment_data (1).json'
INSERT INTO new_contacts VALUES(:'content');


\SET content 'C:\Users\Nakaw\Downloads\GC_assignment_data (1).json'
INSERT INTO new_contacts VALUES('content');


{
  "schema": {
    "fields": [
      { "name": "index", "type": "integer" },
      { "name": "name", "type": "string" },
      { "name": "title", "type": "string" },
      { "name": "company", "type": "string" },
      { "name": "outbound_date", "type": "string" },
      { "name": "interest", "type": "string" }
    ],
    "pandas_version": "0.20.0"
  },
  
  "data": ;







with todos (doc) as (
   values 
    ('[
    {
      "index": 0,
      "name": "anneka smith",
      "title": "president",
      "company": "Wannabe by Anneka Smith Self-employed",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1,
      "name": "beth g. (julca) harper",
      "title": "marketing | social media | management | communications",
      "company": "I Heart My Life",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 2,
      "name": "mary elliott",
      "title": "assistant pastor, administration, worship leader",
      "company": "Liberty Churches",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 3,
      "name": "valerie b.",
      "title": "Music Apostle",
      "company": "Fellowship Church of Muskegon Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    }
    ]'::json)
)
insert into todos (index, name, title,company,outbound_date,interest)
select p.*
from customer_json l
  cross join lateral json_populate_recordset(null::customer, doc) as p
on conflict (index) do update 
  set index = excluded.index, name = excluded.name,title = excluded.title,
  company = excluded.company,outbound_date = excluded.outbound_date, interest = excluded.interest;





INSERT INTO todos
SELECT * FROM json_populate_recordset (NULL::todos,
  "[
    {
      "index": 0,
      "name": "anneka smith",
      "title": "president",
      "company": "Wannabe by Anneka Smith Self-employed",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1,
      "name": "beth g. (julca) harper",
      "title": "marketing | social media | management | communications",
      "company": "I Heart My Life",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 2,
      "name": "mary elliott",
      "title": "assistant pastor, administration, worship leader",
      "company": "Liberty Churches",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 3,
      "name": "valerie b.",
      "title": "Music Apostle",
      "company": "Fellowship Church of Muskegon Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 4,
      "name": "michael (michael clarke) hotten",
      "title": "marginal gains podcast 2",
      "company": "Self-Employed",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 5,
      "name": "jacklyn quinn",
      "title": "host of the get uncomfortable podcast",
      "company": "Brilliant Earth",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 6,
      "name": "jarvis moore",
      "title": "host",
      "company": "Self-employed",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 7,
      "name": "ryan flahive",
      "title": "vice president",
      "company": "Protect Our Winters",
      "outbound_date": "2021-06-07",
      "interest": "no response"
    },
    {
      "index": 8,
      "name": "Vincent Atkinson",
      "title": "AFLW Strength and Conditioning Coach ",
      "company": "North Melbourne Football Club",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 9,
      "name": "stefanie gordon",
      "title": "content strategist",
      "company": "Institutional Investor",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 10,
      "name": "tariq mahmood qureshi",
      "title": "chairman",
      "company": "Monthly Tamheed Multan",
      "outbound_date": "2021-03-14",
      "interest": "not interested"
    },
    {
      "index": 11,
      "name": "karen (santillo) fiorillo edd",
      "title": "builder",
      "company": "MONAT Global Part-time",
      "outbound_date": "2021-04-21",
      "interest": "not interested"
    },
    {
      "index": 12,
      "name": "jason amoo",
      "title": "communications consultant",
      "company": "TV3 Network Limited",
      "outbound_date": "2021-03-24",
      "interest": "no response"
    },
    {
      "index": 13,
      "name": "olawale a.",
      "title": "designer",
      "company": "Signe Geil Consulting",
      "outbound_date": "2021-04-05",
      "interest": "no response"
    },
    {
      "index": 14,
      "name": "channae cheung",
      "title": "planner",
      "company": "Hyundai Motor America",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 15,
      "name": "kemi akilapa ba (hons) ma",
      "title": "digital content creator",
      "company": "A Love Tompkins Photography Freelance",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 16,
      "name": "ryan brown",
      "title": "i develop & connect hr talent with dream jobs | host of hirewell's weekly jobs update | we're hiring",
      "company": "Hirewell",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 17,
      "name": "durrell middleton",
      "title": "general manager",
      "company": "Colorado Kings",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 18,
      "name": "kevin houseknecht",
      "title": "director",
      "company": "Growing Bolder",
      "outbound_date": "2021-05-20",
      "interest": "no response"
    },
    {
      "index": 19,
      "name": "james kennedy",
      "title": "CEO Murphy Kennedy Group",
      "company": "Murphy Kennedy Group",
      "outbound_date": "2021-03-02",
      "interest": "no response"
    },
    {
      "index": 20,
      "name": "kala echeverria",
      "title": "Personal Lines Auto Production Underwriter ",
      "company": "State Farm \u00ae",
      "outbound_date": "2021-03-16",
      "interest": "no response"
    },
    {
      "index": 21,
      "name": "rachit sethi",
      "title": "coach",
      "company": "Kashvi Education",
      "outbound_date": "2021-03-23",
      "interest": "no response"
    },
    {
      "index": 22,
      "name": "merza k.",
      "title": "ceo",
      "company": "Discover Events Full-time",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 23,
      "name": "garry ferrier",
      "title": "composer",
      "company": "FOXWINTER",
      "outbound_date": "2021-03-03",
      "interest": "no response"
    },
    {
      "index": 24,
      "name": "asif naseer",
      "title": "marketing consultant",
      "company": "Conwersion Self-employed",
      "outbound_date": "2021-05-04",
      "interest": "no response"
    },
    {
      "index": 25,
      "name": "tonya rivens",
      "title": "Radio & Television Personality",
      "company": "Radio One",
      "outbound_date": "2021-04-19",
      "interest": "not interested"
    },
    {
      "index": 26,
      "name": "jerry d valadez, ed.d.",
      "title": "\The secret of life, though, is to fall seven times and to get up eight times.\u201d - Paulo Coelho",
      "company": "Community Science Workshop Network",
      "outbound_date": "2021-03-17",
      "interest": "no response"
    },
    {
      "index": 27,
      "name": "brian pufahl",
      "title": "senior content creator",
      "company": "Schafer Condon Carter (SCC)",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 28,
      "name": "mike leo",
      "title": "director of corporate sales",
      "company": "Club16 Trevor Linden Fitness Permanent Full-time",
      "outbound_date": "2021-03-02",
      "interest": "no response"
    },
    {
      "index": 29,
      "name": "allison berler",
      "title": "content creator",
      "company": "Energy BBDO | Flare",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 30,
      "name": "christina forsyth",
      "title": "technical recruiter",
      "company": "Live Nation",
      "outbound_date": "2021-03-10",
      "interest": "no response"
    },
    {
      "index": 31,
      "name": "ciaran davis",
      "title": "HT&E Ltd / Australian Radio Network",
      "company": "HT&E Ltd",
      "outbound_date": "2021-03-31",
      "interest": "no response"
    },
    {
      "index": 32,
      "name": "cj maurer",
      "title": "inbound",
      "company": "Manzella Marketing Group",
      "outbound_date": "2021-03-03",
      "interest": "no response"
    },
    {
      "index": 33,
      "name": "guga ferreira",
      "title": "specialist",
      "company": "Sicredi",
      "outbound_date": "2021-03-30",
      "interest": "no response"
    },
    {
      "index": 34,
      "name": "tom wheaton",
      "title": "founder & ceo",
      "company": "Florida Hospital",
      "outbound_date": "2021-05-24",
      "interest": "no response"
    },
    {
      "index": 35,
      "name": "biga catalin",
      "title": "founder",
      "company": "George LIFESTYLE Full-time",
      "outbound_date": "2021-03-08",
      "interest": "no response"
    },
    {
      "index": 36,
      "name": "christina toor",
      "title": "Course Advsior ",
      "company": "UKCBC - Dubai Campus",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 37,
      "name": "abiodun ismail quadri",
      "title": "career developer",
      "company": "Diamond Bank Plc",
      "outbound_date": "2021-04-15",
      "interest": "no response"
    },
    {
      "index": 38,
      "name": "suresh babu",
      "title": "founder & ceo",
      "company": "Starting a New Venture",
      "outbound_date": "2021-04-03",
      "interest": "no response"
    },
    {
      "index": 39,
      "name": "mark d.",
      "title": "author",
      "company": "Donnelly Marketing Group",
      "outbound_date": "2021-03-05",
      "interest": "no response"
    },
    {
      "index": 40,
      "name": "christopher godfrey",
      "title": "founder, writer, content creator, strategist @ freelance words",
      "company": "Spearhead Consulting Full-time",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 41,
      "name": "idris gettani",
      "title": "sales enablement",
      "company": "Particle",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 42,
      "name": "kendall t. sellinger",
      "title": "associate consultant",
      "company": "Capstone Hill Search Full-time",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 43,
      "name": "stephanie ryan",
      "title": "all-around-marketer, social media manager, brand & graphics designer, content creator",
      "company": "inSeption Group",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 44,
      "name": "tamara mcpherson",
      "title": "relationship executive",
      "company": "Zed Makeyla Technologies Jamaica",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 45,
      "name": "clare mccaffrey",
      "title": "marketing and events manager",
      "company": "Great South Bay Brewery",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 46,
      "name": "brian cui",
      "title": "speaker, podcaster, and video creator for the him, cdi, and medical coding community",
      "company": "Medical Coding Geek",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 47,
      "name": "robert w. costa",
      "title": "Professional",
      "company": "Marshall United Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 48,
      "name": "james binzer",
      "title": "Retired from International Brotherhood of Boilermakers. I'm ready for some new challenges!",
      "company": "Asbury United Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 49,
      "name": "julia walker",
      "title": "Worship Leader ",
      "company": "The Skipping Stone LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 50,
      "name": "traci yeley",
      "title": "Creative",
      "company": "Inergy Services",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 51,
      "name": "haley weed",
      "title": "Singer/Worship Leader | Christ Episcopal Church",
      "company": "PGA TOUR",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 52,
      "name": "janet wohlgemut",
      "title": "Missionary Teacher with Ethnos360",
      "company": "Hilltop Nursery",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 53,
      "name": "diane ritchey",
      "title": "Worship Leader/Music Teacher",
      "company": "self employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 54,
      "name": "seth baron",
      "title": "Worship and Arts Leader ",
      "company": "Chick-fil-A-Franchise",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 55,
      "name": "stuart roberts",
      "title": "Senior Estimator and Project Manager ",
      "company": "AlliedBean Demolition",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 56,
      "name": "tiffany thurston",
      "title": "Singer / Songwriter",
      "company": "Natalie Grant Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 57,
      "name": "jennifer pfister",
      "title": "Social Entrepreneur",
      "company": "PANDA | The Women Leadership Network",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 58,
      "name": "trevor w",
      "title": "podcaster",
      "company": "Palo Alto Pathology",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 59,
      "name": "Nina McGee",
      "title": "Fitness Instructor ",
      "company": "University of Denver Womens Gymnastics Team",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 60,
      "name": "Kevin Stewart",
      "title": "Sports Content Creator | Podcast Host | 6x Sports Emmy Winner",
      "company": "WSOC-TV Eyewitness News",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 61,
      "name": "Logan Mattingly",
      "title": "Personal Trainer and Athletic Coach ",
      "company": "National Strength and Conditioning Association (NSCA)",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 62,
      "name": "Joe Clarke",
      "title": "Athlete ",
      "company": "British Canoeing",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 63,
      "name": "brooklyn megan brown",
      "title": "social media manager",
      "company": "state university mas kentucky communication",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 64,
      "name": "mirta leiss",
      "title": "musician",
      "company": "Immanuel Lutheran Church",
      "outbound_date": "2021-05-29",
      "interest": "not interested"
    },
    {
      "index": 65,
      "name": "jon ferguson",
      "title": "pastor",
      "company": "Community Christian Church and NewThing",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 66,
      "name": "alan prather",
      "title": "guitarist",
      "company": "United States Marine Band",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 67,
      "name": "diana proctor",
      "title": "program administrator",
      "company": "LifeSpan Case Management Internship",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 68,
      "name": "sean covington",
      "title": "volunteer worship leader; support musician",
      "company": "Walnut Creek Church",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 69,
      "name": "christelle crosnier",
      "title": "chef",
      "company": "TV5MONDE",
      "outbound_date": "2021-03-25",
      "interest": "no response"
    },
    {
      "index": 70,
      "name": "brandon watermann",
      "title": "Employee Benefits | Soccer Coach l \ud83d\udc36",
      "company": "myHomework",
      "outbound_date": "2021-05-19",
      "interest": "no response"
    },
    {
      "index": 71,
      "name": "cody berman",
      "title": "co-founder",
      "company": "TD",
      "outbound_date": "2021-06-03",
      "interest": "no response"
    },
    {
      "index": 72,
      "name": "jill baxter",
      "title": "attorney",
      "company": "Sports Law Attorney Jill McBride Baxter Self-employed",
      "outbound_date": "2021-03-04",
      "interest": "yes call booked"
    },
    {
      "index": 73,
      "name": "tony demaio",
      "title": "founder",
      "company": "Galpin Motors",
      "outbound_date": "2021-03-01",
      "interest": "yes call booked"
    },
    {
      "index": 74,
      "name": "bettina giordani",
      "title": "senior vice president",
      "company": "The Go To Market Company",
      "outbound_date": "2021-04-20",
      "interest": "no response"
    },
    {
      "index": 75,
      "name": "wasim attar",
      "title": "technical training manager",
      "company": "Frameboxx Animation and Visual Effects Pvt.Ltd.",
      "outbound_date": "2021-05-25",
      "interest": "irrelevant"
    },
    {
      "index": 76,
      "name": "allison cahill, esq., m.s. ed., abr, srs, clhms, psa",
      "title": "realtor",
      "company": "kansa certified top and abr league foundation law homeward chrysali america realtor agent arizona school the loyola foothill scottsdale circle magazine university children national leadership real estate area home phoenix bound hospital luxury association network charity she chicago",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 77,
      "name": "meghann craig",
      "title": "vice president of marketing",
      "company": "POSSIBLE",
      "outbound_date": "2021-06-07",
      "interest": "no response"
    },
    {
      "index": 78,
      "name": "amit kumar singh",
      "title": "editor",
      "company": "SAHARA SAMAY",
      "outbound_date": "2021-03-26",
      "interest": "no response"
    },
    {
      "index": 79,
      "name": "greg lee",
      "title": "director",
      "company": "Streamline Touring / Streamline Event Agency",
      "outbound_date": "2021-04-21",
      "interest": "no response"
    },
    {
      "index": 80,
      "name": "joey pollizze",
      "title": "writer",
      "company": "FanSided",
      "outbound_date": "2021-06-24",
      "interest": "yes call booked"
    },
    {
      "index": 81,
      "name": "jonathan wright",
      "title": "pastor",
      "company": "SHADD TRUCKING",
      "outbound_date": "2021-06-16",
      "interest": "no response"
    },
    {
      "index": 82,
      "name": "kyle curtin",
      "title": "realtor",
      "company": "Candor Realty Powered by FourPoints",
      "outbound_date": "2021-06-22",
      "interest": "no response"
    },
    {
      "index": 83,
      "name": "caroline dehaven",
      "title": "support staff",
      "company": "Greenlight Business Solutions - Cannabis Licensing Consulting Internship",
      "outbound_date": "2021-06-22",
      "interest": "no response"
    },
    {
      "index": 84,
      "name": "katrina johnson",
      "title": "Podcaster|Writer|Speaker ",
      "company": "Katrina Johnson",
      "outbound_date": "2021-06-18",
      "interest": "not interested"
    },
    {
      "index": 85,
      "name": "colton rogers",
      "title": "chemical engineer",
      "company": "DCT Incorporated Part-time",
      "outbound_date": "2021-06-01",
      "interest": "not interested"
    },
    {
      "index": 86,
      "name": "jacob friess",
      "title": "operations manager",
      "company": "Church",
      "outbound_date": "2021-06-09",
      "interest": "yes call booked"
    },
    {
      "index": 87,
      "name": "rob jernigan",
      "title": "debit card dispute resolution specialist i",
      "company": "Step Ahead Cosmetology School",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 88,
      "name": "Conrad Broughton",
      "title": "VX Level 4 Coach n Referee, Director of Coaching and Player Development Ukroundnet.org, Director C.B. Active Sports Ltd.",
      "company": "North Lincolnshire Council",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 89,
      "name": "Sven Moan Rui",
      "title": "Global Category Manager ",
      "company": "Norges Fotballforbund",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 90,
      "name": "John McShane",
      "title": "UEFA A elite, MSc Science in Coaching, UCD, Futsal level 2 FA, Talent ID level 1, FA, Sports Law, Law Society of Ireland, Sport Psychology, IADT, P.E./German, Uni of Wales. FAIS u18s international manager. DTB Futsal.",
      "company": "The Football Association",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 91,
      "name": "Seb Tidey",
      "title": "Using sport to help people reach their potential.",
      "company": "tsc academy football uefa",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 92,
      "name": "Ben Cole",
      "title": "Coach ",
      "company": "Aldershot Town Football Club",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 93,
      "name": "Goran Milo\u0161evi\u0107",
      "title": "SportsTech | Marketing | Innovation | Founder of the FIRST Fan Connection Platform in the world!",
      "company": "bwin Full-time",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 94,
      "name": "Manuel Lopes",
      "title": "Head Soccer Coach - U9 Dragon Force Porto",
      "company": "CLIP - The Oporto International School",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 95,
      "name": "Kieran Keenan",
      "title": "Owner of Fitsquad, Operations Manager & Personal Trainer ",
      "company": "RTE Sports & Social Club",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 96,
      "name": "Mohammad Ghamari",
      "title": "Football Coach ",
      "company": "Haverhill Football Academy Part-time",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 97,
      "name": "Tim Sergeant",
      "title": "FA Affiliate Tutor, Head of Coaching & FDO",
      "company": "The Football Association",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 98,
      "name": "Daniel Swales",
      "title": "General Manager ",
      "company": "THRYBERGH ACADEMY & SPORTS COLLEGE",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 99,
      "name": "Gordon Craig",
      "title": "Director ",
      "company": "Scottish Football Association",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 100,
      "name": "Luke Crosby",
      "title": "Referee ",
      "company": "Goals Soccer Centres Part-time",
      "outbound_date": "2021-08-04",
      "interest": "no response"
    },
    {
      "index": 101,
      "name": "ayesha amato",
      "title": "mum a porter | fashion content creator & digital marketer",
      "company": "Mum-a-Porter",
      "outbound_date": "2021-07-19",
      "interest": "no response"
    },
    {
      "index": 102,
      "name": "kendra bell",
      "title": "freelance writer * blogger *published author *mental health advocate *motivational speaker",
      "company": "SOUTHERN Laced",
      "outbound_date": "2021-06-29",
      "interest": "no response"
    },
    {
      "index": 103,
      "name": "paul fleischmann",
      "title": "Sprachdienstleister (\u00dcbersetzer, Texter, Trainer) bei selbstst\u00e4ndig",
      "company": "selbstst\u00e4ndig",
      "outbound_date": "2021-03-06",
      "interest": "no response"
    },
    {
      "index": 104,
      "name": "michael vanzetta",
      "title": "Consultant ",
      "company": "Burst.com",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 105,
      "name": "grant lincoln",
      "title": "founder",
      "company": "Independent Consultant",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 106,
      "name": "thomas thompson",
      "title": "director",
      "company": "Independent",
      "outbound_date": "2021-04-19",
      "interest": "no response"
    },
    {
      "index": 107,
      "name": "nana oye walton-ankrah",
      "title": "broadcast journalist",
      "company": "Citi FM",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 108,
      "name": "ahmed nagi",
      "title": "Director of Marketing ",
      "company": "Entrepreneur General Trading Co.",
      "outbound_date": "2021-04-21",
      "interest": "no response"
    },
    {
      "index": 109,
      "name": "moos lamerus",
      "title": "coo",
      "company": "Adresser.nl",
      "outbound_date": "2021-03-15",
      "interest": "no response"
    },
    {
      "index": 110,
      "name": "lana dvorkin camiel",
      "title": "professor",
      "company": "health",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 111,
      "name": "laura godsmark",
      "title": "Brand Manager ",
      "company": "Upfield",
      "outbound_date": "2021-03-10",
      "interest": "no response"
    },
    {
      "index": 112,
      "name": "jessica dhillon",
      "title": "podcaster | the smart franchisee | giving you a sneak peak into business ownership | franchisee",
      "company": "The Smart Franchisee",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 113,
      "name": "gregory lee",
      "title": "podcaster",
      "company": "Eastern Michigan University",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 114,
      "name": "jennifer de treglode",
      "title": "writer/podcaster",
      "company": "Happiest Place in America",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 115,
      "name": "ryan pauly",
      "title": "writer, speaker, podcaster",
      "company": "Assemblies of God World Missions",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 116,
      "name": "clint thiele",
      "title": "machine support tech",
      "company": "Redbox",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 117,
      "name": "kim smith",
      "title": "podcaster",
      "company": "Let God Transform U",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 118,
      "name": "masami lieberman",
      "title": "podcast co-host of \"5th avenue talk\" with benihana of tokyo ceo",
      "company": "Beauty Business Japan",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 119,
      "name": "glenn hockersmith",
      "title": "realtor\u00ae",
      "company": "Putting the Real in Real Estate Podcast Self-employed",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 120,
      "name": "diane student",
      "title": "podcaster and blogger",
      "company": "Where History Lies",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 121,
      "name": "andrew luhar",
      "title": "podcaster (self-employed)",
      "company": "Orcutt Union School District",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 122,
      "name": "justin siems",
      "title": "podcaster",
      "company": "NetJets",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 123,
      "name": "lou ramirez",
      "title": "brewin\u2019 solutions with the best solutionaries",
      "company": "THINK TANK! Thirsty Thursday Zoom Calls! Full-time",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 124,
      "name": "brianna i. simons (she/they)",
      "title": "marketing associate",
      "company": "Self-employed",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 125,
      "name": "laurina joel",
      "title": "\u2605 dating & relationship \u2605 life coach \u2605",
      "company": "Laurina Joel Coaching",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 126,
      "name": "jenny schweigert",
      "title": "front porch | marketing and communications",
      "company": "and porch front communication",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 127,
      "name": "scott deluzio",
      "title": "army veteran",
      "company": "US Army",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 128,
      "name": "robin pryor, mshrl",
      "title": "human resources manager",
      "company": "Commonwealth Pain and Spine Full-time",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 129,
      "name": "ashlee yates",
      "title": "podcaster",
      "company": "Hawaii State Department of Education",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 130,
      "name": "megan ellsworth",
      "title": "caster",
      "company": "Ellsworth Self-employed",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 131,
      "name": "riki fuller",
      "title": "caster",
      "company": "university john",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 132,
      "name": "kamri phillippi",
      "title": "ministry coordinator",
      "company": "Young Life",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 133,
      "name": "brendan flum",
      "title": "airstaff coach",
      "company": "Impact 89FM",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 134,
      "name": "layla london",
      "title": "podcaster",
      "company": "thecuriousgirldiaries.com",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 135,
      "name": "mar\u00eda e.",
      "title": "podcaster en lavidatoday",
      "company": "Conde Nast Espa\ufffd",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 136,
      "name": "jennifer belden",
      "title": "podcaster",
      "company": "A$k My Mom Podcast Self-employed",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 137,
      "name": "ryan gilbert",
      "title": "writer and podcaster",
      "company": "Union Broadcasting, Inc. - Sports Radio 810 WHB & ESPN Kansas City 1510AM/94.5FM",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 138,
      "name": "samuel kindick, phd",
      "title": "educator and classicist passionate about higher education and the humanities",
      "company": "boulder university colorado",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 139,
      "name": "jeff keady",
      "title": "lead pastor",
      "company": "Perth Bible Church",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 140,
      "name": "jeanie fang",
      "title": "senior manager, data management",
      "company": "Travel Jeanieous",
      "outbound_date": "2021-07-14",
      "interest": "no response"
    },
    {
      "index": 141,
      "name": "seth daire",
      "title": "internet consultant",
      "company": "Verit\u00e9",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 142,
      "name": "tom swanner",
      "title": "podcaster host",
      "company": "Pride Animation",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 143,
      "name": "raksha (khilosia) patel",
      "title": "content creator",
      "company": "Reflect with Raksha",
      "outbound_date": "2021-07-09",
      "interest": "no response"
    },
    {
      "index": 144,
      "name": "lucas clebsch",
      "title": "Bluesman",
      "company": "Lava Tracks Recording Studio",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 145,
      "name": "adam wolmer",
      "title": "podcaster",
      "company": "Buckley and Tovsky",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 146,
      "name": "sakie sullivan",
      "title": "sr. marketing associate",
      "company": "University of Massachusetts Boston Part-time",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 147,
      "name": "monty montgomery",
      "title": "podcaster",
      "company": "service technology",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 148,
      "name": "norita hoegel",
      "title": "music teacher",
      "company": "Los Altos Christian Schools",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 149,
      "name": "sean dailey",
      "title": "director",
      "company": "Self-Employed Freelancer",
      "outbound_date": "2021-04-12",
      "interest": "not interested"
    },
    {
      "index": 150,
      "name": "cesare greselin",
      "title": "Facebook of Bill Evans ",
      "company": "Brudstock",
      "outbound_date": "2021-03-24",
      "interest": "no response"
    },
    {
      "index": 151,
      "name": "christian raul vergara perea",
      "title": "principal",
      "company": "Thomson Reuters Full-time",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 152,
      "name": "eric crossley",
      "title": "caster",
      "company": "\"Making a Difference\" Freelance",
      "outbound_date": "2021-06-08",
      "interest": "no response"
    },
    {
      "index": 153,
      "name": "Mike van der Steen",
      "title": "Eigenaar Box-to-Box Sales",
      "company": "TIG Sports Freelance",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 154,
      "name": "edward blueford jr",
      "title": "cro",
      "company": "Suncom Wireless - ATT",
      "outbound_date": "2021-05-31",
      "interest": "irrelevant"
    },
    {
      "index": 155,
      "name": "william potter iii",
      "title": "actor",
      "company": "Aircheck",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 156,
      "name": "craig eakright",
      "title": "Worship Leader ",
      "company": "sons & daughters worship school",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 157,
      "name": "matt collins",
      "title": "Worship Leader ",
      "company": "Christian Family Chapel",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 158,
      "name": "dion govender",
      "title": "investor",
      "company": "Telesure Group Services",
      "outbound_date": "2021-04-30",
      "interest": "no response"
    },
    {
      "index": 159,
      "name": "tyler smith",
      "title": "podcaster",
      "company": "The Jetseries NFL podcast",
      "outbound_date": "2021-07-08",
      "interest": "no response"
    },
    {
      "index": 160,
      "name": "erin english",
      "title": "Kaleidoscope Chiromancy",
      "company": "Self Employed Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 161,
      "name": "narek mughnetsyan",
      "title": "graphic designer",
      "company": "Ardy Kassakhian for Glendale City Council Freelance",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 162,
      "name": "kimberly peek",
      "title": "caster",
      "company": "Iris Digital Media Group",
      "outbound_date": "2021-07-08",
      "interest": "no response"
    },
    {
      "index": 163,
      "name": "jason nelson",
      "title": "director",
      "company": "Catalina USA Full-time",
      "outbound_date": "2021-05-17",
      "interest": "no response"
    },
    {
      "index": 164,
      "name": "ashli morgan",
      "title": "worship leader",
      "company": "Family Life Assembly of God Part-time",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 165,
      "name": "sam ahia",
      "title": "Self-Employed Musician ",
      "company": "King's Cathedral",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 166,
      "name": "leslie michelle (china) m.",
      "title": "\u21a0self employed\u21a02 biz.\u2665genx",
      "company": "mia corp ldm",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 167,
      "name": "christina j. rodr\u00edguez",
      "title": "Admissions Manager ",
      "company": "Free Lance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 168,
      "name": "jacky lucien vincent",
      "title": "I help french startups to expand in the US",
      "company": "Impact USA Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 169,
      "name": "lois melkonian",
      "title": "life coach",
      "company": "BetterUp Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 170,
      "name": "steven beyer",
      "title": "Video Director ",
      "company": "North Coast Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 171,
      "name": "jennifer hudson",
      "title": "Wife",
      "company": "Saraland First",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 172,
      "name": "ky pratt",
      "title": "lead marketing success advisor",
      "company": "Locked Adventures Part-time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 173,
      "name": "jase haber",
      "title": "podcaster",
      "company": "The Republican Nation Self-employed",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 174,
      "name": "ashlyne huff blue",
      "title": "writer/podcaster/ relationship coach",
      "company": "Aspen Luxury Concierge Freelance",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 175,
      "name": "kaitlin r.",
      "title": "i\u2019m a 3rd generation creative problem solver in kansas city - oncallhalal.com feeding the fasting front lines",
      "company": "muslim american",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 176,
      "name": "shaquel polacek",
      "title": "life coach",
      "company": "navy",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 177,
      "name": "doug ryan",
      "title": "experienced in curating customer-centric events",
      "company": "Florida Department of Agriculture and Consumer Services Full-time",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 178,
      "name": "noel r. lograsso",
      "title": "caster",
      "company": "relm network mtv",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 179,
      "name": "scott linn",
      "title": "communicator/content creator/broadcaster/voice over artist",
      "company": "scottlinnvoice.com Freelance",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 180,
      "name": "ricardo ortiz",
      "title": "podcast: alpha | be on your first ever podcast\ud83c\udf99",
      "company": "podcast alpha",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 181,
      "name": "sofie tholl",
      "title": "reporter",
      "company": "Trouble Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no response"
    },
    {
      "index": 182,
      "name": "stephen bridgwater",
      "title": "information",
      "company": "Sandwell Council",
      "outbound_date": "2021-03-23",
      "interest": "no response"
    },
    {
      "index": 183,
      "name": "agnes mckinney",
      "title": "sales specialist",
      "company": "Apple Part-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 184,
      "name": "frank befera",
      "title": "ceo",
      "company": "Living Patriot, LLC",
      "outbound_date": "2021-03-16",
      "interest": "yes call booked"
    },
    {
      "index": 185,
      "name": "tolis dokianos",
      "title": "I'm changing how businesses make money with video. Watch my How-to videos ",
      "company": "youtube ford motor",
      "outbound_date": "2021-05-20",
      "interest": "yes call booked"
    },
    {
      "index": 186,
      "name": "karen allyn",
      "title": "Producer/Host ",
      "company": "Freelance",
      "outbound_date": "2021-05-11",
      "interest": "not interested"
    },
    {
      "index": 187,
      "name": "dale peters",
      "title": "caster",
      "company": "training narcotic",
      "outbound_date": "2021-06-08",
      "interest": "no response"
    },
    {
      "index": 188,
      "name": "diane foisy",
      "title": "executive director",
      "company": "Diane Foisy",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 189,
      "name": "lucky mccullough",
      "title": "caster",
      "company": "amazon",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 190,
      "name": "sam hengeli",
      "title": "student athlete on xc/track team",
      "company": "Hot Feet Track Club",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 191,
      "name": "minna fjeldsk\u00e5r",
      "title": "content manager",
      "company": "SKOG Contract",
      "outbound_date": "2021-04-26",
      "interest": "no response"
    },
    {
      "index": 192,
      "name": "anayissa rebollo",
      "title": "marketing office assistant",
      "company": "university irvine california",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 193,
      "name": "katherine sellards",
      "title": "content creator",
      "company": "HHS, LLC",
      "outbound_date": "2021-07-20",
      "interest": "no response"
    },
    {
      "index": 194,
      "name": "roko \u010doko",
      "title": "Director Sports Media Asia",
      "company": "Sportradar AG",
      "outbound_date": "2021-03-09",
      "interest": "no response"
    },
    {
      "index": 195,
      "name": "eric wilson",
      "title": "innovator | author | speaker | influencer - predictive analytics & sales and operations planning",
      "company": "Escalade Sports",
      "outbound_date": "2021-07-14",
      "interest": "no response"
    },
    {
      "index": 196,
      "name": "enna tomlinson",
      "title": "digital content executive",
      "company": "The Audit Lab",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 197,
      "name": "shanel diggs harris",
      "title": "caster",
      "company": "Crazy Love Chronicles",
      "outbound_date": "2021-06-23",
      "interest": "no response"
    },
    {
      "index": 198,
      "name": "lucy smith",
      "title": "director",
      "company": "Reed MIDEM - a member of Reed Exhibitions",
      "outbound_date": "2021-03-24",
      "interest": "no response"
    },
    {
      "index": 199,
      "name": "alex winningham",
      "title": "builder",
      "company": "doTERRA International LLC Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 200,
      "name": "daniel carmack",
      "title": "realtor",
      "company": "Leadership Kentucky, Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 201,
      "name": "cathy heald mullins",
      "title": "worship leader",
      "company": "Christ Community Church of Owensboro, KY",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 202,
      "name": "pierre tettart",
      "title": "head of creator, podcaster mission",
      "company": "Spotify",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 203,
      "name": "melanie camacho",
      "title": "marketing manager and content creator",
      "company": "Sharp Business USA",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 204,
      "name": "jamie milne",
      "title": "creator of everything delish inc.",
      "company": "Everything Delish Inc.",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 205,
      "name": "dr. george nolly",
      "title": "Fleet Technical Instructor ",
      "company": "United Airlines",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 206,
      "name": "katherine rundell",
      "title": "creators @ twitter",
      "company": "Twitter",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 207,
      "name": "ilana schwartz",
      "title": "senior copywriter and content creator",
      "company": "Awz Ventures Inc.",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 208,
      "name": "vera barile",
      "title": "account executive",
      "company": "SID LEE",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 209,
      "name": "tracy scheib",
      "title": "marketing | communications",
      "company": "www.FreeAsFlowers.com",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 210,
      "name": "nidhi mahagaokar, mph",
      "title": "program manager - medicare part d | gmdp 1",
      "company": "CVS Health",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 211,
      "name": "samantha miani",
      "title": "growth and marketing associate manager",
      "company": "Quirk Creative",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 212,
      "name": "mike'l g.",
      "title": "student",
      "company": "HEAL Initiative Internship",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 213,
      "name": "robert gover",
      "title": "Director, Advanced Customer Support ",
      "company": "Oracle",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 214,
      "name": "ian fitzpatrick",
      "title": "attorney/podcaster",
      "company": "WORLD FOOTPRINTS LLC",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 215,
      "name": "craig sneddon (royal & ancient golf club",
      "title": "head chef",
      "company": "The Royal and Ancient Golf Club of St Andrews Full-time",
      "outbound_date": "2021-03-08",
      "interest": "no response"
    },
    {
      "index": 216,
      "name": "joel gerdis",
      "title": "Worship Leader | Songwriter | Discipleship @ Worshipfully.org",
      "company": "oGoLead",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 217,
      "name": "stephen ingram",
      "title": "lead consultant",
      "company": "Ministry Architects",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 218,
      "name": "dianna doobay",
      "title": "PWC-ASC",
      "company": "PwC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 219,
      "name": "laurie beebe lewis",
      "title": "singer",
      "company": "Horizon Elementary School",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 220,
      "name": "carrie adams",
      "title": "account specialist",
      "company": "UPCI Michigan District, Section 8",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 221,
      "name": "dr. margaret rutherford",
      "title": "clinical psychologist",
      "company": "DrMargaretRutherford.com",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 222,
      "name": "eva weingarten",
      "title": "singer",
      "company": "All Saints Episcopal Church Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 223,
      "name": "robert southgate, mba",
      "title": "owner",
      "company": "DVM Podcast Empire",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 224,
      "name": "angel smythe",
      "title": "recording artist",
      "company": "Angel in the House Music",
      "outbound_date": "2021-05-30",
      "interest": "no response"
    },
    {
      "index": 225,
      "name": "sarah olender",
      "title": "multimedia journalist",
      "company": "The Red & Black Part-time",
      "outbound_date": "2021-06-25",
      "interest": "no response"
    },
    {
      "index": 226,
      "name": "lyric clarke",
      "title": "owner",
      "company": "Springville Recreation",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 227,
      "name": "jeff bonhiver",
      "title": "Music Teacher ",
      "company": "LightShine Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 228,
      "name": "eric deon taylor",
      "title": "Assessment Appraiser for the City of Detroit",
      "company": "Triumph Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 229,
      "name": "Ryan Campbell",
      "title": "Director/APA Sports & Exercise Physiotherapist ",
      "company": "Australian Institute Of Sport",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 230,
      "name": "barbara a. brandt",
      "title": "Worship Leader",
      "company": "Prodigal's Home Homeless Ministry",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 231,
      "name": "\ud835\udc79\ud835\udc86\ud835\udc84\ud835\udc84\ud835\udc90\ud835\udc7a\ud835\udc82\ud835\udc8e",
      "title": "\ud835\udc73\ud835\udc8a\ud835\udc8f\ud835\udc84\ud835\udc90\ud835\udc8d\ud835\udc8f \ud835\udc6a\ud835\udc90\ud835\udc8d\ud835\udc8d\ud835\udc86\ud835\udc88\ud835\udc86 \ud835\udc68\ud835\udc94\ud835\udc94\ud835\udc8a\ud835\udc94\ud835\udc95\ud835\udc82\ud835\udc8f\ud835\udc95 \ud835\udc7e\ud835\udc93\ud835\udc86\ud835\udc94\ud835\udc95\ud835\udc8d\ud835\udc8a\ud835\udc8f\ud835\udc88 \ud835\udc6a\ud835\udc90\ud835\udc82\ud835\udc84\ud835\udc89",
      "company": " ",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 232,
      "name": "stephen van note",
      "title": "coo",
      "company": "Palm Ventures",
      "outbound_date": "2021-04-23",
      "interest": "no response"
    },
    {
      "index": 233,
      "name": "shawn stewart",
      "title": "owner",
      "company": "CSS Fitness&Gym Consulting",
      "outbound_date": "2021-03-08",
      "interest": "no response"
    },
    {
      "index": 234,
      "name": "mike hogan",
      "title": "producer",
      "company": "Newstalk 106-108",
      "outbound_date": "2021-04-05",
      "interest": "no response"
    },
    {
      "index": 235,
      "name": "kristal alfonso",
      "title": "sommelier",
      "company": "force journal future meilinger fall security air military vol academy femme space agency pres university policy national fatale implication history expeditionary colorado power phillip",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 236,
      "name": "meghan macdonald",
      "title": "head of content & creator development",
      "company": "Wattpad",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 237,
      "name": "richard osei",
      "title": "project manager",
      "company": "TC Resource Technology",
      "outbound_date": "2021-03-30",
      "interest": "yes call booked"
    },
    {
      "index": 238,
      "name": "anath lee wales",
      "title": "author",
      "company": "DADYMINDS Self-employed",
      "outbound_date": "2021-04-19",
      "interest": "yes call booked"
    },
    {
      "index": 239,
      "name": "deborah a bailey",
      "title": "writer",
      "company": "IQVIA",
      "outbound_date": "2021-03-25",
      "interest": "no response"
    },
    {
      "index": 240,
      "name": "mauro rocha",
      "title": "content creator @ 43 clicks north \ud83d\udcf8",
      "company": "43 Clicks North",
      "outbound_date": "2021-07-19",
      "interest": "no response"
    },
    {
      "index": 241,
      "name": "ravjot sidhu",
      "title": "Brock University BBE '22 | Seeking 2021 Summer Internships | Aspiring Product Manager",
      "company": "Champs Sports",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 242,
      "name": "dylan howard",
      "title": "chairman & ceo",
      "company": "The Institute for Healthy Media Minds Full-time",
      "outbound_date": "2021-03-15",
      "interest": "no response"
    },
    {
      "index": 243,
      "name": "islam sakr",
      "title": "business development",
      "company": "Advantage Sales & Marketing",
      "outbound_date": "2021-04-21",
      "interest": "no response"
    },
    {
      "index": 244,
      "name": "chris hiigel",
      "title": "associate",
      "company": "Fellowship in the Pass",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 245,
      "name": "jason curtis",
      "title": "PERSONAL: Husband",
      "company": "Freelance Musician and Sound/Media Tech",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 246,
      "name": "jerome yang",
      "title": "software engineer",
      "company": "\u65c5\u884c\u71b1\u7092\u5e97 The Travel Wok Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 247,
      "name": "alan alford",
      "title": "host",
      "company": "Alan & Aaron Sports Talk Radio Show",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 248,
      "name": "chelsi mcfadden",
      "title": "professional photographer",
      "company": "Dear Chiefs Podcast Freelance",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 249,
      "name": "tim pell",
      "title": "content creator",
      "company": "Tim Pell Design",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 250,
      "name": "hayley mervini",
      "title": "genius admin",
      "company": "Time Warp Radio Presents",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 251,
      "name": "dafne canales",
      "title": "podcast host & connector",
      "company": "Trustini Talks Podcast",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 252,
      "name": "ruth ducharme",
      "title": "author",
      "company": "Law Enforcement Survival Self-employed",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 253,
      "name": "danielle clark",
      "title": "university",
      "company": "boulder university colorado",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 254,
      "name": "abby z.",
      "title": "digital marketing manager",
      "company": "NCAA",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 255,
      "name": "emily kennedy",
      "title": "caster",
      "company": "forbe vice traffic bank marinu teen foundation analytic united analyticsmarinu jam mashable fast cb toyota mellon vogue nbc new university nation national carnegie science emily under york company",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 256,
      "name": "briae robillard",
      "title": "digital marketing specialist. fb ads. google ads. social media management. social media consultant",
      "company": "100 Nights Shelter",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 257,
      "name": "jermell powell",
      "title": "alone highway",
      "company": "Wheeler Staffing Partners Contract",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 258,
      "name": "bernadette giblin",
      "title": "ceo",
      "company": "Safeground Organic Analytics",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 259,
      "name": "michael yachera",
      "title": "actively seeking employment opportunities",
      "company": "MVP Sports Group",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 260,
      "name": "i am seanlai",
      "title": "caster",
      "company": "National Speakers Association",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 261,
      "name": "tony steuer, clu, la, cpffe",
      "title": "education officer",
      "company": "Paperwork Part-time",
      "outbound_date": "2021-06-08",
      "interest": "not interested"
    },
    {
      "index": 262,
      "name": "matthew fogle",
      "title": "Founder ",
      "company": "Anytime Fitness Lakewood",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 263,
      "name": "tyler eaton",
      "title": "sports talk, podcasting, and play-by-play",
      "company": "Hilltopper Sports Properties",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 264,
      "name": "james campbell",
      "title": "digital marketing coordinator",
      "company": "Eli & Elm Part-time",
      "outbound_date": "2021-06-17",
      "interest": "no response"
    },
    {
      "index": 265,
      "name": "vera ezimora",
      "title": "compliance analyst",
      "company": "I Am African Podcast by Verastic Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 266,
      "name": "killian duffy",
      "title": "owner",
      "company": "Seashore Qatar World Rally Team",
      "outbound_date": "2021-04-12",
      "interest": "no response"
    },
    {
      "index": 267,
      "name": "james tieken",
      "title": "teacher",
      "company": "St. Benedict's Prep School Full-time",
      "outbound_date": "2021-03-20",
      "interest": "not interested"
    },
    {
      "index": 268,
      "name": "richard butler",
      "title": "owner",
      "company": "Over and Over and Over Again Self-employed",
      "outbound_date": "2021-05-10",
      "interest": "no response"
    },
    {
      "index": 269,
      "name": "somayh s.",
      "title": "data analyst ll",
      "company": "Qahwa Chats Self-employed",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 270,
      "name": "jaz s.",
      "title": "podcaster",
      "company": "central journalism college university valencia florida",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 271,
      "name": "krystal butherus, m.ed.",
      "title": "digital marketer",
      "company": "south university facebook instructional technology florida",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 272,
      "name": "sam fulton",
      "title": "content & digital marketing coordinator || select advisors institute",
      "company": "Select Advisors Institute Contract",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 273,
      "name": "oliver mclin",
      "title": "ready to work!",
      "company": "Conversations with Ollie Mac Full-time",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 274,
      "name": "ltc dennis p. collins, usa (ret), mba",
      "title": "data-driven operations",
      "company": "community resolution valedictoriancompetencie staff mba planning workforce strategic equal public implementation administration emergency operation conflict communication building conversion workflow career global sail busines opportunity risk morale forecasting university personnel employee technology kentucky master leadership scheduling maintenance management western in upgrade science training recognition full program relation logistic development avoidance",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 275,
      "name": "julianna shamel",
      "title": "Creator | Leader | Passionate about People",
      "company": "Providence Bank & Trust Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 276,
      "name": "chaplain gary cannon",
      "title": "worship pastor",
      "company": "Semi Retired",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 277,
      "name": "ouida brown, md, faaos",
      "title": "orthopaedic surgeon",
      "company": "Running is Cheaper Than Therapy",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 278,
      "name": "juwann nelson",
      "title": "director, video content creator",
      "company": "Legacy Canvas Films",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 279,
      "name": "lain van ogle",
      "title": "bike enthusiast/content creator \ud83d\udeb4\ud83c\udffb\ud83d\udc4d\ud83c\udffb",
      "company": "Rad Power Bikes",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 280,
      "name": "evie granville, m.ed.",
      "title": "co-founder",
      "company": "Robinson Secondary School",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 281,
      "name": "chris spahr",
      "title": "student",
      "company": "Wahlburgers Part-time",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 282,
      "name": "brandon hall",
      "title": "director of instructional technology",
      "company": "MyHockeyLive.com",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 283,
      "name": "sharie brown",
      "title": "proprietor- give yourself credit education",
      "company": "SharieB- The Mad Credit Myth Buster",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 284,
      "name": "denisse hernandez",
      "title": "brand manager",
      "company": "Ellie Vail Jewelry Full-time",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 285,
      "name": "robert o'shaughnessy",
      "title": "communications professional",
      "company": "When You Wake - a Podcast of Not Just Ghost Stories Self-employed",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 286,
      "name": "cathie c",
      "title": "podcaster",
      "company": "Hidden by History",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 287,
      "name": "sicco rood",
      "title": "anza-borrego desert research center",
      "company": "UC Irvine",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 288,
      "name": "scott heald",
      "title": "Pastor / Worship Leader ",
      "company": "ProwebDzines.com",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 289,
      "name": "dr. dale henry",
      "title": "Speaker ",
      "company": "Your Best Unlimited - Dr. Dale Henry",
      "outbound_date": "2021-04-20",
      "interest": "not interested"
    },
    {
      "index": 290,
      "name": "mariana zaparolli martins",
      "title": "Agile Expert ",
      "company": "Telef\u00f4nica - Pesquisa e Desenvolvimento Full-time",
      "outbound_date": "2021-03-08",
      "interest": "not interested"
    },
    {
      "index": 291,
      "name": "robert mcfarland",
      "title": "Director of Music Ministry",
      "company": "Aaron\ufffd\ufffd",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 292,
      "name": "jon harrington",
      "title": "Podcaster ",
      "company": "Talking Torch Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 293,
      "name": "michelle lucas",
      "title": "doula",
      "company": "Treasure Valley Doulas",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 294,
      "name": "samuel clayton \ud83d\udcaf",
      "title": "vp",
      "company": "SJC Voiceovers/King's Voice Overs Freelance",
      "outbound_date": "2021-03-02",
      "interest": "no response"
    },
    {
      "index": 295,
      "name": "sebastian ruiz",
      "title": "caster",
      "company": "state college master finance florida busines",
      "outbound_date": "2021-06-22",
      "interest": "ongoing discussions"
    },
    {
      "index": 296,
      "name": "steven landell",
      "title": "territory manager",
      "company": "TrackMan Full-time",
      "outbound_date": "2021-07-06",
      "interest": "no response"
    },
    {
      "index": 297,
      "name": "chris barnett",
      "title": "Electrical Superintendent ",
      "company": "Bergelectric",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 298,
      "name": "derek ried",
      "title": "caster",
      "company": "Squeaky Clean Window Washing",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 299,
      "name": "terrence williams",
      "title": "worship leader",
      "company": "TWill Ministries",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 300,
      "name": "jodi chaffee",
      "title": "owner",
      "company": "george university mason",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 301,
      "name": "greg wideen",
      "title": "Worship Leader ",
      "company": "Arbor Christian Fellowship Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 302,
      "name": "hector gabriel jimenez",
      "title": "worship leader",
      "company": "California Baptist University",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 303,
      "name": "brently j. groshong",
      "title": "consultant",
      "company": "Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 304,
      "name": "frank wade",
      "title": "customer success specialist",
      "company": "Wells Fargo",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 305,
      "name": "matthew n.",
      "title": "default headline",
      "company": "Matthew Neubauer",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 306,
      "name": "jt barnett",
      "title": "ceo, barnettmedia \u2014 tiktok strategist + advisor, content creator, featured in business insider, e! news, newsweek",
      "company": "Honey House",
      "outbound_date": "2021-07-16",
      "interest": "no response"
    },
    {
      "index": 307,
      "name": "farah qadan",
      "title": "in-house marketing superstar @ shift accounting | content creator | writer | c",
      "company": "Shift Accounting Permanent Full-time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 308,
      "name": "summer pearson",
      "title": "motivational speaker",
      "company": "Independent",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 309,
      "name": "matt barnes",
      "title": "ceo",
      "company": "mattbarnesonline.com",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 310,
      "name": "michele marotta",
      "title": "host",
      "company": "Studio City Now Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 311,
      "name": "vicki adrian",
      "title": "owner",
      "company": "Remarkable Retailer",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 312,
      "name": "reginald carpenter",
      "title": "junior sales representative",
      "company": "D.R. Horton Full-time",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 313,
      "name": "hersey r.",
      "title": "information security engineer",
      "company": "Self-employed",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 314,
      "name": "kelly hardin",
      "title": "blogger",
      "company": "Pass The Whine",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 315,
      "name": "cameron parker",
      "title": "caster",
      "company": "Manely Broncos Podcast Full-time",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 316,
      "name": "john cornelison",
      "title": "caster",
      "company": "Self",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 317,
      "name": "tom buffolano",
      "title": "media executive",
      "company": "Sports Video Group",
      "outbound_date": "2021-05-26",
      "interest": "yes call booked"
    },
    {
      "index": 318,
      "name": "victoria d. walker",
      "title": "christian thought coach & director | choose 2 think academy and podcast",
      "company": "Start with a Grateful Heart Ministry Freelance",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 319,
      "name": "dee richardson",
      "title": "content creator for golden lion productions | active dod ts cleared multimedia graphic specialist with ses communications experience | 360 vr editor",
      "company": "U.S. Department of Veterans Affairs Full-time",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 320,
      "name": "sa casey",
      "title": "life coach",
      "company": "Revelations Residential Consulting",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 321,
      "name": "toni dejesus-coloma",
      "title": "Worship Leader",
      "company": "Sunian Realty",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 322,
      "name": "gray manly",
      "title": "Broadband Engineering - Designer III ",
      "company": "Haven Field Community Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 323,
      "name": "tory dardar",
      "title": "Worship Pastor ",
      "company": "Valley Baptist Church Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 324,
      "name": "alex mellett",
      "title": "solution consultant",
      "company": "Silverman & Associates, Inc.",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 325,
      "name": "kristi brower",
      "title": "caster",
      "company": "The Author Incubator - Write a Book that Makes a Difference",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 326,
      "name": "stefanie (hirsh) cousins, mph",
      "title": "teller",
      "company": "Blue Heart Media Self-employed",
      "outbound_date": "2021-03-31",
      "interest": "not interested"
    },
    {
      "index": 327,
      "name": "j3 tv",
      "title": "florida business podcast",
      "company": "OIL MASTERS QUIK LUBE, INC.",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 328,
      "name": "alexis newlin",
      "title": "owner",
      "company": "A Peach In Cali-Peachy Pod Productions Freelance",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 329,
      "name": "john f. braun",
      "title": "computer engineer",
      "company": "The Mac Observer",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 330,
      "name": "denise bridges",
      "title": "songwriter",
      "company": "Denise Bridges-Child of Mercy",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 331,
      "name": "breck lesueur",
      "title": "product manager",
      "company": "Bedtime History",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 332,
      "name": "adrian perez",
      "title": "caster",
      "company": "AmericasChannel",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 333,
      "name": "ross aitken",
      "title": "RWC Venues & Cities Director ",
      "company": "World Rugby",
      "outbound_date": "2021-03-25",
      "interest": "not interested"
    },
    {
      "index": 334,
      "name": "jonas ovid",
      "title": "C.E.O",
      "company": "WE RISE GROUP",
      "outbound_date": "2021-04-08",
      "interest": "no response"
    },
    {
      "index": 335,
      "name": "brian chojnacki",
      "title": "tv broadcaster, consultant, and content creator 800k+ tiktok/ig",
      "company": "WRDW-TV",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 336,
      "name": "prakash ravichandran",
      "title": "digital marketing consultant",
      "company": "Infoezee India Private Limited Full-time",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 337,
      "name": "luisana colmenares",
      "title": "caster",
      "company": "Self-employed",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 338,
      "name": "steven bennet-martin \ud83c\udfa4",
      "title": "expert on aging and well-being",
      "company": "Approved Home Health Full-time",
      "outbound_date": "2021-07-02",
      "interest": "no response"
    },
    {
      "index": 339,
      "name": "mb mccandless",
      "title": "Pastor ",
      "company": "West Bethesda and West Eagle Creek Presbyterian Church Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 340,
      "name": "doc washburn",
      "title": "radio talk show host",
      "company": "NewsRadio 102.9 KARN",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 341,
      "name": "christian spolar",
      "title": "r developer",
      "company": "Anchor Point Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 342,
      "name": "jeff batson",
      "title": "worship leader",
      "company": "Harvest Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 343,
      "name": "david mottinger",
      "title": "president",
      "company": "MottAudio LLC, The Marketeers, Trinity UMC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 344,
      "name": "sue tabb",
      "title": "radio personality",
      "company": "Thomson Communications",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 345,
      "name": "tammie hughes",
      "title": "c-level virtual executive assistant, marketing manager, content creator, biggest fan of my husband (restaurant whisperer) smokey hughes",
      "company": "Tammie Hughes Full-time",
      "outbound_date": "2021-07-09",
      "interest": "no response"
    },
    {
      "index": 346,
      "name": "sonya tkacs (pronounced t-a-c-k-s)",
      "title": "founder of recruitlynk | fractional talent acquisition asset | data driven, people obsessed | host of recruitlynk's youtube mini series; down to brass tkacs, all things recruiting. <--subscribe!",
      "company": "Hobson Associates",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 347,
      "name": "charissa-rae mcaneny",
      "title": "social media manager | social media strategist | community management | digital content creator",
      "company": "Curtis Gabriel",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 348,
      "name": "peter yang, mba",
      "title": "senior quality engineer",
      "company": "Abbott Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 349,
      "name": "lorenzo robertson",
      "title": "worship pastor",
      "company": "Central Assembly of God",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 350,
      "name": "michael matonte",
      "title": "caster",
      "company": "That Wine Pod Self-employed",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 351,
      "name": "christine mills",
      "title": "financial solutions advisor",
      "company": "Webster Bank",
      "outbound_date": "2021-07-02",
      "interest": "yes call booked"
    },
    {
      "index": 352,
      "name": "ray carney",
      "title": "illustration",
      "company": "Self-employed",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 353,
      "name": "owen s.",
      "title": "notavailable",
      "company": "O and 2 Sports Podcast Part-time",
      "outbound_date": "2021-06-30",
      "interest": "response"
    },
    {
      "index": 354,
      "name": "alok patel",
      "title": "physician",
      "company": "california abc nbc new university stanford children medscape hospital seattle columbia san",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 355,
      "name": "racquel goldy",
      "title": "media personality",
      "company": "youtube florida panther",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 356,
      "name": "jacqueline purtan",
      "title": "web site content manager & comedy writer/podcaster",
      "company": "dickpurtan.com",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 357,
      "name": "chris alvord",
      "title": "innovator, artist, virgin podcaster, vloger",
      "company": "Elevate Your Perception Of Value Self-employed",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 358,
      "name": "joel eutaw sharpton",
      "title": "consultant",
      "company": "speaking university strong tech public louisiana",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 359,
      "name": "dawn dimare thiery, ntp",
      "title": "health coach",
      "company": "KX935",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 360,
      "name": "dr. jackie freiberg",
      "title": "public speaking coach",
      "company": "Premier Financial Alliance",
      "outbound_date": "2021-03-26",
      "interest": "no response"
    },
    {
      "index": 361,
      "name": "Sheena O'Connor",
      "title": "Registered Massage Therapist and Les Mills Group Fitness Instructor",
      "company": "painPRO Clinics",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 362,
      "name": "Howard Bell",
      "title": "International Athlete - Decathlon. Student ",
      "company": "ESMS - A unique family of independent schools for boys and girls",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 363,
      "name": "caity ardavanis",
      "title": "Digital Marketing Specialist ",
      "company": "Rividia Inc. Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 364,
      "name": "corry bell",
      "title": "Lead Singer ",
      "company": "Lev Shelo",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 365,
      "name": "tammy geerling",
      "title": "podcaster",
      "company": "EntrePods Self-employed",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 366,
      "name": "justin yagerman",
      "title": "seasoned restaurant manager looking to find a new home.",
      "company": "Miller's Ale House Restaurants",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 367,
      "name": "gurbir nakhwal",
      "title": "apple pay - wallet, payments & commerce",
      "company": "university gtm london kingston",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 368,
      "name": "derek latal",
      "title": "b.sc (biological sciences) | mba (leadership & organizations + supply chain)| podcaster",
      "company": "Stericycle Full-time",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 369,
      "name": "chapin kreuter",
      "title": "podcaster",
      "company": "Misfits and Rejects",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 370,
      "name": "lynn webster",
      "title": "Choral Director ",
      "company": "Owosso Free Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 371,
      "name": "matthew mintae kim",
      "title": "Senior Manager ",
      "company": "Healing Coffee Roasters",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 372,
      "name": "pastor shirley mcclelland",
      "title": "pastor",
      "company": "His Hands Extended",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 373,
      "name": "deuntate copeland",
      "title": "Executive Director ",
      "company": "NHSBA",
      "outbound_date": "2021-03-06",
      "interest": "not interested"
    },
    {
      "index": 374,
      "name": "marie ang\u00e8le zoungrana",
      "title": "founder & content creator",
      "company": "Fulphil Internship",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 375,
      "name": "shaunna payne gold",
      "title": "owner",
      "company": "payne college office resource equity schaefer public lgbt center cros abroad washington police eastern mary llc financial the administrator baltimore shaunna university william policy gold george student maryland red association enterprise education for natural department towson aid town",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 376,
      "name": "sheryl hart",
      "title": "founder/ entrepreneur/ executive director/trainer/speaker",
      "company": "The John Maxwell Team",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 377,
      "name": "kaylin busscher",
      "title": "3's Preschool Teacher ",
      "company": "Drenthe Christian Reformed Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 378,
      "name": "ryan palencer",
      "title": "podcaster",
      "company": "Outside the Chalk Lines Self-employed",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 379,
      "name": "steven salter",
      "title": "executive director",
      "company": "First Presbyterian Dothan Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 380,
      "name": "jasmine (jasmine franck) camara",
      "title": "vice president",
      "company": "GeekSI",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 381,
      "name": "steve tarter",
      "title": "freelance writer",
      "company": "WCBU-FM (Peoria's public radio station)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 382,
      "name": "sal lariccia",
      "title": "Church Volunteer",
      "company": "Grace Chapel",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 383,
      "name": "rob grabowski",
      "title": "He/Him/His",
      "company": "AceBounce Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 384,
      "name": "adrian cecil",
      "title": "digital content creator",
      "company": "Penguin Random House UK",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 385,
      "name": "john lembo",
      "title": "content creator",
      "company": "Marketopia",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 386,
      "name": "ron hall",
      "title": "worship leader",
      "company": "National Park College",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 387,
      "name": "jonathan cring",
      "title": "now available for podcast interviews. \"let's talk about the need to sensitize.\"",
      "company": "jonathot blog daily",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 388,
      "name": "dartanyian perez",
      "title": "ceo",
      "company": "Tanitudes",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 389,
      "name": "mike couste",
      "title": "technician",
      "company": "Abita Fresh",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 390,
      "name": "karl krentzel",
      "title": "realtor",
      "company": "The Red Pill Investor Podcast",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 391,
      "name": "julia clausen",
      "title": "caster",
      "company": "Book Club With Julia & Victoria Self-employed",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 392,
      "name": "dustin fritschel",
      "title": "host",
      "company": "treasure store llc the buried",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 393,
      "name": "crystal leung",
      "title": "event coordinator",
      "company": "Deloitte",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 394,
      "name": "brittany lazaroff",
      "title": "content creator",
      "company": "Maven Design LLC",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 395,
      "name": "nicholas white",
      "title": "engineer, content creator, & educator",
      "company": "YouTube",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 396,
      "name": "Brittany Jones",
      "title": "Health Guide ",
      "company": "EXOS",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 397,
      "name": "Eduardo Serafini MS CAA",
      "title": "U18 Head Women\u2019s Soccer Coach no Clube Atl\u00e9tico Mineiro",
      "company": "EABH - The American School of Belo Horizonte",
      "outbound_date": "2021-08-04",
      "interest": "no response"
    },
    {
      "index": 398,
      "name": "stephen kuchefski",
      "title": "podcaster",
      "company": "Anchor Self-employed",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 399,
      "name": "patrick wyman",
      "title": "history podcaster and writer",
      "company": "University of Southern California",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 400,
      "name": "anita lustrea",
      "title": "spiritual director, podcaster and enneagram coach",
      "company": "Northern Seminary",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 401,
      "name": "lucy sustar",
      "title": "Post Production Sound Editor/Mixer",
      "company": "Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 402,
      "name": "richard johnson",
      "title": "at",
      "company": "Calvary Chapel Conferencen Center - Twin Peaks",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 403,
      "name": "jordan mattox",
      "title": "teacher and podcaster",
      "company": "Neighborhood Urban Family Center",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 404,
      "name": "teresa gunderson",
      "title": "writer",
      "company": "Lovely Mayhem",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 405,
      "name": "antoine guilbaud",
      "title": "animation designer",
      "company": "The 9 Lives of Claw",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 406,
      "name": "mark bologna",
      "title": "beyond bourbon street podcast",
      "company": "BBST LLC - Beyond Bourbon Street, an Insider's Guide to New Orleans",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 407,
      "name": "jeff gamet",
      "title": "journalist",
      "company": "Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 408,
      "name": "david cho",
      "title": "Urbanista",
      "company": "Soy Tofu",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 409,
      "name": "joann crohn",
      "title": "founder",
      "company": "Whimsicle, LLC",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 410,
      "name": "mary khatchatrian",
      "title": "vice president of strategy",
      "company": "Scylla",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 411,
      "name": "carolyn cameron, edd",
      "title": "instructor",
      "company": "Galileo Educational Network",
      "outbound_date": "2021-04-20",
      "interest": "not interested"
    },
    {
      "index": 412,
      "name": "james wilkinson",
      "title": "head of marketing",
      "company": "Virtual Internships Full-time",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 413,
      "name": "skye dumont",
      "title": "Worship Leader ",
      "company": "3Circle Church",
      "outbound_date": "2021-05-27",
      "interest": "no response"
    },
    {
      "index": 414,
      "name": "katy siereveld",
      "title": "content creator",
      "company": "Great Scott Social Media",
      "outbound_date": "2021-07-20",
      "interest": "no response"
    },
    {
      "index": 415,
      "name": "matt phillips",
      "title": "Freelance Lighting Designer/Programmer/Event Technician",
      "company": "www.mattyplighting.com",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 416,
      "name": "scott friedman",
      "title": "vice president",
      "company": "Focused Results Personal Training and Sports Performance",
      "outbound_date": "2021-07-06",
      "interest": "no response"
    },
    {
      "index": 417,
      "name": "uncommon sense",
      "title": "host of the black men's book club podcast",
      "company": "Black men\u2019s book club",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 418,
      "name": "asia n. alexander",
      "title": "chief executive officer",
      "company": "Anchor Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 419,
      "name": "rachel means",
      "title": "podcast host",
      "company": "University of Virginia Health System",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 420,
      "name": "robert tyler",
      "title": "Special Education Paraprofessional ",
      "company": "Delaware State University Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 421,
      "name": "annika huprikar",
      "title": "harvard \u201824 | coca cola scholar \u201820 | national merit scholar",
      "company": "The Harvard Crimson",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 422,
      "name": "susanne i.",
      "title": "content creator",
      "company": "Appen",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 423,
      "name": "adam stein",
      "title": "president",
      "company": "These Three Medical Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 424,
      "name": "pablos holman",
      "title": "tech to improve human connection.",
      "company": "Boardroom One Full-time",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 425,
      "name": "daxy perez",
      "title": "co-founder",
      "company": "secret succes podcast group facebook",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 426,
      "name": "jaime shine",
      "title": "writer, marketer, social media strategist helping brands communicate with their target audiences.",
      "company": "Clearly Conveyed Communications, LLC",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 427,
      "name": "jerome leduff jr",
      "title": "marketing specialist & content creator",
      "company": "Trinity Property Consultants",
      "outbound_date": "2021-07-12",
      "interest": "no response"
    },
    {
      "index": 428,
      "name": "jake jorgovan",
      "title": "enterprise podcast consultant | helping b2b companies launch revenue-generating podcasts | founder of content allies",
      "company": "Content Allies - Podcasting for B2B Tech",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 429,
      "name": "ryan fadden",
      "title": "product owner",
      "company": "Maxar Technologies Full-time",
      "outbound_date": "2021-06-23",
      "interest": "no response"
    },
    {
      "index": 430,
      "name": "wendy mays",
      "title": "caster",
      "company": "Berkshire Hathaway HomeServices California Properties",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 431,
      "name": "rachel porter",
      "title": "fashion editor",
      "company": "Nordstrom Rack Full-time",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 432,
      "name": "kayla bailey",
      "title": "Singer/Songwriter & Worship Leader",
      "company": "Independent Contractor Musician",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 433,
      "name": "Matthew Gross",
      "title": "Marketing Intern - Men's Lacrosse ",
      "company": "Ithaca College",
      "outbound_date": "2021-08-02",
      "interest": "no response"
    },
    {
      "index": 434,
      "name": "Shane Blackman",
      "title": "Sports Marketing Consultant ",
      "company": "Schroeder Solutions",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 435,
      "name": "Dawn White",
      "title": "Clinical Operations Leader | Program Development | Licensed Massage Therapist | Author/Blogger & Founder of Lola The Rescued Cat",
      "company": "Hand and Stone Massage and Facial Spa Freelance",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 436,
      "name": "Josh Dunkley",
      "title": "Instagram: joshdunkley_",
      "company": "Western Bulldogs",
      "outbound_date": "2021-08-02",
      "interest": "no response"
    },
    {
      "index": 437,
      "name": "scotty russell",
      "title": "coach",
      "company": "Brownstone Marketing",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 438,
      "name": "elizabeth chance fegely",
      "title": "board member",
      "company": "weekly podcast host",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 439,
      "name": "susan ermisch",
      "title": "director of customer service",
      "company": "WSP USA",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 440,
      "name": "tara jean o'brien",
      "title": "comedian",
      "company": "fxx netflix amazon mtv",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 441,
      "name": "kelvin tan",
      "title": "director",
      "company": "Game Smoothie Pte Ltd",
      "outbound_date": "2021-03-15",
      "interest": "no response"
    },
    {
      "index": 442,
      "name": "sari (shapiro) cicurel",
      "title": "public relations",
      "company": "MILax Recruit",
      "outbound_date": "2021-03-30",
      "interest": "no response"
    },
    {
      "index": 443,
      "name": "alessandra nicole mosenifar",
      "title": "head of product design, podcaster mission",
      "company": "charity: water",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 444,
      "name": "michele coombe",
      "title": "Worship Leader ",
      "company": "Village Church of Santa Clarita Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 445,
      "name": "mike montague",
      "title": "host",
      "company": "star rising busines",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 446,
      "name": "jacqueline marashlian a.",
      "title": "caster",
      "company": "community college gcpea glendale association parent education",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 447,
      "name": "mary-rose sutton",
      "title": "digital marketing and e-commerce specialist",
      "company": "Mary-Rose Sutton Consulting",
      "outbound_date": "2021-07-19",
      "interest": "no response"
    },
    {
      "index": 448,
      "name": "cathy carroll",
      "title": "content creator, editor, journalist, strategist",
      "company": "High Desert Museum",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 449,
      "name": "jacob eckeberger",
      "title": "vp of marketing",
      "company": "Men of the Cloth",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 450,
      "name": "yvonne larson resilience mastery strategist",
      "title": "founder",
      "company": "The Play To Win Podcast",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 451,
      "name": "candy zodinsangi",
      "title": "content creator/ youtuber/ storyteller (self proclaimed!)/l&d specialist/ mommy!",
      "company": "GENPACT",
      "outbound_date": "2021-07-14",
      "interest": "not now"
    },
    {
      "index": 452,
      "name": "gillian wylie",
      "title": "experienced digital marketer | open to work",
      "company": "Ruby\u2019s Designs Freelance",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 453,
      "name": "aaron v.f. picar",
      "title": "\"Preparation creates opportunity.\"",
      "company": "Community Counseling Center, Cape Girardeau, MO",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 454,
      "name": "eric kachur",
      "title": "worship leader",
      "company": "Eric Kachur Ministries",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 455,
      "name": "robbie tieman",
      "title": "teacher",
      "company": "St. Joseph Camp Springs School",
      "outbound_date": "2021-05-25",
      "interest": "no response"
    },
    {
      "index": 456,
      "name": "rj schafer",
      "title": "host",
      "company": "The Iron Podcast Self-employed",
      "outbound_date": "2021-07-04",
      "interest": "no response"
    },
    {
      "index": 457,
      "name": "craig tackett",
      "title": "Husband/Father/Pastor/Author/Foodie",
      "company": "The Edge Student and Leaders Conference",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 458,
      "name": "lydia noland jones",
      "title": "Passionate about sharing music with others",
      "company": "SIERRA MOUNTAIN MUSIC CAMP",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 459,
      "name": "dr jessica vredenburg",
      "title": "Branding, Services Marketing & Sport Sponsorship Expert | Marketing Educator | Media Contributor",
      "company": "journal european",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 460,
      "name": "tori meskin bsn rnc-nic",
      "title": "Your Weekly Dose of Sweet & Salty!",
      "company": "msn university hospital children picc vtm private uac sbu nicu organization uvc",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 461,
      "name": "dr. ramakanta bal",
      "title": "cfo",
      "company": "Gitam University, Hyderabad Full-time",
      "outbound_date": "2021-03-31",
      "interest": "no response"
    },
    {
      "index": 462,
      "name": "mitzi preciado",
      "title": "account manager",
      "company": "Xerox",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 463,
      "name": "erin m. cole, cgbp",
      "title": "president",
      "company": "World Trade Center Buffalo Niagara",
      "outbound_date": "2021-03-30",
      "interest": "no response"
    },
    {
      "index": 464,
      "name": "mathilde coste \u2600\ufe0f",
      "title": "Responsable Marketing ",
      "company": "Noxidoxi",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 465,
      "name": "teresa jane wouters",
      "title": "teacher",
      "company": "Self-Employed Contract Part-time",
      "outbound_date": "2021-05-04",
      "interest": "yes call booked"
    },
    {
      "index": 466,
      "name": "dr. sandeep goyal",
      "title": "managing director",
      "company": "Government Of Punjab",
      "outbound_date": "2021-04-20",
      "interest": "no response"
    },
    {
      "index": 467,
      "name": "mohamed ismail",
      "title": "general manager",
      "company": "QNB Group",
      "outbound_date": "2021-04-27",
      "interest": "no response"
    },
    {
      "index": 468,
      "name": "jeremy brener",
      "title": "sb nation content creator",
      "company": "Hitting the Field Self-employed",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 469,
      "name": "katelyn richardson",
      "title": "marketer",
      "company": "The Color of Home Self-employed",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 470,
      "name": "rachel coleman",
      "title": "caster",
      "company": "Mom Genes The Podcast",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 471,
      "name": "ekta (rawal) garg",
      "title": "content coordinator",
      "company": "Ekta R. Garg Freelance",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 472,
      "name": "alex b. melendrez",
      "title": "sales team member",
      "company": "howard spec school media art",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 473,
      "name": "padma ali",
      "title": "master",
      "company": "energy psychotherapist healer",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 474,
      "name": "shannon purcell",
      "title": "manager, social & content",
      "company": "TechWyse Internet Marketing",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 475,
      "name": "mike brown",
      "title": "assistant manager",
      "company": "customer and service industry experience",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 476,
      "name": "dave hassell",
      "title": "Worship Leader ",
      "company": "Lake Valley Community Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 477,
      "name": "tyana parr",
      "title": "Director of Children's Music ",
      "company": "Stevland Morris Productions (Stevie Wonder)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 478,
      "name": "joshua james",
      "title": "Pastor @ Lion of Judah World Outreach Center",
      "company": "Shalom Ministries Intl. (\"Discovering the Jewish Jesus with Rabbi Schneider)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 479,
      "name": "chad perry",
      "title": "validation engineer",
      "company": "Stryker Instruments",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 480,
      "name": "mohamed belal",
      "title": "founder & ceo",
      "company": "B Auto",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 481,
      "name": "heidi (millius) stevenson",
      "title": "Special Education Teacher ",
      "company": "Dubuque Community School District",
      "outbound_date": "2021-04-02",
      "interest": "not interested"
    },
    {
      "index": 482,
      "name": "yabrieliz diaz",
      "title": "board member",
      "company": "4KZ Boutique Self-employed",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 483,
      "name": "james hines",
      "title": "Customer Service Manager ",
      "company": "Taylor Communications",
      "outbound_date": "2021-03-16",
      "interest": "no response"
    },
    {
      "index": 484,
      "name": "marq mervin",
      "title": "artist",
      "company": "Freelance",
      "outbound_date": "2021-05-05",
      "interest": "not interested"
    },
    {
      "index": 485,
      "name": "hunter gadwell",
      "title": "caster",
      "company": "university state michigan",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 486,
      "name": "michelle d.",
      "title": "Customer Success Manager ",
      "company": "Forrester",
      "outbound_date": "2021-06-03",
      "interest": "irrelevant"
    },
    {
      "index": 487,
      "name": "scott mcfarlane",
      "title": "Information Governance Adviser ",
      "company": "NHS Fife",
      "outbound_date": "2021-03-14",
      "interest": "no response"
    },
    {
      "index": 488,
      "name": "hadija namanda",
      "title": "officer ",
      "company": "Electoral Commission",
      "outbound_date": "2021-03-04",
      "interest": "yes call booked"
    },
    {
      "index": 489,
      "name": "Simone Galluccio",
      "title": "Head Soccer Coach",
      "company": "FOOTBALL Self-employed",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 490,
      "name": "carolina novoa",
      "title": "Analyst ",
      "company": "Goldman Sachs",
      "outbound_date": "2021-03-19",
      "interest": "not interested"
    },
    {
      "index": 491,
      "name": "Graham Abercrombie",
      "title": "Creative Director ",
      "company": "Sheffield FC - The World\u2019s First Football Club",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 492,
      "name": "jefison gulart",
      "title": "Gerente Corporativo Servi\u00e7os | Tritec",
      "company": "Solu\u00e7\u00f5es Integradas Verdes Vales Ltda Full-time",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 493,
      "name": "william kappen",
      "title": "Owner ",
      "company": "William Kappen Music",
      "outbound_date": "2021-05-31",
      "interest": "no response"
    },
    {
      "index": 494,
      "name": "martina degirolamo",
      "title": "Impiegato marketing presso Tes Group Srl",
      "company": "TES Group srl",
      "outbound_date": "2021-03-31",
      "interest": "no response"
    },
    {
      "index": 495,
      "name": "pedro gomez",
      "title": "Business Developer Strategist",
      "company": "HCM line s.r.o.",
      "outbound_date": "2021-05-11",
      "interest": "no response"
    },
    {
      "index": 496,
      "name": "robbie atar \u270c\ufe0f",
      "title": "Adding a Real Value To Marketers , Publishers and APP Developers",
      "company": "appTV",
      "outbound_date": "2021-05-20",
      "interest": "no response"
    },
    {
      "index": 497,
      "name": "leanne brooke",
      "title": "General Manager The Long Walk & Indigenous Affairs Advisor ",
      "company": "Essendon Football Club",
      "outbound_date": "2021-03-10",
      "interest": "no response"
    },
    {
      "index": 498,
      "name": "yvonne brandenburg, rvt, vts (saim)",
      "title": "caster",
      "company": "Academy of Internal Medicine for Veterinary Technicians",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 499,
      "name": "amy stender",
      "title": "music teacher",
      "company": "MCS Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 500,
      "name": "jeremy leger",
      "title": "maintenance electrician",
      "company": "Triad Electric & Controls",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 501,
      "name": "rubaie jaffer",
      "title": "freelance graphic designer",
      "company": "The DGDC Trainee",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 502,
      "name": "angelo natalie",
      "title": "composer",
      "company": "Trinity Catholic High School Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 503,
      "name": "zoe vorwerk",
      "title": "worship leader",
      "company": "Lutheran Church of Hope Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 504,
      "name": "shereen kassam",
      "title": "Florida's Funniest Female & Internationally Touring Speaker",
      "company": "Disney Parks, Experiences and Products Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 505,
      "name": "jazzelle l.",
      "title": "caster",
      "company": "Best of You Video Productions - Santa Cruz, CA",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 506,
      "name": "ben strawhecker",
      "title": "student",
      "company": "Grace Church Internship",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 507,
      "name": "ashley collins",
      "title": "music instructor",
      "company": "El Cajon Wesleyan Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 508,
      "name": "vanshree bhalotia, ms",
      "title": "archer",
      "company": "KTUH",
      "outbound_date": "2021-06-24",
      "interest": "no response"
    },
    {
      "index": 509,
      "name": "ray calloway, mba",
      "title": "owner",
      "company": "Private Healthcare Company Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 510,
      "name": "chelsea (chelsea kerr) paguio",
      "title": "assistant director",
      "company": "Point Loma Nazarene University",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 511,
      "name": "susie antkoviak",
      "title": "worship leader",
      "company": "The Truth Tour- Finding Joy Again Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 512,
      "name": "deidre pannazzo",
      "title": "content creator \u2666 blog writer \u2666 certified professional resume writer \u270d\ufe0f provides professional writing services th",
      "company": "American Management Association",
      "outbound_date": "2021-07-12",
      "interest": "no response"
    },
    {
      "index": 513,
      "name": "alison schuh hawsey",
      "title": "reiki master",
      "company": "Ronald McDonald House Charities of Columbia South Carolina",
      "outbound_date": "2021-06-30",
      "interest": "no response"
    },
    {
      "index": 514,
      "name": "hezi bezalel",
      "title": "investment banker",
      "company": "Marathon Group",
      "outbound_date": "2021-03-21",
      "interest": "no response"
    },
    {
      "index": 515,
      "name": "marc bailey",
      "title": "junior noc engineer",
      "company": "Kaleyra",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 516,
      "name": "timothy davis",
      "title": "minister",
      "company": "Ridgewood Recording Studios",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 517,
      "name": "kenneth laster",
      "title": "radio host",
      "company": "ImageWorks, LLC",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 518,
      "name": "wesley sprague",
      "title": "gordon college",
      "company": "CoachUp",
      "outbound_date": "2021-06-03",
      "interest": "no response"
    },
    {
      "index": 519,
      "name": "shuva rahim, m.ed (she, her, hers)",
      "title": "caster",
      "company": "Leepfrog Technologies, Inc.",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 520,
      "name": "cali monae",
      "title": "child welfare specialist",
      "company": "Dept Of Children & Families",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 521,
      "name": "daniel francis ballinger",
      "title": "owner",
      "company": "Dan Francis",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 522,
      "name": "daniel orlik jr.",
      "title": "insurance manager",
      "company": "Vista Insurance Group Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 523,
      "name": "jonah kang",
      "title": "technology officer",
      "company": "New Covenant Academy (Los Angeles)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 524,
      "name": "henry c.",
      "title": "financial assistance specialist",
      "company": "National Institute of Standards and Technology (NIST)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 525,
      "name": "liz lapp",
      "title": "marketing strategist",
      "company": "Liz Lapp Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 526,
      "name": "tisha boss",
      "title": "podcast host and voice actress",
      "company": "tisha dba",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 527,
      "name": "amy rivers",
      "title": "owner, running coach and personal trainer",
      "company": "state college university new american york council",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 528,
      "name": "joshua a. kimmel",
      "title": "caster",
      "company": "OUS fantasy football Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 529,
      "name": "steventhen holland",
      "title": "author",
      "company": "North Dunedin Baptist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 530,
      "name": "holly kalua, bsha, bsm, rn, chbc, crcr",
      "title": "ceo",
      "company": "Guidepoint Freelance",
      "outbound_date": "2021-07-14",
      "interest": "not interested"
    },
    {
      "index": 531,
      "name": "naomy l\u00e9lis",
      "title": "project manager",
      "company": "miami university wvum",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 532,
      "name": "chelsea rose williams",
      "title": "director of growth & content creation",
      "company": "Turnkey Parlor",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 533,
      "name": "dell smith",
      "title": "worship leader",
      "company": "Steadfast Farm",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 534,
      "name": "jason coffel",
      "title": "account executive",
      "company": "KSLA News 12",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 535,
      "name": "chad thymes",
      "title": "electronics technician",
      "company": "Cygnet Theatre",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 536,
      "name": "kyle roed, phr, shrm-cp",
      "title": "human resources leader",
      "company": "Rebel Human Resources Podcast Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 537,
      "name": "joseph saulter",
      "title": "usher",
      "company": "Entertainment Arts Research",
      "outbound_date": "2021-04-12",
      "interest": "no response"
    },
    {
      "index": 538,
      "name": "jonny hutsler",
      "title": "at",
      "company": "Valley View Baptist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 539,
      "name": "yves hamard",
      "title": "media consultant",
      "company": "WMNF Community Radio Self-employed",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 540,
      "name": "olivia ingram",
      "title": "registered nurse",
      "company": "UChicago Medicine Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 541,
      "name": "colby rummell",
      "title": "Church Leadership",
      "company": "Arrow Staffing",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 542,
      "name": "kelly tompkins",
      "title": "manager",
      "company": "NTN Bearing Corporation",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 543,
      "name": "lia kauffman",
      "title": "Education",
      "company": "Diplomatic Language Services",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 544,
      "name": "hannah sachs, m.s. (she/her)",
      "title": "program manager",
      "company": "operation career people coach",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 545,
      "name": "myles ullman",
      "title": "model",
      "company": "Crossovr",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 546,
      "name": "wade (friarwade) fahnestock",
      "title": "logger",
      "company": "FriarWade",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 547,
      "name": "ethan goffman",
      "title": "adjunct professor",
      "company": "E: The Environmental Magazine / EarthTalk",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 548,
      "name": "orlando perez",
      "title": "caster",
      "company": "Polar Realty Self-employed",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 549,
      "name": "christian martirano",
      "title": "musician",
      "company": "NuTrends Expo Services, LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 550,
      "name": "michael lacey",
      "title": "woodworker",
      "company": "Story Builds Woodwork Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 551,
      "name": "jim robinson",
      "title": "english teacher",
      "company": "Robert F. Kennedy High School",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 552,
      "name": "kyle walker",
      "title": "associate",
      "company": "Kingsland Baptist Church Part-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 553,
      "name": "khalid mckinley m.div., ma",
      "title": "pastor",
      "company": "Wells Fargo",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 554,
      "name": "sean kernan",
      "title": "ad writer",
      "company": "Regional Media",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 555,
      "name": "tommy shull",
      "title": "visual content creator / owner",
      "company": "Beehive Inc",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 556,
      "name": "darrel ashby",
      "title": "director of design",
      "company": "South Trail Church Of Christ",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 557,
      "name": "jaimie samuels sr",
      "title": "information system security manager",
      "company": "90 Day Reviews",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 558,
      "name": "regina pontes, mba",
      "title": "author",
      "company": "iso catholic pres",
      "outbound_date": "2021-06-30",
      "interest": "no response"
    },
    {
      "index": 559,
      "name": "stephen zippe",
      "title": "creating video content to promote businesses | video | motion graphics | photography",
      "company": "xd sony cam dslr",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 560,
      "name": "suraja rajagopal",
      "title": "social media manager | video producer | content creator",
      "company": "Caribou Crossing Freelance",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 561,
      "name": "jonathan best, ph.d.",
      "title": "founder",
      "company": "Liminal Theology",
      "outbound_date": "2021-06-30",
      "interest": "no response"
    },
    {
      "index": 562,
      "name": "chidimma ozor commer, llmsw, msw, ma (she series)",
      "title": "consultant",
      "company": "theTYPEAhippie",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 563,
      "name": "targan wehye-jones",
      "title": "real estate specialist",
      "company": "(N3MAK3) Inc",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 564,
      "name": "karen schultz tarnopol",
      "title": "real estate broker",
      "company": "Higher Living Real Estate",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 565,
      "name": "alanna grayce campbell",
      "title": "caster",
      "company": "community bluegras university eastern transylvania kentucky intelligence center",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 566,
      "name": "darrell \u201cdj\u201d moore",
      "title": "Cloud Security Professional | GCFA",
      "company": "Amazon Web Services (AWS) Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 567,
      "name": "clayton blankers",
      "title": "billing specialist",
      "company": "The Stilted Podcast",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 568,
      "name": "garrett nicole wood",
      "title": "coach",
      "company": "Cataliize Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 569,
      "name": "michael williams",
      "title": "digital marketing - videographer/content creator",
      "company": "Light & Motion Full-time",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 570,
      "name": "connor ehrich",
      "title": "caster",
      "company": "Henry Duhart for County Commission Internship",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 571,
      "name": "susan cooper",
      "title": "digital marketer and content creator",
      "company": "Trans-Bridge Lines. Inc. Full-time",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 572,
      "name": "rose coppin",
      "title": "cma",
      "company": "quality record patient strong and medical phlebotomy skill care organization assisting",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 573,
      "name": "john mcdavitt",
      "title": "illustrator",
      "company": "McDavitt Design Studio, Inc",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 574,
      "name": "rikki schwartz, cert agile leader, csm, cert life coach",
      "title": "i light the path to agile leadership in your personal and professional lives",
      "company": "agile coaching your turn higher host life ed health automotive my leadership care in project reclaim training mgmt fortune conceived for certified experience company",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 575,
      "name": "kendall carter",
      "title": "customer service representative",
      "company": "Jamey Aebersold Jazz, Inc. Full-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 576,
      "name": "alex vialette",
      "title": "content creator & website manager",
      "company": "The Central Group",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 577,
      "name": "jason moody",
      "title": "written content creator",
      "company": "BIGDaddyDigital",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 578,
      "name": "tanvi rastogi",
      "title": "marketer | brand storyteller | content creator | social media consultant & strategist",
      "company": "Joseph Greenwald & Laake, P.A.",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 579,
      "name": "spencer harding",
      "title": "content creator",
      "company": "PGA TOUR",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 580,
      "name": "connor thornberry",
      "title": "content creator/video editor",
      "company": "Rise at Seven - GLOBAL CONTENT + SEARCH AGENCY OF THE YEAR Full-time",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 581,
      "name": "col carter",
      "title": "sales consultant",
      "company": "Paradox",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 582,
      "name": "marco caruso",
      "title": "co-founder",
      "company": "Step s.r.l.",
      "outbound_date": "2021-03-26",
      "interest": "no response"
    },
    {
      "index": 583,
      "name": "will crist",
      "title": "eos | management dev. | better biz. meetings | employee accountability | strategic planning | organizational transformation | time mgt. | leader in problem solving skills | grow profit",
      "company": "transformation busines team specialtie rob include development helping planning better owner meeting employee company entrepreneur executive accountability strategic organizational leadership management",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 584,
      "name": "angela brooks",
      "title": "burnt out nurse | essential oil consultant | blogging content creator | digital storyteller| simple marketing strategies | author x2",
      "company": "network simple",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 585,
      "name": "joseph powell",
      "title": "partner and technology content creator",
      "company": "ITAMeyes Solutions",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 586,
      "name": "bethany w.",
      "title": "head of affiliates",
      "company": "eComplete Group",
      "outbound_date": "2021-07-19",
      "interest": "no response"
    },
    {
      "index": 587,
      "name": "joseph habeeb",
      "title": "health inspector",
      "company": "Marquis Health Services",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 588,
      "name": "sade' paige",
      "title": "content creator | product development manager",
      "company": "Roma Industries, LLC",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 589,
      "name": "jason myrtetus",
      "title": "philadelphia flyers digital content creator/flyers daily podcast host",
      "company": "Beasley Media Group",
      "outbound_date": "2021-07-14",
      "interest": "irrelevant"
    },
    {
      "index": 590,
      "name": "scott abbott",
      "title": "specialize in creating, building and coaching successful companies, leadership & growth",
      "company": "university instagram indiana twitter school kelley busines",
      "outbound_date": "2021-07-14",
      "interest": "no response"
    },
    {
      "index": 591,
      "name": "jennifer lisle",
      "title": "content creator and editor",
      "company": "ABB Full-time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 592,
      "name": "beverley nielsen",
      "title": "councillor",
      "company": "ULTRA LIGHT RAIL PARTNERS LTD",
      "outbound_date": "2021-03-20",
      "interest": "not interested"
    },
    {
      "index": 593,
      "name": "rebecca abrahams",
      "title": "brand strategist",
      "company": "OrpheusVR",
      "outbound_date": "2021-03-08",
      "interest": "no response"
    },
    {
      "index": 594,
      "name": "ryan cook",
      "title": "Leader and Innovator",
      "company": "LXC Sports",
      "outbound_date": "2021-03-05",
      "interest": "no response"
    },
    {
      "index": 595,
      "name": "manpreet jangra",
      "title": "cco",
      "company": "Digitally Next",
      "outbound_date": "2021-04-21",
      "interest": "no response"
    },
    {
      "index": 596,
      "name": "yiannis a. retsos",
      "title": "president",
      "company": "Electra Hotels and Resorts",
      "outbound_date": "2021-03-04",
      "interest": "no response"
    },
    {
      "index": 597,
      "name": "caroline surtees",
      "title": "managing director",
      "company": "Olive Grove Center of Early Learning",
      "outbound_date": "2021-04-14",
      "interest": "no response"
    },
    {
      "index": 598,
      "name": "dr. jennifer kaywork",
      "title": "teacher",
      "company": "Parent PhD",
      "outbound_date": "2021-04-16",
      "interest": "no response"
    },
    {
      "index": 599,
      "name": "kate murray",
      "title": "owner",
      "company": "Bayview Glen School",
      "outbound_date": "2021-05-12",
      "interest": "no response"
    },
    {
      "index": 600,
      "name": "thomas faratche",
      "title": "account executive",
      "company": "Perkbox Full-time",
      "outbound_date": "2021-03-09",
      "interest": "no response"
    },
    {
      "index": 601,
      "name": "carlos aranda",
      "title": "technical director",
      "company": "Lee Mount-Vernon Sports Club",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 602,
      "name": "shannon bonadurer",
      "title": "agency owner",
      "company": "WDW & Beyond",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 603,
      "name": "ryan holmes",
      "title": "caster",
      "company": "Kidpower Teenpower Fullpower International",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 604,
      "name": "julee b. white",
      "title": "director",
      "company": "NBC Universal",
      "outbound_date": "2021-05-17",
      "interest": "no response"
    },
    {
      "index": 605,
      "name": "david hopkins",
      "title": "college instructor",
      "company": "Intellectual Freedom Podcast Self-employed",
      "outbound_date": "2021-06-09",
      "interest": "no response"
    },
    {
      "index": 606,
      "name": "lydia spinelli",
      "title": "director",
      "company": "The Brick Church School",
      "outbound_date": "2021-03-22",
      "interest": "not interested"
    },
    {
      "index": 607,
      "name": "leslie frelow",
      "title": "blogger",
      "company": "Swirl Suite Freelance",
      "outbound_date": "2021-06-07",
      "interest": "yes call booked"
    },
    {
      "index": 608,
      "name": "simon haigh",
      "title": "inker",
      "company": "TrainedIn Part-time",
      "outbound_date": "2021-03-17",
      "interest": "no response"
    },
    {
      "index": 609,
      "name": "saurabh gupta",
      "title": "co-founder",
      "company": "Apress",
      "outbound_date": "2021-03-19",
      "interest": "no response"
    },
    {
      "index": 610,
      "name": "tesa baum",
      "title": "owner",
      "company": "The Zig-Zag of Life with Tess",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 611,
      "name": "dr dheeraj mehrotra",
      "title": "principal",
      "company": "Next Education India Pvt Ltd",
      "outbound_date": "2021-03-18",
      "interest": "no response"
    },
    {
      "index": 612,
      "name": "brad reed",
      "title": "founder",
      "company": "RepurposedYou",
      "outbound_date": "2021-04-17",
      "interest": "not interested"
    },
    {
      "index": 613,
      "name": "chi-heng (jeffrey) hung",
      "title": "security analyst",
      "company": "university",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 614,
      "name": "terri pulley",
      "title": "life coach",
      "company": "Lone Talisman Eclectic Artistry, principal",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 615,
      "name": "kristie rubendunst",
      "title": "preacher",
      "company": "First Congregational Church of Guilford - UCC; North Branford Congregational Church - UCC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 616,
      "name": "amy heard",
      "title": "piano instructor",
      "company": "Pink Tennis Shoes Productions (BMI)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 617,
      "name": "zachariah oaster",
      "title": "sociologist",
      "company": "Michigan Area School for Pastoral Ministry",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 618,
      "name": "arlyne marella",
      "title": "caster",
      "company": "learning linkedin",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 619,
      "name": "david butler",
      "title": "Head of Sustainability ",
      "company": "Voltaic Commerce",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 620,
      "name": "James Dasaolu OLY",
      "title": "Olympic Athlete",
      "company": "British Olympic Association Full-time",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 621,
      "name": "christian bernard",
      "title": "ceo & co-founder",
      "company": "GET IT! Comunica\u00e7\u00e3o",
      "outbound_date": "2021-03-31",
      "interest": "no response"
    },
    {
      "index": 622,
      "name": "shuaibu abdullahi kafinmaiyaki ph.d",
      "title": "lecturer",
      "company": "ACL Educational Consutany",
      "outbound_date": "2021-03-09",
      "interest": "no response"
    },
    {
      "index": 623,
      "name": "ronda cupler",
      "title": "Client Service Associate ",
      "company": "self employed artist, writer, musician",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 624,
      "name": "Stuart Searle",
      "title": "Chelsea Women Head of Technical & Lead Goalkeeping Coach",
      "company": "Chelsea Football Club",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 625,
      "name": "kimberly deese",
      "title": "digital pr manager",
      "company": "Travel Squad Podcast Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 626,
      "name": "will english",
      "title": "Worship Pastor and Telecommunications Professional with a Wide Range of Experience from Churches to Logistics",
      "company": "12Stone Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 627,
      "name": "gadiel espinoza",
      "title": "Co-Host of Money Talks on TEA Project: A Personal Finance Podcast",
      "company": "Assistance to the Elderly, Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 628,
      "name": "fadra nally",
      "title": "ceo",
      "company": "Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 629,
      "name": "brianna (bree) lopez",
      "title": "oenologist",
      "company": "Paradocx Vineyard Llc Full-time",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 630,
      "name": "konrad greene",
      "title": "store manager",
      "company": "Steve Madden",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 631,
      "name": "victoria wesley",
      "title": "media consultant",
      "company": "catholic church",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 632,
      "name": "pete malloy",
      "title": "owner and content creator",
      "company": "Studio Seventy Seven Full-time",
      "outbound_date": "2021-07-16",
      "interest": "no response"
    },
    {
      "index": 633,
      "name": "florian g.",
      "title": "senior sales executive | think big, be bold & have fun! [sap & aws partner]",
      "company": "Cousin Germain Podcast Casual / On-call",
      "outbound_date": "2021-07-14",
      "interest": "no response"
    },
    {
      "index": 634,
      "name": "jeff kessel",
      "title": "Husband",
      "company": "First Southern Baptist Church Caldwell",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 635,
      "name": "eric dye",
      "title": "producer",
      "company": "Enterprise Podcast Network",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 636,
      "name": "blythe wagner",
      "title": "fitness specialist/sports nutritionist",
      "company": "Cut The Fat Podcast",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 637,
      "name": "jason levy",
      "title": "managing editor",
      "company": "Saatchi & Saatchi Wellness",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 638,
      "name": "roya(masooma)sadat hossaini",
      "title": "model",
      "company": "Urban Planet Fashion Full-time",
      "outbound_date": "2021-03-09",
      "interest": "no response"
    },
    {
      "index": 639,
      "name": "huong duong",
      "title": "Deputy Director of Marketing ",
      "company": "Bamboo Airways",
      "outbound_date": "2021-04-03",
      "interest": "no response"
    },
    {
      "index": 640,
      "name": "paxton farrar",
      "title": "filmmaker",
      "company": "Day Players Self-employed",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 641,
      "name": "quincy corsey",
      "title": "owner",
      "company": "QualityContent Media Freelance",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 642,
      "name": "tom glide",
      "title": "author",
      "company": "Atollo Records Uk",
      "outbound_date": "2021-03-14",
      "interest": "not interested"
    },
    {
      "index": 643,
      "name": "roger edwards",
      "title": "marketing consultant",
      "company": "Scottish Provident",
      "outbound_date": "2021-03-04",
      "interest": "not interested"
    },
    {
      "index": 644,
      "name": "jason holtham",
      "title": "writer",
      "company": "CW's Supergirl",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 645,
      "name": "tom knutilla",
      "title": "caster",
      "company": "Dad Stories Part-time",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 646,
      "name": "jessica ashley",
      "title": "content strategist",
      "company": "Sassafrass Media LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 647,
      "name": "pam covarrubias",
      "title": "coach",
      "company": "Missouri Western State University--St. Joseph, MO",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 648,
      "name": "danny cosme",
      "title": "caster",
      "company": "The Wildly Unexplained Podcast Self-employed",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 649,
      "name": "lee rugless",
      "title": "composer",
      "company": "LeGeo Entertainment",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 650,
      "name": "dr. wes black",
      "title": "Education and Leadership",
      "company": "Huntsville City Schools",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 651,
      "name": "derrick wallace jr",
      "title": "digital media content creator & sports news",
      "company": "content media",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 652,
      "name": "jenn taylor",
      "title": "transformational coach for christian women, host of at a crossroads with the naked podcaster, and mom of 18. linktr.ee/momofeighteen",
      "company": "women reno christian nv",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 653,
      "name": "sky kennedy",
      "title": "highlighting the cybersecurity message through video storytelling and video design to educate audiences on the importance of cybersecurity for successful business operations.",
      "company": "Studio Sky Video Content Creations Self-employed",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 654,
      "name": "audra tavelli",
      "title": "communications manager",
      "company": "Three Sticks Wines",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 655,
      "name": "melissa brown",
      "title": "associate",
      "company": "World Financial Group (WFG)",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 656,
      "name": "samantha wragg",
      "title": "freelance digital marketer and content creator",
      "company": "YHA (England & Wales)",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 657,
      "name": "rhonda orr",
      "title": "teaching moms",
      "company": "Keynote Speaker/Podcaster",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 658,
      "name": "ashleigh anderson",
      "title": "digital & social strategist and content creator | social media management | digital marketing specialist",
      "company": "Promoboxx Full-time",
      "outbound_date": "2021-07-09",
      "interest": "no response"
    },
    {
      "index": 659,
      "name": "samuel schubkegel",
      "title": "development coordinator",
      "company": "Right to Life of Michigan Full-time",
      "outbound_date": "2021-05-19",
      "interest": "no response"
    },
    {
      "index": 660,
      "name": "dr. m. renee runyon",
      "title": "coo",
      "company": "Spring Arbor Free Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 661,
      "name": "garrett forbes",
      "title": "digital content creator",
      "company": "Sherry Matthews Group Contract",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 662,
      "name": "jennie bellinger -certified professional coach",
      "title": "host",
      "company": "Turnkey Podcast Productions Freelance",
      "outbound_date": "2021-04-16",
      "interest": "yes call booked"
    },
    {
      "index": 663,
      "name": "toni-ann mayembe",
      "title": "blogger",
      "company": "Real Happy Mom Part-time",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 664,
      "name": "james green",
      "title": "sports reporter",
      "company": "Sky Freelance",
      "outbound_date": "2021-04-04",
      "interest": "no response"
    },
    {
      "index": 665,
      "name": "jessica stopper",
      "title": "writer",
      "company": "television radio",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 666,
      "name": "neishma gerena",
      "title": "customer support",
      "company": "Anchor Self-employed",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 667,
      "name": "david wonderly",
      "title": "reamer",
      "company": "Uber",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 668,
      "name": "bobbie ryan",
      "title": "mechanical engineer",
      "company": "All Things College & Career",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 669,
      "name": "eileen gaffen",
      "title": "public relations",
      "company": "state california and diego southern service golden media club integrated stere gaffen emmy cb scout pres university national san mike girl sprint",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 670,
      "name": "cheryl scheurer, ph.d.",
      "title": "caster",
      "company": "RX4 Wealth Self-employed",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 671,
      "name": "jason hallman",
      "title": "host",
      "company": "Cycle Source Magazine Freelance",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 672,
      "name": "melanie gonzalez, psyd",
      "title": "psychotherapist",
      "company": "Human Conversations Freelance",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 673,
      "name": "aradhana duppala",
      "title": "staff software engineer",
      "company": "Northeastern University",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 674,
      "name": "taylor ferber",
      "title": "on-air personality",
      "company": "vanity oscar fair playboy",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 675,
      "name": "brenda maribel betancourt",
      "title": "president",
      "company": "Coalicion de Organizaciones Unidas RM, Organizacion Hondure\u00f1a Integrada FM",
      "outbound_date": "2021-03-11",
      "interest": "no response"
    },
    {
      "index": 676,
      "name": "shervin hajami",
      "title": "technical director",
      "company": "The Bolt Supply House Ltd.",
      "outbound_date": "2021-06-22",
      "interest": "no response"
    },
    {
      "index": 677,
      "name": "christine kahan",
      "title": "facilitator",
      "company": "Learn It Academic Services",
      "outbound_date": "2021-03-31",
      "interest": "no response"
    },
    {
      "index": 678,
      "name": "jordan shusterman",
      "title": "podcaster",
      "company": "The Ringer",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 679,
      "name": "wayne unger",
      "title": "realtor",
      "company": "eXp Realty, LLC",
      "outbound_date": "2021-06-28",
      "interest": "not interested"
    },
    {
      "index": 680,
      "name": "heather traynor",
      "title": "Worship Leader",
      "company": "Self-Employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 681,
      "name": "\u2728marci maughan nettles\u2728",
      "title": "caster",
      "company": "Rhino Global, LLC Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 682,
      "name": "veronika abrams",
      "title": "author",
      "company": "Rave Inc.",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 683,
      "name": "patti massullo",
      "title": "coach",
      "company": "Top Level Marketing Consultants",
      "outbound_date": "2021-03-17",
      "interest": "not interested"
    },
    {
      "index": 684,
      "name": "yasser awad",
      "title": "director",
      "company": "Self-employed",
      "outbound_date": "2021-03-13",
      "interest": "not interested"
    },
    {
      "index": 685,
      "name": "mariana v. honorato",
      "title": "marketing & communications manager",
      "company": "Goho",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 686,
      "name": "mazhar chaudhary",
      "title": "head of marketing",
      "company": "The Printing Solutions",
      "outbound_date": "2021-04-06",
      "interest": "yes call booked"
    },
    {
      "index": 687,
      "name": "krissy sommerstad",
      "title": "senior vice president, public relations",
      "company": "UnitedHealth Group",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 688,
      "name": "jasmine major",
      "title": "project manager",
      "company": "Genesislevel Modeling Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 689,
      "name": "christina \"ashia iris\" schmid",
      "title": "worship leader",
      "company": "Christ Community Church Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 690,
      "name": "aaron fisher",
      "title": "worship leader",
      "company": "Wells Fargo",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 691,
      "name": "tanner kern",
      "title": "sports journalist",
      "company": "Knup Solutions",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 692,
      "name": "luke b.",
      "title": "sound engineer",
      "company": "Baumgartner Family Properties LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 693,
      "name": "julia weeks",
      "title": "social media producer, photo editor",
      "company": "Julia Weeks Photography",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 694,
      "name": "jonah von spreecken",
      "title": "copywriter, content coordinator, farm-to-table fan",
      "company": "MilkRun",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 695,
      "name": "shann vander leek",
      "title": "Transformation Goddess",
      "company": "Transformation Goddess",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 696,
      "name": "preston mcguire",
      "title": "H20PARADISECONSTRUCTION.COM",
      "company": "Preston Mcguire",
      "outbound_date": "2021-03-20",
      "interest": "irrelevant"
    },
    {
      "index": 697,
      "name": "damon massey",
      "title": "Live. Love. Laugh...to the fullest.",
      "company": "Manpower Office Professionals (University of Maryland Medical Center)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 698,
      "name": "samantha koosmann",
      "title": "business development",
      "company": "Collective Genius",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 699,
      "name": "jacob watkins",
      "title": "video editor",
      "company": "22nd Avenue Entertainment Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 700,
      "name": "jim o'connor",
      "title": "theology teacher",
      "company": "St. Theodore Guerin Catholic High School Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 701,
      "name": "patrick clemmond",
      "title": "worship leader",
      "company": "South Africa, Florida USA, Pensylvania, New York State.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 702,
      "name": "noman kenneth",
      "title": "digital marketing manager | seo specialist",
      "company": "The Zen Agency",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 703,
      "name": "josiah vanvliet",
      "title": "video conferencing engineer",
      "company": "Akamai Technologies",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 704,
      "name": "brittney mack",
      "title": "host",
      "company": "university strong memphi the art",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 705,
      "name": "sam callan",
      "title": "manager",
      "company": "USA Ultimate Full-time",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 706,
      "name": "victoria barela, cts",
      "title": "solutions engineer",
      "company": "Church of the Holy Spirit-Episcopal Freelance",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 707,
      "name": "harriet pea",
      "title": "social designer focused on solutions for people with dementia and their caregivers.",
      "company": "excel design budget support service engagement powerpoint satisfaction life delivery emr salesforce health customer microsoft word enrichment increased care alzheimer programing directed dementia program pointclickcare model memory managed organization",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 708,
      "name": "karl holmes jr.",
      "title": "podcaster \"the locker room\"",
      "company": "Hathaway-Sycamores Child & Family Services Full-time",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 709,
      "name": "greg berry",
      "title": "account manager",
      "company": "Crank Revolution Bike Shop",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 710,
      "name": "brian caraba dds",
      "title": "dental instructor/ glass blower",
      "company": "Freelance",
      "outbound_date": "2021-07-08",
      "interest": "no response"
    },
    {
      "index": 711,
      "name": "jonathan greene",
      "title": "content manager",
      "company": "Greener Side Podcasts",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 712,
      "name": "chris jensen",
      "title": "caster",
      "company": "speaking skilled strong editing disability and right relation public media in organization nonprofit",
      "outbound_date": "2021-06-13",
      "interest": "pending"
    },
    {
      "index": 713,
      "name": "kyle knezevich",
      "title": "relations manager",
      "company": "radio strong university indianapoli indiana host",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 714,
      "name": "emily myers",
      "title": "Entertainment",
      "company": "First Reformed Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 715,
      "name": "scott grayson",
      "title": "caster",
      "company": "Self-employed",
      "outbound_date": "2021-06-08",
      "interest": "no response"
    },
    {
      "index": 716,
      "name": "sanya sharma",
      "title": "Founder & Global Director of Scarlet Udaan || Second Year Law Student (LLB) ",
      "company": "Girls' Globe",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 717,
      "name": "Tessie (Maria Teresa Cicarelli) Cicarelli",
      "title": "unemployed ",
      "company": "Morningstar",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 718,
      "name": "peter vivas",
      "title": "podcaster",
      "company": "Nukondo, LLC. Part-time",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 719,
      "name": "matthew durgin",
      "title": "professional in the sports industry",
      "company": "Ability Advertising Full-time",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 720,
      "name": "joshua a.",
      "title": "incoming swe intern @ slack",
      "company": "Facebook Internship",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 721,
      "name": "ryan sargent",
      "title": "freelance writer",
      "company": "university chapman",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 722,
      "name": "melissa y. trujillo -burke",
      "title": "podcaster",
      "company": "LA CAUSA CONSTRUCTION, L.L.C.",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 723,
      "name": "pamela beaty",
      "title": "blogger",
      "company": "www.pamelabeaty.net",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 724,
      "name": "ronald campbell",
      "title": "Solutions Group Developer ",
      "company": "Technology Partners",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 725,
      "name": "martin boehme",
      "title": "web developer, podcaster",
      "company": "Iowa State University",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 726,
      "name": "matthew hamburg",
      "title": "assistant creative director",
      "company": "the agency Part-time",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 727,
      "name": "kevin murphy",
      "title": "podcaster",
      "company": "Headline Books",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 728,
      "name": "alfred gutierrez, jr.",
      "title": "at",
      "company": "Bank of America",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 729,
      "name": "larry madrid",
      "title": "president",
      "company": "Bartow Chamber of Commerce",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 730,
      "name": "miki hellerbach",
      "title": "freelance writer",
      "company": "Complex Networks Freelance",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 731,
      "name": "marika reisberg",
      "title": "director",
      "company": "Sustaining Creativity Podcast",
      "outbound_date": "2021-07-01",
      "interest": "no response"
    },
    {
      "index": 732,
      "name": "hellen oti",
      "title": "brand strategist",
      "company": "CompuData Inc.",
      "outbound_date": "2021-05-17",
      "interest": "no response"
    },
    {
      "index": 733,
      "name": "amy daley",
      "title": "co-founder",
      "company": "Self-Employed",
      "outbound_date": "2021-04-27",
      "interest": "no response"
    },
    {
      "index": 734,
      "name": "zac radford",
      "title": "social media consulting/content creator",
      "company": "Self Employed",
      "outbound_date": "2021-07-16",
      "interest": "no response"
    },
    {
      "index": 735,
      "name": "trina coleman",
      "title": "singer",
      "company": "Mount Holly Public Schools",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 736,
      "name": "suzanne (hemman) york",
      "title": "i help leaders",
      "company": "management organizational change strategy",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 737,
      "name": "natasha salehi",
      "title": "hospitality queen",
      "company": "Soho House & Co Full-time",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 738,
      "name": "caroline young",
      "title": "content creator & writer",
      "company": "Stellar Development Foundation Full-time",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 739,
      "name": "jason whitaker",
      "title": "director of security/ content creator",
      "company": "MGM Resorts International",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 740,
      "name": "aysen miller",
      "title": "social media & influencer manager",
      "company": "Snug \u2013 The Sofa in a Box Company",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 741,
      "name": "farrukh younus",
      "title": "entrepreneur & content creator",
      "company": "https://www.facebook.com/Implausibleblog/videos/",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 742,
      "name": "ashley (moore) petrochenko",
      "title": "director of marketing",
      "company": "Cardinal Digital Marketing Full-time",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 743,
      "name": "rex looney",
      "title": "associate pastor",
      "company": "First Baptist Church Tanner",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 744,
      "name": "tony softli",
      "title": "consul",
      "company": "Alliance of American Football",
      "outbound_date": "2021-03-05",
      "interest": "no response"
    },
    {
      "index": 745,
      "name": "frank j. oliver",
      "title": "singer",
      "company": "the New Heart for Worship (coming soon)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 746,
      "name": "beecher j. mccarty",
      "title": "dean",
      "company": "New Hope Baptist Church of Versailles, KY",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 747,
      "name": "brandon k. guttenfelder",
      "title": "composer",
      "company": "The Bridge at Stockton",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 748,
      "name": "michael adler",
      "title": "worship leader",
      "company": "The Barn at Shady Lane",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 749,
      "name": "dave graham",
      "title": "director",
      "company": "messaging emerging dell technologie",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 750,
      "name": "q wade billings (he/him)",
      "title": "Special Projects ",
      "company": "B-Grade Media Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 751,
      "name": "robert morrow",
      "title": "video editor & content creator",
      "company": "func.media Freelance",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 752,
      "name": "keith stovall, lpc",
      "title": "division chair",
      "company": "college community",
      "outbound_date": "2021-05-31",
      "interest": "no response"
    },
    {
      "index": 753,
      "name": "clement edeh",
      "title": "director/cinematographer/ content creator",
      "company": "Zoet Moments",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 754,
      "name": "marco feng",
      "title": "an seo and wanderlust in one.",
      "company": "MarcoFeng.com",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 755,
      "name": "lou ann lee",
      "title": "International Singer",
      "company": "celebration community fellowship",
      "outbound_date": "2021-05-20",
      "interest": "no response"
    },
    {
      "index": 756,
      "name": "stephen adeoye",
      "title": "first class banking & finance graduate | advisory analyst @ lawson conner | founder @ beyond education | youtube content creator",
      "company": "YouTube",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 757,
      "name": "rachel ames",
      "title": "podcast host | social media specialist | content creator",
      "company": "SunCoast Optimal Wellness",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 758,
      "name": "allison sheridan",
      "title": "caster",
      "company": "pacific time",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 759,
      "name": "luke miller",
      "title": "contractor",
      "company": "Miller Tile and Stone",
      "outbound_date": "2021-06-30",
      "interest": "no response"
    },
    {
      "index": 760,
      "name": "paul alan clifford",
      "title": "author",
      "company": "TrinityDigitalMedia.com, llc.",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 761,
      "name": "lindsay (hauptman) sutherland",
      "title": "caster",
      "company": "Self-employed writer/author",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 762,
      "name": "aya kanai",
      "title": "head of content and creator partnerships",
      "company": "Conde Nast",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 763,
      "name": "keith hernandez",
      "title": "operations manager",
      "company": "Target",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 764,
      "name": "kristofer mcgee",
      "title": "content creator",
      "company": "The National Skills Academy for Food & Drink Full-time",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 765,
      "name": "adam avitable",
      "title": "author",
      "company": "Angel at the Starlite Motel Podcast",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 766,
      "name": "beth bruno",
      "title": "chief of strategic initiatives",
      "company": "Hachette Book Group",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 767,
      "name": "amber ali",
      "title": "co-founder",
      "company": "Vozy Inc",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 768,
      "name": "jennifer ruiz-perekupka",
      "title": "director of corporate communications, sallie mae",
      "company": "Currently Seeking New and Exciting Opportunities Full-time",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 769,
      "name": "bryce smith",
      "title": "social media specialist and content creator",
      "company": "Fragomen",
      "outbound_date": "2021-07-19",
      "interest": "no response"
    },
    {
      "index": 770,
      "name": "margaret qianhui gao",
      "title": "Human Biologist and Designer ",
      "company": "Household Goods Recycling Ministry",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 771,
      "name": "Angel Robinson",
      "title": "International Athlete \u25a0 Mentor \u25a0 Program Ambassador",
      "company": "FIBA/ European Basket",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 772,
      "name": "Pamphinette Buisa",
      "title": "Rugby Canada Athlete",
      "company": "Howard Johnson Hotel Victoria Permanent Part-time",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 773,
      "name": "heidi abraham",
      "title": "manager",
      "company": "Abraham Music & Sound",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 774,
      "name": "blythe alberg",
      "title": "health",
      "company": "Cut The Fat Podcast",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 775,
      "name": "phil adams",
      "title": "Guitarist",
      "company": "Alpha and Omega Entertainment Group",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 776,
      "name": "piperlyne tomczyk",
      "title": "live an intuitive life",
      "company": "In My Experience Podcast Self-employed",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 777,
      "name": "nichole fecteau",
      "title": "caster",
      "company": "bio brownfield nichole town",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 778,
      "name": "elizabeth svatek",
      "title": "I interview women leaping for greatness and am leading a self care movement for Moms to put themselves back on the list! Podcast: Conversations With Warrior Women- Online Community The Warrior Moms",
      "company": "Conversations With Warrior Women Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 779,
      "name": "dustin cruz",
      "title": "podcaster",
      "company": "Powerhouse Gym",
      "outbound_date": "2021-06-29",
      "interest": "no response"
    },
    {
      "index": 780,
      "name": "lucas braun",
      "title": "content creator",
      "company": "Self-employed",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 781,
      "name": "jim hudson",
      "title": "Freelance Projects and Positions",
      "company": "IHeart Media/Total Traffic Network",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 782,
      "name": "cole bellamy, mfa",
      "title": "educator",
      "company": "Morean Arts Center",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 783,
      "name": "lucy chihandae",
      "title": "director",
      "company": "2Sistars Media",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 784,
      "name": "justin antony",
      "title": "head of content & creator partnerships",
      "company": "Instagram",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 785,
      "name": "stefani gavrilov",
      "title": "content creator",
      "company": "Icebox Diamonds & Watches",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 786,
      "name": "rob napoli",
      "title": "global entrepreneurship & innovation coach \ud83d\ude80 | trainer {startups, scale-ups, corporate) \ud83c\udff9 | podcast host and storyteller \ud83c\udf99 | 2x entrepreneur",
      "company": "trainer entrepreneurship innovation coach global",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 787,
      "name": "david jesse",
      "title": "i believe th",
      "company": "One Child Matters",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 788,
      "name": "mollie mountford",
      "title": "social media manager",
      "company": "MoneyNext",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 789,
      "name": "brad phillips",
      "title": "online marketer",
      "company": "Audio Adventures",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 790,
      "name": "bil mooney-mccoy",
      "title": "director",
      "company": "Freelance Computer Professional",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 791,
      "name": "james crumbly",
      "title": "concert pianist",
      "company": "Signed Recording Artist",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 792,
      "name": "erin scanlon",
      "title": "master",
      "company": "university arizona",
      "outbound_date": "2021-07-08",
      "interest": "no response"
    },
    {
      "index": 793,
      "name": "timmie boose",
      "title": "graphic designer",
      "company": "motion graphic",
      "outbound_date": "2021-06-28",
      "interest": "no response"
    },
    {
      "index": 794,
      "name": "frank wilson",
      "title": "host",
      "company": "mbti bruin boston",
      "outbound_date": "2021-07-01",
      "interest": "no response"
    },
    {
      "index": 795,
      "name": "andrew hall",
      "title": "blogger",
      "company": "new fox cnn",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 796,
      "name": "olyvia p.",
      "title": "caster",
      "company": "Center for Healthcare Innovation",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 797,
      "name": "uuganbayar batsukh",
      "title": "host",
      "company": "International American University",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 798,
      "name": "cosmina esanu",
      "title": "artist",
      "company": "Limitless Beauty Boss Podcast Full-time",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 799,
      "name": "rebecca regnier",
      "title": "author",
      "company": "Rebecca Regnier",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 800,
      "name": "lisa s. mckenzie, rt,(r)(mr)",
      "title": "MRI Applications & Education Specialist ",
      "company": "Diagnostic Imaging",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 801,
      "name": "dwight beal",
      "title": "Director of Worship ",
      "company": "Darkhorse Studios",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 802,
      "name": "blanca delgado",
      "title": "Director of Administration ",
      "company": "ABI FINANCIAL GROUP",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 803,
      "name": "john brown",
      "title": "Musical Director / Singer Songwriter",
      "company": "Fantasia Family Music",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 804,
      "name": "kendra lubiens",
      "title": "Director, Brand Stewardship ",
      "company": "One More Cup",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 805,
      "name": "Andrea Chenier",
      "title": "Personal Trainer ",
      "company": "Yelp Eat24",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 806,
      "name": "Alex Knight",
      "title": "Professional Athlete ",
      "company": "ATP Tour, Inc.",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 807,
      "name": "ronnie kwasman",
      "title": "production designer",
      "company": "Dino & Dana's Safe Space",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 808,
      "name": "shawn thomas",
      "title": "Creative Artist",
      "company": "Shawn Thomas, Actor",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 809,
      "name": "tim dalton",
      "title": "self employed",
      "company": "Ponder This Podcast",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 810,
      "name": "matt mccall",
      "title": "Entrepreneur",
      "company": "InvestorPlace Media",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 811,
      "name": "jill schiefelbein",
      "title": "author",
      "company": "Entrepreneur Media",
      "outbound_date": "2021-03-23",
      "interest": "no response"
    },
    {
      "index": 812,
      "name": "james koh",
      "title": "sports broadcaster and writer",
      "company": "Reception Perception LLC Self-employed",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 813,
      "name": "caleb hatch",
      "title": "news anchor/producer/play-by-play broadcaster/podcaster",
      "company": "Plainview Radio Group",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 814,
      "name": "anthony hayes",
      "title": "author",
      "company": "the science being host",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 815,
      "name": "coach j. morgan",
      "title": "co host",
      "company": "Celebration High School Full-time",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 816,
      "name": "david \u201czach\u201d davidson",
      "title": "shift supervisor",
      "company": "Monster 2 Monster Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 817,
      "name": "deej (aka) redsnapper",
      "title": "host",
      "company": "management finance while busines",
      "outbound_date": "2021-07-07",
      "interest": "pending"
    },
    {
      "index": 818,
      "name": "sara mcgill",
      "title": "coach",
      "company": "Leesburg Today",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 819,
      "name": "scott bowles",
      "title": "financial coach",
      "company": "Joy Community Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 820,
      "name": "kenya forrest",
      "title": "post closing specialist",
      "company": "Notary Public for the State of California",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 821,
      "name": "martin riley",
      "title": "infrastructure architect and freelance technology content creator",
      "company": "Red Bee Media",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 822,
      "name": "trudy leung",
      "title": "marketing coordinator",
      "company": "Macdonald Commercial Real Estate Services Ltd.",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 823,
      "name": "destiny yemay\u00e1 davis",
      "title": "founder of #hireblackmarketers | creative marketing strategist | social media marketing specialist",
      "company": "Eclectic Media Co Self-employed",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 824,
      "name": "stephanie josephs",
      "title": "content creator",
      "company": "MSI Insurance (now COUNTRY)",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 825,
      "name": "kinya claiborne",
      "title": "content creator | digital influencer | magazine editor",
      "company": "The StyleList on ONX",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 826,
      "name": "brian deal",
      "title": "visual specialist",
      "company": "Fellowship Of Grace",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 827,
      "name": "levi chambers",
      "title": "caster",
      "company": "Straw Hut Media Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 828,
      "name": "david sloan",
      "title": "creative director",
      "company": "NetWorld Media Group Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 829,
      "name": "chanda brown-wilson",
      "title": "owner",
      "company": "PFP Services",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 830,
      "name": "russell t. house",
      "title": "worship leader",
      "company": "House Blend",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 831,
      "name": "ellie brigida",
      "title": "producer",
      "company": "Lez Hang Out",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 832,
      "name": "vidhya iyer",
      "title": "caster",
      "company": "customer university strong planning and sale leadership strategic service management mumb",
      "outbound_date": "2021-06-13",
      "interest": "pending"
    },
    {
      "index": 833,
      "name": "erika mona",
      "title": "talk show host",
      "company": "Northwestern University School of Communication Student film project",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 834,
      "name": "sara restylish",
      "title": "founder",
      "company": "Restylish Self-employed",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 835,
      "name": "scott proposki",
      "title": "partner",
      "company": "Cherry Hill Programs",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 836,
      "name": "amy jo clark",
      "title": "director corporate communications",
      "company": "cotr llc",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 837,
      "name": "michael zildjian",
      "title": "author",
      "company": "youtube zilosophy channel",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 838,
      "name": "chris niemeyer",
      "title": "founder",
      "company": "Chris Niemeyer Coaching & Consulting",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 839,
      "name": "greta grosch",
      "title": "creative director",
      "company": "Actors Equity Association",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 840,
      "name": "shauna hoffman",
      "title": "podcaster- a journey to awareness with shauna hoffman",
      "company": "Self-employed",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 841,
      "name": "greg brenner",
      "title": "the hr dad, avp@umiami, marshall goldsmith certified coach, servant leader, continuous improver, dad and podcaster",
      "company": "Gables Restaurant Mangement",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 842,
      "name": "steve antti",
      "title": "Worship Leader for MOTR ",
      "company": "Steve Antti Band",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 843,
      "name": "dustin fenison",
      "title": "Pastor | Creative Director | Songwriter | Worship Leader | Business Owner || People of the Earth",
      "company": "People of the Earth Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 844,
      "name": "pierre darius",
      "title": "Fitness Specialist ",
      "company": "Southgate Leisure Centre",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 845,
      "name": "nate meikle",
      "title": "Meikles & Dimes",
      "company": "Meikles & Dimes",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 846,
      "name": "nick paulsen",
      "title": "Freight Manager ",
      "company": "Riverside Technologies, Inc. (RTI)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 847,
      "name": "lilia fifield",
      "title": "on air host",
      "company": "VIN DI BONA ENTERTAINMENT INC Contract",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 848,
      "name": "jared g.",
      "title": "freelance film critic",
      "company": "Gores Eats Film",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 849,
      "name": "lynda hubbard",
      "title": "archer",
      "company": "amazon skype",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 850,
      "name": "jennifer hall",
      "title": "editor",
      "company": "christian school circle",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 851,
      "name": "ryan kairalla",
      "title": "lawyer",
      "company": "Doral College",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 852,
      "name": "bethany (bep) reeves",
      "title": "pastor",
      "company": "Unity Point Hospital",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 853,
      "name": "angela nuss",
      "title": "commercial real estate broker",
      "company": "Talking Toastmasters",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 854,
      "name": "drew cline",
      "title": "lead pastor",
      "company": "South City Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 855,
      "name": "sterling price burdine",
      "title": "worship and youth ministries leader",
      "company": "New Castle Christian Church Part-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 856,
      "name": "brandon smith",
      "title": "\"the workplace therapist\" - executive coach, author, speaker and podcaster",
      "company": "The Worksmiths",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 857,
      "name": "jessi allen",
      "title": "content creator",
      "company": "OnlyFans",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 858,
      "name": "joseph santangelo",
      "title": "content creator",
      "company": "Santangelo Studios Self-employed",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 859,
      "name": "jason levinson",
      "title": "realtor",
      "company": "Xperience Real Estate",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 860,
      "name": "chad marvin",
      "title": "singer",
      "company": "Olive Vine Recording Company",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 861,
      "name": "james sabata",
      "title": "grant coordinator",
      "company": "Devereux Advanced Behavioral Health Arizona",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 862,
      "name": "amy (hollis) sidoti",
      "title": "executive assistant",
      "company": "Neuchatel Chocolates (Cervione Co.)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 863,
      "name": "sarah sperber",
      "title": "Worship Arts Intern for H2O College Ministries ",
      "company": "Kohl's Department Stores",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 864,
      "name": "megan waters",
      "title": "piano teacher",
      "company": "Messiah United Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 865,
      "name": "elissa sophia metropoulos",
      "title": "coo",
      "company": "Orland Park Theatre Troupe",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 866,
      "name": "joshua donaldson",
      "title": "director",
      "company": "Emporia State University Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 867,
      "name": "logan blackburn",
      "title": "realtor",
      "company": "SwiftOtter, Inc. Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 868,
      "name": "daniel back",
      "title": "director of media",
      "company": "daily fantasy host fix rotogrinder",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 869,
      "name": "b.j. keeton",
      "title": "content creator",
      "company": "Party Pros USA",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 870,
      "name": "sky mathis",
      "title": "caster",
      "company": "Philosophical Minds Podcast Part-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 871,
      "name": "mark lucia",
      "title": "caster",
      "company": "A Nerd Named Mark Podcast Self-employed",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 872,
      "name": "greg bernard phillip, mba",
      "title": "ceo",
      "company": "gregbernardphillip.com",
      "outbound_date": "2021-04-24",
      "interest": "no response"
    },
    {
      "index": 873,
      "name": "francisco oporta, jr., esq.",
      "title": "associate attorney",
      "company": "The Law Offices of Aaron Chenault Full-time",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 874,
      "name": "Sam Courty",
      "title": "Athlete ",
      "company": "Shiplake College",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 875,
      "name": "Jeroen de Hoop",
      "title": "Teacher UEFA C an B CIOS and KNVB, Videoanalist and CEO Winning Mood",
      "company": "CIOS",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 876,
      "name": "matthew bissoon",
      "title": "founder",
      "company": "BysonVideo",
      "outbound_date": "2021-07-12",
      "interest": "no response"
    },
    {
      "index": 877,
      "name": "alana gomez",
      "title": "podcaster",
      "company": "Matheson Museum Internship",
      "outbound_date": "2021-07-06",
      "interest": "no response"
    },
    {
      "index": 878,
      "name": "jessica cabral muchow",
      "title": "worship leader",
      "company": "OC Hit Factory",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 879,
      "name": "brittany mason",
      "title": "director of marketing & international business",
      "company": "My Shipping Containers",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 880,
      "name": "jeremiah wheelersburg",
      "title": "writer / blogger / podcaster/ video",
      "company": "inspector picken college customer inspection international technical association service maintenance building certified home",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 881,
      "name": "amber glus",
      "title": "copywriter",
      "company": "StoryBrand Freelance",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 882,
      "name": "ginger campbell, md",
      "title": "physician",
      "company": "uab medicine university alabama school ipec emergency",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 883,
      "name": "hanna nuss",
      "title": "serial entrepreneur & creator of the death of a dream podcast",
      "company": "Self-employed",
      "outbound_date": "2021-06-23",
      "interest": "response"
    },
    {
      "index": 884,
      "name": "liz twachtman",
      "title": "Communications Manager ",
      "company": "The Thrifty Duckling",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 885,
      "name": "susie dixon",
      "title": "podcaster",
      "company": "CORR Churches Organizing for Racial Reconciliation",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 886,
      "name": "faith kane, m.ed.",
      "title": "data science || content creator || data visualization",
      "company": "visualization science creator content data",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 887,
      "name": "morgan littleford",
      "title": "associate",
      "company": "college and activity sga gamma communication board black hasa central bachelor corporate society union penn player advisory student beta knight",
      "outbound_date": "2021-06-23",
      "interest": "no response"
    },
    {
      "index": 888,
      "name": "leslie michelle mccray",
      "title": "store manager",
      "company": "The Michaels Companies, Inc. Full-time",
      "outbound_date": "2021-03-22",
      "interest": "not interested"
    },
    {
      "index": 889,
      "name": "mark buzan, apr-cae",
      "title": "association executive",
      "company": "Our Executive Director",
      "outbound_date": "2021-04-06",
      "interest": "not interested"
    },
    {
      "index": 890,
      "name": "jeremy menard",
      "title": "manager",
      "company": "HEMI Systems Full-time",
      "outbound_date": "2021-04-20",
      "interest": "not interested"
    },
    {
      "index": 891,
      "name": "sophie de rijk",
      "title": "Postgraduate ",
      "company": "Pieter van Huystee Film",
      "outbound_date": "2021-04-09",
      "interest": "not interested"
    },
    {
      "index": 892,
      "name": "bobbyg griffiths",
      "title": "founder",
      "company": "Time to Teach Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 893,
      "name": "michelle murano",
      "title": "early childhood educator",
      "company": "Bandtec Part-time",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 894,
      "name": "david swanson",
      "title": "realtor",
      "company": "Keller Williams Realty Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 895,
      "name": "marketo christine michel",
      "title": "worship leader",
      "company": "Indiana University South Bend",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 896,
      "name": "eric saar",
      "title": "digital marketer",
      "company": "Elite Hoops Development",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 897,
      "name": "lauren bronston",
      "title": "seo and content marketing specialist",
      "company": "Freelance",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 898,
      "name": "nicole bremner",
      "title": "investor | podcaster | amateur sailor",
      "company": "Sailing Savvy Freelance",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 899,
      "name": "noelle caliguri",
      "title": "food + drink content creator, writer and stylist | i help food companies disseminate mouthwatering content across multiple consumer touch points",
      "company": "www.noellecaliguri.com Self-employed",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 900,
      "name": "jack smith",
      "title": "lead recruiter/account manager| sales division",
      "company": "RuffaloCODY",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 901,
      "name": "sam zavary",
      "title": "ceo & president",
      "company": "sh host make",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 902,
      "name": "matt west",
      "title": "psychologist",
      "company": "Placentia-Yorba Linda Unified School District",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 903,
      "name": "catherine anaya",
      "title": "journalist",
      "company": "state journalism group walter latina and media art valley cb arizona associated host school the board institute academy hli cronkite hispanic circle pres new university latino my national television leadership silver home trailblazer science boston usc broadcaster journalist association director marathon",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 904,
      "name": "marley freygang",
      "title": "actor",
      "company": "Confession of A Wannabe It Girl Self-employed",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 905,
      "name": "thomas shaggy jr",
      "title": "instructor",
      "company": "Roy's Hawaiian Fusion Cuisine Full-time",
      "outbound_date": "2021-06-24",
      "interest": "no response"
    },
    {
      "index": 906,
      "name": "kan d",
      "title": "caster",
      "company": "Self-employed",
      "outbound_date": "2021-06-22",
      "interest": "no response"
    },
    {
      "index": 907,
      "name": "robby sabo",
      "title": "founder, credentialed new york jets content creator",
      "company": "ClutchPoints",
      "outbound_date": "2021-07-14",
      "interest": "no response"
    },
    {
      "index": 908,
      "name": "deborah d.",
      "title": "Fitness and Dance Studio",
      "company": "Worship Arts Conservatory Trainee",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 909,
      "name": "qiana miles (younge)",
      "title": "Festival of The Lion King ",
      "company": "Universal Studios",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 910,
      "name": "richard walker",
      "title": "managing director",
      "company": "the food WAREHOUSE",
      "outbound_date": "2021-03-12",
      "interest": "no response"
    },
    {
      "index": 911,
      "name": "billy ash",
      "title": "Leading Digital and Affiliate Marketing ",
      "company": "Saint Leo University",
      "outbound_date": "2021-04-28",
      "interest": "no response"
    },
    {
      "index": 912,
      "name": "benjie guy",
      "title": "broadcast journalist",
      "company": "National Trust",
      "outbound_date": "2021-04-05",
      "interest": "no response"
    },
    {
      "index": 913,
      "name": "wifi john",
      "title": "Film, Television, New Media, Video Marketing For Entrepreneurs",
      "company": "started showtime network",
      "outbound_date": "2021-04-08",
      "interest": "no response"
    },
    {
      "index": 914,
      "name": "kristen mcdonald-brown, sphr",
      "title": "*hr leader, career coach, recruiter* blog & podcast @ thebossysauce.com coaching & courses @ yourbestmasterclass.com",
      "company": "frog",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 915,
      "name": "missy (clyne stoddard) diaz",
      "title": "senior writer/content creator",
      "company": "Newsmax Media, Inc.",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 916,
      "name": "mary eschen",
      "title": "caster",
      "company": "Self-employed",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 917,
      "name": "marcie muensterman",
      "title": "cabi stylist",
      "company": "Luxury Travel by Marcie, LLC Self-employed",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 918,
      "name": "tim johnson",
      "title": "worship leader",
      "company": "Tim Johnson",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 919,
      "name": "michael cratty",
      "title": "broadcaster",
      "company": "My Hockey Live and 95.9 WATD FM Part-time",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 920,
      "name": "hailey houser",
      "title": "fitness consultant",
      "company": "Top Fitness Full-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 921,
      "name": "josh sanchez",
      "title": "college graduate \ud83d\udc68\ud83c\udffc\u200d\ud83c\udf93 digital media content creator \ud83c\udfac podcaster \ud83c\udfa7 on anchor.fm \ud83c\udfa4",
      "company": "apple podcast cabrini university radio girl delaware club swoop",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 922,
      "name": "dylan ewing",
      "title": "entrepreneur",
      "company": "American Recourse",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 923,
      "name": "michael donohue",
      "title": "student",
      "company": "journalism walter school cronkite",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 924,
      "name": "andre morris",
      "title": "keyboardist",
      "company": "Wailing Souls",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 925,
      "name": "kaitlin hartt",
      "title": "substitute teacher",
      "company": "national university microsoft american",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 926,
      "name": "carrie o'toole",
      "title": "life coach",
      "company": "Carrie O'Toole Ministries",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 927,
      "name": "Courtney M. Winterbauer",
      "title": "Professional Athlete ",
      "company": "Sports Basement",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 928,
      "name": "Alice Witteveen",
      "title": "Les Mills US",
      "company": "Les Mills US Trading",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 929,
      "name": "sharilynn mcintosh",
      "title": "founder",
      "company": "Roxbury Community College",
      "outbound_date": "2021-04-19",
      "interest": "no response"
    },
    {
      "index": 930,
      "name": "dimitar chatleski",
      "title": "accounts payable analyst",
      "company": "Macedonia2025",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 931,
      "name": "lorie mccarthy",
      "title": "svp",
      "company": "BBDO",
      "outbound_date": "2021-03-03",
      "interest": "not interested"
    },
    {
      "index": 932,
      "name": "musa sise",
      "title": "--",
      "company": "Africell Group",
      "outbound_date": "2021-03-12",
      "interest": "no response"
    },
    {
      "index": 933,
      "name": "ankur sunaar (ankur sunaar) (ankur rastogi)",
      "title": "owner",
      "company": "PACTORN Self-employed",
      "outbound_date": "2021-04-19",
      "interest": "no response"
    },
    {
      "index": 934,
      "name": "charles owens ii",
      "title": "O",
      "company": "Shiloh Baptist Church Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 935,
      "name": "akshay manchale sridhar",
      "title": "software engineer",
      "company": "Salesforce",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 936,
      "name": "kevin jones",
      "title": "Film & Video Editor",
      "company": "Life After Life",
      "outbound_date": "2021-03-22",
      "interest": "no response"
    },
    {
      "index": 937,
      "name": "daniel james",
      "title": "content creator",
      "company": "Dorset Film & Television Network Part-time",
      "outbound_date": "2021-07-13",
      "interest": "yes call booked"
    },
    {
      "index": 938,
      "name": "vishal vasanji",
      "title": "co-founder & ceo",
      "company": "healthcare",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 939,
      "name": "gonzalo pe\u00f1a",
      "title": "innovation creative / podcaster",
      "company": "google",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 940,
      "name": "zoe g.",
      "title": "library analytics research fellow | digital content creator",
      "company": "Oakland University Part-time",
      "outbound_date": "2021-07-09",
      "interest": "no response"
    },
    {
      "index": 941,
      "name": "william mahan",
      "title": "store manager",
      "company": "USPTA & PTR",
      "outbound_date": "2021-06-09",
      "interest": "no response"
    },
    {
      "index": 942,
      "name": "bret testerman",
      "title": "Jesus focused!",
      "company": "Worship Coach, Inc",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 943,
      "name": "chris riddle",
      "title": "Worship Leader, CKY Worship Coach ",
      "company": "Crossroads Church (Cincinnati, OH)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 944,
      "name": "bobby coon",
      "title": "marketing assistant",
      "company": "Pulling Tarp Podcast, Stove Leg Media Self-employed",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 945,
      "name": "romani verma",
      "title": "coach",
      "company": "Mumbai Angels Network",
      "outbound_date": "2021-04-21",
      "interest": "yes call booked"
    },
    {
      "index": 946,
      "name": "stuart tarnowski",
      "title": "account executive",
      "company": "ZipRecruiter",
      "outbound_date": "2021-03-01",
      "interest": "not interested"
    },
    {
      "index": 947,
      "name": "chrissy kirkman",
      "title": "program director",
      "company": "Hello Creative Marketing Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 948,
      "name": "brian cardarelli",
      "title": "data analytics major",
      "company": "Cardarelli Consulting LLC",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 949,
      "name": "Eileen Jacoutot Lewis",
      "title": "Corporate Account Manager, Diagnostics and Genomics Group",
      "company": "Agilent Technologies",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 950,
      "name": "milciades willmore",
      "title": "business consultant",
      "company": "SOLYDES Consulting",
      "outbound_date": "2021-05-04",
      "interest": "no response"
    },
    {
      "index": 951,
      "name": "daryl perry",
      "title": "Marketing Strategy",
      "company": "The Daryl Perry Podcast",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 952,
      "name": "ryan campbell",
      "title": "senior right of way agent. i am from a family of landowners, experienced with land issues. some of which can not be taught. so, i know how to approach issues in a manner th",
      "company": "TDCJ",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 953,
      "name": "amanda miuccio",
      "title": "worship leader",
      "company": "Calvary Community Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 954,
      "name": "grant grigorian",
      "title": "Building tools for marketers.",
      "company": "Highway Education Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 955,
      "name": "kim o'hara",
      "title": "coach",
      "company": "O'Hara/Klein",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 956,
      "name": "joe thorn",
      "title": "lead pastor",
      "company": "Doctrine and Devotion",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 957,
      "name": "jessica fernando",
      "title": "performer",
      "company": "One Weird Chick Self-employed",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 958,
      "name": "brian palmer",
      "title": "worship leader",
      "company": "Meridian United Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 959,
      "name": "laporsche thomas",
      "title": "digital talent/ content producer & content creator",
      "company": "Grady Newsource",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 960,
      "name": "matt pavledakes",
      "title": "content strategist and planner i freelance writer and editor i b2b tech, fintech, proptech i self-employed",
      "company": "Self-Employed",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 961,
      "name": "belinda espinoza",
      "title": "educator and digital content creator",
      "company": "Opportunities For Learning Full-time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 962,
      "name": "kerry leeders moll, edd",
      "title": "host",
      "company": "Stand for Children",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 963,
      "name": "johnny gwin - creative - podcaster - marketing consultant",
      "title": "caster",
      "company": "Match, Inc",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 964,
      "name": "stephanie l. jones",
      "title": "SLG Grants BDM ",
      "company": "Amazon Web Services (AWS) Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 965,
      "name": "cassie brandi",
      "title": "vocalist",
      "company": "YMCA of Metropolitan Los Angeles",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 966,
      "name": "nate brown",
      "title": "buyer",
      "company": "Redemption Hill Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 967,
      "name": "hope stagg",
      "title": "cte teacher",
      "company": "ROOTS Mind Body",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 968,
      "name": "thomas herbert kokholm",
      "title": "sales operations",
      "company": "Unisport Denmark",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 969,
      "name": "mariell sabado",
      "title": "caster",
      "company": "Illinois College of Optometry",
      "outbound_date": "2021-06-13",
      "interest": "pending"
    },
    {
      "index": 970,
      "name": "chris ramirez",
      "title": "graphic designer",
      "company": "Staples Part-time",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 971,
      "name": "michael potter",
      "title": "notavailable",
      "company": "ESC!Cast Network (For Mac Eyes Only)",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 972,
      "name": "amanda selogie",
      "title": "lawyer",
      "company": "Whittier Law Journal of Child & Family Advocacy",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 973,
      "name": "rachel harrell",
      "title": "content intern @ the conversationalist | co-vp of webuild @ wise | personal wellness journalist",
      "company": "university northeastern",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 974,
      "name": "stephanie zheng",
      "title": "founder of mount lai + collection of vials",
      "company": "Mount Lai",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 975,
      "name": "daniel pike",
      "title": "sports broadcaster",
      "company": "Good Takes Only Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 976,
      "name": "joy portinga",
      "title": "studied communication and business",
      "company": "Southlands Christian Schools Part-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 977,
      "name": "reginald robinson",
      "title": "owner",
      "company": "Kroger",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 978,
      "name": "mahmud elhalwagi",
      "title": "co-founder",
      "company": "Inbound Planet",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 979,
      "name": "josh chrenko",
      "title": "founder",
      "company": "Smallie Talk Podcast Freelance",
      "outbound_date": "2021-07-06",
      "interest": "no response"
    },
    {
      "index": 980,
      "name": "howard pitre",
      "title": "president/ceo of the \"jessica marie pitre foundation\"",
      "company": "jessica marie pitre the foundation",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 981,
      "name": "penny bonawitz",
      "title": "junior civitan florida district chairperson, co-podcaster",
      "company": "Civitan International",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 982,
      "name": "andrew m. barker mba cpa \u2714",
      "title": "podcaster",
      "company": "Privately held - family owned international manufacturing & distribution company (B2B)",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 983,
      "name": "atlin v.",
      "title": "office manager",
      "company": "Minority Reportz",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 984,
      "name": "amy kathleen smith",
      "title": "consultant",
      "company": "Collective Light Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 985,
      "name": "jp steinberg",
      "title": "owner",
      "company": "Direct Student Allegiance Full-time",
      "outbound_date": "2021-07-07",
      "interest": "pending"
    },
    {
      "index": 986,
      "name": "andrew nation",
      "title": "instructional technology specialist",
      "company": "Luverne High School",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 987,
      "name": "alexis hale",
      "title": "worship leader",
      "company": "a new Medical Pregnancy Help Mobile Center",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 988,
      "name": "jay artale",
      "title": "author",
      "company": "Roving Jay",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 989,
      "name": "jeremy clifton",
      "title": "assistant manager",
      "company": "The Way Church Oakland",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 990,
      "name": "joey montano",
      "title": "consultant",
      "company": "SmashMetrics",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 991,
      "name": "eric floyd",
      "title": "entertainer",
      "company": "Southern Gaming & Destinations Magazine Part-time",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 992,
      "name": "victor m.",
      "title": "html | css | javascript | python | automation | ecommerce",
      "company": "javascript cs ecommerce python automation",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 993,
      "name": "dion mcneeley",
      "title": "content creator",
      "company": "YouTube",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 994,
      "name": "fiyin obayan videographer, podcast host and speaker",
      "title": "i empower entrepreneurs to present their personal brands virtually: video content, 360 vr content and virtual events.",
      "company": "Okiki Consulting",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 995,
      "name": "susanne pacher, mba",
      "title": "entrepreneur, real estate investor, financing expert, licensed mortgage professional, online publisher, lion",
      "company": "Language Services",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 996,
      "name": "akia thomas",
      "title": "creative director / fashion content creator",
      "company": "REVOLVE Full-time",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 997,
      "name": "tom greenhut",
      "title": "executive producer/showrunner",
      "company": "Greenhut Ent., Inc.",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 998,
      "name": "jimmy lim",
      "title": "musician",
      "company": "The Advent School Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 999,
      "name": "lisa mcnamara",
      "title": "caster",
      "company": "and real estate management facilitie",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1000,
      "name": "david wall",
      "title": "video editor",
      "company": "Steve & Kate's Camp",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 1001,
      "name": "staci martin",
      "title": "living",
      "company": "college university arizona public health",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1002,
      "name": "marisa radha weppner, ma, eryt, cc",
      "title": "ketamine therapist",
      "company": "Boise Ketamine Clinic Contract",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1003,
      "name": "allison marschean",
      "title": "podcaster",
      "company": "Doc Talk: Venturing Beyond a Master\u2019s",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1004,
      "name": "eric olsen",
      "title": "illustrator, graphic designer, storyboard artist",
      "company": "Eric Olsen Illustrations",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1005,
      "name": "gregory behrendt",
      "title": "author",
      "company": "Be True And Mighty Inc.",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1006,
      "name": "gavin s.",
      "title": "notavailable",
      "company": "tribe arapaho cheyenne",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 1007,
      "name": "marq hicks",
      "title": "caster",
      "company": "Clarke University",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1008,
      "name": "kevin fitzpatrick",
      "title": "e marketing specialist",
      "company": "Pitcher List Freelance",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1009,
      "name": "gus light",
      "title": "equity research analyst",
      "company": "C1 Partners",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1010,
      "name": "mike simmel",
      "title": "co-founder",
      "company": "Harlem Wizards Entertainment Basketball",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 1011,
      "name": "lucy montana",
      "title": "manager",
      "company": "Neighbourhood Pharmacy Association of Canada",
      "outbound_date": "2021-04-22",
      "interest": "no response"
    },
    {
      "index": 1012,
      "name": "adam morris",
      "title": "Worship Leader ",
      "company": "Owensboro Insulators Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1013,
      "name": "arya marwaha",
      "title": "entrepreneur",
      "company": "enterprise education essential",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 1014,
      "name": "Patrick Wilson",
      "title": "Head Coach and Founder of PW Training",
      "company": "Royal Racing Football Club Montegnee, Integral Dac Gyor",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1015,
      "name": "sue dykstra",
      "title": "Worship Leader ",
      "company": "Northpoint Corona",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1016,
      "name": "euridice benamu (euri)",
      "title": "Interpreter Coordinator/Recruiter ",
      "company": "Xtra Mile Interpreting LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1017,
      "name": "woodie landeros",
      "title": "i create stuff for a living.",
      "company": "Marcus & Millichap",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1018,
      "name": "vilma llaguno",
      "title": "agency director",
      "company": "Dream Out Loud Podcast",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1019,
      "name": "alex ibarra",
      "title": "vice president of alpha tau omega fraternity",
      "company": "kids first sports saftey Part-time",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1020,
      "name": "jared payne",
      "title": "hospice chaplain",
      "company": "Christian Meditation Podcast",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 1021,
      "name": "robert orndoff",
      "title": "president",
      "company": "Celebrate Recovery",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1022,
      "name": "pamela rogers",
      "title": "children's librarian",
      "company": "Buttons & Figs",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1023,
      "name": "stephanie lee",
      "title": "host",
      "company": "state college iona university new york suny",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 1024,
      "name": "brian adigwu",
      "title": "freelance writer",
      "company": "State of Arizona",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1025,
      "name": "harrison liao",
      "title": "head chef",
      "company": "analysi northwestern university strong research and leadership media database data social",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 1026,
      "name": "sylvain paslier",
      "title": "ecommerce",
      "company": "International Rescue Committee",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1027,
      "name": "trevor uren",
      "title": "founder",
      "company": "Pro Sports Extra",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1028,
      "name": "orit b.",
      "title": "co-founder",
      "company": "Amigas In Business Self-employed",
      "outbound_date": "2021-06-28",
      "interest": "no response"
    },
    {
      "index": 1029,
      "name": "susan owens",
      "title": "youtube content creator",
      "company": "Van Tales: stories from the road",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1030,
      "name": "darrell stevens",
      "title": "video editor / content creator / media production manager",
      "company": "Harmonix Media",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1031,
      "name": "gary sommerville ph.d.",
      "title": "senior research scientist",
      "company": "Kapa Biosystems",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1032,
      "name": "julia relova",
      "title": "program coordinator",
      "company": "college northwestern university leadership creative enterprise for m davidson",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1033,
      "name": "kurt towler",
      "title": "caster",
      "company": "Cook-Hurlbert",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1034,
      "name": "cody dericks",
      "title": "writer",
      "company": "Halloweeners: A Horror Movie Podcast",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1035,
      "name": "steve duroseau, mba",
      "title": "creative director",
      "company": "diamond google exec",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1036,
      "name": "john patrick coan",
      "title": "podcaster with hey riddle riddle",
      "company": "Litera Microsystems",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1037,
      "name": "grant milliren",
      "title": "singer",
      "company": "illinoi state sound he university",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1038,
      "name": "joan niesen",
      "title": "newsletter writer",
      "company": "Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1039,
      "name": "Rebecca Klapman",
      "title": "Senior Program Director ",
      "company": "Greater Naples YMCA",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 1040,
      "name": "geof wheelwright",
      "title": "host of the arm viewpoints podcast, writer and consultant.",
      "company": "Mr. Content Strategy",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1041,
      "name": "madison r.",
      "title": "digital marketing manager",
      "company": "K&M - Digital Media Consulting Contract",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1042,
      "name": "gary jaudon",
      "title": "Field Service Tech",
      "company": "Flag Lake Baptist Church (Retired) and Now Leading Worship!",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1043,
      "name": "tim nienhuis",
      "title": "Songwriter/Composer ",
      "company": "Harvest Christian Fellowship",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1044,
      "name": "adam hatley",
      "title": "owner",
      "company": "knox school hard",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1045,
      "name": "damien shafer",
      "title": "loan officer",
      "company": "Faith Family Church - Fayette MO",
      "outbound_date": "2021-05-24",
      "interest": "no response"
    },
    {
      "index": 1046,
      "name": "graham walmsley, md phd",
      "title": "investor",
      "company": "Olema Oncology",
      "outbound_date": "2021-05-12",
      "interest": "no response"
    },
    {
      "index": 1047,
      "name": "melissa detweiler",
      "title": "medical",
      "company": "Petco Full-time",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1048,
      "name": "jake hornberger",
      "title": "content writer",
      "company": "The Talk Bazaar Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1049,
      "name": "ian gonzalez",
      "title": "small business owner of last lap cornerstore a running specialty store.",
      "company": "Nike Freelance",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1050,
      "name": "yasir dilnawaz khan",
      "title": "outreach coordinator",
      "company": "UN Sustainable Development Solutions Network \u2013 Youth",
      "outbound_date": "2021-04-25",
      "interest": "no response"
    },
    {
      "index": 1051,
      "name": "stephen fiske",
      "title": "Manager, Video Education Group ",
      "company": "HubSpot",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 1052,
      "name": "irene mpatwa",
      "title": "Freelance Journalist ",
      "company": "KLNT",
      "outbound_date": "2021-04-26",
      "interest": "not interested"
    },
    {
      "index": 1053,
      "name": "khaled noaaman",
      "title": "development manager",
      "company": "National Company For Exhibition And International Conference",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 1054,
      "name": "tyler mcknight",
      "title": "digital strategist",
      "company": "Mockingbird Marketing Full-time",
      "outbound_date": "2021-05-29",
      "interest": "no response"
    },
    {
      "index": 1055,
      "name": "dr. mark vander meer",
      "title": "executive director",
      "company": "Healing Communities West Michigan",
      "outbound_date": "2021-05-19",
      "interest": "no response"
    },
    {
      "index": 1056,
      "name": "sahar amjad (she/her)",
      "title": "communications manager",
      "company": "u army bt",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1057,
      "name": "rick walker",
      "title": "Filmmaker | Radio Personality | Writer | Marketer",
      "company": "Cumulus Media",
      "outbound_date": "2021-03-15",
      "interest": "no response"
    },
    {
      "index": 1058,
      "name": "june brockmeyer",
      "title": "worship leader",
      "company": "tv new weather radio",
      "outbound_date": "2021-06-03",
      "interest": "no response"
    },
    {
      "index": 1059,
      "name": "brandon ortiz",
      "title": "basketball trainer",
      "company": "Biola University Part-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1060,
      "name": "ana verzone",
      "title": "life coach",
      "company": "university hopkin freedom school john",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1061,
      "name": "aaron lamar dennis",
      "title": "voice actor/podcaster/narrator",
      "company": "Idiom Talent Agency",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1062,
      "name": "tanner guss",
      "title": "caster",
      "company": "Freelance",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1063,
      "name": "james white",
      "title": "Business Monitoring ",
      "company": "JC III",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1064,
      "name": "vakhtang vepkhvadze",
      "title": "internal audit intern",
      "company": "CIMA Temporary",
      "outbound_date": "2021-07-14",
      "interest": "response"
    },
    {
      "index": 1065,
      "name": "christopher j valin",
      "title": "author",
      "company": "PopSyndicate.com",
      "outbound_date": "2021-04-28",
      "interest": "not interested"
    },
    {
      "index": 1066,
      "name": "kurt kelley",
      "title": "community outreach specialist",
      "company": "Human Services Organization",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1067,
      "name": "john grooters",
      "title": "writer",
      "company": "Ferocious Films",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1068,
      "name": "justin thibault",
      "title": "business strategist",
      "company": "Podbean Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1069,
      "name": "oj hernandez",
      "title": "Religious Institutions Professional",
      "company": "ICP Clermont",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1070,
      "name": "anya steinberg",
      "title": "student",
      "company": "Asian American Organizing Project Part-time",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1071,
      "name": "ben goldstein",
      "title": "caster",
      "company": "Beit T'Shuvah",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1072,
      "name": "robin stebbins",
      "title": "registered nurse",
      "company": "WildSky Retreats robinstebbins.com",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1073,
      "name": "george feijoo, mba, cpcu",
      "title": "consultant",
      "company": "First Baptist Church of Tallahassee",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1074,
      "name": "rob lewis",
      "title": "builder",
      "company": "Expedia Group",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1075,
      "name": "jeremy hoekstra",
      "title": "musician",
      "company": "Christ Memorial Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1076,
      "name": "caroline o'connor",
      "title": "licensed content creator",
      "company": "Dickinson College",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1077,
      "name": "josh burns",
      "title": "database administrator, partnered youtube content creator, & sql server freelancer",
      "company": "Upwork Freelance",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1078,
      "name": "evan carmichael",
      "title": "\ud83d\udcda speaker / author / introvert \ud83c\udf0e mission: solve world's #1 problem \ud83d\ude80 > 3m youtube subs \ud83c\udfc6 forbes 40 social marketers \ud83c\udfa4 inc 100 leadership speakers",
      "company": "Northern Crown Capital",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1079,
      "name": "carla (de klerk) lynn",
      "title": "content creator",
      "company": "IC Thrive Full-time",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1080,
      "name": "mitch winsett",
      "title": "worship leader",
      "company": "Freelance Musician",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1081,
      "name": "patrick sinclair mayes",
      "title": "senior pastor",
      "company": "USAA",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1082,
      "name": "cody hawley",
      "title": "content producer",
      "company": "Kutztown University of Pennsylvania Part-time",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1083,
      "name": "cody delmendo",
      "title": "communications coordinator",
      "company": "Si Full-time",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 1084,
      "name": "taylor barstow",
      "title": "designer",
      "company": "Call One, Incorporated Full-time",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1085,
      "name": "cameron tagge",
      "title": "caster",
      "company": "office microsoft",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 1086,
      "name": "sabrina ricci",
      "title": "connecting people and enabling teams to work faster and more efficiently | writing",
      "company": "mobi microsoft google epub",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1087,
      "name": "julie hanson",
      "title": "podcaster",
      "company": "Inner-Evolution Counseling, Coaching & Yoga Self-employed",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1088,
      "name": "jenn vanhekken",
      "title": "caster",
      "company": "JVH Coaching",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1089,
      "name": "aaron hale",
      "title": "model",
      "company": "Pornhub",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1090,
      "name": "jalisa dove",
      "title": "caster",
      "company": "carolina state electronic north university t media a raleigh",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1091,
      "name": "phaneendra c.",
      "title": "delivery consultant",
      "company": "AbbVie",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1092,
      "name": "rev kenneth blanchard",
      "title": "public affairs",
      "company": "US Army Full-time",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1093,
      "name": "heather e. johnson",
      "title": "passionate developer and teacher of data visualizations",
      "company": "Salesforce Contract",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1094,
      "name": "marco derhy",
      "title": "founder | ceo",
      "company": "Derhy Enterprises, Inc.",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1095,
      "name": "laura lyons",
      "title": "World Changer",
      "company": "Armstrong Display Concepts, Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1096,
      "name": "tim price",
      "title": "Worship Leader ",
      "company": "Troy United Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1097,
      "name": "collin jackson",
      "title": "Mosaic Students Pastor",
      "company": "Field Agent",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1098,
      "name": "peder eide",
      "title": "Campus Pastor ",
      "company": "Eide Productions",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1099,
      "name": "melissa waskiewicz",
      "title": "Systems Admin and Cider Certified Professional ",
      "company": "Mendota Heights United Church of Christ",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1100,
      "name": "bill williams",
      "title": "--",
      "company": "Interim worship leader",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1101,
      "name": "micah johnson, mba",
      "title": "Senior Salesforce Developer ",
      "company": "Prime Digital Academy",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1102,
      "name": "Jessica Fendon",
      "title": "Fitness Instructor ",
      "company": "FIT4MOM",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 1103,
      "name": "jayson luber",
      "title": "reporter",
      "company": "Various Radio Stations in Denver",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 1104,
      "name": "jason dibelius",
      "title": "podcaster",
      "company": "The \"Option\" Podcast",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1105,
      "name": "justine harman",
      "title": "journalist and podcaster (o.c. swingers",
      "company": "39Stories, Inc. Full-time",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1106,
      "name": "greg asdourian",
      "title": "comedian/writer/filmmaker/actor/podcaster",
      "company": "Whelan Security",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1107,
      "name": "coppelia acevedo",
      "title": "Laughing thru life",
      "company": "Second Baptist Church, Houston, TX",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1108,
      "name": "johnny sierra",
      "title": "writer",
      "company": "Nutrex Research",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1109,
      "name": "naisa wong",
      "title": "director",
      "company": "Private Consulting",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1110,
      "name": "chris adkins",
      "title": "labor specialist",
      "company": "Lowes Home Improvement",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1111,
      "name": "danny van leeuwen",
      "title": "giver",
      "company": "Patient-Centered Outcomes Research Institute (PCORI)",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1112,
      "name": "rob reed",
      "title": "civil litigation attorney",
      "company": "LIFEhouse Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1113,
      "name": "basiliso moreno, msw",
      "title": "school social worker",
      "company": "Appoquinimink School District Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1114,
      "name": "shin kato",
      "title": "principal product manager",
      "company": "Platinum Management (NY) LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1115,
      "name": "melissa ritz",
      "title": "executive assistant",
      "company": "ROTHMAN BRECHER EHRICH LIVINGSTON",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 1116,
      "name": "haneef r jordan",
      "title": "caster",
      "company": "iHeartRadio Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1117,
      "name": "steve marantz",
      "title": "\"citizen akoy: basketball and the making of a south sudanese american\"",
      "company": "bronx ray story and espn herald a sueno center original lindo trenton nebraska omaha fenway sugar eoe school globe the caesar rhythm star central hope pres university new entertainment racial kc basketball boston divide high boy sporting time inkwater",
      "outbound_date": "2021-07-07",
      "interest": "pending"
    },
    {
      "index": 1118,
      "name": "robert gillette",
      "title": "podcaster",
      "company": "Endsight",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1119,
      "name": "charlotte harland",
      "title": "content creator",
      "company": "The Leith Agency",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1120,
      "name": "thomas frank",
      "title": "youtuber",
      "company": "Radiant Web Design",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1121,
      "name": "suzka collins",
      "title": "caster",
      "company": "PAINTER",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 1122,
      "name": "david ritter",
      "title": "missionary",
      "company": "Ritter Household",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1123,
      "name": "thomas winterstein",
      "title": "worship leader",
      "company": "University Lutheran Chapel",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1124,
      "name": "rana f.",
      "title": "ceo",
      "company": "ZEIKH Technologies",
      "outbound_date": "2021-04-15",
      "interest": "no response"
    },
    {
      "index": 1125,
      "name": "max camilleri",
      "title": "business development executive at homeflo",
      "company": "Maltese Football Blog Freelance",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1126,
      "name": "kendell bell sr",
      "title": "music production",
      "company": "The Tough Get Growing Self-employed",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1127,
      "name": "paul j. parocua",
      "title": "associate merchant",
      "company": "Jamba Juice",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1128,
      "name": "erika ehmsen (she/her)",
      "title": "systems, workflow & project management | strategic ops | comms | editorial content creator & manager | managing editor",
      "company": "e2 Editorial & Strategic Operations",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1129,
      "name": "carl hill jr.",
      "title": "founder",
      "company": "gallery depauw university bar art",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1130,
      "name": "amy mccoy",
      "title": "social media content specialist",
      "company": "Stitch Fix",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1131,
      "name": "gregory swain",
      "title": "painter",
      "company": "PAINTBALL EXPLOSION Seasonal",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1132,
      "name": "carrie moulder",
      "title": "marketing and communications specialist",
      "company": "Big Couch Self-employed",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1133,
      "name": "john mcdermott",
      "title": "customer service agent",
      "company": "Windy City Aviation",
      "outbound_date": "2021-07-04",
      "interest": "pending"
    },
    {
      "index": 1134,
      "name": "calvin miller harbachuk",
      "title": "manager",
      "company": "Camp Einstein Part-time",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1135,
      "name": "kim hutchinson",
      "title": "caster",
      "company": "All Write in Sin City",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1136,
      "name": "shereen macklin",
      "title": "life coach",
      "company": "mfa drama studio university actor school pace",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1137,
      "name": "camille harvey, mba, ma",
      "title": "communications | higher education | leadership",
      "company": "leadership communication education higher",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1138,
      "name": "tom allen",
      "title": "founder of the ai journal | ai enthusiast | content marketer | futurist | virtual event host | panel facilitator and chair | empowering brands to have a voice | love watching & helping people become exceptional!",
      "company": "The AI Journal",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 1139,
      "name": "kristina pereckaite",
      "title": "managing director",
      "company": "PLATF9RM",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1140,
      "name": "alex horvath",
      "title": "freelance writer & online content creator",
      "company": "Self-Employed Freelance",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1141,
      "name": "steven goertzen, mba",
      "title": "president",
      "company": "React Hockey Development Inc.",
      "outbound_date": "2021-04-08",
      "interest": "no response"
    },
    {
      "index": 1142,
      "name": "danny g",
      "title": "Singer/Songwriter/Worship Leader",
      "company": "NewCity Presbyterian Assembly - Parramore",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1143,
      "name": "elizabeth hunnicutt summers",
      "title": "Associate Worship Pastor ",
      "company": "Eagle Brook Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1144,
      "name": "brian ross tanning",
      "title": "Insurance - Independent Adjuster",
      "company": "Minnesota Department of Commerce",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1145,
      "name": "dr. joe snyder",
      "title": "Doctor of Chiropractic",
      "company": "Cup of Joe with Dr. Joe",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1146,
      "name": "andy korb",
      "title": "worship leader",
      "company": "TImberline Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1147,
      "name": "bryan zamora",
      "title": "podcaster (self-employed)",
      "company": "CSULB University Police",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1148,
      "name": "amanda jackson green",
      "title": "writer",
      "company": "The University of Texas at San Antonio",
      "outbound_date": "2021-04-13",
      "interest": "not interested"
    },
    {
      "index": 1149,
      "name": "jennifer berkshire",
      "title": "writer",
      "company": "studie college boston berkshire labor umas amherst",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1150,
      "name": "david brady",
      "title": "Admissions Representative ",
      "company": "Hope College",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1151,
      "name": "flavilla fongang",
      "title": "md, brand strategist, author, international keynote speaker, bbc brand advisor, founder of tla - black women in tech & tech brains talk podcast host",
      "company": "BRiM (Black Representation in Marketing)",
      "outbound_date": "2021-07-15",
      "interest": "not interested"
    },
    {
      "index": 1152,
      "name": "brittany lillie",
      "title": "marketing intern",
      "company": "WorkSuites",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 1153,
      "name": "joseph medina",
      "title": "director of recruitment services",
      "company": "HR Advantage Group Freelance",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1154,
      "name": "sabrina yates",
      "title": "senior mentor",
      "company": "harvard command university oxford education the",
      "outbound_date": "2021-07-07",
      "interest": "pending"
    },
    {
      "index": 1155,
      "name": "chad williams",
      "title": "promotions and social media advisor",
      "company": "Carter Express, Inc.",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1156,
      "name": "shawn hymel",
      "title": "technology marketing strategist, advisor, and content creator",
      "company": "Skal Risa, LLC",
      "outbound_date": "2021-07-14",
      "interest": "no response"
    },
    {
      "index": 1157,
      "name": "ryan vandenabeele",
      "title": "director of marketing",
      "company": "Hanson Marine Properties Inc Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1158,
      "name": "candra oakes-niswanger",
      "title": "singer",
      "company": "LifeStyle Real Estate Firm",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1159,
      "name": "uana j. mari",
      "title": "caster",
      "company": "The DreamWerks Podcast Self-employed",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 1160,
      "name": "gabby scott",
      "title": "caster",
      "company": "COMITE olimpico de Puerto Rico Full-time",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 1161,
      "name": "damon covert",
      "title": "Principle 8",
      "company": "Principle 8 Productions and Publishing",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1162,
      "name": "marisa bruch",
      "title": "digital marketing & content creator",
      "company": "University of Calgary",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1163,
      "name": "faith dunsterville",
      "title": "engagement manager",
      "company": "Starbucks",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1164,
      "name": "ashley wai'olu moore",
      "title": "minister",
      "company": "Grace Evangelical Lutheran Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1165,
      "name": "bradley w.",
      "title": "caster",
      "company": "Bank of the Ozarks",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1166,
      "name": "pepi sappal",
      "title": "content creator, writer, editor. founder & director, fair play talks.",
      "company": "Fair Play Talks",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1167,
      "name": "jessii vee",
      "title": "content creator (4 million followers)",
      "company": "TikTok",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1168,
      "name": "bill lynch",
      "title": "coach/mentor and podcast host",
      "company": "agency farmer naifa insurance",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1169,
      "name": "lilli ferry ellis",
      "title": "content strategist",
      "company": "EFCA Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1170,
      "name": "jeffery honchell",
      "title": "business account executive",
      "company": "MetroNet Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1171,
      "name": "mehmet a.",
      "title": "project manager",
      "company": "magenta",
      "outbound_date": "2021-03-17",
      "interest": "no response"
    },
    {
      "index": 1172,
      "name": "arthur johnson",
      "title": "freelance writer",
      "company": "THE BLACK ONES Full-time",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1173,
      "name": "julie (rapp) deem",
      "title": "caster",
      "company": "YMCA of the USA",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 1174,
      "name": "ashlen blythe",
      "title": "sales consultant",
      "company": "All american alarms",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1175,
      "name": "anthony napoli",
      "title": "lecturer",
      "company": "Los Angeles Valley College",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1176,
      "name": "pamela davis",
      "title": "teller",
      "company": "The Well Done Life Podcast Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1177,
      "name": "jan obrien",
      "title": "co-founder",
      "company": "license team nv real estate",
      "outbound_date": "2021-06-13",
      "interest": "pending"
    },
    {
      "index": 1178,
      "name": "david finch",
      "title": "co-founder of gifts tlc, content creator, philanthropist, and family man.",
      "company": "Johnson County Community College",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1179,
      "name": "miles r.",
      "title": "software engineer",
      "company": "First Robotics Team 4106: Supposable Thumbs",
      "outbound_date": "2021-05-24",
      "interest": "irrelevant"
    },
    {
      "index": 1180,
      "name": "kasturi banerjee, phd (she/her)",
      "title": "translational scientist i founder i clinical development i project manager i research coordinator i immunotherapy i flow cytometry i podcaster i traveler i let's connect",
      "company": "Stony Brook Medicine",
      "outbound_date": "2021-07-16",
      "interest": "no response"
    },
    {
      "index": 1181,
      "name": "davis patton",
      "title": "Salt Company Worship Leader ",
      "company": "Okoboji Lutheran Bible Camp",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1182,
      "name": "joe mcclellan",
      "title": "XP | Worship Leader ",
      "company": "The Point Church - Elberta",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1183,
      "name": "kevin straine",
      "title": "Music Professional/Artist",
      "company": "First Baptist Church of Riverside",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1184,
      "name": "phil tarver",
      "title": "Senior Pastor/Worship Leader ",
      "company": "United Faith Center Ministries International",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1185,
      "name": "andy frank",
      "title": "Senior Associate ",
      "company": "Slingshot Group",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1186,
      "name": "dr archika didi",
      "title": "vice chair",
      "company": "International Youth Wing",
      "outbound_date": "2021-05-14",
      "interest": "no response"
    },
    {
      "index": 1187,
      "name": "bishop rob taylor / apostle of the cross",
      "title": "dean",
      "company": "UNITED CHRISTIAN FAITH MINISTRIES",
      "outbound_date": "2021-05-13",
      "interest": "no response"
    },
    {
      "index": 1188,
      "name": "catherine mullins",
      "title": "Worship Leader ",
      "company": "The Ramp",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1189,
      "name": "nicholas albert",
      "title": "insurance sales representative",
      "company": "New Image Weight Loss Camp Seasonal",
      "outbound_date": "2021-07-05",
      "interest": "no response"
    },
    {
      "index": 1190,
      "name": "cassidy smith",
      "title": "health advocate",
      "company": "Cassie's Photogeaphy Self-employed",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1191,
      "name": "randall adkison",
      "title": "executive director",
      "company": "Florida Association for Theatre Education Full-time",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1192,
      "name": "rachel jones",
      "title": "associate",
      "company": "Richmond Justice Initiative",
      "outbound_date": "2021-04-23",
      "interest": "irrelevant"
    },
    {
      "index": 1193,
      "name": "lisa carter cork",
      "title": "pastor",
      "company": "microsoft organization nonprofit",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 1194,
      "name": "tyler ross",
      "title": "healthcare leader | u.s. marine corps veteran | logistician",
      "company": "Novant Health",
      "outbound_date": "2021-07-16",
      "interest": "no response"
    },
    {
      "index": 1195,
      "name": "alexandra tweten",
      "title": "author/speaker",
      "company": "the new york time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1196,
      "name": "josh haberer",
      "title": "owner",
      "company": "BrightBlue IT, Inc.",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 1197,
      "name": "cecil grant, jr",
      "title": "podcaster: changing the narrative with cecil grant jr.",
      "company": "Freelance",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1198,
      "name": "victor castro",
      "title": "team leader",
      "company": "Love International Outreach Fellowship SF",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1199,
      "name": "ms. eleanor l. smith",
      "title": "journalist",
      "company": "university howard eleanor naacp",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1200,
      "name": "brandon jones",
      "title": "producer",
      "company": "state journalism az espn a prep asu u washington mary american channel school cronkite nbc university golf phoenix high",
      "outbound_date": "2021-06-18",
      "interest": "yes call booked"
    },
    {
      "index": 1201,
      "name": "matthew bono",
      "title": "music teacher",
      "company": "OneWord-Contemporary Christian Group",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1202,
      "name": "steve buzzard",
      "title": "caster",
      "company": "Experience The Buzz Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1203,
      "name": "reed alberg",
      "title": "Helping you with promotional items for your business. Enjoys fly fishing and fly tying!",
      "company": "Lee's Summit United Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1204,
      "name": "benjamin snyder",
      "title": "worship pastor",
      "company": "Teachers On Call - TOC 24/7",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1205,
      "name": "freontae maynor",
      "title": "processing technician",
      "company": "Chick-fil-A-Franchise",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1206,
      "name": "rob lohman (lion)",
      "title": "owner",
      "company": "Recovery Unplugged",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1207,
      "name": "lyubov slashcheva, dds, ms, fabscd",
      "title": "Geriatric",
      "company": "Apple Tree Dental",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1208,
      "name": "andy white",
      "title": "instrumentalist",
      "company": "Providence, A Santa Barbara Christian School.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1209,
      "name": "ray dogum",
      "title": "caster",
      "company": "ConsenSys Health Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1210,
      "name": "melanie thomas",
      "title": "host",
      "company": "Cumulus Media",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1211,
      "name": "ammett williams",
      "title": "ccie, cissp, aws \u2022 start cloud now \u2022 inspiring others \u2022 bonne journ\u00e9e \u2022 \ud83c\uddf9\ud83c\uddf9\ud83c\udde8\ud83c\udde6",
      "company": "Start Cloud Now",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1212,
      "name": "janice gassam asare, ph.d.",
      "title": "i help workplaces become anti-racist | dei consultant | tedx speaker | forbes senior contributor | jollof rice enthusiast",
      "company": "amazon ddd women university bwg ub youtube nordstrom for safer yale black google space busines",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1213,
      "name": "luca rosano",
      "title": "content creator & social media specialist",
      "company": "Rosano Media",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 1214,
      "name": "chris bussing",
      "title": "sr account executive | bespin global | ex-google",
      "company": "Georgetown University",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1215,
      "name": "jacquie (parker) court",
      "title": "content creator/producer",
      "company": "She2.0 & Once Upon A Brand Self-employed",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1216,
      "name": "iris p.",
      "title": "aspiring product manager | pharmacy technician | content creator",
      "company": "Takko",
      "outbound_date": "2021-07-20",
      "interest": "no response"
    },
    {
      "index": 1217,
      "name": "kate baumer spore",
      "title": "missionary",
      "company": "Cristo Rey Community Center",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1218,
      "name": "curt sheffer",
      "title": "worship leader",
      "company": "Self Employed Worship Consultant/Leader",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1219,
      "name": "blane ware",
      "title": "worship leader",
      "company": "Freelance Musician/Composer",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1220,
      "name": "mayela manasjan, m.s. (she/her)",
      "title": "chief environmental optimist",
      "company": "casa werma mayela collaborative california university extension san diego uc regional climate she",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1221,
      "name": "joshua lingel",
      "title": "graphic designer",
      "company": "YMCA of Greater Boston",
      "outbound_date": "2021-06-29",
      "interest": "no response"
    },
    {
      "index": 1222,
      "name": "tari mannello",
      "title": "coach",
      "company": "Elegant Acro",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1223,
      "name": "tara lacy",
      "title": "human resources intern",
      "company": "Midcontinent Independent System Operator (MISO) Full-time",
      "outbound_date": "2021-06-30",
      "interest": "no response"
    },
    {
      "index": 1224,
      "name": "jacob roecker",
      "title": "csm",
      "company": "office microsoft ibm visio",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1225,
      "name": "leon jay morton",
      "title": "caster",
      "company": "AZ Wine Guru Self-employed",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1226,
      "name": "trent podskalan, m.a.",
      "title": "caster",
      "company": "Northern Illinois Food Bank Full-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1227,
      "name": "jeffery w. ingram",
      "title": "chief operating officer",
      "company": "MiTECH, LLC",
      "outbound_date": "2021-06-29",
      "interest": "no response"
    },
    {
      "index": 1228,
      "name": "blake raven",
      "title": "project manager",
      "company": "PRINTSURE LLC",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1229,
      "name": "monique jenkins",
      "title": "certified massage therapist",
      "company": "career college western",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1230,
      "name": "daniele lince",
      "title": "film director",
      "company": "Freelance",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 1231,
      "name": "antonio de shawn spears",
      "title": "author",
      "company": "Sutton Capital",
      "outbound_date": "2021-03-19",
      "interest": "no response"
    },
    {
      "index": 1232,
      "name": "dean rucker",
      "title": "Training for Pressure Washing Start-Ups and Techs on a World Class Scale",
      "company": "Crossroads Baptist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1233,
      "name": "charles billingsley",
      "title": "Worship Pastor ",
      "company": "Thomas Road Baptist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1234,
      "name": "edwin imer santiago",
      "title": "Director of Music & Worship; Free Lance Musician and Worship Leader.",
      "company": "School District of Osceola County, FL; Jubal76 Music!",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1235,
      "name": "Keegan Rosenberry",
      "title": "Professional Athlete",
      "company": "Georgetown University",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 1236,
      "name": "miranda eng",
      "title": "chief marketing officer",
      "company": "The Harvard Crimson",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1237,
      "name": "kylie miller",
      "title": "medical student",
      "company": "University of Iowa Roy J. and Lucille A. Carver College of Medicine",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1238,
      "name": "gina smith",
      "title": "writer",
      "company": "Washington Bible College",
      "outbound_date": "2021-07-04",
      "interest": "pending"
    },
    {
      "index": 1239,
      "name": "darla trendler",
      "title": "podcaster",
      "company": "Spiritually Minded Women Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1240,
      "name": "jan burt",
      "title": "writer / podcaster @ the burt (not ernie) show / conference speaker",
      "company": "JanLBurt.com Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1241,
      "name": "stacy shepherd",
      "title": "--evangelical rodeo cowboy",
      "company": "PRCA",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1242,
      "name": "Dawn (Airton) Sanders",
      "title": "Wellbeing and Transitions Coach in Elite Sport and Business",
      "company": "WINWELL LIMITED Self-employed",
      "outbound_date": "2021-08-02",
      "interest": "no response"
    },
    {
      "index": 1243,
      "name": "rose breedlove",
      "title": "caster",
      "company": "Self-employed",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1244,
      "name": "jeremy davis",
      "title": "blogger",
      "company": "ford magazine entertainment",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1245,
      "name": "alicia couri",
      "title": "strategic talent problem solver: building audaciously proactive teams where every person takes 100% ownership.",
      "company": "intelligence research emotional",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1246,
      "name": "patrick meehan nader",
      "title": "US Soccer Intermediary",
      "company": "Self-employed",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 1247,
      "name": "gary revel",
      "title": "owner",
      "company": "Jongleur Music and Associations",
      "outbound_date": "2021-03-30",
      "interest": "not interested"
    },
    {
      "index": 1248,
      "name": "marissa f. cohen",
      "title": "internationally recognized",
      "company": "Dynamic Systems Technology, Inc. (DysTech)",
      "outbound_date": "2021-06-23",
      "interest": "no response"
    },
    {
      "index": 1249,
      "name": "melanie bomar",
      "title": "Licensed Marriage and Family Therapist / Associate Professional Clinical Counselor",
      "company": "Journeys Counseling Center",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1250,
      "name": "daniel sanborn",
      "title": "worship leader",
      "company": "St Francis School District",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1251,
      "name": "martin petkov",
      "title": "senior content manager (crypto, fx, stocks)",
      "company": "UBS Investment Bank Internship",
      "outbound_date": "2021-07-14",
      "interest": "no response"
    },
    {
      "index": 1252,
      "name": "simone soublet",
      "title": "Communications and Journalism studies student",
      "company": "Last Supper Society Internship",
      "outbound_date": "2021-06-08",
      "interest": "no response"
    },
    {
      "index": 1253,
      "name": "erica verrillo",
      "title": "President ",
      "company": "American ME and CFS Society",
      "outbound_date": "2021-03-23",
      "interest": "not interested"
    },
    {
      "index": 1254,
      "name": "kelry kirschenmann",
      "title": "web designer",
      "company": "David's Bridal",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1255,
      "name": "courtney (borgard) beckner",
      "title": "interior designer",
      "company": "Cyntergy_",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1256,
      "name": "amberly lago",
      "title": "author",
      "company": "nbc crp",
      "outbound_date": "2021-06-16",
      "interest": "response"
    },
    {
      "index": 1257,
      "name": "ashley kowalewski-pizzi",
      "title": "senior manager, integrated communications",
      "company": "Centennial College Part-time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1258,
      "name": "susan mulder",
      "title": "author",
      "company": "Poet Kind Podcast",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1259,
      "name": "jean hayes",
      "title": "graphics designer",
      "company": "David Hayes Helping Hands",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1260,
      "name": "cece cook",
      "title": "on-air talent",
      "company": "state illinoi broadcast university rap espn chicago school urban media michigan battle",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1261,
      "name": "kammie kobyleski",
      "title": "artist",
      "company": "kammiek.com (formerly Passion Meets Purpose) Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1262,
      "name": "kelly ryan bailey",
      "title": "\ud83c\udf0eentrepreneur || \ud83c\udf99\ufe0fpodcaster || \ud83e\udde9global skills evangelist || \ud83d\udca5 social impacter || \ud83e\udd8btransformational leader || \ud83e\uddb8\ud83c\udffcmama",
      "company": "group networking product exchange empowerment startup include planning and strategic service public professional media foundation super social committee affair city funding u commerce connecting school building skill the data mentoring council busines university new change job partnership national adecco management growth open studie speaking advisory mindset columbia chamber member network braintrust development power york radar velocity",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1263,
      "name": "alexie dussault",
      "title": "social media marketer in higher education | bilingual content creator and digital marketer",
      "company": "University of Ottawa",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1264,
      "name": "karuna israni",
      "title": "manager, enterprise communications",
      "company": "Scotiabank",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1265,
      "name": "heather cronkright-oliver",
      "title": "loan specialist",
      "company": "Fairhaven church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1266,
      "name": "thomas oram",
      "title": "worship leader",
      "company": "Our Lady of Good Counsel Church and School- PLYMOUTH, MI",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1267,
      "name": "chris brodeur",
      "title": "content creator",
      "company": "The Hartford Courant",
      "outbound_date": "2021-07-12",
      "interest": "no response"
    },
    {
      "index": 1268,
      "name": "robert ( rj ) hunt jr.",
      "title": "podcaster",
      "company": "preparatory high pa school arbor",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1269,
      "name": "geri carlson, ma, mmin",
      "title": "counsel",
      "company": "court team drug counseling coaching",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1270,
      "name": "vincent a. lanci, mba",
      "title": "author",
      "company": "college patient and tgh administration alpha succes general syke the councilbooking busines tampa university society national leadership master advisory rehabilitation family hospital pi sigma finance",
      "outbound_date": "2021-06-13",
      "interest": "pending"
    },
    {
      "index": 1271,
      "name": "katy caldwell",
      "title": "real estate",
      "company": "Southerly Real Estate Full-time",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1272,
      "name": "christopher turner",
      "title": "caster",
      "company": "Mission: Readiness",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1273,
      "name": "Matt Penrod",
      "title": "Student Athlete ",
      "company": "The Home Depot",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 1274,
      "name": "julie snyder (shehers)",
      "title": "creator/actor/improvisor/educator/reader",
      "company": "Self-Employed",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1275,
      "name": "darian hunt",
      "title": "Patient Account Specialist",
      "company": "Saint Matthews Outreach Ministries",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1276,
      "name": "maria manetas",
      "title": "podcaster",
      "company": "Fabulous Broads",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1277,
      "name": "megan massay",
      "title": "ceo",
      "company": "Cosmotology",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1278,
      "name": "peter luongo",
      "title": "retail sales manager",
      "company": "Say That! Podcast",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 1279,
      "name": "ronald diltz ii, mfa, ms",
      "title": "director",
      "company": "diltz university full florida in sail",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1280,
      "name": "david abramsky",
      "title": "Sr. IT Support",
      "company": "Jaywil Software Dev. Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1281,
      "name": "mike wabel",
      "title": "Service Manage ",
      "company": "Wabel Properties",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1282,
      "name": "nate jones",
      "title": "Founder of Pro IT LLC | Worship Leader ",
      "company": "Sun View Baptist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1283,
      "name": "lanee (washington) blaise",
      "title": "writer",
      "company": "Blaise & Evans Productions",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1284,
      "name": "jason jaques",
      "title": "community builder & podcaster",
      "company": "colorado security podcast",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1285,
      "name": "colin benward",
      "title": "real estate specialist",
      "company": "Self",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1286,
      "name": "catrina gandara",
      "title": "caster",
      "company": "Wharton Journal (The Wharton School, University of Pennsylvania)",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1287,
      "name": "jack wheeler",
      "title": "host",
      "company": "Knollwood Country Club",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1288,
      "name": "damon davis",
      "title": "author",
      "company": "Elevation Health Consulting",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1289,
      "name": "diane atwood",
      "title": "blogger",
      "company": "Mercy Health System of Maine Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1290,
      "name": "kyle morey, iom",
      "title": "coo",
      "company": "amazon",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 1291,
      "name": "tom stacey",
      "title": "Humans",
      "company": "Process Peak LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1292,
      "name": "rich tatum",
      "title": "I \u2661 SEO",
      "company": "Self",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1293,
      "name": "christopher witt",
      "title": "director of operations & marketing",
      "company": "Keller Williams Realty, Inc.",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1294,
      "name": "ryan jackson",
      "title": "host",
      "company": "The Turbo and 2ks Show",
      "outbound_date": "2021-06-13",
      "interest": "pending"
    },
    {
      "index": 1295,
      "name": "allie binford",
      "title": "content creator",
      "company": "Big Communications",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1296,
      "name": "brigitte legallet",
      "title": "marketing manager",
      "company": "Copia Full-time",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1297,
      "name": "nathan marlow",
      "title": "co-founder",
      "company": "Silent Stone Films",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1298,
      "name": "aaron dailey",
      "title": "development representative",
      "company": "Cintas",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1299,
      "name": "scotti jowers",
      "title": "middle school math teacher",
      "company": "CENTURY 21 Shackelford French",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1300,
      "name": "lee taylor",
      "title": "creative director",
      "company": "LMP, Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1301,
      "name": "konrad greene",
      "title": "store manager",
      "company": "New Mount Moriah Rock Nation Youth Department",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1302,
      "name": "joy saquing",
      "title": "founder",
      "company": "The Worship Studio Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1303,
      "name": "emy mordue",
      "title": "content creator and recipe developer",
      "company": "Futurespace magazine",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1304,
      "name": "john stowell",
      "title": "electrical engineer",
      "company": "Engineering Company",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1305,
      "name": "olya yakzhina",
      "title": "head of people @ switchee | leadership @ people stories | podcaster @ the modern employer",
      "company": "Quiqup",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1306,
      "name": "alexander toledo",
      "title": "producer",
      "company": "Five Reasons Sports",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1307,
      "name": "lisa shackelford",
      "title": "health and wellness coach",
      "company": "Lisa Shackelford LLC.",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1308,
      "name": "steph gaudreau",
      "title": "author",
      "company": "Harder to Kill Radio",
      "outbound_date": "2021-07-08",
      "interest": "pending"
    },
    {
      "index": 1309,
      "name": "jonathan palmer",
      "title": "recording artist",
      "company": "Redemption World Records",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1310,
      "name": "e h ivans",
      "title": "caster",
      "company": "none",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1311,
      "name": "jessica michelle singleton",
      "title": "an energetic and motivated idea machine. professional funny lady with expertise in comedy",
      "company": "film speaking south religiou project harvard commercial university strong literacy and media public florida improvisation social theatre",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1312,
      "name": "mike digirolamo",
      "title": "caster",
      "company": "Weaving Influence",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 1313,
      "name": "saudia grant",
      "title": "singer",
      "company": "maroon",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1314,
      "name": "hualun (hunter) shi",
      "title": "j.d. candidate",
      "company": "Advocacy for Fairness in Sports",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 1315,
      "name": "niamh harnett",
      "title": "digital marketing executive",
      "company": "Stream Marine Training Full-time",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1316,
      "name": "emerson john ramos",
      "title": "VP for Human Resources ",
      "company": "UP Career Assistance Program for Engineering Students",
      "outbound_date": "2021-03-05",
      "interest": "no response"
    },
    {
      "index": 1317,
      "name": "lady christine burrell",
      "title": "Intl Praise and Worship Leader Professional",
      "company": "Radical Praise, Authentic Worship",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1318,
      "name": "jimmy fleming",
      "title": "Owner of iConsult.Audio",
      "company": "Worship Leader",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1319,
      "name": "don nichols",
      "title": "general manager",
      "company": "Levy Baptist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1320,
      "name": "kerri daniels tabasky",
      "title": "writer",
      "company": "podcast planning and production leadership sale strategic writing management organization nonprofit",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 1321,
      "name": "anthea (thea) harris",
      "title": "Thea Harris Publishing",
      "company": "Thea Harris Publishing Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1322,
      "name": "mohamed farag",
      "title": "General Manager ",
      "company": "Accor",
      "outbound_date": "2021-04-21",
      "interest": "no response"
    },
    {
      "index": 1323,
      "name": "richard radstone",
      "title": "caster",
      "company": "Sidewalk Ghosts Full-time",
      "outbound_date": "2021-06-04",
      "interest": "yes call booked"
    },
    {
      "index": 1324,
      "name": "scott davis",
      "title": "head of marketing",
      "company": "ADELPHIA COMMUNICATIONS",
      "outbound_date": "2021-04-05",
      "interest": "no response"
    },
    {
      "index": 1325,
      "name": "neena perez",
      "title": "host",
      "company": "Straight Talk No Sugar Added! Self-employed",
      "outbound_date": "2021-06-23",
      "interest": "no response"
    },
    {
      "index": 1326,
      "name": "garrett chadd",
      "title": "student",
      "company": "The Millennial Scum Podcast Self-employed",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1327,
      "name": "bill walker",
      "title": "podcaster",
      "company": "RT Show Self-employed",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1328,
      "name": "andrew gamblin",
      "title": "owner",
      "company": "Hoover Florist Full-time",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1329,
      "name": "nettye johnson, ches",
      "title": "speaker",
      "company": "national convention baptist usa",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1330,
      "name": "dan graciano",
      "title": "owner",
      "company": "MINDSET ARMADA Freelance",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1331,
      "name": "thomas lipinski",
      "title": "Worship Leader ",
      "company": "Grace Lutheran Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1332,
      "name": "mike tierney",
      "title": "Global Head of Programming ",
      "company": "Amazon",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 1333,
      "name": "jeremy lee",
      "title": "Content Creator - Photo",
      "company": "soona",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1334,
      "name": "ryan mceniff",
      "title": "family caregiver",
      "company": "O'Neal Steel Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1335,
      "name": "david byrd",
      "title": "sales specialist",
      "company": "Liberty Coach Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1336,
      "name": "stephanie gaffin (chambliss)",
      "title": "co-founder",
      "company": "Right in the Middle Market",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1337,
      "name": "gram rea",
      "title": "musician",
      "company": "Fiddly-Dee, LLC Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1338,
      "name": "alex schindler",
      "title": "coo",
      "company": "Church of the Annunciation",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1339,
      "name": "george hassman",
      "title": "technical support specialist",
      "company": "Benedictine University",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1340,
      "name": "albert joseph",
      "title": "senior program director, it executive, consultant, podcaster",
      "company": "IBM",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1341,
      "name": "will pangborn",
      "title": "software engineering | london & amsterdam",
      "company": "amsterdam engineering software london",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1342,
      "name": "gloria goldberg",
      "title": "caster",
      "company": "Unbreakable Life with Glory",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1343,
      "name": "dr. dave white",
      "title": "leadstrong executive coach, fitpro business coach, lifebridge wellness coach, entrepreneur, ncaa mens basketball referee",
      "company": "The Communications Center",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1344,
      "name": "nicholas blumenberg",
      "title": "production technician",
      "company": "Airgas",
      "outbound_date": "2021-03-10",
      "interest": "no response"
    },
    {
      "index": 1345,
      "name": "steve balderson",
      "title": "film director",
      "company": "Dikenga Films Inc.",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 1346,
      "name": "arshdeep singh sachdeva",
      "title": "software development engineer",
      "company": "OYO Full-time",
      "outbound_date": "2021-04-23",
      "interest": "irrelevant"
    },
    {
      "index": 1347,
      "name": "marc stenum",
      "title": "business development",
      "company": "Enetpulse",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 1348,
      "name": "sanat singhal",
      "title": "founder",
      "company": "21stCenturyVisionary Full-time",
      "outbound_date": "2021-06-09",
      "interest": "no response"
    },
    {
      "index": 1349,
      "name": "daniel alejandro dimartino",
      "title": "Director de Cooperativas. Ministerio de Econom\u00eda y Energ\u00eda Gobierno de Mendoza",
      "company": "Gobierno de Mendoza",
      "outbound_date": "2021-03-24",
      "interest": "irrelevant"
    },
    {
      "index": 1350,
      "name": "eddie espinosa",
      "title": "Educator",
      "company": "Available for consulting/coaching/conference speaking.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1351,
      "name": "william hill",
      "title": "Chief Executive Officer ",
      "company": "WT Hill & Sons (Imports)",
      "outbound_date": "2021-03-25",
      "interest": "no response"
    },
    {
      "index": 1352,
      "name": "bob holcomb",
      "title": "president",
      "company": "Immanuel Lutheran Church and School",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1353,
      "name": "m ali ahmed",
      "title": "Multi-Store General Manager ",
      "company": "Lithia Motors, Inc.",
      "outbound_date": "2021-04-22",
      "interest": "irrelevant"
    },
    {
      "index": 1354,
      "name": "jeremy lesley",
      "title": "morning show host",
      "company": "Jeremy & Shaley Lesley",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1355,
      "name": "\u1d0d\u0280 s\u1d00\u1d04\u029c\u026a\u0274 \u1d0b\u1d00s\u029c\u028f\u1d00\u1d18",
      "title": "CEO @Kashyap Group (KGOI)",
      "company": "KGOI (kashyap groups)",
      "outbound_date": "2021-05-23",
      "interest": "no response"
    },
    {
      "index": 1356,
      "name": "rob carson",
      "title": "television host",
      "company": "wl ksfo ksl wbap kmox",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 1357,
      "name": "suzanne hatcher (she/her)",
      "title": "Retail Leadership",
      "company": "Tuft & Needle Full-time",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 1358,
      "name": "chidimma carter",
      "title": "Founder",
      "company": "City of Hayward",
      "outbound_date": "2021-05-26",
      "interest": "no response"
    },
    {
      "index": 1359,
      "name": "caramel lucas",
      "title": "motivational speaker",
      "company": "publishing wein eber",
      "outbound_date": "2021-07-07",
      "interest": "no response"
    },
    {
      "index": 1360,
      "name": "pedro moura costa",
      "title": "Director BVRio",
      "company": "BVRio Environmental Exchange",
      "outbound_date": "2021-05-10",
      "interest": "no response"
    },
    {
      "index": 1361,
      "name": "timothy smith",
      "title": "Managing Director of Redfoot Shoes & Goodwin Smith, featured on Dragons' Den (UK)",
      "company": "Goodwin Smith",
      "outbound_date": "2021-03-05",
      "interest": "no response"
    },
    {
      "index": 1362,
      "name": "kim kelty",
      "title": "brand strategist",
      "company": "Kelty Solutions",
      "outbound_date": "2021-07-02",
      "interest": "no response"
    },
    {
      "index": 1363,
      "name": "jonathan griffiths",
      "title": "director",
      "company": "Pax8",
      "outbound_date": "2021-03-09",
      "interest": "not interested"
    },
    {
      "index": 1364,
      "name": "nick gaunt, ph.d.",
      "title": "scientific content creator",
      "company": "University of Ljubljana",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1365,
      "name": "jason cremeans",
      "title": "chief executive officer",
      "company": "management system ecotech terminix",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1366,
      "name": "sydney a. mitchell",
      "title": "writer",
      "company": "experienced maryland chapter southern lead",
      "outbound_date": "2021-06-23",
      "interest": "no response"
    },
    {
      "index": 1367,
      "name": "bryant brackett",
      "title": "data networking",
      "company": "pitbull city rescue angel",
      "outbound_date": "2021-06-16",
      "interest": "response"
    },
    {
      "index": 1368,
      "name": "joseph ward",
      "title": "caster",
      "company": "Live Skilled Live Fulfilled",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1369,
      "name": "courtney jolander",
      "title": "travel + wellness content creator",
      "company": "Channel Factory Contract",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1370,
      "name": "david ward",
      "title": "search engine marketing specialist",
      "company": "Suplex The Sticks Self-employed",
      "outbound_date": "2021-07-07",
      "interest": "pending"
    },
    {
      "index": 1371,
      "name": "shey (sheryn) harms",
      "title": "coaching non-techies on how to start or grow an online business while enjoying the second act of their lives.",
      "company": "AgJunction",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1372,
      "name": "dr. richard j. o'keeffe",
      "title": "caster",
      "company": "BoomerLife.Live (http://www.buzzsprout.com/249943)",
      "outbound_date": "2021-07-06",
      "interest": "pending"
    },
    {
      "index": 1373,
      "name": "barbara roy",
      "title": "content, communications & training strategist/creator | career services-resume writer",
      "company": "SAP Contract",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1374,
      "name": "khurrum husain, csm",
      "title": "product manager i certified scrum master i people leader",
      "company": "Bell",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1375,
      "name": "chris c., cfce, ace, acsp",
      "title": "lab manager",
      "company": "HTCIA",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1376,
      "name": "marcela alarcon",
      "title": "host",
      "company": "facebook instagram twitter",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1377,
      "name": "scott jordan",
      "title": "writer",
      "company": "nbc host studio",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1378,
      "name": "nathan gagnon",
      "title": "writer",
      "company": "Making Kairos Freelance",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1379,
      "name": "tanya (sikes) gioia",
      "title": "coach",
      "company": "Rosetta Stone Part-time",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 1380,
      "name": "sarah malik",
      "title": "content manager",
      "company": "management facebook social media",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1381,
      "name": "ricardo martinez ii",
      "title": "chief executive officer",
      "company": "college university full youtube master baker sail",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 1382,
      "name": "clarence m. davis",
      "title": "school administrator",
      "company": "Spreaker",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1383,
      "name": "daniel aleman",
      "title": "analyst",
      "company": "Intelligent Nonsense Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1384,
      "name": "kevin t. hobbs",
      "title": "actor",
      "company": "Kevin\u2019s Way Out Self-employed",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1385,
      "name": "elaine wolff",
      "title": "writer",
      "company": "Pumpkin Holdings, LLC Full-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1386,
      "name": "mike murphy",
      "title": "tutor",
      "company": "insta creativity channel youtube twitter",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1387,
      "name": "dennis fountain",
      "title": "zoning board of appeals",
      "company": "Fountain of Thought Podcast",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1388,
      "name": "alison roth",
      "title": "postdoctoral research fellow",
      "company": "Barrow Neurological Institute Full-time",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1389,
      "name": "kim scott",
      "title": "caster",
      "company": "Powder Coater Podcast Seasonal",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1390,
      "name": "james wylder",
      "title": "freelance writer",
      "company": "travel time",
      "outbound_date": "2021-06-22",
      "interest": "pending"
    },
    {
      "index": 1391,
      "name": "angela mastrogiacomo",
      "title": "founder",
      "company": "agency blossom sxsw ascap the",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1392,
      "name": "jayton miller",
      "title": "product development",
      "company": "Lively Wellness and Aesthetics",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1393,
      "name": "amrat chugani",
      "title": "state liaison",
      "company": "part interested in busines aviation",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1394,
      "name": "rick rentas, sres",
      "title": "business development",
      "company": "eXp Realty Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1395,
      "name": "regan nelson",
      "title": "archer",
      "company": "This or Something Better Podcast",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1396,
      "name": "mia laurenzo",
      "title": "producer",
      "company": "SideShow Charlie Productions, LLC Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1397,
      "name": "steve robinson",
      "title": "narrator",
      "company": "voiceover narration",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1398,
      "name": "tasha eizinger",
      "title": "author",
      "company": "Diary of a Dreamer",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1399,
      "name": "arielle lipshaw",
      "title": "technical product manager",
      "company": "CarGurus Full-time",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1400,
      "name": "rachel foote",
      "title": "occupational therapy",
      "company": "SALT Center",
      "outbound_date": "2021-06-30",
      "interest": "no response"
    },
    {
      "index": 1401,
      "name": "jayden y.",
      "title": "supposed to be 9-5",
      "company": "house national security white council",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1402,
      "name": "india kern, cdc",
      "title": "coach",
      "company": "La Jolla Presbyterian Church",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1403,
      "name": "eric dunn",
      "title": "owner",
      "company": "Wilhelmina",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1404,
      "name": "taylor gilbert",
      "title": "caster",
      "company": "Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1405,
      "name": "torrie jones",
      "title": "caster",
      "company": "ak sport fox",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1406,
      "name": "brian craig",
      "title": "host",
      "company": "university florida atlantic",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1407,
      "name": "patrick gelesh",
      "title": "arizona rattlers first undefeated season in team history",
      "company": "arizona rattler",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1408,
      "name": "jerry feng",
      "title": "executive secretary",
      "company": "nation united",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1409,
      "name": "albert tarragano",
      "title": "chef",
      "company": "Amazon Full-time",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1410,
      "name": "ifedayo angel",
      "title": "caster",
      "company": "bdsm kink power exchange",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1411,
      "name": "matt neal",
      "title": "innovation | technology | life sciences | comedy | music",
      "company": "innovation science life technology",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1412,
      "name": "virginie fite-georgel",
      "title": "wh",
      "company": "UCSF",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1413,
      "name": "stevens atehortua",
      "title": "caster",
      "company": "C4 Connections",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1414,
      "name": "dr. james hawkins, lpc",
      "title": "the joshua center & eft supv/trainer in training",
      "company": "eft center joshua",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1415,
      "name": "gabrielle birchak-birkman",
      "title": "writer",
      "company": "state nonfiction california hampshire women bce and southern alpha american math northridge metro university new kappa society national tau in science lambda mathematical history facebook pi association savvy sigma for author",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1416,
      "name": "michael tumlin",
      "title": "designer",
      "company": "Creatively Brief Self-employed",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1417,
      "name": "matt hill",
      "title": "business development",
      "company": "underwriter saginaw bay",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1418,
      "name": "angela emuwa",
      "title": "Chairman, Punch Nigeria Limited. President, Autism Parents Association International. Special Needs Advocate",
      "company": "Punch Newspapers",
      "outbound_date": "2021-03-15",
      "interest": "no response"
    },
    {
      "index": 1419,
      "name": "scott \"sully\" sullivan",
      "title": "\u201csaving homeowners money\u201d president of residential solar",
      "company": "O3 Home Solar Full-time",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1420,
      "name": "rachael courtney",
      "title": "sales intern",
      "company": "project university kentucky management a",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1421,
      "name": "joe meyers",
      "title": "focus on french cinema",
      "company": "focusonfrenchcinema",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 1422,
      "name": "cameron thompson",
      "title": "lead stylist",
      "company": "university full communication sail pretty media the committee",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1423,
      "name": "william stowe",
      "title": "host",
      "company": "Nike",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 1424,
      "name": "mohammed saeed abdel samea",
      "title": "operations manager",
      "company": "EG. trade Part-time",
      "outbound_date": "2021-05-15",
      "interest": "irrelevant"
    },
    {
      "index": 1425,
      "name": "rejoice chishamba",
      "title": "vice president",
      "company": "Africa Travel Association Young Professionals Program",
      "outbound_date": "2021-04-19",
      "interest": "no response"
    },
    {
      "index": 1426,
      "name": "rich reader",
      "title": "data scientist",
      "company": "Motorcycle Wineries",
      "outbound_date": "2021-04-13",
      "interest": "not interested"
    },
    {
      "index": 1427,
      "name": "simone santagata",
      "title": "event manager",
      "company": "Event-Lab Verona",
      "outbound_date": "2021-03-28",
      "interest": "no response"
    },
    {
      "index": 1428,
      "name": "jose' nix",
      "title": "caster",
      "company": "Wesley Chapel Honda",
      "outbound_date": "2021-06-28",
      "interest": "no response"
    },
    {
      "index": 1429,
      "name": "shukri wrights",
      "title": "radio host",
      "company": "Pacifica Radio Network",
      "outbound_date": "2021-06-28",
      "interest": "yes call booked"
    },
    {
      "index": 1430,
      "name": "lucas henderson",
      "title": "front end developer",
      "company": "Anchor Bible Church Part-time",
      "outbound_date": "2021-06-02",
      "interest": "no response"
    },
    {
      "index": 1431,
      "name": "aaron chastain",
      "title": "university",
      "company": "Missouri Baptist University",
      "outbound_date": "2021-06-11",
      "interest": "no response"
    },
    {
      "index": 1432,
      "name": "anna tope",
      "title": "graduate of york college of pa",
      "company": "college graduate pa york",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1433,
      "name": "craig hensel",
      "title": "senior content creator",
      "company": "Free Lance",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1434,
      "name": "shayda torabi",
      "title": "ceo",
      "company": "General Assembly Freelance",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1435,
      "name": "ishaan chadha",
      "title": "journalist",
      "company": "Sports Media Inc Internship",
      "outbound_date": "2021-06-16",
      "interest": "no response"
    },
    {
      "index": 1436,
      "name": "michelle rubin",
      "title": "associate",
      "company": "Iowa Department of Human Rights",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1437,
      "name": "debaprasad bandyopadhyay",
      "title": "Professor ",
      "company": "International Assembly For Human Rights, India",
      "outbound_date": "2021-04-15",
      "interest": "no response"
    },
    {
      "index": 1438,
      "name": "emil garuba",
      "title": "writer",
      "company": "Sutoritera Limited",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 1439,
      "name": "richard e. dominguez",
      "title": "graphic designer",
      "company": "Cryptozoic Entertainment",
      "outbound_date": "2021-03-23",
      "interest": "no response"
    },
    {
      "index": 1440,
      "name": "vishal yadav",
      "title": "founder & ceo",
      "company": "Female Cricket Academy Full-time",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 1441,
      "name": "michael stohler, pmp",
      "title": "caster",
      "company": "navy veteran",
      "outbound_date": "2021-07-07",
      "interest": "no response"
    },
    {
      "index": 1442,
      "name": "new john refuse",
      "title": "stock market investor | ceo of let's talk on njhd (podcast) | soon to be real estate agent",
      "company": "Let's Talk On NJHD Permanent Full-time",
      "outbound_date": "2021-07-12",
      "interest": "no response"
    },
    {
      "index": 1443,
      "name": "mark elderkin",
      "title": "marketing director",
      "company": "Brand Intervention",
      "outbound_date": "2021-05-26",
      "interest": "no response"
    },
    {
      "index": 1444,
      "name": "madeline elizabeth",
      "title": "navigating a new tomorrow",
      "company": "TheEnvyLine Agency",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1445,
      "name": "courtney mccann",
      "title": "i coach esl stem professionals in unlocking effective communication",
      "company": "Buffalo Public Schools Adult Education Division",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1446,
      "name": "alex morgan",
      "title": "freelance journalist and production assistant",
      "company": "Menlo School Part-time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1447,
      "name": "javier jose romano",
      "title": "practice manager",
      "company": "Hewlett Packard Enterprise",
      "outbound_date": "2021-04-02",
      "interest": "not interested"
    },
    {
      "index": 1448,
      "name": "clodagh egan",
      "title": "head of marketing",
      "company": "Cocoa Brown Tan",
      "outbound_date": "2021-03-08",
      "interest": "no response"
    },
    {
      "index": 1449,
      "name": "john marty",
      "title": "founder",
      "company": "SoFi Full-time",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1450,
      "name": "steven haderer, mba",
      "title": "sales enablement consultant",
      "company": "Nourish International",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1451,
      "name": "isaac lopez",
      "title": "corporate communications intern",
      "company": "Emsi Part-time",
      "outbound_date": "2021-06-18",
      "interest": "response"
    },
    {
      "index": 1452,
      "name": "paul r. linde, md",
      "title": "medical",
      "company": "ucsf",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1453,
      "name": "joanie (dodds) sprague",
      "title": "tv personality",
      "company": "DIY Network",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1454,
      "name": "jordan hass",
      "title": "caster",
      "company": "Self-Employed",
      "outbound_date": "2021-06-16",
      "interest": "no response"
    },
    {
      "index": 1455,
      "name": "phil vestal",
      "title": "pastor",
      "company": "Ruah Space",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1456,
      "name": "leisa peterson",
      "title": "author",
      "company": "state expres motor st ford federal bowe life well farm martin pres new millionaire mindful pitney facebook unum fargo york insurance company",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1457,
      "name": "allison weedin",
      "title": "communications director",
      "company": "True North Outdoor",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1458,
      "name": "rich kurtzman",
      "title": "editor",
      "company": "Broncos Wire USA TODAY Sports Media Group",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1459,
      "name": "darian vaziri",
      "title": "caster",
      "company": "Dime Dropper Podcast Self-employed",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1460,
      "name": "earl holland",
      "title": "online content editor",
      "company": "university maryland eastern shore",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1461,
      "name": "ryan gray",
      "title": "chief executive officer",
      "company": "Mappd, LLC Full-time",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1462,
      "name": "jeanna irene fox",
      "title": "coach",
      "company": "social media",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1463,
      "name": "judy eddy",
      "title": "multidimensional professional",
      "company": "Judy Eddy",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1464,
      "name": "archie lewis",
      "title": "master",
      "company": "mental california customer university strong planning thinking and communication strategic service counseling baptist busines health",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1465,
      "name": "jackson mccarty",
      "title": "student",
      "company": "East Arkansas Broadcasters",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1466,
      "name": "nevada gibson",
      "title": "actively seeking jobs in film/tv development and production",
      "company": "state kardashian bachelor art california however cinema university and television real fullerton in world",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1467,
      "name": "daniel barnes",
      "title": "freelance copywriter",
      "company": "Garner Products Freelance",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1468,
      "name": "dennis stephen hamilton",
      "title": "pastor",
      "company": "light church christian christ the",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1469,
      "name": "madison young",
      "title": "product marketing intern",
      "company": "journalism walter school cronkite",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1470,
      "name": "dallas amsden",
      "title": "whether podcasting",
      "company": "EventMax design, LLC - The Original Snackadium",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1471,
      "name": "emmett allen",
      "title": "sports studies major",
      "company": "tree cleveland carroll house ignatiu moved college university originally ohio cafe john in saint",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1472,
      "name": "collette blakeney watson",
      "title": "vice president",
      "company": "Black River Life Media",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1473,
      "name": "teresa mckee",
      "title": "coach",
      "company": "Teresa McKee, LLC",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1474,
      "name": "mary ann linares",
      "title": "administrative professional",
      "company": "Woke Bound Self-employed",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1475,
      "name": "linda tate",
      "title": "writer",
      "company": "pinterest shepherd university facebook denver twitter",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1476,
      "name": "zac blackerby",
      "title": "caster",
      "company": "Locked On Podcast Network Freelance",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1477,
      "name": "omri casspi",
      "title": "basketball player",
      "company": "Omri Casspi Podcast - \u05d4\u05e4\u05d5\u05d3\u05e7\u05d0\u05e1\u05d8 \u05e9\u05dc \u05e2\u05d5\u05de\u05e8\u05d9 \u05db\u05e1\u05e4\u05d9 Self-employed",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 1478,
      "name": "tejal patel",
      "title": "teaching yoga through a social justice focused lens",
      "company": "hatha yoga vinyasa tejal",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1479,
      "name": "quinton varce",
      "title": "owner",
      "company": "127 Fit Podcast",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1480,
      "name": "late night",
      "title": "caster",
      "company": "Late-Night With Chefs Full-time",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1481,
      "name": "raymond posch",
      "title": "the spiritual project manager and life coach",
      "company": "News for the Soul",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1482,
      "name": "christopher w.",
      "title": "sr. manager",
      "company": "Farmers Insurance",
      "outbound_date": "2021-05-23",
      "interest": "not interested"
    },
    {
      "index": 1483,
      "name": "abdul rashidi",
      "title": "content creator / strategist",
      "company": "IMCD Group Full-time",
      "outbound_date": "2021-07-09",
      "interest": "no response"
    },
    {
      "index": 1484,
      "name": "oliver kray",
      "title": "founder & ceo",
      "company": "Oliver Kray",
      "outbound_date": "2021-04-05",
      "interest": "no response"
    },
    {
      "index": 1485,
      "name": "franklin a. shaffer",
      "title": "president",
      "company": "Nester Healthcare, PLC-BNA Healthcare",
      "outbound_date": "2021-04-19",
      "interest": "not interested"
    },
    {
      "index": 1486,
      "name": "omer mohammed adam fadl",
      "title": "radio journalist",
      "company": "Radio Albasira 96.3 FM Contract",
      "outbound_date": "2021-05-01",
      "interest": "not interested"
    },
    {
      "index": 1487,
      "name": "dwayne bess",
      "title": "excellence leader",
      "company": "Biohaven Full-time",
      "outbound_date": "2021-03-19",
      "interest": "no response"
    },
    {
      "index": 1488,
      "name": "scott fugate",
      "title": "actor",
      "company": "Jazz Evangelist Productions & Promotions",
      "outbound_date": "2021-03-08",
      "interest": "not interested"
    },
    {
      "index": 1489,
      "name": "ivy green-timmermans",
      "title": "scientist",
      "company": "\"LION\u2122 Worn with Pride!\"",
      "outbound_date": "2021-05-11",
      "interest": "irrelevant"
    },
    {
      "index": 1490,
      "name": "johnny t.",
      "title": "worship leader",
      "company": "Sweet Tee's Coffee",
      "outbound_date": "2021-06-20",
      "interest": "no response"
    },
    {
      "index": 1491,
      "name": "darin mellor ba msm",
      "title": "software support specialist",
      "company": "BMW",
      "outbound_date": "2021-07-01",
      "interest": "not interested"
    },
    {
      "index": 1492,
      "name": "natascha nanji",
      "title": "freelance writer & content creator",
      "company": "Rosetta Arts Contract",
      "outbound_date": "2021-07-12",
      "interest": "ongoing discussions"
    },
    {
      "index": 1493,
      "name": "jimmy o'donnell",
      "title": "director of photography",
      "company": "Canon C300 & 5ft MYT Cine Slider",
      "outbound_date": "2021-05-13",
      "interest": "no response"
    },
    {
      "index": 1494,
      "name": "larry reed iii",
      "title": "university",
      "company": "Employee Connections, INC., NFP Full-time",
      "outbound_date": "2021-06-19",
      "interest": "no response"
    },
    {
      "index": 1495,
      "name": "francis lj durant",
      "title": "director",
      "company": "MAXIPHONE",
      "outbound_date": "2021-04-20",
      "interest": "no response"
    },
    {
      "index": 1496,
      "name": "jacqueline kerr",
      "title": "broadcast journalist",
      "company": "Radio Jackie",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 1497,
      "name": "ibrahim reyes",
      "title": "trial lawyer",
      "company": "UNFCCC Freelance",
      "outbound_date": "2021-03-03",
      "interest": "no response"
    },
    {
      "index": 1498,
      "name": "monica thompson",
      "title": "BDO/BCM\ud83d\udd39Worship Leader\ud83d\udd39Student",
      "company": "b1BANK Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1499,
      "name": "arthur anthony",
      "title": "conservator",
      "company": "U.S. Department of Health and Human Services (HHS) Trainee",
      "outbound_date": "2021-06-28",
      "interest": "no response"
    },
    {
      "index": 1500,
      "name": "jeff guin",
      "title": "guiding strategies in heritage preservation",
      "company": "museum vizcaya",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1501,
      "name": "jose l rodriguez",
      "title": "founder & ceo",
      "company": "Qimonda AG",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 1502,
      "name": "lori bango",
      "title": "realtor",
      "company": "Lori Bango Writing, Editing, Marketing Services Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1503,
      "name": "\ud83d\udcf1martin hickey",
      "title": "CAPA CI Engineer QE3 ",
      "company": "General Dynamics Ordnance and Tactical Systems",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1504,
      "name": "sarba roy, cissp",
      "title": "product security consultant",
      "company": "Tata Consultancy Services",
      "outbound_date": "2021-07-14",
      "interest": "no response"
    },
    {
      "index": 1505,
      "name": "sonya griffin",
      "title": "vocalist",
      "company": "Vocalist - Self Employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1506,
      "name": "stuart bendall",
      "title": "marketing specialist",
      "company": "Strathcom Media Inc",
      "outbound_date": "2021-03-13",
      "interest": "no response"
    },
    {
      "index": 1507,
      "name": "gemma paton",
      "title": "social media management & content creation | founder of paton media",
      "company": "Matalan",
      "outbound_date": "2021-07-09",
      "interest": "no response"
    },
    {
      "index": 1508,
      "name": "erdall zasella",
      "title": "owner",
      "company": "RoyalGroup",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 1509,
      "name": "florence marshall",
      "title": "camp director",
      "company": "City of Life Worship and Deliverance Center",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1510,
      "name": "boyd ready",
      "title": "committee member",
      "company": "Hawaii Republican Party",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1511,
      "name": "dominic nuncio",
      "title": "pastor",
      "company": "Seacoast Community Church Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1512,
      "name": "corey nash",
      "title": "Board Member ",
      "company": "Ball & Socket Arts, Inc. Freelance",
      "outbound_date": "2021-07-01",
      "interest": "no response"
    },
    {
      "index": 1513,
      "name": "mark carter",
      "title": "lead pastor",
      "company": "leadership visioneering trinity college",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1514,
      "name": "kassiah faul",
      "title": "book enthusiast \u2764 swoon pusher \u2764 mobile notary",
      "company": "Mobile Notary of Louisiana",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1515,
      "name": "stefanie jaye griffin",
      "title": "chaplain",
      "company": "Delaware Hospice, Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1516,
      "name": "stefano selorio",
      "title": "founder & ceo",
      "company": "Rotary Club of Hollywood, FL",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1517,
      "name": "tara bradford, mm",
      "title": "pianist",
      "company": "Neighborhood Music School",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1518,
      "name": "megan van buren",
      "title": "passionate about making healthcare delivery methods more convenient",
      "company": "way for busines united",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1519,
      "name": "audrey brashich",
      "title": "journalist | content creator | author",
      "company": "Jump magazine",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1520,
      "name": "richard pocker",
      "title": "podcaster",
      "company": "Hearing Loss Association of America Sarasota/Manatee Chapter",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1521,
      "name": "rahul bhagat",
      "title": "software engineer",
      "company": "Texas A&M University - Civil Engineering Department",
      "outbound_date": "2021-04-05",
      "interest": "irrelevant"
    },
    {
      "index": 1522,
      "name": "ahmed khaled",
      "title": "General Manager",
      "company": "UPL Logistics",
      "outbound_date": "2021-04-21",
      "interest": "irrelevant"
    },
    {
      "index": 1523,
      "name": "christine mansour",
      "title": "Video Marketer",
      "company": "HV KRAS/Volendam Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1524,
      "name": "jj carroll",
      "title": "worship pastor",
      "company": "Eastside Christian Church - Anaheim, CA",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1525,
      "name": "susan fisher",
      "title": "business owner, instructor, performer, singer/songwriter, worship leader",
      "company": "Beyond Organic",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1526,
      "name": "gordon b. ortiz hamby, he, him, his",
      "title": "educator/trainer: implicit bias mgmnt., bullying prevention, identity, motivation, teamwork; speaker, author",
      "company": "group niche police bia implicit and for management organization bullying",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1527,
      "name": "al j. marschke",
      "title": "business development consultant",
      "company": "The Pittsburgh North Regional Chamber",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1528,
      "name": "polina mamont",
      "title": "marketing strategist & content creator",
      "company": "McQuarrie",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1529,
      "name": "wande alugo",
      "title": "seeking new freelance senior digital project manager opportunities",
      "company": "Wande's World",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1530,
      "name": "jessica chiriboga",
      "title": "student",
      "company": "national glsen council student",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1531,
      "name": "laura o'neill, mba",
      "title": "digital content creator, social media management, nonprofit marketing, science instructor",
      "company": "Hyatt Place",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1532,
      "name": "trevor harris",
      "title": "creator",
      "company": "Uglyradio.net Freelance",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1533,
      "name": "mike ridaught",
      "title": "sports director",
      "company": "Mainstreet Daily News Full-time",
      "outbound_date": "2021-03-30",
      "interest": "no response"
    },
    {
      "index": 1534,
      "name": "stetson butler",
      "title": "I love to make things beautiful",
      "company": "Chapelstreet Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1535,
      "name": "camille joy powell",
      "title": "caster",
      "company": "voice intervieweryouth",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1536,
      "name": "colleen mccoy-cejka",
      "title": "leader in education",
      "company": "Diocese of Phoenix",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1537,
      "name": "benjamin maiava",
      "title": "content creator",
      "company": "Kathmandu",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1538,
      "name": "elizabeth rae (siedt) taylor",
      "title": "freelance graphic designer",
      "company": "Etsy",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1539,
      "name": "felipe chamon",
      "title": "college graduate looking for film and television assistant or entry-level opportunities",
      "company": "university boston",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1540,
      "name": "daniel warren",
      "title": "photographer",
      "company": "The Conference of Churches",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1541,
      "name": "scott fugger",
      "title": "caster",
      "company": "Whole Foods Full-time",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 1542,
      "name": "andrew ogea",
      "title": "pastor",
      "company": "Venue Church Contract",
      "outbound_date": "2021-05-28",
      "interest": "no response"
    },
    {
      "index": 1543,
      "name": "jaclynn pehota",
      "title": "executive director",
      "company": "Insurance Brokers Association of BC",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 1544,
      "name": "nicholas ladue",
      "title": "marketing assistant",
      "company": "studie cinema university southern media",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1545,
      "name": "ernze oni",
      "title": "caster",
      "company": "Ernze And The Hot Chick Part-time",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1546,
      "name": "charly tate",
      "title": "communications officer",
      "company": "Tater Thoughts",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1547,
      "name": "sharon narvaez",
      "title": "general manager",
      "company": "Soulcialistic Approach \u2122 Podcast Self-employed",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1548,
      "name": "samantha shroll",
      "title": "receptionist",
      "company": "California Baptist University Full-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1549,
      "name": "sarah may bates",
      "title": "creative director",
      "company": "Help Me Be Me",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1550,
      "name": "kelvin nembo njuhsop",
      "title": "multimedia journalist",
      "company": "The Median Newspaper",
      "outbound_date": "2021-04-08",
      "interest": "no response"
    },
    {
      "index": 1551,
      "name": "kate smallwood",
      "title": "content creator - editorial consultant",
      "company": "Kate Smallwood",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1552,
      "name": "ademola adedoyin",
      "title": "graduate assistant",
      "company": "Thomas J. Watson College of Engineering and Applied Science, Binghamton University",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 1553,
      "name": "helen nolan",
      "title": "Sales Manager ",
      "company": "Nation Broadcasting",
      "outbound_date": "2021-05-11",
      "interest": "no response"
    },
    {
      "index": 1554,
      "name": "andrea johnson",
      "title": "COO & Co-Founder ",
      "company": "JAWiC (Jamaican Women in Coffee)",
      "outbound_date": "2021-03-11",
      "interest": "not interested"
    },
    {
      "index": 1555,
      "name": "mahmoud abdelaziz",
      "title": "General Accountant ",
      "company": "La pomme",
      "outbound_date": "2021-04-21",
      "interest": "irrelevant"
    },
    {
      "index": 1556,
      "name": "leslie tomlinson",
      "title": "Relationship Manager for Government Contractors",
      "company": "McAleese and Associates",
      "outbound_date": "2021-04-29",
      "interest": "not interested"
    },
    {
      "index": 1557,
      "name": "rick bassman",
      "title": "partner",
      "company": "live event entertainment television and",
      "outbound_date": "2021-06-23",
      "interest": "yes call booked"
    },
    {
      "index": 1558,
      "name": "caven masuku",
      "title": "cto",
      "company": "THE VOICE OF ZIMBABWE (ZBC)",
      "outbound_date": "2021-05-11",
      "interest": "no response"
    },
    {
      "index": 1559,
      "name": "ahmed yousry",
      "title": "General manager ",
      "company": "Jojaro group",
      "outbound_date": "2021-04-05",
      "interest": "irrelevant"
    },
    {
      "index": 1560,
      "name": "abraham zangana",
      "title": "realtor",
      "company": "Keller Williams Realty",
      "outbound_date": "2021-03-10",
      "interest": "not interested"
    },
    {
      "index": 1561,
      "name": "p.j. petrey",
      "title": "vice president",
      "company": "Federal Service Corporation",
      "outbound_date": "2021-05-28",
      "interest": "no response"
    },
    {
      "index": 1562,
      "name": "josh olin",
      "title": "teller",
      "company": "OverActive Media Group",
      "outbound_date": "2021-04-29",
      "interest": "no response"
    },
    {
      "index": 1563,
      "name": "michael dean mcgrady jr",
      "title": "critic",
      "company": "Lincoln Network Contract",
      "outbound_date": "2021-06-23",
      "interest": "response"
    },
    {
      "index": 1564,
      "name": "jared safier",
      "title": "film producer",
      "company": "Filmaka",
      "outbound_date": "2021-05-13",
      "interest": "no response"
    },
    {
      "index": 1565,
      "name": "lidania cerda",
      "title": "art instructor",
      "company": "Iglesia Oikos",
      "outbound_date": "2021-06-05",
      "interest": "no response"
    },
    {
      "index": 1566,
      "name": "dennis ackerman",
      "title": "broadcaster & podcaster",
      "company": "Bleav Podcast Network Self-employed",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1567,
      "name": "valentine kong",
      "title": "entertainment manager",
      "company": "Boys & Girls club of Greater Lowell Part-time",
      "outbound_date": "2021-07-05",
      "interest": "no response"
    },
    {
      "index": 1568,
      "name": "alistair upton",
      "title": "founder & content creator",
      "company": "Focus on Talent",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 1569,
      "name": "fintan murphy",
      "title": "Helping Business with Digital Transformation",
      "company": "Sitel",
      "outbound_date": "2021-05-19",
      "interest": "no response"
    },
    {
      "index": 1570,
      "name": "christine teh",
      "title": "20% off sale (sched a complimentary\ud83d\udc47\ud83c\udffb)financial coach | money queen \ud83e\udddd\ud83c\udffb\u200d\u2640\ufe0f | i help transform your relationship with money | tax consultant | irs enrolled agent (ea) | linkedin course below \ud83d\udc47\ud83c\udffc | dog mom of 2 \ud83d\udc15\ud83d\udc15",
      "company": "tax consultant ir",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 1571,
      "name": "jon baccarini, cmd",
      "title": "Member Services ",
      "company": "Vantage Health Plan",
      "outbound_date": "2021-05-26",
      "interest": "no response"
    },
    {
      "index": 1572,
      "name": "josh cooter",
      "title": "full stack software engineer",
      "company": "Perpetual",
      "outbound_date": "2021-07-20",
      "interest": "no response"
    },
    {
      "index": 1573,
      "name": "leann thomas",
      "title": "Vocal Music Director",
      "company": "Norris School District",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1574,
      "name": "donnie cobb",
      "title": "Chair/Professor - CIS/Engineering Technology ",
      "company": "East McFarland Baptist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1575,
      "name": "aaren george",
      "title": "Senior Full Stack Developer ",
      "company": "Dulgar and Associates",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1576,
      "name": "zachary gillis",
      "title": "Worship Leader & Care Coordinator",
      "company": "South Bend Civic Theatre",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1577,
      "name": "shawn s",
      "title": "supptalk radio host",
      "company": "SuppTalk Radio",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1578,
      "name": "jennifer coluccio",
      "title": "writer and researcher",
      "company": "Freelance",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1579,
      "name": "eric white",
      "title": "self-taught video editor",
      "company": "The Respondent Freelance",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1580,
      "name": "paul. hammond",
      "title": "virtualization architect",
      "company": "Metropolitan Ministries",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1581,
      "name": "juan castaneda",
      "title": "conductor",
      "company": "California Baptist University",
      "outbound_date": "2021-06-08",
      "interest": "no response"
    },
    {
      "index": 1582,
      "name": "lauren cunningham",
      "title": "senior creative strategist - digital campaigns, dynamic content, interactive experiences",
      "company": "The Fashion Office",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1583,
      "name": "nancie clare",
      "title": "author",
      "company": "AARP's Life Reimagined",
      "outbound_date": "2021-07-07",
      "interest": "pending"
    },
    {
      "index": 1584,
      "name": "jasia liane nicolas",
      "title": "content creator intern",
      "company": "Pilipinx American Alliance",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1585,
      "name": "sheena deans",
      "title": "people programs",
      "company": "MasterClass",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1586,
      "name": "michael spedden",
      "title": "actor",
      "company": "kimmy Vs The Reverend",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1587,
      "name": "steph (marx) barnes",
      "title": "digital marketing lead",
      "company": "Travis Credit Union",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1588,
      "name": "olivia woods",
      "title": "editorial assistant",
      "company": "Me Education, LLC.",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1589,
      "name": "marcela fernandez",
      "title": "principal",
      "company": "TUS CINCO PODERES",
      "outbound_date": "2021-05-31",
      "interest": "no response"
    },
    {
      "index": 1590,
      "name": "mihika jeyanth",
      "title": "copywriter | creative strategist",
      "company": "AiSolve Limited Full-time",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1591,
      "name": "casey kloese",
      "title": "hospitality driven",
      "company": "Wick's Park Bar and Grille",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1592,
      "name": "jeremy harpley",
      "title": "i help make anesthesia departments more profitable",
      "company": "crna anesthesia sweet dream",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1593,
      "name": "austin peterson, cfp\u00ae,clu\u00ae, cbec\u00ae , mba",
      "title": "financial planner",
      "company": "ut co va united sipc university young ga wa nv backbone financial lincoln brigham ny in ca",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1594,
      "name": "jason rouse",
      "title": "actor",
      "company": "INC",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1595,
      "name": "go team podcast -- editing and consultation",
      "title": "podcasting solutions for your brand!!",
      "company": "Go Team Podcast Self-employed",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1596,
      "name": "terri morgan",
      "title": "caster",
      "company": "Lakeside RV Park Part-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1597,
      "name": "andy lau",
      "title": "product leader",
      "company": "Rove Technologies Self-employed",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1598,
      "name": "john ryan",
      "title": "consultant",
      "company": "JT3",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1599,
      "name": "kyle keca (he/him/his)",
      "title": "data analyst",
      "company": "Sloan Sports Analytics Conference",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1600,
      "name": "korey kuhl",
      "title": "podcaster",
      "company": "AspireIQ (formerly Revfluence) Full-time",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1601,
      "name": "karen morgan",
      "title": "producer",
      "company": "Karen Morgan Full-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1602,
      "name": "joaquin ramirez robilliard",
      "title": "e-commerce marketing content creator",
      "company": "Mimi So International",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1603,
      "name": "elizabeth (belber) hess",
      "title": "marketing assistant",
      "company": "broadcasting strong",
      "outbound_date": "2021-06-28",
      "interest": "no response"
    },
    {
      "index": 1604,
      "name": "Chris Streveler",
      "title": "Quarterback- Winnipeg Blue Bombers (CFL)",
      "company": "University of Minnesota",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 1605,
      "name": "elisha (dube) bongay",
      "title": "Worship Leader - Cornerstone Fellowship",
      "company": "MadeToOrder.com",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1606,
      "name": "chuck thuss",
      "title": "coach",
      "company": "miami coach university professional spiritual",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1607,
      "name": "raven alford",
      "title": "sales agent",
      "company": "PetFirst Pet Insurance Full-time",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1608,
      "name": "jose eleazar gudi\u00f1o",
      "title": "news producer",
      "company": "Kema Madera Podcast Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1609,
      "name": "dennis duquette (he/him)",
      "title": "Data analysis and automation | Ingestion",
      "company": "Blueprint Medicines Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1610,
      "name": "vincent (vinnie hines) hines",
      "title": "coo",
      "company": "Carnival Cruise Line Full-time",
      "outbound_date": "2021-07-07",
      "interest": "pending"
    },
    {
      "index": 1611,
      "name": "kelcey dibernardo",
      "title": "entertainment",
      "company": "Disney Youth Programs",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1612,
      "name": "barry farah",
      "title": "ceo",
      "company": "The Barry Farah Show - Culture Shift",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1613,
      "name": "sam hyun",
      "title": "chairperson",
      "company": "Commonwealth of Massachusetts Asian American Commission",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1614,
      "name": "karey nickel",
      "title": "success coach",
      "company": "Isagenix",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1615,
      "name": "curtis ferrell",
      "title": "worship leader",
      "company": "Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1616,
      "name": "j. jenny kim",
      "title": "ux strategy manager",
      "company": "Facebook Contract",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1617,
      "name": "joe hickey",
      "title": "freelance videographer - content consultant",
      "company": "BodyPower",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1618,
      "name": "alicia bertomeu",
      "title": "digital marketing & creative",
      "company": "sous le manteau Freelance",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1619,
      "name": "justin jackson",
      "title": "Contracts/Grants Reviewer ",
      "company": "Kirkland's Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1620,
      "name": "amy turner, ma, lmft, laadc-r, rtt",
      "title": "owner",
      "company": "Mindvalley",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1621,
      "name": "paris prynkiewicz",
      "title": "host",
      "company": "ADP Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1622,
      "name": "sydney kline",
      "title": "management assistant",
      "company": "LongSchaefer - Tax, Accounting & Financial Services Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1623,
      "name": "shelly stapp findley",
      "title": "coo",
      "company": "Toomsuba Baptist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1624,
      "name": "diane ls (mandia zimmermann) percoco",
      "title": "group leader",
      "company": "Ulster County Community Action",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1625,
      "name": "ryan larue",
      "title": "pastor",
      "company": "IBERIABANK",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1626,
      "name": "brian elliott",
      "title": "Vocals ",
      "company": "Illumination Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1627,
      "name": "anna sabino",
      "title": "ask me how to become social media famous with a 6 figure fanbase \ud83d\udd25 business coach \ud83c\udfa4 personal brand strategist | social media marketing instagram tips \u270d\ufe0f clubhouse bio tips | content creator",
      "company": "Your Creative Career book",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 1628,
      "name": "brandon breshears",
      "title": "caster",
      "company": "facebook google",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1629,
      "name": "david h.",
      "title": "student",
      "company": "university taylor",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1630,
      "name": "danielle lerose",
      "title": "project manager",
      "company": "Get Rose Podcast Self-employed",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1631,
      "name": "chris noth",
      "title": "unit director",
      "company": "AmplifiedDsm Freelance",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1632,
      "name": "rocky jones",
      "title": "pastor",
      "company": "Mira Mesa Christian Fellowship",
      "outbound_date": "2021-06-09",
      "interest": "no response"
    },
    {
      "index": 1633,
      "name": "patrick clemons",
      "title": "WCU Journalism Graduate",
      "company": "The Western Carolinian",
      "outbound_date": "2021-03-05",
      "interest": "no response"
    },
    {
      "index": 1634,
      "name": "alex russell-rutherford, ccxp",
      "title": "customer experience transformation expert, he/him",
      "company": "Wessex Water",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1635,
      "name": "krystal torres",
      "title": "caster",
      "company": "CBS Radio",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1636,
      "name": "joe waters",
      "title": "partner",
      "company": "forbe state time hubspot ocean staple reuter food huffington medical journal oil inspiring nonprofit center instant lot city cause tedeschi america virgin fast healthcare school shop the philanthropy bruin fuddrucker good university new change job mediapost georgetown quarterly post valvoline event boston generosity mcdonough network for chronicle england zipcar york wa company",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1637,
      "name": "aaron smith",
      "title": "student",
      "company": "toefl youtube",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1638,
      "name": "roxanne wilson",
      "title": "coach",
      "company": "law state bachelor texa court her nbc united however justice university michigan marketer network administration baylor busines supreme",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1639,
      "name": "kenna castleberry",
      "title": "science communicator",
      "company": "Katie Anderson Coaching LLC Full-time",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1640,
      "name": "nick doll",
      "title": "writer",
      "company": "Culver's Restaurants Full-time",
      "outbound_date": "2021-07-02",
      "interest": "pending"
    },
    {
      "index": 1641,
      "name": "brayden drevlow",
      "title": "concert pianist",
      "company": "Concert Pianist",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1642,
      "name": "Chloe Dalton OAM",
      "title": "Dual Professional Athlete ",
      "company": "Rugby Australia",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 1643,
      "name": "mike leffer",
      "title": "vc investor and principal @ early light ventures",
      "company": "Early Light Ventures Full-time",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1644,
      "name": "reverend nanci adair",
      "title": "Owner, Life Coach, Creative Director ",
      "company": "Mercy Hospital Recovery Center",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1645,
      "name": "mandy jackson-beverly",
      "title": "host",
      "company": "The Bookshop Podcast",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1646,
      "name": "carolyn hernandez",
      "title": "organizer i",
      "company": "NEAT Method Part-time",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1647,
      "name": "tiana denicola",
      "title": "post production supervisor",
      "company": "Variety",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1648,
      "name": "robin knight chapman",
      "title": "vice president",
      "company": "Chapman Media Bayou,Gulf & SE Tennessee Regions",
      "outbound_date": "2021-04-13",
      "interest": "not interested"
    },
    {
      "index": 1649,
      "name": "corein carter",
      "title": "contributor",
      "company": "Business Blurb Freelance",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1650,
      "name": "drew reid",
      "title": "Worship Leader | Songwriter | Media Director",
      "company": "Chappelli Cycles",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1651,
      "name": "kevin wyatt",
      "title": "free thinking annoying podcaster",
      "company": "Sylacauga First United Methodist Church",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1652,
      "name": "becky nordquist",
      "title": "worship leader",
      "company": "Becky Nordquist Ministries",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1653,
      "name": "leah perri",
      "title": "senior marketing manager",
      "company": "Deseret Digital Media",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1654,
      "name": "natasha adams",
      "title": "chief marketing officer",
      "company": "Digital Plus, Inc",
      "outbound_date": "2021-03-01",
      "interest": "no response"
    },
    {
      "index": 1655,
      "name": "apostle jacqueline s.",
      "title": "chief justice",
      "company": "DESTROYING DEMONIC FAMILY ALTARS & PORTALS & BUILDING a HOLY ALTAR to JESUS in HOMES & HEARTS;",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1656,
      "name": "ben alston",
      "title": "worship director",
      "company": "Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1657,
      "name": "michael jackson",
      "title": "information technology manager",
      "company": "Business Aircraft Records",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1658,
      "name": "nate bergengren",
      "title": "director",
      "company": "Faith Lutheran Church (ELCA) Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1659,
      "name": "laticia rolle",
      "title": "caster",
      "company": "TRESS, the hat for us",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1660,
      "name": "cindy cauley",
      "title": "caster",
      "company": "Expat Families Podcast Self-employed",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 1661,
      "name": "keri r.",
      "title": "brand evangelist - north america",
      "company": "Ingram Micro Freelance",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1662,
      "name": "juliann scholl",
      "title": "web content writer",
      "company": "OneCare Media Contract",
      "outbound_date": "2021-07-12",
      "interest": "no response"
    },
    {
      "index": 1663,
      "name": "megan conway",
      "title": "social media coordinator",
      "company": "Arbonne",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1664,
      "name": "anthony pazzano",
      "title": "content creator i broadcast student i gamer",
      "company": "heypazzano (Live Streams and Content Creation)",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1665,
      "name": "robert wakefield",
      "title": "freelance creative/ content creator and screen writer",
      "company": "The Viral Factory",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1666,
      "name": "tonia fishman",
      "title": "consultant - resume, content, branding | content creator | administrative assistant | #tfish",
      "company": "KB by Kirsty Bonner",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1667,
      "name": "aretha graham-caley",
      "title": "clinical educator",
      "company": "Church of God of Prophecy",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1668,
      "name": "ken woodward",
      "title": "curate",
      "company": "Curated Questions Freelance",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1669,
      "name": "jim wills",
      "title": "Big Cheese ",
      "company": "1World Studios",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1670,
      "name": "adrian lee borden",
      "title": "director",
      "company": "First United Methodist Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1671,
      "name": "craig swenson",
      "title": "worship leader",
      "company": "Community Church of Joy",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1672,
      "name": "jerry l. sharpe",
      "title": "aba therapist",
      "company": "Southern New England Diocese of the Church of the Living God, Inc.",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1673,
      "name": "charlie lane",
      "title": "principal",
      "company": "CreativeStaffing.Church Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1674,
      "name": "ty f. olsen",
      "title": "worship leader",
      "company": "Mamaka Bowls Part-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1675,
      "name": "corrado amenta",
      "title": "\"A pretentious",
      "company": "Tech Launchpad",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1676,
      "name": "larry davies",
      "title": "pastor",
      "company": "Fredericksburg United Methodist Church",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 1677,
      "name": "mary-katherine fleming",
      "title": "founder",
      "company": "women pennsylvania leonard coach lauder foundation fitnes wharton protection llc school the institute busines university georgetown studie international colorado",
      "outbound_date": "2021-07-07",
      "interest": "no response"
    },
    {
      "index": 1678,
      "name": "dave levora",
      "title": "program director",
      "company": "iHeartRadio",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1679,
      "name": "david starcer",
      "title": "freelancer",
      "company": "Imagetek Photography",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1680,
      "name": "don alexander",
      "title": "caster",
      "company": "Alexander Sports Promotions LLC. Self-employed",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1681,
      "name": "blake hamilton",
      "title": "inspiring pr liaison",
      "company": "Eric Mower + Associates Internship",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1682,
      "name": "nick calvacca",
      "title": "sports media",
      "company": "The University of Alabama Part-time",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1683,
      "name": "anais amaya",
      "title": "caster",
      "company": "De Raiz a Flor",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1684,
      "name": "maddy kim",
      "title": "marketing intern",
      "company": "science university literature school michigan",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1685,
      "name": "sam decaprio",
      "title": "operations analyst",
      "company": "edly ISA marketplace Internship",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1686,
      "name": "ijeoma eleazu, pharm.d",
      "title": "pharmacist",
      "company": "Etsy Conversations Podcast Freelance",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1687,
      "name": "anthony anglero",
      "title": "Worship Leader/Youth Pastor ",
      "company": "New Life Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1688,
      "name": "michael garofalo",
      "title": "Double Major in Management and Finance; Minor in Sports Management",
      "company": "Waave",
      "outbound_date": "2021-06-25",
      "interest": "no response"
    },
    {
      "index": 1689,
      "name": "calvin barnes",
      "title": "podcaster",
      "company": "NewLife Church",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1690,
      "name": "alan mcpeck",
      "title": "loving life",
      "company": "Bob Evans Farms, Inc.",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1691,
      "name": "anthony diguilio",
      "title": "barstool heartland",
      "company": "Barstool Sports",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1692,
      "name": "mary evelyn cesar",
      "title": "Worship Leader",
      "company": "Grace Chapel",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1693,
      "name": "scott wesley brown",
      "title": "Lead Pastor Sonship Community",
      "company": "SWB Music",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1694,
      "name": "randall d. shumate jr.",
      "title": "worship pastor",
      "company": "Uber Full-time",
      "outbound_date": "2021-05-25",
      "interest": "not interested"
    },
    {
      "index": 1695,
      "name": "nakaisha t.",
      "title": "founder & ceo",
      "company": "My Feelings Over Tea Podcast Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1696,
      "name": "faye higbee",
      "title": "author",
      "company": "First Assembly Church",
      "outbound_date": "2021-06-02",
      "interest": "no response"
    },
    {
      "index": 1697,
      "name": "anthony forte",
      "title": "senior content creator",
      "company": "Power Digital Marketing",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 1698,
      "name": "cornelius edwards",
      "title": "season 9 sunday best contestant",
      "company": "Ministry Full-time",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1699,
      "name": "michella dilworth",
      "title": "content creator",
      "company": "Rock & Roll Hall of Fame",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1700,
      "name": "benjamin ady",
      "title": "music pastor",
      "company": "Christ's Church of the Valley",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1701,
      "name": "stan thompson",
      "title": "operations manager",
      "company": "MSS",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1702,
      "name": "aron bender",
      "title": "host",
      "company": "Pasadena Now Full-time",
      "outbound_date": "2021-06-07",
      "interest": "yes call booked"
    },
    {
      "index": 1703,
      "name": "jace jellison",
      "title": "mass communications student",
      "company": "Carmel Street Department Part-time",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1704,
      "name": "david stein",
      "title": "Money For the Rest of Us",
      "company": "AT&T",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1705,
      "name": "\ud83d\udcf6 rowell dionicio",
      "title": "engineering simple",
      "company": "grand college good collaboration egg grove round francisco citru san aurora medium mit innovation institute art pandadoc",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1706,
      "name": "alicia harlov",
      "title": "hoofcare professional and podcaster with the humble hoof",
      "company": "The Humble Hoof",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1707,
      "name": "keith carter",
      "title": "worship leader",
      "company": "Discount Music Center",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1708,
      "name": "gisselle rodriguez",
      "title": "seeking communications and marketing roles",
      "company": "Garland Independent School District",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1709,
      "name": "kim paczynski",
      "title": "caster",
      "company": "One Non-Blonde",
      "outbound_date": "2021-06-21",
      "interest": "pending"
    },
    {
      "index": 1710,
      "name": "dennis maler",
      "title": "host",
      "company": "Congregation Dorshei Tzedek Part-time",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1711,
      "name": "patrick robinson",
      "title": "worship leader",
      "company": "Garmin International",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1712,
      "name": "sidrah niaz",
      "title": "digital content creator",
      "company": "Self Employed Self-employed",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1713,
      "name": "johnny f. kim",
      "title": "visual content creator",
      "company": "LANDR Audio",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1714,
      "name": "josie mander",
      "title": "visual merchandiser, content creator & fashion design graduate",
      "company": "Marks and Spencer Internship",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1715,
      "name": "danica abrams",
      "title": "junior content creator",
      "company": "EAMA Inc.",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1716,
      "name": "jen mcfarland",
      "title": "if you're struggling to balance digital marketing with running your business, i\u2019ve got you",
      "company": "Women Conquer Business",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1717,
      "name": "judy mai",
      "title": "marketer operations analyst",
      "company": "Smaato",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1718,
      "name": "ruanna o.",
      "title": "digital marketer @ tomtom | passionate about dei, education, & tech for good",
      "company": "TomTom",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1719,
      "name": "matthew gregory",
      "title": "host",
      "company": "Goodyear Ballpark Part-time",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1720,
      "name": "derrick story",
      "title": "specialist",
      "company": "LinkedIn",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1721,
      "name": "jennifer james",
      "title": "author",
      "company": "I'm Sick, Not Crazy with Jennifer James, MFT Self-employed",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1722,
      "name": "jason goldberg",
      "title": "chief commerce strategy officer",
      "company": "national retail federation",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1723,
      "name": "stella vasileva",
      "title": "blogger",
      "company": "reckitt red bull benckiser",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1724,
      "name": "barry fish",
      "title": "musician",
      "company": "Gulf Beach Baptist Church Full-time",
      "outbound_date": "2021-06-15",
      "interest": "pending"
    },
    {
      "index": 1725,
      "name": "sophia situmeang",
      "title": "student",
      "company": "Aegon Asset Management Internship",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1726,
      "name": "chuck fromm",
      "title": "publisher",
      "company": "Worship Leader Magazine",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1727,
      "name": "bob frost",
      "title": "worship leader",
      "company": "Ascension Lutheran Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1728,
      "name": "kelby bruno",
      "title": "songwriter",
      "company": "Kelby Music",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1729,
      "name": "jared klim",
      "title": "director of podcast development",
      "company": "New York Life Insurance Company",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1730,
      "name": "josh augustine",
      "title": "senior game designer",
      "company": "Blizzard Entertainment",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1731,
      "name": "krisjan hiner",
      "title": "co-founder",
      "company": "ikea srg",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1732,
      "name": "sean garmer",
      "title": "founder",
      "company": "UPS Part-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1733,
      "name": "dixie de la tour",
      "title": "teller",
      "company": "Various, Inc.",
      "outbound_date": "2021-06-16",
      "interest": "pending"
    },
    {
      "index": 1734,
      "name": "shannon legrand- range",
      "title": "realtor",
      "company": "Creegan Group Full-time",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1735,
      "name": "david moscrip",
      "title": "strategy consultant",
      "company": "St Andrew's UMC",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1736,
      "name": "alexandra harbushka",
      "title": "podcaster and lifestyle expert",
      "company": "alexandraharbushka.com",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1737,
      "name": "lauren mcnair",
      "title": "actor",
      "company": "Dunkin Donuts Full-time",
      "outbound_date": "2021-06-23",
      "interest": "pending"
    },
    {
      "index": 1738,
      "name": "ross mcbride",
      "title": "executive director",
      "company": "Pitney Bowes Management Services",
      "outbound_date": "2021-04-06",
      "interest": "no response"
    },
    {
      "index": 1739,
      "name": "lucas bleackley petter",
      "title": "video & content creator",
      "company": "LucasPetter.com",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1740,
      "name": "igor zivkovic",
      "title": "digital marketing manager",
      "company": "PinMalta.com Permanent Part-time",
      "outbound_date": "2021-07-14",
      "interest": "pending"
    },
    {
      "index": 1741,
      "name": "logan mielke",
      "title": "Firefighter Paramedic ",
      "company": "Pasco County Fire Department",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1742,
      "name": "dorothy wright",
      "title": "Finance Specialist ",
      "company": "Hospitality Staffing Solutions Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1743,
      "name": "Connor Carlisle",
      "title": "Sports Marketing Assistant ",
      "company": "Delta Tau Chapter of Delta Sigma Pi",
      "outbound_date": "2021-08-02",
      "interest": "pending"
    },
    {
      "index": 1744,
      "name": "elizabeth koch",
      "title": "podcaster",
      "company": "DigitalMarketer",
      "outbound_date": "2021-06-12",
      "interest": "pending"
    },
    {
      "index": 1745,
      "name": "brian wilson",
      "title": "se regional manager of noram inside sales, sales engineer, and podcaster",
      "company": "WebMD",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1746,
      "name": "jeremy werner",
      "title": "news director",
      "company": "Northwest Missouri State University",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1747,
      "name": "heather messick",
      "title": "vocalist",
      "company": "Self Employed Musician and Speaker",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1748,
      "name": "fred zucule",
      "title": "creative business enthusiast",
      "company": "Pomona College",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1749,
      "name": "jason lancaster",
      "title": "worship leader",
      "company": "Fearless Records",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1750,
      "name": "sam ladue",
      "title": "graduate student",
      "company": "San Francisco Night Ministry Part-time",
      "outbound_date": "2021-05-30",
      "interest": "no response"
    },
    {
      "index": 1751,
      "name": "brigette wagner, cclc, cep",
      "title": "director",
      "company": "Southeastern University",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1752,
      "name": "jack chandler walters",
      "title": "worship pastor",
      "company": "Nappanee Missionary Church",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1753,
      "name": "iain pringle",
      "title": "managing partner",
      "company": "The Loyalty Podcast Part-time",
      "outbound_date": "2021-07-20",
      "interest": "pending"
    },
    {
      "index": 1754,
      "name": "david hartshorne",
      "title": "freelance writer for b2b saas brands and agencies",
      "company": "Azahar Media",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1755,
      "name": "baptiste leroux",
      "title": "digital content creator umg \u2502 animator \u2502 creative director",
      "company": "Universal Music Group Part-time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1756,
      "name": "shannon burch",
      "title": "co-founder of brilliantly forward - western financial group contact centre",
      "company": "Brilliantly Forward Self-employed",
      "outbound_date": "2021-07-16",
      "interest": "pending"
    },
    {
      "index": 1757,
      "name": "rick kaempfer",
      "title": "publisher",
      "company": "Radio Misfits Podcast Network",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1758,
      "name": "johnny keatth",
      "title": "host",
      "company": "Johnny Keatth's Actors Radio Freelance",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1759,
      "name": "dave woll",
      "title": "disc jockey",
      "company": "The Pigeon Whole Podcast Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1760,
      "name": "david grubb",
      "title": "analyst",
      "company": "WODT Sports 1280 AM Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1761,
      "name": "morgan jones",
      "title": "architect",
      "company": "Historic Wesley Center on Grant",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1762,
      "name": "jon acosta",
      "title": "worship leader",
      "company": "Rainmaker Marketing, LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1763,
      "name": "andrea chamberlin",
      "title": "worship leader",
      "company": "Calvary Tucson Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1764,
      "name": "jason bartlett",
      "title": "creative art director - content creator - writer",
      "company": "It's My Shout Productions Ltd",
      "outbound_date": "2021-07-15",
      "interest": "pending"
    },
    {
      "index": 1765,
      "name": "paris grant",
      "title": "banking representative",
      "company": "finance bachelor fiu",
      "outbound_date": "2021-07-07",
      "interest": "pending"
    },
    {
      "index": 1766,
      "name": "charles nash",
      "title": "contributing writer",
      "company": "film festival college boston emerson independent radio critic underground association online sxsw geek sundance",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1767,
      "name": "christopher reed",
      "title": "film critic",
      "company": "critic media tisch art film washington school the baltimore university new dc yale area harvard department association dragon york sun wafca stevenson",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1768,
      "name": "alan annis",
      "title": "passionate about agile marketing",
      "company": "agile google",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1769,
      "name": "duncan lindsey",
      "title": "caster",
      "company": "university troy",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1770,
      "name": "elizabeth belliveau, msw, licsw",
      "title": "owner",
      "company": "Baypath University",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1771,
      "name": "sharif york",
      "title": "designer | founder | keynote speaker | helping others succeed in design and on linkedin",
      "company": "BoostU Self-employed",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 1772,
      "name": "lance simmons",
      "title": "Network Engineer ",
      "company": "The Rock",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1773,
      "name": "christine smit",
      "title": "Private Lesson Instructor ",
      "company": "SAN MARINO MUSIC CENTER LLC",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1774,
      "name": "gina birch",
      "title": "Freelance journalist",
      "company": "Florida Weekly",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1775,
      "name": "shane hunt",
      "title": "manager - learning services / fletcher library",
      "company": "The Disinformed Podcast Self-employed",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1776,
      "name": "kevin saito",
      "title": "regional director",
      "company": "Huaka'i",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1777,
      "name": "chris brough",
      "title": "Freight Broker ",
      "company": "Fire By Night",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1778,
      "name": "anette talie lyons-evans",
      "title": "caster",
      "company": "SKLARchitecture",
      "outbound_date": "2021-06-28",
      "interest": "pending"
    },
    {
      "index": 1779,
      "name": "christina armand",
      "title": "manager",
      "company": "Gunawirra",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1780,
      "name": "denise deshetler",
      "title": "bodyworker, educator, podcaster",
      "company": "Green Chiropractic Clinic",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1781,
      "name": "daniel charlton",
      "title": "recruit division commander",
      "company": "Bolt Mobility Full-time",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1782,
      "name": "arnie davidson",
      "title": "Company Owner ",
      "company": "HearWrite.com",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1783,
      "name": "kristina risinger",
      "title": "podcaster",
      "company": "communication production media",
      "outbound_date": "2021-06-17",
      "interest": "pending"
    },
    {
      "index": 1784,
      "name": "jacques lagrange jr.",
      "title": "podcaster",
      "company": "Archbishop Carroll High School Full-time",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1785,
      "name": "aaron sanchez",
      "title": "owner producer, podcaster, public speaker",
      "company": "Aaron Sanchez Sculpture",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1786,
      "name": "jamie casagrande",
      "title": "producer",
      "company": "Hudson&Canal Full-time",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1787,
      "name": "m. curtis mccoy",
      "title": "caster",
      "company": "development mvno busines",
      "outbound_date": "2021-07-01",
      "interest": "pending"
    },
    {
      "index": 1788,
      "name": "reneir c.",
      "title": "entrepreneur | live streamer | podcaster | digital marketer | esports gamer",
      "company": "CHAMP CRUISE",
      "outbound_date": "2021-06-29",
      "interest": "pending"
    },
    {
      "index": 1789,
      "name": "juan hartt",
      "title": "caster",
      "company": "healthy hartt lifestyle",
      "outbound_date": "2021-07-08",
      "interest": "no response"
    },
    {
      "index": 1790,
      "name": "spooky boo",
      "title": "writer",
      "company": "Apple Full-time",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1791,
      "name": "robin tillotson",
      "title": "Chief Cultural Officer ",
      "company": "This I Do For Me Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1792,
      "name": "melissa green",
      "title": "art director | designer | everyday athlete",
      "company": "Freelance",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1793,
      "name": "zachary dore",
      "title": "director of social media",
      "company": "Orangetheory Fitness",
      "outbound_date": "2021-07-19",
      "interest": "pending"
    },
    {
      "index": 1794,
      "name": "brooke rodi",
      "title": "student",
      "company": "university southern california",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1795,
      "name": "athena lucene",
      "title": "author",
      "company": "Universal Heart Coaching",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1796,
      "name": "michele carr",
      "title": "teller",
      "company": "Jun Group",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1797,
      "name": "erik fisher",
      "title": "director",
      "company": "Agorapulse Full-time",
      "outbound_date": "2021-06-14",
      "interest": "pending"
    },
    {
      "index": 1798,
      "name": "pia jo reynolds",
      "title": "director",
      "company": "PULSE Outreach",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1799,
      "name": "margie novelo",
      "title": "sales manager",
      "company": "Lowe's Home Improvement",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1800,
      "name": "meagan whiteside",
      "title": "Leading people into the presence of God is never work. It\u2019s a privilege.",
      "company": "Alarm.com",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1801,
      "name": "jasan boles",
      "title": "analyst",
      "company": "Exit 86 band Contract",
      "outbound_date": "2021-05-31",
      "interest": "no connection"
    },
    {
      "index": 1802,
      "name": "stephen dijulius",
      "title": "leasing representative",
      "company": "Concrete Builders Consolidated, LLC",
      "outbound_date": "2021-06-30",
      "interest": "pending"
    },
    {
      "index": 1803,
      "name": "donald m. stinson, fstratps",
      "title": "author",
      "company": "author planning and sale strategic gannett lifetime public affair law america mary american school the don newspaper busines university society leadership guild harvard queen he association scot",
      "outbound_date": "2021-06-25",
      "interest": "no response"
    },
    {
      "index": 1804,
      "name": "joy (orr) hills",
      "title": "customer service manager",
      "company": "Great On The Job Full-time",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 1805,
      "name": "adella afadi",
      "title": "senior content manager",
      "company": "Doddle",
      "outbound_date": "2021-07-13",
      "interest": "pending"
    },
    {
      "index": 1806,
      "name": "trase (kreucher) passantino",
      "title": "here's a headline for ya!",
      "company": "Comrade Birb",
      "outbound_date": "2021-06-18",
      "interest": "pending"
    },
    {
      "index": 1807,
      "name": "gaston calzato",
      "title": "communications | public relations | digital & social media",
      "company": "CHHA 1610 AM Radio Voces Latinas",
      "outbound_date": "2021-07-12",
      "interest": "no response"
    },
    {
      "index": 1808,
      "name": "mickie smith",
      "title": "teller",
      "company": "Cox Media",
      "outbound_date": "2021-03-19",
      "interest": "not interested"
    },
    {
      "index": 1809,
      "name": "may nakamura",
      "title": "bilingual marketing strategist & copywriter/ podcaster/ motivational speaker/ business development/ supply chain",
      "company": "San Diego Ryugaku One",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1810,
      "name": "danny pasquerelli",
      "title": "production assistant",
      "company": "120 Sports",
      "outbound_date": "2021-07-12",
      "interest": "pending"
    },
    {
      "index": 1811,
      "name": "mo vear",
      "title": "writer / blogger / podcaster",
      "company": "university depaul english maryland society hollywood sigma tau honor",
      "outbound_date": "2021-07-09",
      "interest": "pending"
    },
    {
      "index": 1812,
      "name": "clifford scott broadway",
      "title": "writer",
      "company": "Prometheus Entertainment",
      "outbound_date": "2021-07-05",
      "interest": "pending"
    },
    {
      "index": 1813,
      "name": "max heering",
      "title": "caster",
      "company": "comedy speaking kansa university and production creative video leadership public writing busines",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 1814,
      "name": "josh (jetsetfly) king madrid",
      "title": "josh king madrid is a well-known millennial thought leader th",
      "company": "studio university founder jetset elevator madrid king google",
      "outbound_date": "2021-06-24",
      "interest": "pending"
    },
    {
      "index": 1815,
      "name": "adriana alejandre",
      "title": "founder",
      "company": "Private Practice w/ Dr. Wiig",
      "outbound_date": "2021-06-25",
      "interest": "pending"
    },
    {
      "index": 1816,
      "name": "ahmed a madani",
      "title": "..",
      "company": "Jabra Trauma & Emergency Hospital",
      "outbound_date": "2021-06-08",
      "interest": "irrelevant"
    },
    {
      "index": 1817,
      "name": "dan gibson",
      "title": "quality manager",
      "company": "Donaldson Full-time",
      "outbound_date": "2021-06-09",
      "interest": "not interested"
    },
    {
      "index": 1818,
      "name": "nishi kant",
      "title": "founder",
      "company": "Leo Edunomics",
      "outbound_date": "2021-03-26",
      "interest": "no response"
    },
    {
      "index": 1819,
      "name": "Laurie Walker",
      "title": "Goalkeeper ",
      "company": "ProGoals PT",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1820,
      "name": "Bartek Kowalewski",
      "title": "Football Physical Performance Coach/Sport Scientist",
      "company": "Almondsbury University of West of England FC",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1821,
      "name": "Engin FIRAT",
      "title": "Head Coach",
      "company": "Football Association of Moldova",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1822,
      "name": "Krystian Lewandowski",
      "title": "Co-Founder Sports Promotion Group Player's Intermediary Licensed Real Estate Broker",
      "company": "Postbank Immobilien",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1823,
      "name": "Nick Hill",
      "title": "Rugby Coach, Physical Education Teacher, Athletic Development Coach",
      "company": "Functional Movement System (FMS)",
      "outbound_date": "2021-08-04",
      "interest": "no response"
    },
    {
      "index": 1824,
      "name": "Fernando Monteiro",
      "title": "strategy . marketing . intelligence",
      "company": "Vit\u00f3ria Sport Clube Full-time",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1825,
      "name": "Matt Allen",
      "title": "Advanced Football Systems Lead ",
      "company": "University of Bath",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1826,
      "name": "margarita pacheco quiros",
      "title": "Jefa de planta en Conservas Nuevo Libe",
      "company": "Conservas Nuevo Libe",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 1827,
      "name": "Nikita Runnacles",
      "title": "UEFA B coaching qualification + FA Level 3 GK coaching qualification",
      "company": "LondonCityLionesses",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1828,
      "name": "Alastair Kay",
      "title": "Head of Governance | FA National Disciplinary Secretary | MBA",
      "company": "Cayman Islands Football Association",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1829,
      "name": "Adam Birchall",
      "title": "Arsenal academy lead phase coach U14 - U12",
      "company": "gillingham fc",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1830,
      "name": "Gabriel Flores",
      "title": "Co-Founder ",
      "company": "Southampton Football Club",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1831,
      "name": "Pete Bell",
      "title": "Ex Offender F.A Coach Educator Mentor @stepoutstayout",
      "company": "The Football Association",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1832,
      "name": "Paul Barry",
      "title": "Owner ",
      "company": "PB Football Services",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1833,
      "name": "virginie guignard legros",
      "title": "coo",
      "company": "RIAVAT",
      "outbound_date": "2021-03-10",
      "interest": "no response"
    },
    {
      "index": 1834,
      "name": "ishwara glassman chrein",
      "title": "president",
      "company": "Verizon Media",
      "outbound_date": "2021-03-05",
      "interest": "no response"
    },
    {
      "index": 1835,
      "name": "lelani clark",
      "title": "vp",
      "company": "FilmOn TV Networks - Roku, Inc.",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 1836,
      "name": "prince panwar",
      "title": "Marketing Consultant ",
      "company": "Web.com",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 1837,
      "name": "samiul alam",
      "title": "managing director",
      "company": "SAU Entrepreneurship Development Club Seasonal",
      "outbound_date": "2021-04-18",
      "interest": "no response"
    },
    {
      "index": 1838,
      "name": "kim eaves, realtor",
      "title": "Integrity*Service*Results",
      "company": "The Spoken Word Christian Church",
      "outbound_date": "2021-05-28",
      "interest": "no response"
    },
    {
      "index": 1839,
      "name": "Balvinder Singh Shekhon",
      "title": "U5 & U6s Coach ",
      "company": "The Football Association",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1840,
      "name": "Ray Owen",
      "title": "Technical Director of Football",
      "company": "Newton Boys and Girls Club",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1841,
      "name": "Ruth Brazier",
      "title": "Head of Football ",
      "company": "Leeds Beckett University",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1842,
      "name": "Jacob Lloyd",
      "title": "Head Women\u2019s Basketball Coach ",
      "company": "University Centre Colchester",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1843,
      "name": "Ian Flanagan",
      "title": "Chief Executive Officer ",
      "company": "Treble Group",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1844,
      "name": "bob satawake",
      "title": "author of \"breaking protocol - forging a path beyond diplomacy\" - host of \"breaking protocol with bob satawake\" podcast",
      "company": "miami conference bob tribunal and ndi equal public committee victory medicine washington commerce american school board the institute council supreme dinner health political university diplomacy voice national management george advisory director chamber member electoral miller chicago",
      "outbound_date": "2021-07-16",
      "interest": "no response"
    },
    {
      "index": 1845,
      "name": "shannon king",
      "title": "content creator",
      "company": "Rebel Interactive Group",
      "outbound_date": "2021-07-20",
      "interest": "no response"
    },
    {
      "index": 1846,
      "name": "David Earl",
      "title": "Coach ",
      "company": "Carluke Rovers FC Part-time",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1847,
      "name": "Mark Whitwood",
      "title": "Founder and CEO of Active Sports Group",
      "company": "Active Sports Group",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1848,
      "name": "Yousif Kampoori",
      "title": "Founder ",
      "company": "YMKPT Yousif Mahdi Kampoori Performance Training",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1849,
      "name": "Saul Isaksson-Hurst",
      "title": "Individual Skill Development Coach & Director of MyPersonalFootballCoach",
      "company": "PDA Football",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1850,
      "name": "Peter Butler",
      "title": "Senior National Team Coach",
      "company": "Liberian Football Association Full-time",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1851,
      "name": "Arancha D\u00edaz",
      "title": "Head of Clubs & Industry Communications en LaLiga",
      "company": "head communication club industry",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1852,
      "name": "Shane Ward",
      "title": "Head of Sports Enrichment - David Ross Education Trust Coach & Committee Member - Greenbank Football Club",
      "company": "Commonwealth Games England",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1853,
      "name": "jan cruz",
      "title": "art director / designer / illustrator / content creator from toronto, canada.",
      "company": "@sailorblooms",
      "outbound_date": "2021-07-20",
      "interest": "no response"
    },
    {
      "index": 1854,
      "name": "james hayward-browne",
      "title": "marketing manager",
      "company": "http://www.jameshaywardbrowne.com/ Freelance",
      "outbound_date": "2021-07-20",
      "interest": "no response"
    },
    {
      "index": 1855,
      "name": "cindy taylor",
      "title": "b2b outbound campaign strategist",
      "company": "TSL Marketing Full-time",
      "outbound_date": "2021-07-20",
      "interest": "no response"
    },
    {
      "index": 1856,
      "name": "Les Cleevely",
      "title": "Head goalkeeping coach ",
      "company": "Bangaladesh national football federation Part-time",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1857,
      "name": "Mason Minister",
      "title": "Football Trener ",
      "company": "Southampton Solent University",
      "outbound_date": "2021-08-04",
      "interest": "pending"
    },
    {
      "index": 1858,
      "name": "shawnee badger",
      "title": "actor",
      "company": "CSP Management, self",
      "outbound_date": "2021-07-08",
      "interest": "no response"
    },
    {
      "index": 1859,
      "name": "suzette laboy",
      "title": "executive producer",
      "company": "Independent",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 1860,
      "name": "eric cohen",
      "title": "Digital Presence Manager ",
      "company": "USA TODAY NETWORK | LOCALiQ",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 1861,
      "name": "gary steel",
      "title": "digital marketing manager",
      "company": "Philly Search Engine Marketing | Steel Media",
      "outbound_date": "2021-05-04",
      "interest": "no response"
    },
    {
      "index": 1862,
      "name": "alison grimley",
      "title": "specialist",
      "company": "FITTEAM GLOBAL",
      "outbound_date": "2021-04-21",
      "interest": "not interested"
    },
    {
      "index": 1863,
      "name": "douglas brouwer",
      "title": "author",
      "company": "Holland Sentinel",
      "outbound_date": "2021-04-14",
      "interest": "not interested"
    },
    {
      "index": 1864,
      "name": "mohamed abdel malek",
      "title": "general manager",
      "company": "National Bank of Kuwait | Egypt",
      "outbound_date": "2021-04-22",
      "interest": "irrelevant"
    },
    {
      "index": 1865,
      "name": "roberto mes\u00e9n m\u00e9ndez",
      "title": "director",
      "company": "Capitales.com",
      "outbound_date": "2021-04-21",
      "interest": "irrelevant"
    },
    {
      "index": 1866,
      "name": "ibrahim onafeko",
      "title": "journalist/audio producer: newsroom editorial intern ",
      "company": "The Christian Science Monitor",
      "outbound_date": "2021-03-18",
      "interest": "yes call booked"
    },
    {
      "index": 1867,
      "name": "kaitlyn oldenburg",
      "title": "COVID/HIV/STD Program Assistant ",
      "company": "MPHI",
      "outbound_date": "2021-06-21",
      "interest": "no response"
    },
    {
      "index": 1868,
      "name": "ina coveney",
      "title": "coach",
      "company": "pod, llc",
      "outbound_date": "2021-06-09",
      "interest": "no response"
    },
    {
      "index": 1869,
      "name": "daoud alouan \u062f\u0627\u0648\u062f \u0639\u0644\u0648\u0627\u0646",
      "title": "broadcast journalist",
      "company": "SNRT (The Moroccan Public Broadcasting Company) Full-time",
      "outbound_date": "2021-05-09",
      "interest": "no response"
    },
    {
      "index": 1870,
      "name": "philip vandusen",
      "title": "cco",
      "company": "Old Navy",
      "outbound_date": "2021-04-16",
      "interest": "not interested"
    },
    {
      "index": 1871,
      "name": "br\u00e1ulio de brito",
      "title": "Executive Chairman - Tradinter O&G Services (Angola) & Chairman of the Board of AECIPA",
      "company": "AECIPA (Angolan Association of O&G Service Companies)",
      "outbound_date": "2021-03-12",
      "interest": "yes call booked"
    },
    {
      "index": 1872,
      "name": "caroline halter",
      "title": "Production Coordinator ",
      "company": "Goal 17 Media",
      "outbound_date": "2021-03-31",
      "interest": "no response"
    },
    {
      "index": 1873,
      "name": "abdul rahman",
      "title": "General Manager ",
      "company": "Limmyventures",
      "outbound_date": "2021-05-05",
      "interest": "irrelevant"
    },
    {
      "index": 1874,
      "name": "alex cantu",
      "title": "business director",
      "company": "YouthLaunch",
      "outbound_date": "2021-03-08",
      "interest": "no response"
    },
    {
      "index": 1875,
      "name": "susan rocco",
      "title": "ceo",
      "company": "The Hill-Company",
      "outbound_date": "2021-03-04",
      "interest": "yes call booked"
    },
    {
      "index": 1876,
      "name": "heather dewar",
      "title": "communications consultant",
      "company": "BBC",
      "outbound_date": "2021-03-11",
      "interest": "no response"
    },
    {
      "index": 1877,
      "name": "naveen aiathurai",
      "title": "director of engineering",
      "company": "OpenSearchServer",
      "outbound_date": "2021-03-11",
      "interest": "irrelevant"
    },
    {
      "index": 1878,
      "name": "rani saifullah khan",
      "title": "program host",
      "company": "Askari Bank",
      "outbound_date": "2021-04-06",
      "interest": "no response"
    },
    {
      "index": 1879,
      "name": "don leslie \u00a6 management consultancy careers strategist",
      "title": "coach",
      "company": "Accountancy Personnel (now Hays)",
      "outbound_date": "2021-03-28",
      "interest": "not interested"
    },
    {
      "index": 1880,
      "name": "elyce mandich, msw lcsw ppsc",
      "title": "licensed clinical social worker",
      "company": "Not Your Basic Influencers",
      "outbound_date": "2021-06-22",
      "interest": "no response"
    },
    {
      "index": 1881,
      "name": "vince russo",
      "title": "writer",
      "company": "Vince Russo's THE BRAND---RELM NETWORK",
      "outbound_date": "2021-05-31",
      "interest": "no response"
    },
    {
      "index": 1882,
      "name": "sally prosser",
      "title": "public speaking coach",
      "company": "University of Queensland",
      "outbound_date": "2021-04-05",
      "interest": "not interested"
    },
    {
      "index": 1883,
      "name": "christopher peters",
      "title": "Trading Floor Manager ",
      "company": "EE",
      "outbound_date": "2021-03-25",
      "interest": "no response"
    },
    {
      "index": 1884,
      "name": "awojobi o.",
      "title": "Director Of Operations ",
      "company": "McMaster Builds and Property Consultants",
      "outbound_date": "2021-03-25",
      "interest": "no response"
    },
    {
      "index": 1885,
      "name": "lily hawkins",
      "title": "Marketing Director ",
      "company": "M&C Saatchi Group",
      "outbound_date": "2021-03-24",
      "interest": "no response"
    },
    {
      "index": 1886,
      "name": "sheila (o'hagan) mcgirl, cfre",
      "title": "senior director",
      "company": "Catholic Star Herald",
      "outbound_date": "2021-04-26",
      "interest": "no response"
    },
    {
      "index": 1887,
      "name": "jade fletcher",
      "title": "ceo",
      "company": "RNIB",
      "outbound_date": "2021-04-11",
      "interest": "no response"
    },
    {
      "index": 1888,
      "name": "sharran srivatsaa",
      "title": "ceo",
      "company": "Srilo Ventures",
      "outbound_date": "2021-03-04",
      "interest": "no response"
    },
    {
      "index": 1889,
      "name": "mahmoud nabil",
      "title": "general manager",
      "company": "Mindshare Full-time",
      "outbound_date": "2021-04-22",
      "interest": "not interested"
    },
    {
      "index": 1890,
      "name": "kimberly m. starks, apr",
      "title": "principal",
      "company": "Patch.com",
      "outbound_date": "2021-04-08",
      "interest": "not interested"
    },
    {
      "index": 1891,
      "name": "ejike nwuba ll.b(hons), bl",
      "title": "founder & ceo",
      "company": "Akinjide & Co Barristers, Solicitors, Arbitrators and Specialists in Oil & Gas",
      "outbound_date": "2021-03-19",
      "interest": "no response"
    },
    {
      "index": 1892,
      "name": "m anchan",
      "title": "archer",
      "company": "HQGPL Self-employed",
      "outbound_date": "2021-03-26",
      "interest": "no response"
    },
    {
      "index": 1893,
      "name": "marc schmidt",
      "title": "caster",
      "company": "production broadcast post",
      "outbound_date": "2021-06-28",
      "interest": "yes call booked"
    },
    {
      "index": 1894,
      "name": "douglas rohrer, chia",
      "title": "managing partner",
      "company": "Aberdeen Law Group LLP",
      "outbound_date": "2021-04-28",
      "interest": "not interested"
    },
    {
      "index": 1895,
      "name": "yvonne wilcox",
      "title": "business analyst",
      "company": "IN THE VIRTUAL CITY INC",
      "outbound_date": "2021-04-02",
      "interest": "not interested"
    },
    {
      "index": 1896,
      "name": "crystal laplante",
      "title": "educational technician",
      "company": "Sweetser",
      "outbound_date": "2021-04-24",
      "interest": "no response"
    },
    {
      "index": 1897,
      "name": "fabienne crombach",
      "title": "coo",
      "company": "Universiteit Maastricht",
      "outbound_date": "2021-03-16",
      "interest": "not interested"
    },
    {
      "index": 1898,
      "name": "dina kobrosly",
      "title": "project director",
      "company": "Arab Theater Training Center",
      "outbound_date": "2021-05-17",
      "interest": "no response"
    },
    {
      "index": 1899,
      "name": "trico fullerton",
      "title": "ceo",
      "company": "fullerton trico",
      "outbound_date": "2021-06-23",
      "interest": "yes call booked"
    },
    {
      "index": 1900,
      "name": "toby rippetoe",
      "title": "co-founder",
      "company": "Green Light Media Freelance",
      "outbound_date": "2021-03-12",
      "interest": "no response"
    },
    {
      "index": 1901,
      "name": "jake nemec, cim, fcsi, cfp",
      "title": "Investment Advisor ",
      "company": "Echelon Wealth Partners",
      "outbound_date": "2021-03-02",
      "interest": "not interested"
    },
    {
      "index": 1902,
      "name": "sunny baker",
      "title": "digital marketing executive",
      "company": "Manor Publishing Collective Contract",
      "outbound_date": "2021-03-17",
      "interest": "yes call booked"
    },
    {
      "index": 1903,
      "name": "debra mayo",
      "title": "wellness nurse",
      "company": "Off Season Training (OST)",
      "outbound_date": "2021-06-07",
      "interest": "no response"
    },
    {
      "index": 1904,
      "name": "ernesto cuberos, mba",
      "title": "marketing associate",
      "company": "Quantic Technology Full-time",
      "outbound_date": "2021-04-14",
      "interest": "no response"
    },
    {
      "index": 1905,
      "name": "priyanka khandalkar",
      "title": "director of operations",
      "company": "Amazon Books",
      "outbound_date": "2021-06-24",
      "interest": "no response"
    },
    {
      "index": 1906,
      "name": "jennifer galvan arenas",
      "title": "student",
      "company": "ShopRite Part-time",
      "outbound_date": "2021-05-04",
      "interest": "irrelevant"
    },
    {
      "index": 1907,
      "name": "dr. deborah m. vereen",
      "title": "author",
      "company": "Chatham University",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 1908,
      "name": "drew vernon",
      "title": "marketing director",
      "company": "Childhood Podcast",
      "outbound_date": "2021-06-08",
      "interest": "no response"
    },
    {
      "index": 1909,
      "name": "sally maylin",
      "title": "director of events",
      "company": "Promoting Independence LTD",
      "outbound_date": "2021-04-21",
      "interest": "no response"
    },
    {
      "index": 1910,
      "name": "ken turner",
      "title": "course developer",
      "company": "Virtual High School",
      "outbound_date": "2021-04-12",
      "interest": "not interested"
    },
    {
      "index": 1911,
      "name": "suki eleuterio",
      "title": "coach",
      "company": "Creative Circle Freelance",
      "outbound_date": "2021-06-09",
      "interest": "no response"
    },
    {
      "index": 1912,
      "name": "aasimbaig mirza",
      "title": "Artificial Intelligence Enthusiast | Open for jobs | Pursuing major in Applied Artificial Intelligence |",
      "company": "learning computer deep python",
      "outbound_date": "2021-04-15",
      "interest": "no response"
    },
    {
      "index": 1913,
      "name": "maria magdalena diez",
      "title": "--",
      "company": "Landia",
      "outbound_date": "2021-04-10",
      "interest": "no response"
    },
    {
      "index": 1914,
      "name": "sandra moose",
      "title": "Chairman of the Board of Trustees ",
      "company": "Strategic Advisory Services",
      "outbound_date": "2021-04-25",
      "interest": "not interested"
    },
    {
      "index": 1915,
      "name": "chris bullock",
      "title": "secretary",
      "company": "chrisbullockfootball Football Management Consultancy",
      "outbound_date": "2021-03-04",
      "interest": "yes call booked"
    },
    {
      "index": 1916,
      "name": "vincent samperio",
      "title": "media producer",
      "company": "Locked On Podcast Network",
      "outbound_date": "2021-06-08",
      "interest": "no response"
    },
    {
      "index": 1917,
      "name": "jason smith",
      "title": "board member",
      "company": "StageYou, Inc. Part-time",
      "outbound_date": "2021-04-28",
      "interest": "no response"
    },
    {
      "index": 1918,
      "name": "steven fink",
      "title": "manager",
      "company": "Michelin",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 1919,
      "name": "nuno azevedo e cardoso",
      "title": "ceo & founder",
      "company": "Pulp Corporate Services Inc.",
      "outbound_date": "2021-03-25",
      "interest": "no response"
    },
    {
      "index": 1920,
      "name": "geordie macleod",
      "title": "Senior Director - Game Presentation & Events // Calgary Sports & Entertainment Corporation",
      "company": "Calgary Flames Limited Partnership",
      "outbound_date": "2021-03-19",
      "interest": "no response"
    },
    {
      "index": 1921,
      "name": "steve feuerstein",
      "title": "founder",
      "company": "ComminiCorp Holdings | Sports International Limited",
      "outbound_date": "2021-03-02",
      "interest": "yes call booked"
    },
    {
      "index": 1922,
      "name": "aaron wolowiec, cae, cmp, ctf/mt, cdp",
      "title": "Learning/Meetings Strategist; Certified ToP Facilitator/Mentor Trainer; Association Author, Coach & Speaker",
      "company": "Michigan Society of Association Executives (MSAE)",
      "outbound_date": "2021-03-04",
      "interest": "no response"
    },
    {
      "index": 1923,
      "name": "my nguyen",
      "title": "sales manager",
      "company": "Grab",
      "outbound_date": "2021-04-15",
      "interest": "yes call booked"
    },
    {
      "index": 1924,
      "name": "marcos buzzatti padilha",
      "title": "language teacher",
      "company": "More Than English Colombia",
      "outbound_date": "2021-03-23",
      "interest": "yes call booked"
    },
    {
      "index": 1925,
      "name": "casey garrow",
      "title": "Director of Broadcast and Video Production ",
      "company": "University of Pittsburgh",
      "outbound_date": "2021-03-10",
      "interest": "not interested"
    },
    {
      "index": 1926,
      "name": "nnaemeka anyanwu, mba, pmp",
      "title": "technology consultant",
      "company": "Deloitte",
      "outbound_date": "2021-04-19",
      "interest": "not interested"
    },
    {
      "index": 1927,
      "name": "robert siciliano",
      "title": "author",
      "company": "The Dr. Oz Show Contract",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 1928,
      "name": "safa salem",
      "title": "management consultant",
      "company": "New Horizons",
      "outbound_date": "2021-03-14",
      "interest": "no response"
    },
    {
      "index": 1929,
      "name": "lt gen dp sehgal, pvsm,avsm,vsm",
      "title": "founder and ceo",
      "company": "ITI",
      "outbound_date": "2021-03-27",
      "interest": "irrelevant"
    },
    {
      "index": 1930,
      "name": "scott mildren",
      "title": "Managing Director/Financial Advisor ",
      "company": "Provincial Wealth",
      "outbound_date": "2021-04-06",
      "interest": "not interested"
    },
    {
      "index": 1931,
      "name": "kevin (carl gratiot) knecht",
      "title": "director of digital marketing",
      "company": "General Motors",
      "outbound_date": "2021-04-11",
      "interest": "no response"
    },
    {
      "index": 1932,
      "name": "tom ward",
      "title": "journalist",
      "company": "What Culture LTD",
      "outbound_date": "2021-03-31",
      "interest": "no response"
    },
    {
      "index": 1933,
      "name": "anders carlgren",
      "title": "journalist",
      "company": "Egen f\u00f6retagare",
      "outbound_date": "2021-04-05",
      "interest": "no response"
    },
    {
      "index": 1934,
      "name": "strother lance",
      "title": "owner",
      "company": "St. Thomas More Catholic High School",
      "outbound_date": "2021-04-03",
      "interest": "not interested"
    },
    {
      "index": 1935,
      "name": "ted draper, mba",
      "title": "helping people connect the dots from their giving to global transformation",
      "company": "group nueterra healthcare media pegasu",
      "outbound_date": "2021-04-28",
      "interest": "not interested"
    },
    {
      "index": 1936,
      "name": "deborah robinson",
      "title": "Broadcast Media Professional",
      "company": "emmmc, LLC.",
      "outbound_date": "2021-04-25",
      "interest": "yes call booked"
    },
    {
      "index": 1937,
      "name": "craig dell",
      "title": "curator",
      "company": "Beach Media",
      "outbound_date": "2021-03-16",
      "interest": "no response"
    },
    {
      "index": 1938,
      "name": "tina lovgreen",
      "title": "senior manager",
      "company": "CBC Television",
      "outbound_date": "2021-04-01",
      "interest": "no response"
    },
    {
      "index": 1939,
      "name": "linda rosenberg",
      "title": "Marketing & Advertising | Sales & Marketing Management | Digital Marketing Solutions",
      "company": "advertising sale management solution",
      "outbound_date": "2021-04-12",
      "interest": "not interested"
    },
    {
      "index": 1940,
      "name": "antoine courbon",
      "title": "executive director",
      "company": "LGT \u2013 Private Banking und Asset Management Full-time",
      "outbound_date": "2021-03-26",
      "interest": "not interested"
    },
    {
      "index": 1941,
      "name": "luis vicente",
      "title": "Group Chief Executive Officer ",
      "company": "Aser Ventures Full-time",
      "outbound_date": "2021-04-14",
      "interest": "no response"
    },
    {
      "index": 1942,
      "name": "amy shomer",
      "title": "owner",
      "company": "MGM",
      "outbound_date": "2021-03-16",
      "interest": "no response"
    },
    {
      "index": 1943,
      "name": "alejandro ruz guirado",
      "title": "actor",
      "company": "Marca",
      "outbound_date": "2021-05-25",
      "interest": "no response"
    },
    {
      "index": 1944,
      "name": "noorullah (multi media .....) husainy",
      "title": "creative producer",
      "company": "Freelance Video Professional",
      "outbound_date": "2021-03-19",
      "interest": "no response"
    },
    {
      "index": 1945,
      "name": "ethan kagno",
      "title": "statistics intern",
      "company": "Western New England University Men\u2019s Basketball Part-time",
      "outbound_date": "2021-03-30",
      "interest": "not interested"
    },
    {
      "index": 1946,
      "name": "mateo jaramillo",
      "title": "co-founder & ceo",
      "company": "Heru Self-employed",
      "outbound_date": "2021-03-09",
      "interest": "no response"
    },
    {
      "index": 1947,
      "name": "jacy elsesser",
      "title": "author",
      "company": "Fix It Home Improvement",
      "outbound_date": "2021-04-05",
      "interest": "no response"
    },
    {
      "index": 1948,
      "name": "anthony bird",
      "title": "property man",
      "company": "Roseburn Property Management",
      "outbound_date": "2021-05-10",
      "interest": "yes call booked"
    },
    {
      "index": 1949,
      "name": "emilee sutherland",
      "title": "Assistant ",
      "company": "SCV Pregnancy Center",
      "outbound_date": "2021-03-30",
      "interest": "not interested"
    },
    {
      "index": 1950,
      "name": "victoria barnett",
      "title": "teacher",
      "company": "International TEFL Academy",
      "outbound_date": "2021-03-17",
      "interest": "no response"
    },
    {
      "index": 1951,
      "name": "jonathan gonzalez",
      "title": "CEO DAVID LOCCO en DAVID LOCCO",
      "company": "DAVID LOCCO",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 1952,
      "name": "ute weber",
      "title": "Yogatrainer (Selbstst\u00e4ndig)",
      "company": "SWR",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 1953,
      "name": "adam derito, ms",
      "title": "energy professional",
      "company": "Keane Group",
      "outbound_date": "2021-06-08",
      "interest": "no response"
    },
    {
      "index": 1954,
      "name": "ricci lopez-hammargren",
      "title": "partner",
      "company": "Exclusive Collections Fine Art Galleries",
      "outbound_date": "2021-04-19",
      "interest": "no response"
    },
    {
      "index": 1955,
      "name": "rebecca monterusso",
      "title": "project manager",
      "company": "Foreword Reviews Freelance",
      "outbound_date": "2021-06-22",
      "interest": "no response"
    },
    {
      "index": 1956,
      "name": "melissa douglas",
      "title": "photographer",
      "company": "metro",
      "outbound_date": "2021-06-16",
      "interest": "no response"
    },
    {
      "index": 1957,
      "name": "kim shea",
      "title": "coach",
      "company": "Geriatric Counseling Services, Inc.",
      "outbound_date": "2021-06-25",
      "interest": "no response"
    },
    {
      "index": 1958,
      "name": "sean masero",
      "title": "media producer",
      "company": "Openly Nerdy Podcast Freelance",
      "outbound_date": "2021-06-13",
      "interest": "no response"
    },
    {
      "index": 1959,
      "name": "maura sweeney ambassador of happiness (r)",
      "title": "caster",
      "company": "macedoniauniversity all force video hungary marylanduniversity peace americaolli serbiaspc flivanov monastir chapelunesco frederick farm tampa zagreb kosovo croatiasummit nelson summer frequent competitive alumni for women young arena center skopje lifelong air dept hr learning guest belgrade camp southeastern instituteu in mandela college conference espn strategic media serbia macedoniapscu embassy intelligencepatrick institute daybook cia thessaloniki national leadership expo hood un croatiaamerican corner base mba tourismcotrugli solutionsuniversity europeusf american dubrovnik unesco school busines fbi nbc leader policy bbc program daytampa bay info",
      "outbound_date": "2021-06-24",
      "interest": "no response"
    },
    {
      "index": 1960,
      "name": "mimi lombardo",
      "title": "content creator / fashion director / stylist",
      "company": "Haute Living",
      "outbound_date": "2021-07-16",
      "interest": "yes call booked"
    },
    {
      "index": 1961,
      "name": "kyle w.",
      "title": "fraud analyst",
      "company": "Hitting the Wall",
      "outbound_date": "2021-06-28",
      "interest": "no response"
    },
    {
      "index": 1962,
      "name": "megan holden",
      "title": "video editor",
      "company": "CLNS Media Internship",
      "outbound_date": "2021-06-18",
      "interest": "no response"
    },
    {
      "index": 1963,
      "name": "daniel porter",
      "title": "technology sales professional; with backgrounds in google cloud, g suite, and saas/paas platforms. educational content creator.",
      "company": "MarketSource Inc. Contract",
      "outbound_date": "2021-07-16",
      "interest": "yes call booked"
    },
    {
      "index": 1964,
      "name": "justin cox",
      "title": "car salesperson",
      "company": "excel college microsoft nichol dc",
      "outbound_date": "2021-06-08",
      "interest": "not interested"
    },
    {
      "index": 1965,
      "name": "larry b dirlam",
      "title": "president",
      "company": "Dirlam Enterprises LLC",
      "outbound_date": "2021-05-17",
      "interest": "not interested"
    },
    {
      "index": 1966,
      "name": "cody hickman",
      "title": "director",
      "company": "Oxford University United Methodist Full-time",
      "outbound_date": "2021-06-09",
      "interest": "no response"
    },
    {
      "index": 1967,
      "name": "ifeosa anwulika nkem-onyekpe",
      "title": "phd candidate",
      "company": "Uncoloured Soul",
      "outbound_date": "2021-06-23",
      "interest": "ongoing discussions"
    },
    {
      "index": 1968,
      "name": "dustin murray",
      "title": "teacher",
      "company": "Mt. Carmel Baptist Church",
      "outbound_date": "2021-06-23",
      "interest": "yes call booked"
    },
    {
      "index": 1969,
      "name": "ntumba mutombo",
      "title": "manager trainee",
      "company": "Ronald McDonald House Charities of Portland, Maine",
      "outbound_date": "2021-06-26",
      "interest": "no response"
    },
    {
      "index": 1970,
      "name": "t. sean herbert",
      "title": "producer",
      "company": "Regional News Network",
      "outbound_date": "2021-05-10",
      "interest": "not interested"
    },
    {
      "index": 1971,
      "name": "love fajota",
      "title": "sponsorship/partnership director for miami swim week (dcsw)",
      "company": "DC Swim Week (DCSW)",
      "outbound_date": "2021-06-24",
      "interest": "no response"
    },
    {
      "index": 1972,
      "name": "duane michael mays",
      "title": "dj",
      "company": "Forever-Ever Entertainment",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 1973,
      "name": "katarzyna krawczyk",
      "title": "content creator",
      "company": "Hellenic Travel",
      "outbound_date": "2021-07-20",
      "interest": "ongoing discussions"
    },
    {
      "index": 1974,
      "name": "derek t. nolen",
      "title": "operations manager",
      "company": "Tower International",
      "outbound_date": "2021-05-18",
      "interest": "no response"
    },
    {
      "index": 1975,
      "name": "jamell crouthers",
      "title": "author",
      "company": "The Aquarianmind Clothing Line",
      "outbound_date": "2021-06-23",
      "interest": "no response"
    },
    {
      "index": 1976,
      "name": "julia masselos",
      "title": "marketing lead @ toggl hire",
      "company": "The IB Scientist Self-employed",
      "outbound_date": "2021-07-09",
      "interest": "not now"
    },
    {
      "index": 1977,
      "name": "erik smallwood",
      "title": "worship leader",
      "company": "LIMESTONE COUNTY SCHOOL DISTRICT Part-time",
      "outbound_date": "2021-05-24",
      "interest": "no response"
    },
    {
      "index": 1978,
      "name": "melissa vallejo",
      "title": "operations administrator",
      "company": "Freelance Musician",
      "outbound_date": "2021-05-28",
      "interest": "no response"
    },
    {
      "index": 1979,
      "name": "bruce carroll",
      "title": "Bruce Carroll",
      "company": "community presbyterian church palm desert",
      "outbound_date": "2021-06-07",
      "interest": "no response"
    },
    {
      "index": 1980,
      "name": "saundra gano",
      "title": "caster",
      "company": "The Gathering Place Mission",
      "outbound_date": "2021-07-07",
      "interest": "no response"
    },
    {
      "index": 1981,
      "name": "cody head",
      "title": "MRI Director ",
      "company": "Community Fellowship Baptist Church",
      "outbound_date": "2021-05-24",
      "interest": "no response"
    },
    {
      "index": 1982,
      "name": "jamie robinson",
      "title": "director",
      "company": "The Consumers Gas Company Ltd.",
      "outbound_date": "2021-05-18",
      "interest": "irrelevant"
    },
    {
      "index": 1983,
      "name": "zane gillespie dma",
      "title": "director of music",
      "company": "Memorial Chapel, Marine Corps Air Station Cherry Point Contract",
      "outbound_date": "2021-05-10",
      "interest": "no response"
    },
    {
      "index": 1984,
      "name": "eunice ishimwe",
      "title": "electrical engineer",
      "company": "African Student Association (ASA)",
      "outbound_date": "2021-05-24",
      "interest": "no response"
    },
    {
      "index": 1985,
      "name": "christine passig",
      "title": "administrative assistant",
      "company": "2B Continued Part-time",
      "outbound_date": "2021-05-25",
      "interest": "no response"
    },
    {
      "index": 1986,
      "name": "eric griggs, md",
      "title": "Health & Wellness Ambassador - State of Louisiana/Health Equity Ambassador -APA/Certified Lean Six Sigma Green Belt",
      "company": "Louisiana Department of Health",
      "outbound_date": "2021-05-13",
      "interest": "no response"
    },
    {
      "index": 1987,
      "name": "tonya d. (shields) floyd",
      "title": "creative director",
      "company": "The Signature Movement Self-employed",
      "outbound_date": "2021-06-17",
      "interest": "no response"
    },
    {
      "index": 1988,
      "name": "ria lu",
      "title": "studio director",
      "company": "transcosmos Asia Philippines Inc.",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 1989,
      "name": "martavious gayles",
      "title": "living my best life",
      "company": "netflix abc",
      "outbound_date": "2021-06-24",
      "interest": "no response"
    },
    {
      "index": 1990,
      "name": "ben emerson",
      "title": "graphic designer \u2022 content creator",
      "company": "The Scotts Miracle-Gro Company",
      "outbound_date": "2021-07-15",
      "interest": "no response"
    },
    {
      "index": 1991,
      "name": "andrew mason",
      "title": "reporter",
      "company": "DNVR Full-time",
      "outbound_date": "2021-06-23",
      "interest": "no response"
    },
    {
      "index": 1992,
      "name": "frank scalise",
      "title": "content | marketing",
      "company": "Time Warner Cable Media Sales",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 1993,
      "name": "elizabeth sabillon",
      "title": "social media specialist",
      "company": "Beauty Marks Podcast",
      "outbound_date": "2021-07-05",
      "interest": "no response"
    },
    {
      "index": 1994,
      "name": "ava bates",
      "title": "ceo & founder | content creator | i make brands come to life",
      "company": "The Record Shops at TSS",
      "outbound_date": "2021-07-13",
      "interest": "no response"
    },
    {
      "index": 1995,
      "name": "greg hetherington",
      "title": "Owner, Five Amigos Broadcasting",
      "company": "Five Amigos Broadcasting",
      "outbound_date": "2021-05-16",
      "interest": "no response"
    },
    {
      "index": 1996,
      "name": "christina elizabeth gaines",
      "title": "director of marketing",
      "company": "National Student Advertising Competition",
      "outbound_date": "2021-03-11",
      "interest": "no response"
    },
    {
      "index": 1997,
      "name": "elena mendez",
      "title": "Luxury Hospitality, Marketing, Communications & Branding Leader.",
      "company": "communication hospitality luxury",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 1998,
      "name": "abigale racine-hyde",
      "title": "teller",
      "company": "The Blind Pig Brewery Part-time",
      "outbound_date": "2021-04-06",
      "interest": "no response"
    },
    {
      "index": 1999,
      "name": "dori tattrie",
      "title": "business manager",
      "company": "Certified OBM\u00ae | International Association of Online Business Managers",
      "outbound_date": "2021-04-25",
      "interest": "no response"
    },
    {
      "index": 2000,
      "name": "maria andrea hurtado castro",
      "title": "Garment Technology Intern ",
      "company": "Victoria Beckham",
      "outbound_date": "2021-04-08",
      "interest": "no response"
    },
    {
      "index": 2001,
      "name": "james hogben",
      "title": "Managing Director ",
      "company": "LimeLight Sports",
      "outbound_date": "2021-03-03",
      "interest": "no response"
    },
    {
      "index": 2002,
      "name": "andrew witte",
      "title": "consultant",
      "company": "The Hungry River Collaborative",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 2003,
      "name": "harry spekter",
      "title": "coach",
      "company": "JD Leads Online - LinkedIn Revenue Generating Machine Full-time",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 2004,
      "name": "julia s.",
      "title": "head of marketing",
      "company": "Reed Technology Leadership Practice",
      "outbound_date": "2021-04-20",
      "interest": "no response"
    },
    {
      "index": 2005,
      "name": "michael dadds",
      "title": "principal",
      "company": "Michael Dadds and Associates",
      "outbound_date": "2021-03-17",
      "interest": "no response"
    },
    {
      "index": 2006,
      "name": "greg wooten",
      "title": "FinTech | Payments",
      "company": "Enterprise Integration Group",
      "outbound_date": "2021-03-24",
      "interest": "no response"
    },
    {
      "index": 2007,
      "name": "liz nasir",
      "title": "customer success manager",
      "company": "Lendlease",
      "outbound_date": "2021-04-17",
      "interest": "no response"
    },
    {
      "index": 2008,
      "name": "benjamin thomas",
      "title": "Innovation | Strategy | Design",
      "company": "Accenture",
      "outbound_date": "2021-03-15",
      "interest": "no response"
    },
    {
      "index": 2009,
      "name": "jessica treschitta",
      "title": "Business Education Teacher ",
      "company": "Brien McMahon High School",
      "outbound_date": "2021-04-13",
      "interest": "no response"
    },
    {
      "index": 2010,
      "name": "chryssa skodra",
      "title": "blogger",
      "company": "Travel Massive",
      "outbound_date": "2021-03-23",
      "interest": "no response"
    },
    {
      "index": 2011,
      "name": "cindy debysingh",
      "title": "Orlando Seekers",
      "company": "Brazosport Regional Health System",
      "outbound_date": "2021-04-27",
      "interest": "no response"
    },
    {
      "index": 2012,
      "name": "fredrick omondi oigo",
      "title": "Visual Products ",
      "company": "freelace film maker",
      "outbound_date": "2021-03-05",
      "interest": "no response"
    },
    {
      "index": 2013,
      "name": "shelli mccoy, cude",
      "title": "Vice President Operations Tarrant County's Credit Union",
      "company": "Tarrant County's Credit Union",
      "outbound_date": "2021-04-19",
      "interest": "no response"
    },
    {
      "index": 2014,
      "name": "charlie denison",
      "title": "Writer, musician, Chamber rep",
      "company": "Lewistown Area Chamber of Commerce",
      "outbound_date": "2021-04-15",
      "interest": "no response"
    },
    {
      "index": 2015,
      "name": "sahil aggarwal",
      "title": "co-founder & ceo",
      "company": "Gateway Education",
      "outbound_date": "2021-03-10",
      "interest": "no response"
    },
    {
      "index": 2016,
      "name": "ahmed samir",
      "title": "mechanic",
      "company": "Mechatronics Egypt Contractor Full-time",
      "outbound_date": "2021-05-09",
      "interest": "no response"
    },
    {
      "index": 2017,
      "name": "adriana bataille",
      "title": "Marketing and advertising professional",
      "company": "Freelance",
      "outbound_date": "2021-03-11",
      "interest": "no response"
    },
    {
      "index": 2018,
      "name": "craig harrison",
      "title": "UEFA Pro License Holder",
      "company": "Airbus UK Broughton Football Club",
      "outbound_date": "2021-03-12",
      "interest": "no response"
    },
    {
      "index": 2019,
      "name": "patti pelton",
      "title": "ent consultant",
      "company": "Universal Studios Hollywood Freelance",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 2020,
      "name": "lorenzo hagerty",
      "title": "caster",
      "company": "houston university dame notre",
      "outbound_date": "2021-06-10",
      "interest": "no response"
    },
    {
      "index": 2021,
      "name": "dr. jamie gruman",
      "title": "author",
      "company": "University of Guelph",
      "outbound_date": "2021-04-18",
      "interest": "no response"
    },
    {
      "index": 2022,
      "name": "peter oghina",
      "title": "project manager",
      "company": "Perod Productions Freelance",
      "outbound_date": "2021-04-11",
      "interest": "no response"
    },
    {
      "index": 2023,
      "name": "tr basemera stella maris",
      "title": "private tutor",
      "company": "Creative Learning AfricA+",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 2024,
      "name": "miguel angel sosa bolio",
      "title": "corporate lawyer",
      "company": "Lexicon legal and commercial translation",
      "outbound_date": "2021-04-15",
      "interest": "no response"
    },
    {
      "index": 2025,
      "name": "howard smith",
      "title": "president",
      "company": "Herschend Family Entertainment",
      "outbound_date": "2021-03-22",
      "interest": "no response"
    },
    {
      "index": 2026,
      "name": "katie lyons",
      "title": "Broadcast Journalist ",
      "company": "Radio News H",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 2027,
      "name": "dean w.",
      "title": "coach",
      "company": "Southampton Football Club Part-time",
      "outbound_date": "2021-03-08",
      "interest": "no response"
    },
    {
      "index": 2028,
      "name": "alvie kamal",
      "title": "ceo & co-founder",
      "company": "Joyn Technologies Full-time",
      "outbound_date": "2021-03-22",
      "interest": "no response"
    },
    {
      "index": 2029,
      "name": "scott hayden",
      "title": "demonstrator",
      "company": "The Education Foundation",
      "outbound_date": "2021-04-16",
      "interest": "no response"
    },
    {
      "index": 2030,
      "name": "terry hayes",
      "title": "account manager",
      "company": "Freelance Cartoonist",
      "outbound_date": "2021-03-10",
      "interest": "no response"
    },
    {
      "index": 2031,
      "name": "beth rheingold",
      "title": "president & ceo",
      "company": "Center For Talented Youth (Johns Hopkins University)",
      "outbound_date": "2021-04-10",
      "interest": "no response"
    },
    {
      "index": 2032,
      "name": "josh frons",
      "title": "cast associate",
      "company": "Alliance of American Football",
      "outbound_date": "2021-03-01",
      "interest": "no response"
    },
    {
      "index": 2033,
      "name": "abdallah gomaa ragab",
      "title": "Business Administration Department of Finance and Investment.",
      "company": "administration finance department busines",
      "outbound_date": "2021-04-22",
      "interest": "no response"
    },
    {
      "index": 2034,
      "name": "michael hall",
      "title": "chief executive officer",
      "company": "Ottimo Group",
      "outbound_date": "2021-03-03",
      "interest": "no response"
    },
    {
      "index": 2035,
      "name": "chantal rutter dros",
      "title": "Owner of Chantal Rutter Media, MC, Speaker, Writer",
      "company": "Chantal Rutter Media",
      "outbound_date": "2021-04-06",
      "interest": "no response"
    },
    {
      "index": 2036,
      "name": "andy liu",
      "title": "Enterprise Account Executive ",
      "company": "Entercom San Francisco",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 2037,
      "name": "derrick ayers",
      "title": "director",
      "company": "Pfeiffer University",
      "outbound_date": "2021-03-30",
      "interest": "no response"
    },
    {
      "index": 2038,
      "name": "zachariah demusz",
      "title": "sports director",
      "company": "Temple University Ice Hockey Club Part-time",
      "outbound_date": "2021-03-12",
      "interest": "no response"
    },
    {
      "index": 2039,
      "name": "conor o'gara \u2601",
      "title": "corporate account executive",
      "company": "Zava Media",
      "outbound_date": "2021-06-01",
      "interest": "no response"
    },
    {
      "index": 2040,
      "name": "anna osherov",
      "title": "business leader",
      "company": "Anna Osherov",
      "outbound_date": "2021-03-15",
      "interest": "no response"
    },
    {
      "index": 2041,
      "name": "christian lerch",
      "title": "journalist and content producer/ radio documentaries and podcasts",
      "company": "Rundfunk Berlin-Brandenburg",
      "outbound_date": "2021-03-23",
      "interest": "no response"
    },
    {
      "index": 2042,
      "name": "siobhan parker",
      "title": "head teacher",
      "company": "Primary School (South Birmingham)",
      "outbound_date": "2021-05-16",
      "interest": "no response"
    },
    {
      "index": 2043,
      "name": "faryal khan",
      "title": "Resident Care ",
      "company": "Extendicare Inc.",
      "outbound_date": "2021-03-10",
      "interest": "no response"
    },
    {
      "index": 2044,
      "name": "randy bloom",
      "title": "chief executive officer",
      "company": "Smart Financial Centre",
      "outbound_date": "2021-03-14",
      "interest": "no response"
    },
    {
      "index": 2045,
      "name": "danijela krha purssey",
      "title": "co-founder",
      "company": "Steve Taylor & Partners",
      "outbound_date": "2021-05-12",
      "interest": "no response"
    },
    {
      "index": 2046,
      "name": "jon berry",
      "title": "manager",
      "company": "Industrial Strength Records",
      "outbound_date": "2021-04-15",
      "interest": "no response"
    },
    {
      "index": 2047,
      "name": "artur dlubak",
      "title": "ceo",
      "company": "Delta Consulting",
      "outbound_date": "2021-04-12",
      "interest": "no response"
    },
    {
      "index": 2048,
      "name": "mohamed kamal",
      "title": "general manager",
      "company": "Taj Hotels Resorts and Palaces (Jood Palace Hotel)",
      "outbound_date": "2021-04-21",
      "interest": "no response"
    },
    {
      "index": 2049,
      "name": "dhruv thakkar",
      "title": "director",
      "company": "Digital TLJ",
      "outbound_date": "2021-03-26",
      "interest": "no response"
    },
    {
      "index": 2050,
      "name": "ricky doyle",
      "title": "Managing Partner ",
      "company": "1708 Media",
      "outbound_date": "2021-04-05",
      "interest": "no response"
    },
    {
      "index": 2051,
      "name": "shannon ferguson",
      "title": "co-founder & ceo",
      "company": "Rhoice Marketing & Events",
      "outbound_date": "2021-03-12",
      "interest": "no response"
    },
    {
      "index": 2052,
      "name": "shawn phipps, phd, ms, otr/l, faota",
      "title": "chief quality officer",
      "company": "UCLA Health",
      "outbound_date": "2021-04-16",
      "interest": "no response"
    },
    {
      "index": 2053,
      "name": "fatima diallo",
      "title": "digital marketing manager",
      "company": "Travelsist",
      "outbound_date": "2021-04-09",
      "interest": "no response"
    },
    {
      "index": 2054,
      "name": "christine suva",
      "title": "career coach",
      "company": "Accenture Contract",
      "outbound_date": "2021-04-07",
      "interest": "no response"
    },
    {
      "index": 2055,
      "name": "antonio aino",
      "title": "social media manager",
      "company": "Vincit\u00f9 Group S.R.L Full-time",
      "outbound_date": "2021-03-22",
      "interest": "no response"
    },
    {
      "index": 2056,
      "name": "zack kinslow",
      "title": "team lead",
      "company": "Zeel.com",
      "outbound_date": "2021-03-15",
      "interest": "no response"
    },
    {
      "index": 2057,
      "name": "jenice camay quiogue",
      "title": "digital marketing intern",
      "company": "B Club Shoe Club Corp.",
      "outbound_date": "2021-03-28",
      "interest": "no response"
    },
    {
      "index": 2058,
      "name": "javiera stuardo",
      "title": "journalist",
      "company": "BP Global Group",
      "outbound_date": "2021-03-24",
      "interest": "no response"
    },
    {
      "index": 2059,
      "name": "james daniels",
      "title": "junior designer",
      "company": "The Global Game Jam Freelance",
      "outbound_date": "2021-04-17",
      "interest": "no response"
    },
    {
      "index": 2060,
      "name": "ashanti omkar frsa",
      "title": "film critic",
      "company": "BBC (British Broadcasting Corporation)",
      "outbound_date": "2021-03-26",
      "interest": "no response"
    },
    {
      "index": 2061,
      "name": "peter lewis",
      "title": "photographer",
      "company": "The Dad Story Project Part-time",
      "outbound_date": "2021-06-28",
      "interest": "no response"
    },
    {
      "index": 2062,
      "name": "kimberly burnham, writer, poet",
      "title": "writer",
      "company": "Akamai University",
      "outbound_date": "2021-04-26",
      "interest": "no response"
    },
    {
      "index": 2063,
      "name": "j. ibeh agbanyim, phd",
      "title": "scientist",
      "company": "UPS",
      "outbound_date": "2021-04-16",
      "interest": "no response"
    },
    {
      "index": 2064,
      "name": "julia prichard",
      "title": "owner",
      "company": "Social Mums",
      "outbound_date": "2021-05-13",
      "interest": "no response"
    },
    {
      "index": 2065,
      "name": "chris dorris",
      "title": "Speaker",
      "company": "The Dorris Group Self-employed",
      "outbound_date": "2021-05-31",
      "interest": "no response"
    },
    {
      "index": 2066,
      "name": "sawan jha",
      "title": "founder",
      "company": "IBM Global Process Services",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 2067,
      "name": "hilary hendershott, mba, cfp\u00ae",
      "title": "financial advisor",
      "company": "Profit Boss Radio podcast",
      "outbound_date": "2021-03-29",
      "interest": "no response"
    },
    {
      "index": 2068,
      "name": "zach simon",
      "title": "sales enablement manager",
      "company": "Marcus Evans",
      "outbound_date": "2021-05-08",
      "interest": "no response"
    },
    {
      "index": 2069,
      "name": "yasmine kyriakos-saad",
      "title": "production assistant",
      "company": "Sky Internship",
      "outbound_date": "2021-03-16",
      "interest": "no response"
    },
    {
      "index": 2070,
      "name": "connie ragen green",
      "title": "author",
      "company": "Small Business Unmarketing",
      "outbound_date": "2021-03-27",
      "interest": "no response"
    },
    {
      "index": 2071,
      "name": "randy lane",
      "title": "chief executive officer",
      "company": "Microtek Laboratories, Inc",
      "outbound_date": "2021-05-07",
      "interest": "no response"
    },
    {
      "index": 2072,
      "name": "sarah bright",
      "title": "studio manager",
      "company": "Your Chakra Coach Self-employed",
      "outbound_date": "2021-06-15",
      "interest": "no response"
    },
    {
      "index": 2073,
      "name": "don allan",
      "title": "Entrepreneurship Development",
      "company": "City of Coquitlam",
      "outbound_date": "2021-03-17",
      "interest": "no response"
    },
    {
      "index": 2074,
      "name": "amy pazahanick",
      "title": "chief executive officer",
      "company": "Agape Tennis Foundation",
      "outbound_date": "2021-04-02",
      "interest": "no response"
    },
    {
      "index": 2075,
      "name": "mohamed azmy ahmed",
      "title": "master",
      "company": "Project on Middle East Democracy Full-time",
      "outbound_date": "2021-05-19",
      "interest": "no response"
    },
    {
      "index": 2076,
      "name": "abdulla al-wahedi",
      "title": "chief executive officer",
      "company": "Etisalat",
      "outbound_date": "2021-04-16",
      "interest": "no response"
    }
  ]"
);
