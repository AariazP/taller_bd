sequence = [
    9, 39, 17, 18, 40, 43, 47, 3, 26, 21, 26, 15, 47, 39, 5, 8, 23, 43, 44, 40,
    20, 27, 26, 49, 18, 40, 44, 2, 25, 21, 1, 28, 28, 27, 36, 27, 43, 15, 27, 15,
    36, 43, 45, 15, 37, 45, 37, 36
]

with open('taller_bd.sql', 'a') as file:  # Cambio a modo de adición ('a')
    for index, number in enumerate(sequence, 1):
        
        query = f"UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = {number} LIMIT 1) WHERE employee_id = {number};\n"
        file.write(query)
print("Se ejecutó el script")
