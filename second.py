#current
import pandas as pd
import random
import numpy as np
import sys
from time import sleep
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Embedding, LSTM, Dense
data = pd.read_csv('C:\\Users\\saipr\\Desktop\\fashion\\updated_accessoried_data.csv')
# Define the RNN-like model
class CustomRNN:
    def __init__(self, data):
        self.data = data
    def predict(self, data, gender, occasion, user_category):
      # Filtering data based on gender and occasion
      filtered_data = data[(data['gender'].str.lower() == gender) &
                          (data['Occasion'].str.lower().str.contains(occasion))]

      recommendations = {}

      if user_category.lower() == 'none':
          # Get unique categories in the filtered data
          categories = filtered_data['category'].unique()

          # Generate recommendations for each category
          for category in categories:
              category_data = filtered_data[filtered_data['category'].str.lower() == category.lower()]
              sampled_urls = random.sample(category_data['product_url'].tolist(), min(5, len(category_data)))
              recommendations[f"{category.capitalize()} URLs"] = sampled_urls
      else:
          # Generate recommendations for the specified category
          category_data = filtered_data[filtered_data['category'].str.lower() == user_category.lower()]
          sampled_urls = random.sample(category_data['product_url'].tolist(), min(5, len(category_data)))
          recommendations[f"{user_category.capitalize()} URLs"] = sampled_urls

      return recommendations
if __name__ == "__main__":
    rnn_model = CustomRNN(data)
    # User input
    gender = input("Enter the gender (men/women): ").lower()
    occasion = input("Enter the occasion (e.g., Ethnic, Casual, Party, Formal): ").lower()
    user_category = input("Enter the category (e.g., Footwear, Watches, Jewellery, None): ").lower()

    # Predict based on user input
    predictions = rnn_model.predict(data, gender, occasion, user_category)

    # Displaying the predictions
    for category, urls in predictions.items():
        print(category + ":")
        for url in urls:
            print(url)
        print()
