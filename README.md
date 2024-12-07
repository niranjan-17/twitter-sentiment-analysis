# Twitter Sentiment Analysis with Streamlit and ML

## Overview

This project performs **Tweet Sentiment Analysis** using multiple machine learning algorithms and choosing the best among those. The app provides sentiment analysis on tweets in real-time, powered by Streamlit for a simple and interactive web interface. The model is trained using pre-processed data, and predictions are displayed directly through the app.

## Features

- **Sentiment Prediction**: Analyze tweet sentiment as positive, negative, neutral or irrelvent.
- **Real-time Input**:  Enter any tweet to receive sentiment analysis instantly.
- **Interactive Web Interface**: Built using Streamlit for seamless user experience.

## Installation and Usage 

To set up the Twitter Sentiment Analysis locally, follow these steps:

1. **Clone the Repository**:
```bash
git clone https://github.com/yourusername/twitter-sentiment-analysis.git
cd twitter-sentiment-analysis
```

2. **Install Dependencies**:
Make sure you have Python installed, then install the required packages:

```bash
pip install -r requirements.txt
```

3. **Run the Streamlit application**:
```bash
streamlit run app.py
```

4. Access the App: Open your browser and navigate to `http://127.0.0.1:8501`.

## 🐳 Docker setup


**Option 1: Pull from Docker Hub**

```bash
docker run -td -p 8501:8501 --name twitter-sentiment-analysis  raanjeetsgolu/twitter-sentiment-analysis:3.0-1
```
Access the application: Open your browser and navigate to http://127.0.0.1:8501

**Option 2: Build Locally**


1.***Build the Docker image***:

```bash
docker build -t twitter-sentiment-analysis .
  ```
2.***Run the Docker container***:
   ```bash
docker run -td -p 8501:8501 --name twitter-sentiment-analysis  twitter-sentiment-analysis
   ```
3.***Access the application***:
 Open your browser and navigate to http://127.0.0.1:8501

## 🛠 Technologies

+ Python 3.10
+ Streamlit (for the web server)
+ Pandas, Numpy (for data processing)
+ Scikit-Learn (for model building)
+ matplotlib, seaborn (for data visualization)
+ Docker (for containerization)
+ joblib (for dumping and loading the model)


## Contributing
Feel free to open an issue or submit a pull request with improvements.