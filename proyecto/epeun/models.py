from django.db import models

# Create your models here.



class Administrador(models.Model):
   
    nombre = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    usuario = models.CharField(primary_key=True, max_length=50, unique=True)
    password = models.CharField(max_length=8)
    
    def __str__(self):
        texto= "{0} "
        return texto.format(self.nombre)



class Causa(models.Model):
   
    tipo = models.CharField(primary_key=True, max_length=50)
    usuario = models.ForeignKey(Administrador, on_delete=models.CASCADE, null=True)
    
    def __str__(self):
        texto= "{0} "
        return texto.format(self.tipo)
   

class Efecto(models.Model):
    idefecto = models.AutoField(primary_key=True)
    #tipo = models.CharField(max_length=10)
    tema = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=500 )
    tipo = models.ForeignKey(Causa, on_delete=models.CASCADE)

    def __str__(self):
        texto= "Tema:{0}, Descripcion: {1}, tipo: {2} "
        return texto.format(self.tema, self.descripcion, self.tipo)



class Universidad(models.Model):
   
    tipou = models.CharField(primary_key=True, max_length=50)

    def __str__(self):
        texto= "{0} "
        return texto.format(self.tipou)

class Registro(models.Model):
    idregistro = models.AutoField(primary_key=True)
    nombreregistro = models.CharField(max_length=50)
    cantidad = models.IntegerField()
    ano = models.IntegerField()
    tipo = models.ForeignKey(Causa, on_delete=models.CASCADE)
    tipoU = models.ForeignKey(Universidad, on_delete=models.CASCADE)
    
    def __str__(self):
        texto= "{0}, cantidad: {1}, año:{2},  tipo universidad: {3} Causa: {4}"
        return texto.format(self.nombreregistro, self.cantidad, self.ano, self.tipoU, self.tipo)


