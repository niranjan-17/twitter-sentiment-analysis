import streamlit as st
import joblib
import time

# load the model
model = joblib.load('twitter_sentiment_analysis.pkl')

st.title('Twitter Sentiment Analysis')

tweet = st.text_input('Enter your tweet')

submit = st.button('Predict')

if submit:
    start = time.time()
    prediction = model.predict([tweet])
    end = time.time()
    st.write('Prediction time taken: ', round(end-start, 2), 'seconds')
    print(prediction[0])
    st.write('sentiment predicted:   ', prediction[0])