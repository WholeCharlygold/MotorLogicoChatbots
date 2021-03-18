# coding: utf-8

import json
import psycopg2
import requests

class baseDatos:
    def __init__(self, user, password, host, port,database):
        self.user=user
        self.password=password
        self.host=host
        self.port=port
        self.database=database

    def conexionBaseDeDatos(self):
        try:
            connection = psycopg2.connect(user = self.user,
                                  password = self.password,
                                  host = self.host,
                                  port = self.port,
                                  database = self.database)  
            return connection
        except(Exception, psycopg2.Error) as error:
            print("Error al conectar con base de datos", error)
            return None 
            
    def update(self,datosActualizar,datos,tabla):
        connection= self.conexionBaseDeDatos()
        actualizar =" "
        actualizar = "update "+tabla+" set"
        j = 0
        for dato,informacionDato in datosActualizar.items():
            if j==0:
                actualizar=actualizar+" "+dato+"="+"'"+str(informacionDato)+"'"
                j=j+1
            else:
                 actualizar=actualizar+", "+dato+"="+"'"+str(informacionDato)+"'"    
        i=0
        actualizar=actualizar+" where "
        for dato, valorDato in datos.items():
            if i==0:
                actualizar = actualizar+dato+"= '"+str(valorDato)+"'"                
            else:             
                actualizar = actualizar+" and "+dato+"= '"+str(valorDato)+"'" 
            i=i+1
        actualizar= actualizar + " ;"
        cursor = connection.cursor();
        cursor.execute(actualizar)
        connection.commit()
        cursor.close()
        connection.close()
        
    def insertDatos(self,jsonData,tabla):
        url = "http://127.0.0.1:8181/insert/"+str(tabla)
        payload = json.dumps(jsonData)     
        headers = {
            'content-type': "application/json",
            'cache-control': "no-cache",
            'postman-token': "64225f1a-4ded-800c-14f2-74ff3a3d45b9"
            }
        response = requests.request("POST", url, data=payload, headers=headers)   
        return response.json() 

    def getDatos(self,jsonData,tabla):      
        print("función select")
        url = "http://127.0.0.1:8181/select/"+str(tabla)
        payload = json.dumps(jsonData)     
        headers = {
            'content-type': "application/json",
            'cache-control': "no-cache",
            'postman-token': "64225f1a-4ded-800c-14f2-74ff3a3d45b9"
            }
        response = requests.request("GET", url, data=payload, headers=headers)   
        
        return response.json()       

    def borrarBaseDatos(self):
        connection = self.conexionBaseDeDatos()
        cursor = connection.cursor();     
        try:  
            cursor.execute("DELETE FROM ticket; "+
                           "DELETE FROM conversaciones; "+
                           "DELETE FROM bloqueinformativo; "+
                           "DELETE FROM bloqueinformativodinamico; "+
                           "DELETE FROM bloqueinput; "+
                           "DELETE FROM bloqueinputdinamico; "+
                           "DELETE FROM bloquequickreply; "+
                           "DELETE FROM bloquequickreplydinamico; "+
                           "DELETE FROM bloqueslide; "+
                           "DELETE FROM bloqueslidedinamico; "+
                           "DELETE FROM bloqueticket; "+
                           "DELETE FROM bloqueticketdinamico; "+
                           "DELETE FROM bloqueinternalprocess; "+
                           "DELETE FROM bloquecase; "+
                           "DELETE FROM botones; "+
                           "DELETE FROM credencialesapis; "+
                           "DELETE FROM elementos; "+
                           "DELETE FROM elementosbuy; "+
                           "DELETE FROM linksapis; "+
                           "DELETE FROM operaciones; "+
                           "DELETE FROM robots; "+
                           "DELETE FROM teams; "+
                           "DELETE FROM variables;"+
                          "DELETE FROM bloquenlp;")
            connection.commit()
            cursor.close()
            connection.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)

    def borrarBaseDatosPorRobot(self, id_robot):
        connection = self.conexionBaseDeDatos()
        cursor = connection.cursor();     
        try:  
            cursor.execute("DELETE FROM ticket where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueinformativo where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueinformativodinamico where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueinput where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueinputdinamico where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloquequickreply where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloquequickreplydinamico where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueslide where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueslidedinamico where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueticket where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueticketdinamico where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloqueinternalprocess where id_robot ="+id_robot+"; "+
                           "DELETE FROM bloquecase where id_robot ="+id_robot+"; "+
                           "DELETE FROM variables where id_robot ="+id_robot+"; "+
                          "DELETE FROM bloquenlp where id_robot ="+id_robot+"; ")
            connection.commit()
            cursor.close()
            connection.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)

        

