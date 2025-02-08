import pandas as pd

data = { 
    'Empleado': ['Carlos', 'Marta', 'Luis'], 
    'Salario': [2500, 3000, 2800] 
} 

empleados_df = pd.DataFrame(data) 

filtro = empleados_df[empleados_df['Salario'] > 2700] 
print(filtro) 