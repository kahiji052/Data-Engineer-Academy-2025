import pandas as pd

data = {
    'Ciudad': ['Madrid', 'Barcelona', 'Valencia', 'Madrid'],
    'Ventas': [200, 300, None, 150],
    'Vendedor': ['Ana', 'Luis', 'Carlos', None]
}
df = pd.DataFrame(data)

# Manejo de valores nulos
df['Ventas'] = df['Ventas'].fillna(df['Ventas'].mean())  # Reemplazar NaN con promedio
df = df.dropna(subset=['Vendedor'])                     # Eliminar filas con Vendedor nulo

print(df)