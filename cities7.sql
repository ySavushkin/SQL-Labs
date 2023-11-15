CREATE TABLE IF NOT EXISTS categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS news (
    news_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE IF NOT EXISTS comments (
    comment_id INT PRIMARY KEY,
    news_id INT,
    content TEXT NOT NULL,
    FOREIGN KEY (news_id) REFERENCES news(news_id)
);

CREATE TABLE IF NOT EXISTS ratings (
    rating_id INT PRIMARY KEY,
    news_id INT,
    ip_address VARCHAR(15) NOT NULL,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    PRIMARY KEY (news_id, ip_address),
    FOREIGN KEY (news_id) REFERENCES news(news_id)
);
