import sqlite3

def get_products():
    conn = sqlite3.connect('cars.db')
    cursor = conn.cursor()
    brand = "polestar"

    query = "SELECT * FROM car_models WHERE automaker = '%s'" % brand
    
    results = cursor.fetchall()
    conn.close()
    return results
