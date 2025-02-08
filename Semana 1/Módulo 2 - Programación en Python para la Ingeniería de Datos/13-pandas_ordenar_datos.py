import pandas as pd
data = {
   'Nombre': ['Ana', 'Juan', 'Luis'],
   'Edad': [23, 30, 45],
   'Ciudad': ['Madrid', 'Barcelona', 'Valencia'],
   'Salario': [3000, 4000, 5000]
}
df = pd.DataFrame(data)

ordenado = df.sort_values(by='Edad', ascending=False) 
print(ordenado) 