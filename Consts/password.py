import os
from dotenv import load_dotenv

# Load variables from .env file
load_dotenv("env/password.env")

class password:
    def __init__(self,password_vault):
        self.password_vault = password_vault
        
        
        
password.password_vault = os.getenv("PASS")
