CREATE TABLE IF NOT EXISTS users (
  id TEXT PRIMARY KEY,
  free_uses INTEGER NOT NULL DEFAULT 0,
  subscription_status TEXT NOT NULL DEFAULT 'free',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS countries (
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS sports (
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS teams (
  id SERIAL PRIMARY KEY,
  sport TEXT NOT NULL,
  name TEXT NOT NULL,
  country TEXT
);

CREATE TABLE IF NOT EXISTS players (
  id SERIAL PRIMARY KEY,
  sport TEXT NOT NULL,
  name TEXT NOT NULL,
  team TEXT,
  country TEXT
);

CREATE TABLE IF NOT EXISTS captions (
  id SERIAL PRIMARY KEY,
  category TEXT NOT NULL,
  country TEXT,
  sport TEXT,
  title_template TEXT NOT NULL,
  caption_template TEXT NOT NULL,
  hashtags TEXT NOT NULL DEFAULT '',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_captions_category ON captions(category);
CREATE INDEX IF NOT EXISTS idx_captions_country ON captions(country);
CREATE INDEX IF NOT EXISTS idx_captions_sport ON captions(sport);
