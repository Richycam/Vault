import os
from dotenv import load_dotenv
from Consts import password
from pathlib import Path


def init_check_pass():
    load_dotenv("env/password.env")
    password.password_vault = os.getenv("PASS")
    password_check = input("Vualt Password? >")
    if password.password_vault == password_check:
        main()

    


env_file_path = Path('env/password.env')



def main():
# Load variables from .env file
    load_dotenv("env/vault.env")
    print(os.getenv("secrets"))
    input("VUALT>")
