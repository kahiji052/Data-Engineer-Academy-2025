import pandas as pd

excel_file = 'ventas-x-ciudad.xlsx'
df = pd.read_excel(excel_file)

df.to_csv('ventas-x-ciudad.csv', index=False)
df.to_json('ventas-x-ciudad.json', orient='records', lines=False)
df.to_xml('ventas-x-ciudad.xml', root_name='root', row_name='row')

print("Archivos generados: ventas-x-ciudad.csv, ventas-x-ciudad.json, ventas-x-ciudad.xml")

try:
    df_csv = pd.read_csv('ventas-x-ciudad.csv')  
    df_excel = pd.read_excel('ventas-x-ciudad.xlsx') 
    df_json = pd.read_json('ventas-x-ciudad.json')
    print('Carga correcta de los archivos')
except Exception as error:
    print(error)
