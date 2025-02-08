import pandas as pd

excel_file = 'ventas-x-ciudad.xlsx'
df = pd.read_excel(excel_file)
print(f'Dataframe original: \n {df}')

ventas_x_ciudad = df.groupby('Ciudad')['Ventas'].sum()
print(f'Ventas por ciudad: \n{ventas_x_ciudad}')