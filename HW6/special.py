import psycopg2
import tkinter


class Interface:
    def __init__(self):
        try:
            self.conn = psycopg2.connect("dbname='hw5' user='Joe' host='localhost' password='toor'")
            self.conn.autocommit = True

        except:
            print("Fail not connected")

    def gui(self):

        cur = self.conn.cursor()
        cur.execute("""SELECT * FROM countries""")
        rows = cur.fetchall()
        print("\n Show me the countries \n")
        for row in rows:
            print("     ", row[0])


if __name__ == '__main__':
    database = Interface()
    database.gui()
