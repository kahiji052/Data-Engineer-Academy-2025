import pandas as pd

data = {
    'Alumno': ['Ana', 'Juan', 'Luis', 'Marta', 'Carlos'],
    'Matemáticas': [85, 90, 78, 92, 88],
    'Historia': [80, 85, 88, 90, 87],
    'Ciencias': [90, 88, 85, 95, 92]
}

df = pd.DataFrame(data)

# Calcular el promedio de calificaciones para cada alumno
df['Promedio'] = df[['Matemáticas', 'Historia', 'Ciencias']].mean(axis=1)

print(df[['Alumno', 'Promedio']])