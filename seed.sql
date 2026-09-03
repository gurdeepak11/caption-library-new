INSERT INTO sports (name) VALUES
('Cricket'), ('Football')
ON CONFLICT (name) DO NOTHING;

INSERT INTO countries (name) VALUES
('India'),('Pakistan'),('Australia'),('England'),('South Africa'),
('New Zealand'),('Sri Lanka'),('Bangladesh'),('Afghanistan'),
('United States'),('Canada'),('Germany'),('France'),('Spain'),
('Italy'),('Brazil'),('Argentina'),('Portugal'),('Netherlands'),
('Norway'),('Sweden'),('Denmark'),('Finland'),('Ireland')
ON CONFLICT (name) DO NOTHING;

INSERT INTO captions (category, sport, title_template, caption_template, hashtags) VALUES
('General','',
 '{{input}} — Latest Update',
 '{{input}}. Here is the latest update and key information surrounding the story.',
 '#News #Update #LatestNews'),
('News','',
 '{{input}} — What You Need To Know',
 '{{input}}. Here are the key details from the latest development.',
 '#News #BreakingNews #LatestUpdate'),
('Cricket','Cricket',
 '{{input}} — Cricket Update',
 '{{input}}. Stay updated with the latest cricket action, result and major moments.',
 '#Cricket #CricketNews #CricketUpdate'),
('Football','Football',
 '{{input}} — Football Update',
 '{{input}}. The latest football update, key moments and important developments.',
 '#Football #FootballNews #FootballUpdate');
