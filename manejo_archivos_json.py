
# coding: utf-8

import json
import os
import sys 
class dataJson():
    """Clase para ""manejo de archivos json"""
    def __init__(self, path=os.getcwd()+"/"):            
        self.path=path
        self.name=''        

    def abrirJson(self,nombre,path=os.getcwd()+"/"):
        self.name=nombre        
        with open(path+self.name,encoding='utf-8') as data_file:            
            diccionario = json.load(data_file)
            data_file.close()
        return diccionario
    
    def guardarJson(self,nombre,dic,path=os.getcwd()+"/"):
        self.name=nombre
        with open(os.path.join(path+nombre), 'w',encoding='utf-8') as file:
            json.dump(dic,file, indent=4,ensure_ascii=False)
            file.close()
            
    def isJson(self,diccionario):    
        try:
            json.loads(diccionario)        
            return True
        except:
            return False
        
    def jsonUnico(self,nombre,funtionAdd,path=os.getcwd()+"/"):
        self.name=nombre
        try :
            base = self.abrirJson(nombre)
        except:
            base=dict()
        base.update(funtionAdd)
        self.guardarJson(self.name,base,path)





