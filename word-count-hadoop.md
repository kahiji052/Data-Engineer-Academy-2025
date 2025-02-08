# Conteo de Palabras en un Libro con Apache Hadoop
Para este repositorio se implementó la configuración de Hadoop en un entorno Docker hasta la carga de archivos y la ejecución del trabajo MapReduce.

## Configuración del entorno para ejecutar Hadoop en un contenedor de Docker
### **1. Obtener la imagen de Docker con Hadoop**
```bash
sudo docker pull uracilo/hadoop
```
### **2. Clonar el repositorio de GitHub**
```bash
git clone https://github.com/uracilo/hadoop.git
```

### **3. Crear la red para el clúster de Hadoop**  
```bash
sudo docker network create --driver=bridge hadoop
```
### **4. Entrar al directorio de Hadoop**
```bash
cd hadoop
```
### **5. Iniciar el contenedor e iniciar Hadoop**
```bash
./start-container.sh
./start-hadoop.sh
```

## Obtener los archivos de texto de los libros
### Libro | Immanuel Kant - The Critique of Pure Reason
```bash
wget https://www.gutenberg.org/cache/epub/4280/pg4280.txt
```

### Libro | Immanuel Kant - The Critique of Practical Reason
```bash
wget https://www.gutenberg.org/cache/epub/5683/pg5683.txt
```

## Preparar los archivos para Hadoop
### **6. Crear un directorio para el input**
```bash
mkdir input
```

### **7. Crear un archivo comprimido (tar.gz) para cada libro**
#### Libro | Immanuel Kant - The Critique of Pure Reason
```bash
tar -czvf input/critique-pure-reason.tar.gz pg4280.txt
```
#### Libro | Immanuel Kant - The Critique of Practical Reason
```bash
tar -czvf input/critique-practical-reason.tar.gz pg5683.txt
```

### **8. Verificar los archivos y sus tamaños**
```bash
ls -flarts input
```

## Cargar archivos en Hadoop DFS
### **9. Crear y mover el directorio input al DFS de Hadoop**
```bash
hdfs dfs -mkdir -p test
hdfs dfs -put input
```
### **10. Revisar los archivos en el directorio input**
```bash
hdfs dfs -ls input
```

### **11. Leer las últimas 20 líneas de los archivos**
#### Libro | Immanuel Kant - The Critique of Pure Reason
```bash
hdfs dfs -cat input/critique-pure-reason.tar.gz | zcat | tail -n 20
```
#### Libro | Immanuel Kant - The Critique of Practical Reason
```bash
hdfs dfs -cat input/critique-practical-reason.tar.gz | zcat | tail -n 20
```

## Ejecutar el trabajo de conteo de palabras
### **12. Ejecutar el trabajo de conteo de palabras**
```bash
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/sources/hadoop-mapreduce-examples-2.7.2-sources.jar org.apache.hadoop.examples.WordCount input output
```
### **13. Ver el resultado del trabajo**
```bash
hdfs dfs -cat output/part-r-00000
```

## Resultados Obtenidos
#### Libro | Immanuel Kant - The Critique of Pure Reason
![image](https://github.com/user-attachments/assets/b1bded4b-0512-4237-ac63-de7bf6f9e686)


#### Libro | Immanuel Kant - The Critique of Practical Reason
![image](https://github.com/user-attachments/assets/6726f473-122c-4153-ab7c-64ed9c1c5ae5)
