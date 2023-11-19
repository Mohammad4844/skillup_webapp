import pymongo
import numpy as np

# Replace these values with your MongoDB connection details
mongo_uri = "mongodb+srv://var123un:123@cluster1.bctyasc.mongodb.net/Database1"
collection_name = "Collection1"


def get_other_articles_embeddings(id):
    # Establish a connection to MongoDB
    client = pymongo.MongoClient(mongo_uri)

    # Access the database and collection
    db = client.get_database()
    collection = db[collection_name]


    # Define your query (replace with your own criteria)
    query = {"_id": id}
    # Fetch data from the collection based on the query
    result = collection.find(query)

    rankings = {}
    # Iterate over the results
    for document in result:
        rankings = document["similarity_against"]
        break


    # Close the MongoDB connection
    client.close()

    return rankings

a = get_other_articles_embeddings(1)
print(a)