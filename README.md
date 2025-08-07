# 📊 DigitalXC Data Pipeline & Superset Dashboard Setup

This project involves setting up a data pipeline and integrating Apache Superset for dashboarding. The objective is to create a functional local analytics environment using PostgreSQL, DBT, Apache Airflow, and Superset.

---

## 📁 Project Structure

digitalxc_project/
├── dbt_project/
├── airflow/
├── superset_config.py
├── requirements.txt
├── .env
└── README.md

---

## ⚙️ Tools Used

- **Apache Superset** – Data visualization/dashboarding
- **PostgreSQL** – Metadata and analytics data store
- **DBT** – Transformations and modeling
- **Apache Airflow** – Pipeline orchestration
- **Python** – Glue logic and scripting

---

## 🛠️ Setup Instructions

### 1. Clone the Repository


git clone <repo-url>
cd digitalxc_project
If git is not installed, download from https://git-scm.com

2. Create and Activate Virtual Environment
python -m venv env
.\env\Scripts\activate   # For Windows

3. Install Requirements
pip install -r requirements.txt
If not using requirements.txt, manually install:

pip install apache-superset psycopg2-binary
4. Set Up PostgreSQL Database
Create a PostgreSQL database and user. Update your .env file with credentials:

POSTGRES_USER=your_username
POSTGRES_PASSWORD=your_password
POSTGRES_DB=superset
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
Also, in superset_config.py:


SQLALCHEMY_DATABASE_URI = "postgresql+psycopg2://your_username:your_password@localhost:5432/superset"
5. Set Environment Variable
$env:SUPERSET_CONFIG_PATH = "C:\Users\Admin\Desktop\DigitalXC_Task_Shruthi\digitalxc_project\superset_config.py"
6. Initialize Superset Metadata DB

superset db upgrade
superset fab create-admin
superset init
7. Start Superset

superset run -p 8088 --with-threads --reload --debugger
Access Superset at: http://localhost:8088

⚠️ Challenges Faced
Step	Issue	Resolution
Superset CLI	Running superset db upgrade failed with ModuleNotFoundError: No module named 'superset'	Superset wasn't installed in the active virtualenv. Fixed by activating env and reinstalling Superset.
superset.exe Error	Tried .\\superset.exe db upgrade and got not recognized as command	This is not a valid command. Instead used superset db upgrade.
Git Missing	Running git --version failed	Git was not installed. Installed from official site and restarted terminal.
Python Path Issues	Python couldn’t find Superset module	Ensured active virtual environment and Superset was installed inside it.
PostgreSQL Configuration	Needed credentials and drivers	Added .env, updated config, and installed psycopg2-binary.

📌 Notes
Always activate your environment before running Superset or DBT.

Ensure PostgreSQL server is running when using Superset.

Use .env to store all sensitive credentials securely.

✅ Next Steps
Add DBT models in dbt_project/

Add Airflow DAGs in airflow/

Connect Superset to your data sources and build dashboards

👩‍💻 Author
Shruthi Jayakumar – Applied Data Analyst Task – DigitalXC


