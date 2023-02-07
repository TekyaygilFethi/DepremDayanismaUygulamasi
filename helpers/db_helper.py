import pyodbc
import os
from dotenv import load_dotenv

class DbHelper:
    def __init__(self):
        load_dotenv()
        self.connection = pyodbc.connect(os.getenv("MSSQL_CONNECTION_STRING"), autocommit=True)
        self.cursor = self.connection.cursor()

    def GetData(self, sql):
        return self.cursor.execute(sql).fetchall()

    def ExecuteQuery(self, sql, values=None, is_sp=False):
        if values is not None:
            self.cursor.execute(sql, values)
        else:
            self.cursor.execute(sql)

        if not is_sp:
            self.connection.commit()
        if is_sp:
            return self.cursor.fetchall()
