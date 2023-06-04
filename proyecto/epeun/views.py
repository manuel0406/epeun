from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from django.http.response import JsonResponse
from .models import *
from django.db.models import Sum


# Create your views here.


def home(request):
    return render(request, 'VerEfectos/home.html')

# -----------------------EFECTOS VIEWS-----------------------------

# vista efectos  tecnologico-TERMINADO


def efectosTecnologicos(request):
    efectos = Efecto.objects.filter(tipo='Tecnologica')
    return render(request, 'VerEfectos/efectosTecnologicos.html', {'efectos': efectos})

# vista efectos sociales


def efectosSociales(request):
    efectos = Efecto.objects.filter(tipo='Social')
    return render(request, 'VerEfectos/efectosSociales.html', {'efectos': efectos})

# vista efectos academicos


def efectosAcademicos(request):
    efectos = Efecto.objects.filter(tipo='Academica')
    return render(request, 'VerEfectos/efectosAcademicos.html', {'efectos': efectos})

# vista efectos economicos


def efectosEconomicos(request):
    efectos = Efecto.objects.filter(tipo='Economica')
    return render(request, 'VerEfectos/efectosEconomicos.html', {'efectos': efectos})

# vista efectos salud fisica y emocional


def efectosSaludFisicaEmocional(request):
    efectos = Efecto.objects.filter(tipo='Salud física y emocional')
    return render(request, 'VerEfectos/efectosSaludFisicaEmocional.html', {'efectos': efectos})

# -----------------------FIN EFECTOS VIEWS-----------------------------


