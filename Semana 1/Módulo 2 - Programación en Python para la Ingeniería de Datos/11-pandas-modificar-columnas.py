import pandas as pd
data = {
   'Nombre': ['Ana', 'Juan', 'Luis'],
   'Ciudad': ['Madrid', 'Barcelona', 'Valencia'],
}

df = pd.DataFrame(data)
# Agrega columna
df['Salario'] = [3000, 4000, 5000]
df['Edad'] = [23, 30, 45] 
df['Edad'] = df['Edad'] + 1 #aumenta 1 a cada registro en edad

print(df)