import pandas as pd

excel_file = 'ventas-x-ciudad.xlsx'
df = pd.read_excel(excel_file)

print(df.head())  # muestra primeras 5 filas
print(df.info())  # información general
print(df.describe())  # estadísticas descriptivas
