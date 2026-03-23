import pandas as pd

def clean_sales_data(file_path):
    df = pd.read_csv(file_path)
    df.dropna(inplace=True)
    df['Revenue'] = df['Revenue'].astype(float)
    df['Month'] = pd.to_datetime(df['Date']).dt.month
    return df

if __name__ == "__main__":
    df_clean = clean_sales_data("../data/raw/sales_data.csv")
    df_clean.to_csv("../data/processed/sales_data_clean.csv", index=False)
