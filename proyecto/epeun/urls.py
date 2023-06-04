from django.urls import path
from . import views

urlpatterns=[
    path('', views.home),    
   # path('login/', views.login),
    path('cerrarsesion/',views.cerrarSesion),
    path('gestionEfectos/', views.gestionEfectos),
    path('regresarGestionEfecto/',views.regresarGestionEfecto),

    
#-----------------------URL EFECTOS-----------------------------


    #url ver efectos tecnologicos-TERMINADO
    path('efectosTecnologicos/', views.efectosTecnologicos),

    #url efectos sociales
    path('efectosSociales/', views.efectosSociales),

    #url efectos academicos
    path('efectosAcademicos/', views.efectosAcademicos),

    #url efectos economicos
    path('efectosEconomicos/', views.efectosEconomicos),

    #url efectos salud fisica y emocional
    path('efectosSaludFisicaEmocional/', views.efectosSaludFisicaEmocional),   

#-----------------------FIN URL EFECTOS-----------------------------

#---------------------URL graficos------------------------------------#
 #url de graficos
    path('get_chartDesercionEconomica/',views.get_chartDesercionEconomica),
    path('get_chartDesercionAcademico/',views.get_chartDesercionAcademico),
     path('get_chartNuevoIngreso/',views.get_chartNuevoIngreso),
    path('get_chartDesercionTecnologico/',views.get_chartDesercionTecnologico),
    path('get_chartDesercionSocial/',views.get_chartDesercionSocial),
    path('get_chartDesercionSalud/',views.get_chartDesercionSalud),
    path('get_chartNuevoIngreso/',views.get_chartNuevoIngreso),
    path('get_chartRecursosDigitales/',views.get_chartRecursosDigitales),
    path('get_chartFallecidos/',views.get_chartFallecidos),
  
    
    

#--------------------- FIN URL graficos------------------------------------#

    #Gestion Efecto Economico
    path('gestionEfectoEconomico/', views.gestionEfectoEconomico),
    path('gestionEfectoEconomico/<idefecto>', views.edicionEfectoEconomico),
    path('registrarEfectoEconomico/', views.registrarEfectoEconomico),
     
    path('EliminarEfectoEconomico/<idefecto>',views.EliminarEfectoEconomico),

    #Gestion Efecto Tecnologico
    path('gestionEfectoTecnologico/', views.gestionEfectoTecnologico),
    path('gestionEfectoTecnologico/<idefecto>', views.edicionEfectoTecnologico),
    path('registrarEfectoTecnologico/', views.registrarEfectoTecnologico),      
    path('EliminarEfectoTecnologico/<idefecto>',views.EliminarEfectoTecnologico),

    #Gestion Efecto Academcio
    path('gestionEfectoAcademico/', views.gestionEfectoAcademico),
    path('gestionEfectoAcademico/<idefecto>', views.edicionEfectoAcademico),
    path('registrarEfectoAcademico/', views.registrarEfectoAcademico),     
    path('EliminarEfectoAcademico/<idefecto>',views.EliminarEfectoAcademico),

    #Gestion efecto salud fisica y emocional
    path('gestionEfectoSaludFisicayEmocional/', views.gestionEfectoSaludFisicayEmocional),
    path('gestionEfectoSaludFisicayEmocional/<idefecto>', views.edicionEfectoSaludFisicayEmocional),
    path('registrarEfectoSaludFisicayEmocional/', views.registrarEfectoSaludFisicayEmocional),   
    path('EliminarEfectoSaludFisicayEmocional/<idefecto>',views.EliminarEfectoSaludFisicayEmocional),

    #Gestion efecto social   
    path('gestionEfectoSocial/', views.gestionEfectoSocial),
    path('gestionEfectoSocial/<idefecto>', views.edicionEfectoSocial),
    path('registrarEfectoSocial/', views.registrarEfectoSocial),
    path('EliminarEfectoSocial/<idefecto>',views.EliminarEfectoSocial),

# ********************* Gestión de Graficos*******************************

    path('gestionGraficoDeDesertadosPorCausasAcademicas/', views.gestionDesertadosAcademicos),
    path('gestionGraficoDeDesertadosPorCausasAcademicas/<idregistro>', views.edicionDesertadosAcademicos),
    path('registrarDesertadosPorCausasAcademicas/', views.registrarDesertadosAcademicos),
    path('EliminarDesertadosAcademicas/<idregistro>',views.EliminarDesertadosAcademicos),

    path('gestionGraficoDeDesertadosPorCausasEconomicas/', views.gestionDesertadosEconomicos),
    path('gestionGraficoDeDesertadosPorCausasEconomicas/<idregistro>', views.edicionDesertadosEconomicos),
    path('registrarDesertadosPorCausasEconomicas/', views.registrarDesertadosEconomicos),
    path('EliminarDesertadosEconomicos/<idregistro>',views.EliminarDesertadosEconomicos),

    path('gestionGraficoDeDesertadosPorCausasSociales/', views.gestionDesertadosSociales),
    path('gestionGraficoDeDesertadosPorCausasSociales/<idregistro>', views.edicionDesertadosSociales),
    path('registrarDesertadosPorCausasSociales/', views.registrarDesertadosSociales),
    path('EliminarDesertadosSociales/<idregistro>',views.EliminarDesertadosSociales),

    path('gestionGraficoDeDesertadosPorCausasTecnologicas/', views.gestionDesertadosTecnologicos),
    path('gestionGraficoDeDesertadosPorCausasTecnologicas/<idregistro>', views.edicionDesertadosTecnologicos),
    path('registrarDesertadosPorCausasTecnologicas/', views.registrarDesertadosTecnologicos),
    path('EliminarDesertadosTecnologicas/<idregistro>',views.EliminarDesertadosTecnologicos),

    path('gestionGraficoDeDesertadosPorCausasdeSaludFisicayEmocional/', views.gestionDesertadosdeSaludFisicayEmocional),
    path('gestionGraficoDeDesertadosPorCausasdeSaludFisicayEmocional/<idregistro>', views.edicionDesertadosdeSaludFisicayEmocional),
    path('registrarDesertadosPorCausasdeSaludFisicayEmocional/', views.registrarDesertadosdeSaludFisicayEmocional),
    path('EliminarDesertadosdeSaludFisicayEmocional/<idregistro>',views.EliminarDesertadosdeSaludFisicayEmocional),

    path('gestionGraficoDeNuevoIngreso/', views.gestionNuevoIngreso),
    path('gestionNuevoIngreso/<idregistro>', views.edicionNuevoIngreso),
    path('registrarNuevoIngreso/', views.registrarNuevoIngreso),
    path('EliminarNuevoIngreso/<idregistro>',views.EliminarNuevoIngreso),

    path('gestionGraficoDeFallecidos/', views.gestionDePoblacionFallecida),
    path('gestionFallecidos/<idregistro>', views.edicionPoblacionFallecida),
    path('registrarPoblacionFallecida/', views.registrarPoblacionFallecida),
    path('EliminarPoblacionFallecida/<idregistro>',views.EliminarPoblacionFallecida),

    path('gestionGraficoDePoblacionConRecursosTecnologicos/', views.gestionPoblacionConRecursosTecnologicos),
    path('gestionPoblacionConRecursosTecnologicos/<idregistro>', views.edicionPoblacionConRecursosTecnologicos),
    path('registrarPoblacionConRecursosTecnologicos/', views.registrarPoblacionConRecursosTecnologicos),
    path('EliminarPoblacionConRecursosTecnologicos/<idregistro>',views.EliminarPoblacionConRecursosTecnologicos),
  
    ]