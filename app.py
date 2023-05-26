import os
import sys
from flask import Flask


app = Flask(__name__)
sys.path.append(os.path.join(os.path.dirname(__file__)))
app.config['SECRET_KEY']= 'AADKFADadhcadcca1231293hrn1j23rd132'

from views.index import *


if __name__ == '__main__':
    app.run(debug=True)
