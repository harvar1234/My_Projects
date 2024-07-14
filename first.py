from flask import Flask, render_template, request
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import linear_kernel

app = Flask(__name__)

# Load data
df = pd.read_csv('C:\\Users\\saipr\\Desktop\\fashion\\filtered5k_df.csv')
df = df.dropna()

# Function to get content-based recommendations considering price range
def content_based_recommendations(df, gender_input, occasion_input, color_input, max_price_input, individual_category_input):
    # Convert relevant columns in the DataFrame to lowercase and strip whitespaces
    df['category_by_Gender'] = df['category_by_Gender'].apply(lambda x: str(x).strip().lower())
    df['Occasions'] = df['Occasions'].apply(lambda x: str(x).strip().lower())
    df['Color'] = df['Color'].apply(lambda x: str(x).strip().lower())
    df['Individual_category'] = df['Individual_category'].apply(lambda x: str(x).strip().lower())

    # Filter based on user input
    if occasion_input == 'wedding' and gender_input in ['women', 'female']:
        filtered_products = df[(df['Individual_category'].str.contains('lehenga-choli', case=False))]
    else:
        filtered_products = df[df['category_by_Gender'] == gender_input]
        filtered_products = filtered_products[filtered_products['Occasions'].str.contains(occasion_input, case=False)]
        filtered_products = filtered_products[filtered_products['Color'] == color_input]

    # Filter based on max price
    filtered_products = filtered_products[filtered_products['OriginalPrice (in Rs)'] < max_price_input]

    # Filter based on individual category if specified
    if individual_category_input.lower() != 'none':
        filtered_products = filtered_products[filtered_products['Individual_category'].str.contains(individual_category_input, case=False)]

    try:
        if len(filtered_products) > 0:
            # Apply TF-IDF on the 'Description' column
            tfidf_vectorizer = TfidfVectorizer(stop_words=None)
            tfidf_matrix = tfidf_vectorizer.fit_transform(filtered_products['Description'].fillna(''))
            # Calculate the cosine similarity between products
            cosine_similarities = linear_kernel(tfidf_matrix, tfidf_matrix)

            # Get the indices of the top-rated products
            product_indices = cosine_similarities.sum(axis=1).argsort()[:-7:-1]

            # Display the top-rated products
            top_rated_products = filtered_products.iloc[product_indices]
            return top_rated_products.to_dict('records')
        else:
            return None

    except ValueError as e:
        print(f"Error: {e}")
        print("TF-IDF cannot be applied due to an empty vocabulary. Printing filtered products without recommendations.")
        return None

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/recommendations', methods=['POST'])
def recommendations():
    gender_input = request.form['gender'].strip().lower()
    occasion_input = request.form['occasion'].strip().lower()
    color_input = request.form['color'].strip().lower()
    max_price_input = float(request.form['max_price'])
    individual_category_input = request.form['individual_category'].strip().lower() if 'individual_category' in request.form else 'none'

    recommendations = content_based_recommendations(df, gender_input, occasion_input, color_input, max_price_input, individual_category_input)
    
    if recommendations:
        return render_template('recommendations.html', recommendations=recommendations)
    else:
        return render_template('no_recommendations.html')

if __name__ == '__main__':
    app.run(debug=True)
