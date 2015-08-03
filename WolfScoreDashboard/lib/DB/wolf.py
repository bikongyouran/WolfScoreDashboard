__author__ = 'haifwu'

from WolfScoreDashboard.settings import DATABASES
from WolfScoreDashboard.settings import DEBUG
import mysql.connector as connector

class User:
    def __init__(self, name, dept, score = 0):
        self.name = name
        self.dept =dept
        self.score = score

    def __repr__(self):
        return "(%s, %s, %s)" %(self.name, self.dept, self.score)

class WolfDao:
    def __init__(self):
        self.connect = connector.connect(**DATABASES['mysql'])
        self.cursor = self.connect.cursor()

    def getUsers(self):
        """

        :rtype : null
        """
        query = "select * from wolf"
        self.cursor.execute(query)
        users = []
        for (name, dept, score) in self.cursor:
            users.append(User(name, dept, score))

        if DEBUG:
            print users
        return users


    def addUser(self, user):
        """
        used to insert a user into wolf table
        :param name: string, less than 25 char
        :param dept: string, less than 30 char
        :return:0 if ok else error code
        """
        add = "insert  into wolf (name, dept, score) values('%s', '%s', %d);" %(user.name, user.dept, user.score)
        if DEBUG:
            print("lib.DB.Wolf.addUser add sql: %s"% add)

        try:
            self.cursor.execute(add)
            self.connect.commit()
        except connector.Error as err:
            if DEBUG:
                print(err.msg)
            return err.errno
        return 0;

    def updateUser(self, user):
        update = "update wolf set score = %d where name= '%s' and dept = '%s'" %(user.score, user.name, user.dept)
        if DEBUG:
            print("lib.DB.Wolf.updateUser update sql: %s"% update)

        try:
            self.cursor.execute(update)
            self.connect.commit()
        except connector.Error as err:
            if DEBUG:
                print(err.msg)
            return err.errno
        return 0;

    def closeDb(self):
        self.cursor.close()
        self.connect.close()



if __name__ == "__main__":
    dao = WolfDao()
    #print dao.addUser(User('kevin', 'mgs', 10))
    dao.getUsers()
    #dao.updateUser(User('devin', 'pd', 300))
    dao.closeDb()