def get_chartDesercionEconomica(request):

    registrosPublico = Registro.objects.filter(nombreregistro="Deserción Económica", tipo="Económica", tipoU="publica").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')
    registrosPrivada = Registro.objects.filter(nombreregistro="Deserción Económica", tipo="Económica", tipoU="privada").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')

    datosPublica = []
    for registroPublico in registrosPublico:
        datosPublica.append({
            'name': registroPublico['ano'],
            'value': registroPublico['total_cantidad'],
            'year': registroPublico['ano'],
        })

    datosPrivada = []
    for registroPrivada in registrosPrivada:
        datosPrivada.append({
            'name': registroPrivada['ano'],
            'value': registroPrivada['total_cantidad'],
            'year': registroPrivada['ano'],
        })

    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])

    echartE = {
        'title': {
            'text': 'Deserción Económica'

        },
        'tooltip': {
            'trigger': 'axis',

        },
        'legend': {
            'data': ['Pública', 'Privada']
        },
        'calculable': 'true',
        'xAxis': [{
            'type': 'category',
            'data': [registro['year'] for registro in datosPublica],
        }],
        'yAxis': [{
            'type': 'value'
        }],
        'series': [
            {
                'name': 'Pública',
                'data': datosPublica,
                'type': 'bar',
                'markPoint': {
                        'data': [
                            {'type': 'max', 'name': 'Max'},
                            {'type': 'min', 'name': 'Min'}
                        ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }
            },

            {
                'name': 'Privada',
                'data': datosPrivada,
                'type': 'bar',
                'markPoint': {
                    'data': [
                        {'type': 'max', 'name': 'Max'},
                        {'type': 'min', 'name': 'Min'}
                    ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }

            }
        ]
    }

    return JsonResponse(echartE)


def get_chartDesercionAcademico(request):

    registrosPublico = Registro.objects.filter(nombreregistro="Deserción Académica", tipo="Académica", tipoU="publica").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')
    registrosPrivada = Registro.objects.filter(nombreregistro="Deserción Académica", tipo="Académica", tipoU="privada").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')

    datosPublica = []
    for registroPublico in registrosPublico:
        datosPublica.append({
            'name': registroPublico['ano'],
            'value': registroPublico['total_cantidad'],
            'year': registroPublico['ano'],
        })

    datosPrivada = []
    for registroPrivada in registrosPrivada:
        datosPrivada.append({
            'name': registroPrivada['ano'],
            'value': registroPrivada['total_cantidad'],
            'year': registroPrivada['ano'],
        })

    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])

    echartAc = {
        'title': {
            'text': 'Deserción Académica'

        },
        'tooltip': {
            'trigger': 'axis',

        },
        'legend': {
            'data': ['Pública', 'Privada']
        },
        'calculable': 'true',
        'xAxis': [{
            'type': 'category',
            'data': [registro['year'] for registro in datosPublica],
        }],
        'yAxis': [{
            'type': 'value'
        }],
        'series': [
            {
                'name': 'Pública',
                'data': datosPublica,
                'type': 'bar',
                'markPoint': {
                        'data': [
                            {'type': 'max', 'name': 'Max'},
                            {'type': 'min', 'name': 'Min'}
                        ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }
            },

            {
                'name': 'Privada',
                'data': datosPrivada,
                'type': 'bar',
                'markPoint': {
                    'data': [
                        {'type': 'max', 'name': 'Max'},
                        {'type': 'min', 'name': 'Min'}
                    ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }

            }
        ]
    }

    return JsonResponse(echartAc)


def get_chartDesercionTecnologico(request):

    registrosPublico = Registro.objects.filter(nombreregistro="Deserción Tecnológica", tipo="Tecnológica", tipoU="publica").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')
    registrosPrivada = Registro.objects.filter(nombreregistro="Deserción Tecnológica", tipo="Tecnológica", tipoU="privada").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')

    datosPublica = []
    for registroPublico in registrosPublico:
        datosPublica.append({
            'name': registroPublico['ano'],
            'value': registroPublico['total_cantidad'],
            'year': registroPublico['ano'],
        })

    datosPrivada = []
    for registroPrivada in registrosPrivada:
        datosPrivada.append({
            'name': registroPrivada['ano'],
            'value': registroPrivada['total_cantidad'],
            'year': registroPrivada['ano'],
        })

    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])

    echartTec = {
        'title': {
            'text': 'Deserción Tecnológica    ',
            'subtext': ' '
        },
        'tooltip': {
            'trigger': 'axis',

        },
        'legend': {
            'data': ['Pública', 'Privada']
        },
        'calculable': 'true',
        'xAxis': [{
            'type': 'category',
            'data': [registro['year'] for registro in datosPublica],
        }],
        'yAxis': [{
            'type': 'value'
        }],
        'series': [
            {
                'name': 'Pública',
                'data': datosPublica,
                'type': 'bar',
                'markPoint': {
                        'data': [
                            {'type': 'max', 'name': 'Max'},
                            {'type': 'min', 'name': 'Min'}
                        ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }
            },

            {
                'name': 'Privada',
                'data': datosPrivada,
                'type': 'bar',
                'markPoint': {
                    'data': [
                        {'type': 'max', 'name': 'Max'},
                        {'type': 'min', 'name': 'Min'}
                    ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }

            }
        ]
    }

    return JsonResponse(echartTec)


def get_chartDesercionSocial(request):

    registrosPublico = Registro.objects.filter(nombreregistro="Deserción Social", tipo="Social", tipoU="publica").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')
    registrosPrivada = Registro.objects.filter(nombreregistro="Deserción Social", tipo="Social", tipoU="privada").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')

    datosPublica = []
    for registroPublico in registrosPublico:
        datosPublica.append({
            'name': registroPublico['ano'],
            'value': registroPublico['total_cantidad'],
            'year': registroPublico['ano'],
        })

    datosPrivada = []
    for registroPrivada in registrosPrivada:
        datosPrivada.append({
            'name': registroPrivada['ano'],
            'value': registroPrivada['total_cantidad'],
            'year': registroPrivada['ano'],
        })
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])

    echartSo = {
        'title': {
            'text': 'Deserción Social'

        },
        'tooltip': {
            'trigger': 'axis',

        },
        'legend': {
            'data': ['Pública', 'Privada']
        },
        'calculable': 'true',
        'xAxis': [{
            'type': 'category',
            'data': [registro['year'] for registro in datosPublica],
        }],
        'yAxis': [{
            'type': 'value'
        }],
        'series': [
            {
                'name': 'Pública',
                'data': datosPublica,
                'type': 'bar',
                'markPoint': {
                        'data': [
                            {'type': 'max', 'name': 'Max'},
                            {'type': 'min', 'name': 'Min'}
                        ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }
            },

            {
                'name': 'Privada',
                'data': datosPrivada,
                'type': 'bar',
                'markPoint': {
                    'data': [
                        {'type': 'max', 'name': 'Max'},
                        {'type': 'min', 'name': 'Min'}
                    ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }

            }
        ]
    }

    return JsonResponse(echartSo)


def get_chartDesercionSalud(request):

    registrosPublico = Registro.objects.filter(nombreregistro="Deserción Salud", tipo="Salud física y emocional", tipoU="publica").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')
    registrosPrivada = Registro.objects.filter(nombreregistro="Deserción Salud", tipo="Salud física y emocional", tipoU="privada").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')

    datosPublica = []
    for registroPublico in registrosPublico:
        datosPublica.append({
            'name': registroPublico['ano'],
            'value': registroPublico['total_cantidad'],
            'year': registroPublico['ano'],
        })

    datosPrivada = []
    for registroPrivada in registrosPrivada:
        datosPrivada.append({
            'name': registroPrivada['ano'],
            'value': registroPrivada['total_cantidad'],
            'year': registroPrivada['ano'],
        })

    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])

    echartSa = {
        'title': {
            'text': 'Deserción Salud',
            'subtext': 'Física y emocional'



        },
        'tooltip': {
            'trigger': 'axis',

        },
        'legend': {
            'data': ['Pública', 'Privada']
        },
        'calculable': 'true',
        'xAxis': [{
            'type': 'category',
            'data': [registro['year'] for registro in datosPublica],
        }],
        'yAxis': [{
            'type': 'value'
        }],
        'series': [
            {
                'name': 'Pública',
                'data': datosPublica,
                'type': 'bar',
                'markPoint': {
                        'data': [
                            {'type': 'max', 'name': 'Max'},
                            {'type': 'min', 'name': 'Min'}
                        ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }
            },

            {
                'name': 'Privada',
                'data': datosPrivada,
                'type': 'bar',
                'markPoint': {
                    'data': [
                        {'type': 'max', 'name': 'Max'},
                        {'type': 'min', 'name': 'Min'}
                    ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }

            }
        ]
    }

    return JsonResponse(echartSa)


def get_chartNuevoIngreso(request):

    registrosPublico = Registro.objects.filter(nombreregistro="Nuevo Ingreso", tipo="Académica", tipoU="publica").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')
    registrosPrivada = Registro.objects.filter(nombreregistro="Nuevo Ingreso", tipo="Académica", tipoU="privada").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')

    datosPublica = []
    for registroPublico in registrosPublico:
        datosPublica.append({
            'name': registroPublico['ano'],
            'value': registroPublico['total_cantidad'],
            'year': registroPublico['ano'],
        })

    datosPrivada = []
    for registroPrivada in registrosPrivada:
        datosPrivada.append({
            'name': registroPrivada['ano'],
            'value': registroPrivada['total_cantidad'],
            'year': registroPrivada['ano'],
        })

    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])

    echartNu = {
        'title': {
            'text': 'Nuevo Ingreso'

        },
        'tooltip': {
            'trigger': 'axis',

        },
        'legend': {
            'data': ['Pública', 'Privada']
        },
        'calculable': 'true',
        'xAxis': [{
            'type': 'category',
            'data': [registro['year'] for registro in datosPublica],
        }],
        'yAxis': [{
            'type': 'value'
        }],
        'series': [
            {
                'name': 'Pública',
                'data': datosPublica,
                'type': 'bar',
                'markPoint': {
                        'data': [
                            {'type': 'max', 'name': 'Max'},
                            {'type': 'min', 'name': 'Min'}
                        ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }
            },

            {
                'name': 'Privada',
                'data': datosPrivada,
                'type': 'bar',
                'markPoint': {
                    'data': [
                        {'type': 'max', 'name': 'Max'},
                        {'type': 'min', 'name': 'Min'}
                    ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }

            }
        ]
    }

    return JsonResponse(echartNu)


def get_chartRecursosDigitales(request):

    registrosPublico = Registro.objects.filter(nombreregistro="Recursos Tecnológicos", tipo="Tecnológica", tipoU="publica").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')
    registrosPrivada = Registro.objects.filter(nombreregistro="Recursos Tecnológicos", tipo="Tecnológica", tipoU="privada").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')

    datosPublica = []
    for registroPublico in registrosPublico:
        datosPublica.append({
            'name': registroPublico['ano'],
            'value': registroPublico['total_cantidad'],
            'year': registroPublico['ano'],
        })

    datosPrivada = []
    for registroPrivada in registrosPrivada:
        datosPrivada.append({
            'name': registroPrivada['ano'],
            'value': registroPrivada['total_cantidad'],
            'year': registroPrivada['ano'],
        })

    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])

    echartRe = {
        'title': {
            'text': 'Población con recursos',
            'subtext':'digitales'

        },
        'tooltip': {
            'trigger': 'axis',

        },
        'legend': {
            'data': ['Pública', 'Privada']
        },
        'calculable': 'true',
        'xAxis': [{
            'type': 'category',
            'data': [registro['year'] for registro in datosPublica],
        }],
        'yAxis': [{
            'type': 'value'
        }],
        'series': [
            {
                'name': 'Pública',
                'data': datosPublica,
                'type': 'bar',
                'markPoint': {
                        'data': [
                            {'type': 'max', 'name': 'Max'},
                            {'type': 'min', 'name': 'Min'}
                        ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }
            },

            {
                'name': 'Privada',
                'data': datosPrivada,
                'type': 'bar',
                'markPoint': {
                    'data': [
                        {'type': 'max', 'name': 'Max'},
                        {'type': 'min', 'name': 'Min'}
                    ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }

            }
        ]
    }

    return JsonResponse(echartRe)


def get_chartFallecidos(request):

    registrosPublico = Registro.objects.filter(nombreregistro="Fallecidos", tipo="Salud física y emocional", tipoU="publica").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')
    registrosPrivada = Registro.objects.filter(nombreregistro="Fallecidos", tipo="Salud física y emocional", tipoU="privada").values(
        'ano').annotate(total_cantidad=Sum('cantidad')).order_by('ano')

    datosPublica = []
    for registroPublico in registrosPublico:
        datosPublica.append({
            'name': registroPublico['ano'],
            'value': registroPublico['total_cantidad'],
            'year': registroPublico['ano'],
        })

    datosPrivada = []
    for registroPrivada in registrosPrivada:
        datosPrivada.append({
            'name': registroPrivada['ano'],
            'value': registroPrivada['total_cantidad'],
            'year': registroPrivada['ano'],
        })

    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])
    # Ordenar los datos por el año ascendente
    datosPublica.sort(key=lambda x: x['year'])

    echartFa = {
        'title': {
            'text': 'Población estudiantil',
            'subtext': 'y Docentes fallecidos'


        },
        'tooltip': {
            'trigger': 'axis',

        },
        'legend': {
            'data': ['Publica', 'Privada']
        },
        'calculable': 'true',
        'xAxis': [{
            'type': 'category',
            'data': [registro['year'] for registro in datosPublica],
        }],
        'yAxis': [{
            'type': 'value'
        }],
        'series': [
            {
                'name': 'Publica',
                'data': datosPublica,
                'type': 'bar',
                'markPoint': {
                        'data': [
                            {'type': 'max', 'name': 'Max'},
                            {'type': 'min', 'name': 'Min'}
                        ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }
            },

            {
                'name': 'Privada',
                'data': datosPrivada,
                'type': 'bar',
                'markPoint': {
                    'data': [
                        {'type': 'max', 'name': 'Max'},
                        {'type': 'min', 'name': 'Min'}
                    ]
                },
                'markLine': {
                    'data': [{'type': 'average', 'name': 'Avg'}]
                }

            }
        ]
    }

    return JsonResponse(echartFa)


# ---------getiones

@login_required
def gestionEfectos(request):
    return render(request, "gestionEfectos.html")


def cerrarSesion(request):
    logout(request)
    return redirect('/')


@login_required
def regresarGestionEfecto(request):
    return redirect('/gestionEfectos')

# Vies gestion efecto economico


@login_required
def gestionEfectoEconomico(request):
    efectosListas = Efecto.objects.filter(tipo='Económica')

    return render(request, "gestionEfecto/gestionEfectoEconomico.html", {"efectos": efectosListas})


@login_required
def edicionEfectoEconomico(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efectosListas = Efecto.objects.filter(tipo='Económica')

    return render(request, "gestionEfecto/gestionEfectoEconomico.html", {"idefecto": efecto, "efectos": efectosListas})


@login_required
def registrarEfectoEconomico(request):
    idEfecto = request.POST['txtId']
    tema = request.POST['txtTema']
    descripcion = request.POST['txtDescripcion']

    if idEfecto == "":
        efecto = Efecto.objects.create(
            tema=tema, descripcion=descripcion, tipo=Causa.objects.get(tipo='Económica'))
    else:
        efecto = Efecto.objects.get(idefecto=idEfecto)
        efecto.tema = tema
        efecto.descripcion = descripcion
        efecto.save()

    return redirect('/gestionEfectoEconomico')


@login_required
def EliminarEfectoEconomico(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efecto.delete()

    return redirect('/gestionEfectoEconomico')

# aca empiezan las view de tecnologia


@login_required
def gestionEfectoTecnologico(request):
    efectosListas = Efecto.objects.filter(tipo='Tecnologica')

    return render(request, "gestionEfecto/gestionEfectoTecnologico.html", {"efectos": efectosListas})


@login_required
def edicionEfectoTecnologico(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efectosListas = Efecto.objects.filter(tipo='Tecnologica')

    return render(request, "gestionEfecto/gestionEfectoTecnologico.html", {"idefecto": efecto, "efectos": efectosListas})


@login_required
def registrarEfectoTecnologico(request):
    idEfecto = request.POST['txtId']
    tema = request.POST['txtTema']
    descripcion = request.POST['txtDescripcion']

    if idEfecto == "":
        efecto = Efecto.objects.create(
            tema=tema, descripcion=descripcion, tipo=Causa.objects.get(tipo='Tecnologica'))
    else:
        efecto = Efecto.objects.get(idefecto=idEfecto)
        efecto.tema = tema
        efecto.descripcion = descripcion
        efecto.save()

    return redirect('/gestionEfectoTecnologico')


@login_required
def EliminarEfectoTecnologico(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efecto.delete()

    return redirect('/gestionEfectoTecnologico')

# aca empeizan las views Academico


@login_required
def gestionEfectoAcademico(request):
    efectosListas = Efecto.objects.filter(tipo='Academica')
    return render(request, "gestionEfecto/gestionEfectoAcademico.html", {"efectos": efectosListas})


@login_required
def edicionEfectoAcademico(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efectosListas = Efecto.objects.filter(tipo='Academica')

    return render(request, "gestionEfecto/gestionEfectoAcademico.html", {"idefecto": efecto, "efectos": efectosListas})


@login_required
def registrarEfectoAcademico(request):
    idEfecto = request.POST['txtId']
    tema = request.POST['txtTema']
    descripcion = request.POST['txtDescripcion']

    if idEfecto == "":
        efecto = Efecto.objects.create(
            tema=tema, descripcion=descripcion, tipo=Causa.objects.get(tipo='Academica'))

    else:
        efecto = Efecto.objects.get(idefecto=idEfecto)
        efecto.tema = tema
        efecto.descripcion = descripcion
        efecto.save()

    return redirect('/gestionEfectoAcademico')


@login_required
def EliminarEfectoAcademico(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efecto.delete()

    return redirect('/gestionEfectoAcademico')

# ********************* Acá incian las Viws de gestionEfectoSaludFisicayEmocional ****************************************************


@login_required
def gestionEfectoSaludFisicayEmocional(request):
    efectosListas = Efecto.objects.filter(tipo='Salud física y emocional')

    return render(request, "gestionEfecto/gestionEfectoSaludFisicayEmocional.html", {"efectos": efectosListas})


@login_required
def edicionEfectoSaludFisicayEmocional(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efectosListas = Efecto.objects.filter(tipo='Salud física y emocional')

    return render(request, "gestionEfecto/gestionEfectoSaludFisicayEmocional.html", {"idefecto": efecto, "efectos": efectosListas})


@login_required
def registrarEfectoSaludFisicayEmocional(request):
    idEfecto = request.POST['txtId']
    tema = request.POST['txtTema']
    descripcion = request.POST['txtDescripcion']
    if idEfecto == "":
        efecto = Efecto.objects.create(
            tema=tema, descripcion=descripcion, tipo=Causa.objects.get(tipo='Salud física y emocional'))
    else:
        efecto = Efecto.objects.get(idefecto=idEfecto)
        efecto.tema = tema
        efecto.descripcion = descripcion
        efecto.save()

    return redirect('/gestionEfectoSaludFisicayEmocional')


@login_required
def EliminarEfectoSaludFisicayEmocional(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efecto.delete()

    return redirect('/gestionEfectoSaludFisicayEmocional')

# ********************* Acá incian las Viws de gestionEfectoSocial ****************************************************


@login_required
def gestionEfectoSocial(request):
    efectosListas = Efecto.objects.filter(tipo='Social')

    return render(request, "gestionEfecto/gestionEfectoSocial.html", {"efectos": efectosListas})


@login_required
def edicionEfectoSocial(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efectosListas = Efecto.objects.filter(tipo='Social')

    return render(request, "gestionEfecto/gestionEfectoSocial.html", {"idefecto": efecto, "efectos": efectosListas})


@login_required
def registrarEfectoSocial(request):
    idEfecto = request.POST['txtId']
    tema = request.POST['txtTema']
    descripcion = request.POST['txtDescripcion']
    if idEfecto == "":
        efecto = Efecto.objects.create(
            tema=tema, descripcion=descripcion, tipo=Causa.objects.get(tipo='Social'))
    else:
        efecto = Efecto.objects.get(idefecto=idEfecto)
        efecto.tema = tema
        efecto.descripcion = descripcion
        efecto.save()

    return redirect('/gestionEfectoSocial')


@login_required
def EliminarEfectoSocial(request, idefecto):
    efecto = Efecto.objects.get(idefecto=idefecto)
    efecto.delete()

    return redirect('/gestionEfectoSocial')


# ********************* Gestión de Graficos*******************************
# ════════════════════ Gestión de desertados academicos════════════════════
@login_required
def gestionDesertadosAcademicos(request):
    desertadosAcademicosListas = Registro.objects.filter(
        nombreregistro='Deserción Académica', tipo='Académica')
    return render(request, 'gestionGrafico/gestionDesertadosAcademicos.html', {"desertadosAcademicos": desertadosAcademicosListas})


def edicionDesertadosAcademicos(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    desertadosAcademicosListas = Registro.objects.filter(
        nombreregistro='Deserción Académica', tipo='Académica')
    return render(request, "gestionGrafico/gestionDesertadosAcademicos.html", {"idregistro": registro, "desertadosAcademicos": desertadosAcademicosListas})


def registrarDesertadosAcademicos(request):
    idRegistro = request.POST['txtIdRegistro']
    Cantidad = request.POST['txtcantidad']
    Ano = request.POST['txtano']
    tipoA = request.POST['selectUniversidad']
    nombre = 'Deserción Académica'
    if idRegistro == "":
        registro = Registro.objects.create(cantidad=Cantidad, ano=Ano, tipoU=Universidad.objects.get(
            tipou=tipoA), nombreregistro=nombre, tipo=Causa.objects.get(tipo='Académica'))
    else:
        registro = Registro.objects.get(idregistro=idRegistro)
        registro.cantidad = Cantidad
        registro.tipoU = Universidad.objects.get(tipou=tipoA)
        registro.ano = Ano
        registro.save()

    return redirect('/gestionGraficoDeDesertadosPorCausasAcademicas')


def EliminarDesertadosAcademicos(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    registro.delete()
    return redirect('/gestionGraficoDeDesertadosPorCausasAcademicas')

# ════════════════════ Gestión de desertados económicos════════════════════


@login_required
def gestionDesertadosEconomicos(request):
    desertadosEconomicosListas = Registro.objects.filter(
        nombreregistro='Deserción Económica', tipo='Económica')
    return render(request, 'gestionGrafico/gestionDesertadosEconomicos.html', {"desertadosEconomicos": desertadosEconomicosListas})


def edicionDesertadosEconomicos(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    desertadosEconomicosListas = Registro.objects.filter(
        nombreregistro='Deserción Económica', tipo='Económica')
    return render(request, "gestionGrafico/gestionDesertadosEconomicos.html", {"idregistro": registro, "desertadosEconomicos": desertadosEconomicosListas})


def registrarDesertadosEconomicos(request):
    idRegistro = request.POST['txtIdRegistro']
    Cantidad = request.POST['txtcantidad']
    Ano = request.POST['txtano']
    tipoA = request.POST['selectUniversidad']
    nombre = 'Deserción Económica'
    if idRegistro == "":
        registro = Registro.objects.create(cantidad=Cantidad, ano=Ano, tipoU=Universidad.objects.get(
            tipou=tipoA), nombreregistro=nombre, tipo=Causa.objects.get(tipo='Económica'))
    else:
        registro = Registro.objects.get(idregistro=idRegistro)
        registro.cantidad = Cantidad
        registro.tipoU = Universidad.objects.get(tipou=tipoA)
        registro.ano = Ano
        registro.save()

    return redirect('/gestionGraficoDeDesertadosPorCausasEconomicas')


def EliminarDesertadosEconomicos(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    registro.delete()
    return redirect('/gestionGraficoDeDesertadosPorCausasEconomicas')

# ════════════════Gestión de desertados sociales════════════════


@login_required
def gestionDesertadosSociales(request):
    desertadosSocialesListas = Registro.objects.filter(
        nombreregistro='Deserción Social', tipo='Social')
    return render(request, 'gestionGrafico/gestionDesertadosSociales.html', {"desertadosSociales": desertadosSocialesListas})


def edicionDesertadosSociales(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    desertadosSocialesListas = Registro.objects.filter(
        nombreregistro='Deserción Social', tipo='Social')
    return render(request, "gestionGrafico/gestionDesertadosSociales.html", {"idregistro": registro, "desertadosSociales": desertadosSocialesListas})


def registrarDesertadosSociales(request):
    idRegistro = request.POST['txtIdRegistro']
    Cantidad = request.POST['txtcantidad']
    Ano = request.POST['txtano']
    tipoA = request.POST['selectUniversidad']
    nombre = 'Deserción Social'
    if idRegistro == "":
        registro = Registro.objects.create(cantidad=Cantidad, ano=Ano, tipoU=Universidad.objects.get(
            tipou=tipoA), nombreregistro=nombre, tipo=Causa.objects.get(tipo='Social'))
    else:
        registro = Registro.objects.get(idregistro=idRegistro)
        registro.cantidad = Cantidad
        registro.tipoU = Universidad.objects.get(tipou=tipoA)
        registro.ano = Ano
        registro.save()

    return redirect('/gestionGraficoDeDesertadosPorCausasSociales')


def EliminarDesertadosSociales(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    registro.delete()
    return redirect('/gestionGraficoDeDesertadosPorCausasSociales')

# ════════════════════ Gestión de desertados tecnológicos════════════════════


@login_required
def gestionDesertadosTecnologicos(request):
    desertadosTecnologicosListas = Registro.objects.filter(
        nombreregistro='Deserción Tecnológica', tipo='Tecnológica')
    return render(request, 'gestionGrafico/gestionDesertadosTecnologicos.html', {"desertadosTecnologicos": desertadosTecnologicosListas})


def edicionDesertadosTecnologicos(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    desertadosTecnologicosListas = Registro.objects.filter(
        nombreregistro='Deserción Tecnológica', tipo='Tecnológica')
    return render(request, "gestionGrafico/gestionDesertadosTecnologicos.html", {"idregistro": registro, "desertadosTecnologicos": desertadosTecnologicosListas})


def registrarDesertadosTecnologicos(request):
    idRegistro = request.POST['txtIdRegistro']
    Cantidad = request.POST['txtcantidad']
    Ano = request.POST['txtano']
    tipoA = request.POST['selectUniversidad']
    nombre = 'Deserción Tecnológica'
    if idRegistro == "":
        registro = Registro.objects.create(cantidad=Cantidad, ano=Ano, tipoU=Universidad.objects.get(
            tipou=tipoA), nombreregistro=nombre, tipo=Causa.objects.get(tipo='Tecnológica'))
    else:
        registro = Registro.objects.get(idregistro=idRegistro)
        registro.cantidad = Cantidad
        registro.tipoU = Universidad.objects.get(tipou=tipoA)
        registro.ano = Ano
        registro.save()

    return redirect('/gestionGraficoDeDesertadosPorCausasTecnologicas')


def EliminarDesertadosTecnologicos(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    registro.delete()
    return redirect('/gestionGraficoDeDesertadosPorCausasTecnologicas')


# ════════════════Gestión de desertados salud física y emocional════════════════
@login_required
def gestionDesertadosdeSaludFisicayEmocional(request):
    desertadosSaludListas = Registro.objects.filter(
        nombreregistro='Deserción Salud', tipo='Salud física y emocional')
    return render(request, 'gestionGrafico/gestionDesertadosdeSaludFisicayEmocional.html', {"desertadosSalud": desertadosSaludListas})


def edicionDesertadosdeSaludFisicayEmocional(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    desertadosSaludListas = Registro.objects.filter(
        nombreregistro='Deserción Salud', tipo='Salud física y emocional')
    return render(request, "gestionGrafico/gestionDesertadosdeSaludFisicayEmocional.html", {"idregistro": registro, "desertadosSalud": desertadosSaludListas})


def registrarDesertadosdeSaludFisicayEmocional(request):
    idRegistro = request.POST['txtIdRegistro']
    Cantidad = request.POST['txtcantidad']
    Ano = request.POST['txtano']
    tipoA = request.POST['selectUniversidad']
    nombre = 'Deserción Salud'
    if idRegistro == "":
        registro = Registro.objects.create(cantidad=Cantidad, ano=Ano, tipoU=Universidad.objects.get(
            tipou=tipoA), nombreregistro=nombre, tipo=Causa.objects.get(tipo='Salud física y emocional'))
    else:
        registro = Registro.objects.get(idregistro=idRegistro)
        registro.cantidad = Cantidad
        registro.tipoU = Universidad.objects.get(tipou=tipoA)
        registro.ano = Ano
        registro.save()

    return redirect('/gestionGraficoDeDesertadosPorCausasdeSaludFisicayEmocional')


def EliminarDesertadosdeSaludFisicayEmocional(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    registro.delete()
    return redirect('/gestionGraficoDeDesertadosPorCausasdeSaludFisicayEmocional')

# ════════════════Nuevo Ingreso════════════════


@login_required
def gestionNuevoIngreso(request):
    nuevoIngresoLista = Registro.objects.filter(
        nombreregistro='Nuevo Ingreso', tipo='Académica')
    return render(request, 'gestionGrafico/gestionNuevoIngreso.html', {"nuevoIngreso": nuevoIngresoLista})


def edicionNuevoIngreso(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    nuevoIngresoListas = Registro.objects.filter(
        nombreregistro='Nuevo Ingreso', tipo='Académica')
    return render(request, "gestionGrafico/gestionNuevoIngreso.html", {"idregistro": registro, "nuevoIngreso": nuevoIngresoListas})


def registrarNuevoIngreso(request):
    idRegistro = request.POST['txtIdRegistro']
    Cantidad = request.POST['txtcantidad']
    Ano = request.POST['txtano']
    tipoA = request.POST['selectUniversidad']
    nombre = 'Nuevo Ingreso'
    if idRegistro == "":
        registro = Registro.objects.create(cantidad=Cantidad, ano=Ano, tipoU=Universidad.objects.get(
            tipou=tipoA), nombreregistro=nombre, tipo=Causa.objects.get(tipo='Académica'))
    else:
        registro = Registro.objects.get(idregistro=idRegistro)
        registro.cantidad = Cantidad
        registro.tipoU = Universidad.objects.get(tipou=tipoA)
        registro.ano = Ano
        registro.save()

    return redirect('/gestionGraficoDeNuevoIngreso')


def EliminarNuevoIngreso(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    registro.delete()
    return redirect('/gestionGraficoDeNuevoIngreso')

# ════════════════Recursos tecnológicos════════════════
@login_required
def gestionPoblacionConRecursosTecnologicos(request):
    RecursosTecnologicosLista = Registro.objects.filter(
        nombreregistro='Recursos Tecnológicos', tipo='Tecnológica')
    return render(request, 'gestionGrafico/gestionPoblacionConRecursosTecnologicos.html', {"recursosTecnologicos": RecursosTecnologicosLista})


def edicionPoblacionConRecursosTecnologicos(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    RecursosTecnologicosLista = Registro.objects.filter(
        nombreregistro='Recursos Tecnológicos', tipo='Tecnológica')
    return render(request, "gestionGrafico/gestionPoblacionConRecursosTecnologicos.html", {"idregistro": registro, "recursosTecnologicos": RecursosTecnologicosLista})


def registrarPoblacionConRecursosTecnologicos(request):
    idRegistro = request.POST['txtIdRegistro']
    Cantidad = request.POST['txtcantidad']
    Ano = request.POST['txtano']
    tipoA = request.POST['selectUniversidad']
    nombre = 'Recursos Tecnológicos'
    if idRegistro == "":
        registro = Registro.objects.create(cantidad=Cantidad, ano=Ano, tipoU=Universidad.objects.get(
            tipou=tipoA), nombreregistro=nombre, tipo=Causa.objects.get(tipo='Tecnológica'))
    else:
        registro = Registro.objects.get(idregistro=idRegistro)
        registro.cantidad = Cantidad
        registro.tipoU = Universidad.objects.get(tipou=tipoA)
        registro.ano = Ano
        registro.save()

    return redirect('/gestionGraficoDePoblacionConRecursosTecnologicos')


def EliminarPoblacionConRecursosTecnologicos(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    registro.delete()
    return redirect('/gestionGraficoDePoblacionConRecursosTecnologicos')

# ════════════════Población Fallecida════════════════


@login_required
def gestionDePoblacionFallecida(request):
    FallecidosLista = Registro.objects.filter(
        nombreregistro='Fallecidos', tipo='Salud física y emocional')
    return render(request, 'gestionGrafico/gestionDePoblacionFallecida.html', {"fallecidos": FallecidosLista})


def edicionPoblacionFallecida(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    FallecidosLista = Registro.objects.filter(
        nombreregistro='Fallecidos', tipo='Salud física y emocional')
    return render(request, "gestionGrafico/gestionDePoblacionFallecida.html", {"idregistro": registro, "fallecidos": FallecidosLista})


def registrarPoblacionFallecida(request):
    idRegistro = request.POST['txtIdRegistro']
    Cantidad = request.POST['txtcantidad']
    Ano = request.POST['txtano']
    tipoA = request.POST['selectUniversidad']
    nombre = 'Fallecidos'
    if idRegistro == "":
        registro = Registro.objects.create(cantidad=Cantidad, ano=Ano, tipoU=Universidad.objects.get(
            tipou=tipoA), nombreregistro=nombre, tipo=Causa.objects.get(tipo='Salud física y emocional'))
    else:
        registro = Registro.objects.get(idregistro=idRegistro)
        registro.cantidad = Cantidad
        registro.tipoU = Universidad.objects.get(tipou=tipoA)
        registro.ano = Ano
        registro.save()

    return redirect('/gestionGraficoDeFallecidos')


def EliminarPoblacionFallecida(request, idregistro):
    registro = Registro.objects.get(idregistro=idregistro)
    registro.delete()
    return redirect('/gestionGraficoDeFallecidos')

# *********************FIN DE GESTION GRÁFICO*******************************
