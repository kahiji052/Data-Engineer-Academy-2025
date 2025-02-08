import pandas as pd

data = {
   'Nombre': ['Ana', 'Juan', 'Luis'],
   'Edad': [23, 30, 45],
   'Ciudad': ['Madrid', 'Barcelona', 'Valencia']
}

df = pd.DataFrame(data)

filtro = df[df['Edad'] > 30]
print(filtro)