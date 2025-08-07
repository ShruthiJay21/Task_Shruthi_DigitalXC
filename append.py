import pandas as pd
from sqlalchemy import create_engine

# Load CSV
df = pd.read_csv(r'C:\Users\Admin\Desktop\DigitalXC_Task_Shruthi\digitalxc_project\cleaned_tickets.csv')

# Create engine
engine = create_engine('postgresql://postgres:admin123@localhost:5432/itsm_dashboard')

# Insert into PostgreSQL
df.to_sql('itsm_data', engine, if_exists='append', index=False)
