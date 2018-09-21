//
//  Bank.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-15.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import Foundation


//idea = could declare all the questions here,
//and then just make sure the name matches the question bank

class Bank {

    
    //could declare question bank and append questions to the list property in it.
    
    //afterwards, let the init do its job.
    
    //not set in stone, there might be a better way.
    
    var processesArray = [[String]]()
    
    //hay 5 areas :
    //inicio, planeacion, ejecucion, monitoreo y control
    // cierre
    
    //49 processes in total.
    
    //where is this referenced? // spinny thing selectors.
    //we will need
    
    //will probably need to change these names somewhere
    //else too...
    
    //2 processes
    let allProcessesInicioArray = ["4.1 Desarrollar el acta de constitución del proyecto",
                                   "13.1 Identificar a los interesados"]//,"Area1Process3"]
    
    //24 processes
    let allProcessesPlaneacionArray = ["4.2 Desarrollar el plan para dirección del proyecto",
                                       "5.1 Planificar la gestión del alcance",
                                       "5.2 Recopilar requisitos",
                                       "5.3 Definir el alcance",
                                       "5.4 Crear la EDT/WBS",
                                       "6.1 Planificar la gestión del cronograma",
                                       "6.2 Definir las actividades",
                                       "6.3 Secuenciar las actividades" ,
                                       "6.4 Estimar la duración de las actividades" ,
                                       "6.5 Desarrollar el cronograma" ,
                                       "7.1 Planificar la gestión de los costos",
                                       "7.2 Estimar los costos",
                                       "7.3 Determinar el presupuesto",
                                       "8.1 Planificar la gestión de calidad",
                                       "9.1 Planificar la gestión de recursos",
                                       "9.2 Estimar recursos para las actividades",
                                       "10.1 Planificar la gestión de las comunicaciones",
                                       "11.1 Planificar la gestión de riesgos",
                                       "11.2 Identificar los riesgos",
                                       "11.3 Realizar el análisis cualitativo de riesgos",
                                       "11.4 Realizar el análisis cuantitativo de riesgos",
                                       "11.5 Planificar la respuesta a los riesgos",
                                       "12.1 Planificar la gestión de las adquisiciones",
                                       "13.2 Planificar el involucramiento de los interesados"]
    
    //10 Processes
    let allProcessesEjecucionArray = ["4.3 Dirigir y Gestionar el trabajo del proyecto",
                                      "4.4 Gestionar el conocimiento del proyecto",
                                      "8.2 Gestionar la calidad",
                                      "9.3 Adquirir recursos",
                                      "9.4 Desarrollar al equipo",
                                      "9.5 Dirigir al equipo",
                                      "10.2 Gestionar las comunicaciones",
                                      "11.6 Implementar la respuesta a los riesgos",
                                      "12.2 Efectuar las adquisiciones",
                                      "13.3 Gestionar el involucramiento de los interesados"]
                            
    //12 Processes
    let allProcessesMonitoreoArray = ["4.5 Monitorear y controlar el trabajo del proyecto",
                                      "4.6 Realizar el control Integrado de los cambios",
                                      "5.5 Validar el alcance",
                                      "5.6 Controlar el alcance",
                                      "6.6 Controlar el cronograma",
                                      "7.4 Controlar los costos",
                                      "8.3 Controlar la calidad",
                                      "9.6 Controlar recursos",
                                      "10.2 Monitorear las comunicaciones",
                                      "11.7 Monitorear los riesgos",
                                      "12.3 Controlar las adquisiciones",
                                      "13.4 Monitorear el involucramiento de los interesados"]
    
    //1 Process
    let allProcessesCierreArray = ["4.7 Cerrar el proyecto o la fase"]

    var dictionary = [String:QuestionBank]()
    
    var areaArray = ["Inicio", "Planeación", "Ejecución", "Monitoreo y Control", "Cierre"]
    
    //have 10 testnames now
    //changing this will have to be 49 entries. ALSO will change spelling for simplicity.
    
    //i dont know if this is drawn from both the arrays ! like the processes and areas array...
    //how are they being concatenated? \()\() << no space between them... add like a underscore,
    
    /*Inicio_4.1 Desarrollar el acta de constitución del Proyecto*/
    
    var testNames = ["Inicio_4.1 Desarrollar el acta de constitución del proyecto",
                     "Inicio_13.1 Identificar a los interesados",
                     
                     "Planeación_4.2 Desarrollar el plan para dirección del proyecto",
                     "Planeación_5.1 Planificar la gestión del alcance",
                     "Planeación_5.2 Recopilar requisitos",
                     "Planeación_5.3 Definir el alcance",
                     "Planeación_5.4 Crear la EDT/WBS",
                     "Planeación_6.1 Planificar la gestión del cronograma",
                     "Planeación_6.2 Definir las actividades",
                     "Planeación_6.3 Secuenciar las actividades",
                     "Planeación_6.4 Estimar la duración de las actividades",
                     "Planeación_6.5 Desarrollar el cronograma",
                     "Planeación_7.1 Planificar la gestión de los costos",
                     "Planeación_7.2 Estimar los costos",
                     "Planeación_7.3 Determinar el presupuesto",
                     "Planeación_8.1 Planificar la gestión de calidad",
                     "Planeación_9.1 Planificar la gestión de recursos",
                     "Planeación_9.2 Estimar recursos para las actividades",
                     "Planeación_10.1 Planificar la gestión de las comunicaciones",
                     "Planeación_11.1 Planificar la gestión de riesgos",
                     "Planeación_11.2 Identificar los riesgos",
                     "Planeación_11.3 Realizar el análisis cualitativo de riesgos",
                     "Planeación_11.4 Realizar el análisis cuantitativo de riesgos",
                     "Planeación_11.5 Planificar la respuesta a los riesgos",
                     "Planeación_12.1 Planificar la gestión de las adquisiciones",
                     "Planeación_13.2 Planificar el involucramiento de los interesados",
                     
                     "Ejecución_4.3 Dirigir y Gestionar el trabajo del proyecto",
                     "Ejecución_4.4 Gestionar el conocimiento del proyecto",
                     "Ejecución_8.2 Gestionar la calidad",
                     "Ejecución_9.3 Adquirir recursos",
                     "Ejecución_9.4 Desarrollar al equipo",
                     "Ejecución_9.5 Dirigir al equipo",
                     "Ejecución_10.2 Gestionar las comunicaciones",
                     "Ejecución_11.6 Implementar la respuesta a los riesgos",
                     "Ejecución_12.2 Efectuar las adquisiciones",
                     "Ejecución_13.3 Gestionar el involucramiento de los interesados",
                     
                     "Monitoreo y Control_4.5 Monitorear y controlar el trabajo del proyecto",
                     "Monitoreo y Control_4.6 Realizar el control Integrado de los cambios",
                     "Monitoreo y Control_5.5 Validar el alcance",
                     "Monitoreo y Control_5.6 Controlar el alcance",
                     "Monitoreo y Control_6.6 Controlar el cronograma",
                     "Monitoreo y Control_7.4 Controlar los costos",
                     "Monitoreo y Control_8.3 Controlar la calidad",
                     "Monitoreo y Control_9.6 Controlar recursos",
                     "Monitoreo y Control_10.2 Monitorear las comunicaciones",
                     "Monitoreo y Control_11.7 Monitorear los riesgos",
                     "Monitoreo y Control_12.3 Controlar las adquisiciones",
                     "Monitoreo y Control_13.4 Monitorear el involucramiento de los interesados",

                     "Cierre_4.7 Cerrar el proyecto o la fase"
                     
                    ]
    
    var questionBanks = [QuestionBank]()//<Question>[] // or [Question]
    
    //2 for area 1
    var area1Process1QuestionBank = QuestionBank()
    var area1Process2QuestionBank = QuestionBank()

    //24 for area 2
    var area2Process1QuestionBank = QuestionBank()
    var area2Process2QuestionBank = QuestionBank()
    var area2Process3QuestionBank = QuestionBank()
    var area2Process4QuestionBank = QuestionBank()
    var area2Process5QuestionBank = QuestionBank()
    var area2Process6QuestionBank = QuestionBank()
    var area2Process7QuestionBank = QuestionBank()
    var area2Process8QuestionBank = QuestionBank()
    var area2Process9QuestionBank = QuestionBank()
    var area2Process10QuestionBank = QuestionBank()
    var area2Process11QuestionBank = QuestionBank()
    var area2Process12QuestionBank = QuestionBank()
    var area2Process13QuestionBank = QuestionBank()
    var area2Process14QuestionBank = QuestionBank()
    var area2Process15QuestionBank = QuestionBank()
    var area2Process16QuestionBank = QuestionBank()
    var area2Process17QuestionBank = QuestionBank()
    var area2Process18QuestionBank = QuestionBank()
    var area2Process19QuestionBank = QuestionBank()
    var area2Process20QuestionBank = QuestionBank()
    var area2Process21QuestionBank = QuestionBank()
    var area2Process22QuestionBank = QuestionBank()
    var area2Process23QuestionBank = QuestionBank()
    var area2Process24QuestionBank = QuestionBank()

    
    //10 for area 3
    var area3Process1QuestionBank = QuestionBank()
    var area3Process2QuestionBank = QuestionBank()
    var area3Process3QuestionBank = QuestionBank()
    var area3Process4QuestionBank = QuestionBank()
    var area3Process5QuestionBank = QuestionBank()
    var area3Process6QuestionBank = QuestionBank()
    var area3Process7QuestionBank = QuestionBank()
    var area3Process8QuestionBank = QuestionBank()
    var area3Process9QuestionBank = QuestionBank()
    var area3Process10QuestionBank = QuestionBank()
    
    //12 for area 4
    var area4Process1QuestionBank = QuestionBank()
    var area4Process2QuestionBank = QuestionBank()
    var area4Process3QuestionBank = QuestionBank()
    var area4Process4QuestionBank = QuestionBank()
    var area4Process5QuestionBank = QuestionBank()
    var area4Process6QuestionBank = QuestionBank()
    var area4Process7QuestionBank = QuestionBank()
    var area4Process8QuestionBank = QuestionBank()
    var area4Process9QuestionBank = QuestionBank()
    var area4Process10QuestionBank = QuestionBank()
    var area4Process11QuestionBank = QuestionBank()
    var area4Process12QuestionBank = QuestionBank()

    
    //1 for area 5
    var area5Process1QuestionBank = QuestionBank()
    
    init(){//testNames : [String], questionBanks : [QuestionBank] ) {
        
        
        //what is this used for ???
        processesArray.append(allProcessesInicioArray)
        processesArray.append(allProcessesPlaneacionArray)
        processesArray.append(allProcessesEjecucionArray)
        processesArray.append(allProcessesMonitoreoArray)
        processesArray.append(allProcessesCierreArray)
        
        //have 10 question banks - so it matches for now.
        
        //this will increase to 49 question banks. ( 2 + 24 + 10 + 12 + 1 )
        //decided to keep the naming scheme ... problem - not random order.
        //will always be asked in the same order ! :\
    
        //-MARK: AREA 1 START - inicio (2)
        
        //desarrollar el acta de constitucion del proyecto
        area1Process1QuestionBank.list.append(Question(text: "Documentos de negocio",answer: "Entrada"))
        area1Process1QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area1Process1QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area1Process1QuestionBank.list.append(Question(text: "Activos de los procesos de la Organizacion",answer: "Entrada"))
        area1Process1QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area1Process1QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area1Process1QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area1Process1QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        area1Process1QuestionBank.list.append(Question(text: "Acta de constitución del proyecto ",answer: "Salida"))
        area1Process1QuestionBank.list.append(Question(text: "Registro de supuestos",answer: "Salida"))
        
        questionBanks.append(area1Process1QuestionBank)
        
        //identificar a los interesados
        area1Process2QuestionBank.list.append(Question(text: "Acta de proyecto",answer: "Entrada"))
        area1Process2QuestionBank.list.append(Question(text: "Documentos del negocio",answer: "Entrada"))
        area1Process2QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area1Process2QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area1Process2QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area1Process2QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area1Process2QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        area1Process2QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area1Process2QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area1Process2QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area1Process2QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area1Process2QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        area1Process2QuestionBank.list.append(Question(text: "Registro de interesados",answer: "Salida"))
        area1Process2QuestionBank.list.append(Question(text: "Solicitudes de cambios",answer: "Salida"))
        area1Process2QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección de proyectos",answer: "Salida"))
        area1Process2QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area1Process2QuestionBank)
        
        
        
        
        //-MARK: AREA 2 START - planeacion (24)
        
        //desarrollar el plan para direccion del proyecto
        area2Process1QuestionBank.list.append(Question(text: "Acta de constitución del proyecto",answer: "Entrada"))
        area2Process1QuestionBank.list.append(Question(text: "Salidas de otros procesos",answer: "Entrada"))
        area2Process1QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process1QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        area2Process1QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process1QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process1QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area2Process1QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        area2Process1QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Salida"))
        questionBanks.append(area2Process1QuestionBank)
        
        //planificar la gestion del alcance
        area2Process2QuestionBank.list.append(Question(text: "Acta de proyecto",answer: "Entrada"))
        area2Process2QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process2QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process2QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        area2Process2QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process2QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process2QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        area2Process2QuestionBank.list.append(Question(text: "Plan de gestión del alcance",answer: "Salida"))
        area2Process2QuestionBank.list.append(Question(text: "Plan de gestión de requisitos",answer: "Salida"))
        questionBanks.append(area2Process2QuestionBank)

        //recopilar requisitos
        area2Process3QuestionBank.list.append(Question(text: "Acta constitutiva del proyecto",answer: "Entrada"))
        area2Process3QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process3QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process3QuestionBank.list.append(Question(text: "Documentos del negocio",answer: "Entrada"))
        area2Process3QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area2Process3QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process3QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        area2Process3QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process3QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process3QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process3QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area2Process3QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area2Process3QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area2Process3QuestionBank.list.append(Question(text: "Diagramas de contexto",answer: "Herramienta"))
        area2Process3QuestionBank.list.append(Question(text: "Prototipos",answer: "Herramienta"))
        area2Process3QuestionBank.list.append(Question(text: "Documentación de requisitos",answer: "Salida"))
        area2Process3QuestionBank.list.append(Question(text: "Matriz de trazabilidad de requisitos",answer: "Salida"))
        questionBanks.append(area2Process3QuestionBank)
        
        //definir el alcance (4)
        area2Process4QuestionBank.list.append(Question(text: "Acta de constitución del proyecto",answer: "Entrada"))
        area2Process4QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process4QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process4QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process4QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process4QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process4QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process4QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area2Process4QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area2Process4QuestionBank.list.append(Question(text: "Análisis del producto",answer: "Herramienta"))
        
        area2Process4QuestionBank.list.append(Question(text: "Enunciado del alcance del proyecto",answer: "Salida"))
        area2Process4QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process4QuestionBank)
        
        //crear la edt (5)
        
        area2Process5QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process5QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process5QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process5QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process5QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process5QuestionBank.list.append(Question(text: "Descomposición",answer: "Herramienta"))
        
        area2Process5QuestionBank.list.append(Question(text: "Línea base del alcance",answer: "Salida"))
        area2Process5QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process5QuestionBank)
        
        //planificar la gestion del cronograma (6)
        
        area2Process6QuestionBank.list.append(Question(text: "Acta de constitución del proyecto",answer: "Entrada"))
        area2Process6QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process6QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process6QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process6QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process6QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process6QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area2Process6QuestionBank.list.append(Question(text: "Plan de gestión del cronograma",answer: "Salida"))
        
        questionBanks.append(area2Process6QuestionBank)
        
        //definir las actividades (7)
        
        area2Process7QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process7QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process7QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process7QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process7QuestionBank.list.append(Question(text: "Descomposición",answer: "Herramienta"))
        area2Process7QuestionBank.list.append(Question(text: "Planificación gradual (Rolling wave planning)",answer: "Herramienta"))
        area2Process7QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area2Process7QuestionBank.list.append(Question(text: "Lista de actividades",answer: "Entrada"))
        area2Process7QuestionBank.list.append(Question(text: "Atributos de actividades",answer: "Entrada"))
        area2Process7QuestionBank.list.append(Question(text: "Lista de hitos",answer: "Entrada"))
        area2Process7QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Entrada"))
        area2Process7QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto.",answer: "Entrada"))
        
        questionBanks.append(area2Process7QuestionBank)
        
        //secuenciar las actividades (8)
        
        area2Process8QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process8QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process8QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process8QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process8QuestionBank.list.append(Question(text: "Método de diagramación de precedencias (PDM)",answer: "Herramienta"))
        area2Process8QuestionBank.list.append(Question(text: "Determinación e integración de dependencias",answer: "Herramienta"))
        area2Process8QuestionBank.list.append(Question(text: "Adelantos y retrasos (Leads and lags)",answer: "Herramienta"))
        area2Process8QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        
        area2Process8QuestionBank.list.append(Question(text: "Diagramas de red del cronograma del proyecto",answer: "Salida"))
        area2Process8QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        questionBanks.append(area2Process8QuestionBank)
        
        //estimar la duracion de las actividades (9)
        
        area2Process9QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process9QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process9QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
         area2Process9QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process9QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process9QuestionBank.list.append(Question(text: "Estimación análoga",answer: "Herramienta"))
        area2Process9QuestionBank.list.append(Question(text: "Estimación paramétrica",answer: "Herramienta"))
        area2Process9QuestionBank.list.append(Question(text: "Estimación de tres valores",answer: "Herramienta"))
        area2Process9QuestionBank.list.append(Question(text: "Estimaciones ascendentes",answer: "Herramienta"))
        area2Process9QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process9QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area2Process9QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area2Process9QuestionBank.list.append(Question(text: "Estimación de la duración de las actividades",answer: "Salida"))
        area2Process9QuestionBank.list.append(Question(text: "Base de las estimaciones",answer: "Salida"))
        area2Process9QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process9QuestionBank)
        
        //desarrollar el cronograma (10)
        
        area2Process10QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process10QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process10QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area2Process10QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process10QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process10QuestionBank.list.append(Question(text: "Análisis de la red del cronograma",answer: "Herramienta"))
        area2Process10QuestionBank.list.append(Question(text: "Método de la ruta crítica",answer: "Herramienta"))
        area2Process10QuestionBank.list.append(Question(text: "Optimización de recursos",answer: "Herramienta"))
        area2Process10QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process10QuestionBank.list.append(Question(text: "Adelantos y retrasos",answer: "Herramienta"))
        area2Process10QuestionBank.list.append(Question(text: " Compresión del cronograma",answer: "Herramienta"))
        area2Process10QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        area2Process10QuestionBank.list.append(Question(text: "Plan ágil de liberaciones",answer: "Herramienta"))
        
        area2Process10QuestionBank.list.append(Question(text: "Línea base del cronograma",answer: "Salida"))
        area2Process10QuestionBank.list.append(Question(text: "Cronograma del proyecto",answer: "Salida"))
        area2Process10QuestionBank.list.append(Question(text: "Datos del calendario",answer: "Salida"))
        area2Process10QuestionBank.list.append(Question(text: "Calendarios del proyecto",answer: "Salida"))
        area2Process10QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area2Process10QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area2Process10QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process10QuestionBank)
        
        //planificar la gestion de los costos (11)
        
        area2Process11QuestionBank.list.append(Question(text: "Acta de constitución del proyecto",answer:
            "Entrada"))
        area2Process11QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer:
            "Entrada"))
        area2Process11QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer:
            "Entrada"))
        area2Process11QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer:
            "Entrada"))
        
        area2Process11QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process11QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process11QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area2Process11QuestionBank.list.append(Question(text: "Plan de gestión de costos",answer: "Salida"))
        
        questionBanks.append(area2Process11QuestionBank)
        
        // estimar los costos ( stopped here ) (12)
        
        area2Process12QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process12QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process12QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process12QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area2Process12QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process12QuestionBank.list.append(Question(text: "Estimación análoga",answer: "Herramienta"))
        area2Process12QuestionBank.list.append(Question(text: "Estimación paramétrica",answer: "Herramienta"))
        area2Process12QuestionBank.list.append(Question(text: "Estimación ascendente",answer: "Herramienta"))
        area2Process12QuestionBank.list.append(Question(text: "Estimación de tres valores",answer: "Herramienta"))
        area2Process12QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process12QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        area2Process12QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        
        area2Process12QuestionBank.list.append(Question(text: "Estimación de costos",answer: "Salida"))
        area2Process12QuestionBank.list.append(Question(text: "Bases de estimaciones",answer: "Salida"))
        area2Process12QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process12QuestionBank)
        
        //determinar el presupuesto //slide was weird... (salidas) (13)
        
        area2Process13QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process13QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process13QuestionBank.list.append(Question(text: "Documentos del negocio",answer: "Entrada"))
        area2Process13QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area2Process13QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process13QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area2Process13QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process13QuestionBank.list.append(Question(text: "Agregación de costos",answer: "Herramienta"))
        area2Process13QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process13QuestionBank.list.append(Question(text: "Revisión de información histórica",answer: "Herramienta"))
        area2Process13QuestionBank.list.append(Question(text: "Conciliación de límites de fondeo",answer: "Herramienta"))
        area2Process13QuestionBank.list.append(Question(text: "Financiamiento",answer: "Herramienta"))

        area2Process13QuestionBank.list.append(Question(text: "Línea base de costos",answer: "Salida"))
        area2Process13QuestionBank.list.append(Question(text: "Requisitos de financiamiento del proyecto",answer: "Salida"))
        area2Process13QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        
        questionBanks.append(area2Process13QuestionBank)
        
        // 8.1 Planificar la gestión de calidad (14)
        
        area2Process14QuestionBank.list.append(Question(text: "Acta de proyecto",answer: "Entrada"))
        area2Process14QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process14QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process14QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process14QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area2Process14QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process14QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process14QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process14QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area2Process14QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area2Process14QuestionBank.list.append(Question(text: "Planificación de pruebas e inspección",answer: "Herramienta"))
        area2Process14QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area2Process14QuestionBank.list.append(Question(text: "Plan de gestión de calidad",answer: "Salida"))
        area2Process14QuestionBank.list.append(Question(text: "Métricas de calidad",answer: "Salida"))
        area2Process14QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area2Process14QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process14QuestionBank)
        
        //9.1 Planificar la gestión de recursos (15)
        
        area2Process15QuestionBank.list.append(Question(text: "Acta de constitución del  proyecto",answer: "Entrada"))
        area2Process15QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process15QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process15QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process15QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        
        area2Process15QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process15QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area2Process15QuestionBank.list.append(Question(text: "Teoría organizacional",answer: "Herramienta"))
        area2Process15QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        
        area2Process15QuestionBank.list.append(Question(text: "Plan de gestión de los recursos",answer: "Salida"))
        area2Process15QuestionBank.list.append(Question(text: "Acta de constitución del equipo",answer: "Salida"))
        area2Process15QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process15QuestionBank)
        
        //9.2 Estimar recursos para las actividades (16)
        
        area2Process16QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process16QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process16QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process16QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process16QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process16QuestionBank.list.append(Question(text: "Estimación ascendente",answer: "Herramienta"))
        area2Process16QuestionBank.list.append(Question(text: "Estimación análoga",answer: "Herramienta"))
        area2Process16QuestionBank.list.append(Question(text: "Estimación paramétrica",answer: "Herramienta"))
        area2Process16QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process16QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        area2Process16QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area2Process16QuestionBank.list.append(Question(text: "Requisitos de recursos",answer: "Salida"))
        area2Process16QuestionBank.list.append(Question(text: "Bases de estimaciones",answer: "Salida"))
        area2Process16QuestionBank.list.append(Question(text: "Estructura de desglose de recursos",answer: "Salida"))
        area2Process16QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process16QuestionBank)
        
        //10.1 Planificar la gestión de las comunicaciones (17)
        
        area2Process17QuestionBank.list.append(Question(text: "Acta de proyecto",answer: "Entrada"))
        area2Process17QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process17QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process17QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process17QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area2Process17QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process17QuestionBank.list.append(Question(text: "Análisis de requisitos de comunicación",answer: "Herramienta"))
        area2Process17QuestionBank.list.append(Question(text: "Tecnología de la comunicación",answer: "Herramienta"))
        area2Process17QuestionBank.list.append(Question(text: "Modelos de comunicación",answer: "Herramienta"))
        area2Process17QuestionBank.list.append(Question(text: "Métodos de comunicación",answer: "Herramienta"))
        area2Process17QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area2Process17QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area2Process17QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area2Process17QuestionBank.list.append(Question(text: "Plan de gestión de las comunicaciones",answer: "Salida"))
        area2Process17QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección de proyectos",answer: "Salida"))
        area2Process17QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process17QuestionBank)
        
        //11.1 Planificar la gestión de riesgos (18)
        
        area2Process18QuestionBank.list.append(Question(text: "Acta de constitución del proyecto",answer: "Entrada"))
        area2Process18QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process18QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process18QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process18QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process18QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process18QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process18QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area2Process18QuestionBank.list.append(Question(text: "Plan de gestión de riesgos",answer: "Salida"))
        
        questionBanks.append(area2Process18QuestionBank)
        
        //11.2 Identificar los riesgos (19)

        area2Process19QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process19QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process19QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area2Process19QuestionBank.list.append(Question(text: "Documentación de las adquisiciones",answer: "Entrada"))
        area2Process19QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process19QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process19QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process19QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process19QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process19QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area2Process19QuestionBank.list.append(Question(text: "Listas rápidas",answer: "Herramienta"))
        area2Process19QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area2Process19QuestionBank.list.append(Question(text: "Registro de riesgos",answer: "Salida"))
        area2Process19QuestionBank.list.append(Question(text: "Informe de riesgos",answer: "Salida"))
        area2Process19QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area2Process19QuestionBank)
        
        //11.3 Realizar el análisis cualitativo de riesgos (20)

        area2Process20QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process20QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process20QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process20QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area2Process20QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process20QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process20QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process20QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area2Process20QuestionBank.list.append(Question(text: "Categorización de riesgos",answer: "Herramienta"))
        area2Process20QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area2Process20QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area2Process20QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process20QuestionBank)
        
        //11.4 Realizar el análisis cuantitativo de riesgos (21)

        area2Process21QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process21QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process21QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process21QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area2Process21QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process21QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process21QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area2Process21QuestionBank.list.append(Question(text: "Representaciones de incertidumbre",answer: "Herramienta"))
        area2Process21QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        
        area2Process21QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        
        questionBanks.append(area2Process21QuestionBank)

       
        //11.5 Planificar la respuesta a los riesgos (22)

        area2Process22QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process22QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process22QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process22QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area2Process22QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process22QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process22QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area2Process22QuestionBank.list.append(Question(text: "Estrategias para amenazas",answer: "Herramienta"))
        area2Process22QuestionBank.list.append(Question(text: "Estrategias para oportunidades",answer: "Herramienta"))
        area2Process22QuestionBank.list.append(Question(text: "Estrategias para respuestas de contingencia",answer: "Herramienta"))
        area2Process22QuestionBank.list.append(Question(text: "Estrategias para el riesgo general del proyecto",answer: "Herramienta"))
        area2Process22QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process22QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))

        area2Process22QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area2Process22QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area2Process22QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area2Process22QuestionBank)
        
        
        // 12.1 Planificar la gestión de las adquisiciones (23)
        
        area2Process23QuestionBank.list.append(Question(text: "Acta de proyecto",answer: "Entrada"))
        area2Process23QuestionBank.list.append(Question(text: "Documentos del negocio",answer: "Entrada"))
        area2Process23QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process23QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process23QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process23QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area2Process23QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process23QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process23QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process23QuestionBank.list.append(Question(text: "Análisis de selección de proveedores",answer: "Herramienta"))
        area2Process23QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area2Process23QuestionBank.list.append(Question(text: "Plan de gestión de las adquisiciones",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Estrategia de las adquisiciones",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Documentos de licitaciones",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Enunciados del trabajo relativo a adquisiciones",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Criterios de selección de proveedores",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Decisiones hacer o comprar",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Estimaciones independientes de costos",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        area2Process23QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))

        questionBanks.append(area2Process23QuestionBank)
        
        // 13.2 Planificar el involucramiento de los interesados (24)

        
        area2Process24QuestionBank.list.append(Question(text: "Acta de proyecto",answer: "Entrada"))
        area2Process24QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area2Process24QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area2Process24QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area2Process24QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area2Process24QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area2Process24QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area2Process24QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area2Process24QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area2Process24QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area2Process24QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area2Process24QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area2Process24QuestionBank.list.append(Question(text: "Plan de involucramiento de los interesados",answer: "Salida"))
        
        questionBanks.append(area2Process24QuestionBank)
        
        //-MARK: AREA 3 START - ejecucion. (10)
        
        // 4.3 Dirigir y Gestionar el trabajo del proyecto
        
        area3Process1QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process1QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process1QuestionBank.list.append(Question(text: "Solicitudes de cambio aprobadas",answer: "Entrada"))
        area3Process1QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area3Process1QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area3Process1QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area3Process1QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        area3Process1QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area3Process1QuestionBank.list.append(Question(text: "Entregables",answer: "Salida"))
        area3Process1QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Salida"))
        area3Process1QuestionBank.list.append(Question(text: "Registro de incidentes",answer: "Salida"))
        area3Process1QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area3Process1QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area3Process1QuestionBank.list.append(Question(text: "Actualizaciones a los documentos  del proyecto",answer: "Salida"))
        area3Process1QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))
        
        questionBanks.append(area3Process1QuestionBank)
        
        //4.4 Gestionar el conocimiento del proyecto (2)
        
        area3Process2QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process2QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process2QuestionBank.list.append(Question(text: "Entregables",answer: "Entrada"))
        area3Process2QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area3Process2QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area3Process2QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area3Process2QuestionBank.list.append(Question(text: "Gestión del conocimiento",answer: "Herramienta"))
        area3Process2QuestionBank.list.append(Question(text: "Gestión de información",answer: "Herramienta"))
        area3Process2QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))

        area3Process2QuestionBank.list.append(Question(text: "Registro de lecciones aprendidas",answer: "Salida"))
        area3Process2QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area3Process2QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))

        questionBanks.append(area3Process2QuestionBank)
        
        //8.2 Gestionar la calidad (3)
        
        area3Process3QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process3QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process3QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area3Process3QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area3Process3QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area3Process3QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area3Process3QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area3Process3QuestionBank.list.append(Question(text: "Auditorías",answer: "Herramienta"))
        area3Process3QuestionBank.list.append(Question(text: "Diseñar para X",answer: "Herramienta"))
        area3Process3QuestionBank.list.append(Question(text: "Resolución de problemas",answer: "Herramienta"))
        area3Process3QuestionBank.list.append(Question(text: "Métodos de mejora de la calidad",answer: "Herramienta"))

        area3Process3QuestionBank.list.append(Question(text: "Informes de calidad",answer: "Salida"))
        area3Process3QuestionBank.list.append(Question(text: " Documentos de prueba y evaluación",answer: "Salida"))
        area3Process3QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area3Process3QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area3Process3QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area3Process3QuestionBank)
        
        //9.3 Adquirir recursos (4)
        
        area3Process4QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process4QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process4QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area3Process4QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area3Process4QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area3Process4QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area3Process4QuestionBank.list.append(Question(text: "Asignación previa",answer: "Herramienta"))
        area3Process4QuestionBank.list.append(Question(text: "Equipos virtuales",answer: "Herramienta"))

        area3Process4QuestionBank.list.append(Question(text: "Asignación de recursos físicos",answer: "Salida"))
        area3Process4QuestionBank.list.append(Question(text: "Asignaciones del equipo del proyecto",answer: "Salida"))
        area3Process4QuestionBank.list.append(Question(text: "Calendario de recursos",answer: "Salida"))
        area3Process4QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area3Process4QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyectos",answer: "Salida"))
        area3Process4QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        area3Process4QuestionBank.list.append(Question(text: "Actualizaciones a los factores ambientales de la empresa",answer: "Salida"))
        area3Process4QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))

        questionBanks.append(area3Process4QuestionBank)
        
        //9.4 Desarrollar al equipo (5)
        
        area3Process5QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process5QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process5QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area3Process5QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area3Process5QuestionBank.list.append(Question(text: "Co-ubicación",answer: "Herramienta"))
        area3Process5QuestionBank.list.append(Question(text: "Equipos virtuales",answer: "Herramienta"))
        area3Process5QuestionBank.list.append(Question(text: "Tecnología de comunicación",answer: "Herramienta"))
        area3Process5QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area3Process5QuestionBank.list.append(Question(text: "Reconocimientos y recompensas",answer: "Herramienta"))
        area3Process5QuestionBank.list.append(Question(text: "Capacitación",answer: "Herramienta"))
        area3Process5QuestionBank.list.append(Question(text: "Evaluaciones individuales y de equipo",answer: "Herramienta"))
        area3Process5QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area3Process5QuestionBank.list.append(Question(text: "Evaluaciones de desempeño del equipo",answer: "Salida"))
        area3Process5QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area3Process5QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyectos",answer: "Salida"))
        area3Process5QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        area3Process5QuestionBank.list.append(Question(text: "Actualizaciones a los factores ambientales de la empresa",answer: "Salida"))
        area3Process5QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))
        
        questionBanks.append(area3Process5QuestionBank)
        
        // 9.5 Dirigir al equipo (6)
        
        area3Process6QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process6QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process6QuestionBank.list.append(Question(text: "Informes de desempeño del trabajo",answer: "Entrada"))
        area3Process6QuestionBank.list.append(Question(text: "Evaluaciones de desempeño del equipo",answer: "Entrada"))
        area3Process6QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area3Process6QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area3Process6QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area3Process6QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        
        area3Process6QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area3Process6QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyectos",answer: "Salida"))
        area3Process6QuestionBank.list.append(Question(text: "Actualización a los documentos del proyecto",answer: "Salida"))
        area3Process6QuestionBank.list.append(Question(text: "Actualizaciones a los factores ambientales de la empresa",answer: "Salida"))

        questionBanks.append(area3Process6QuestionBank)
        
        // 10.2 Gestionar las comunicaciones (7)
        
        area3Process7QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process7QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process7QuestionBank.list.append(Question(text: "Informes de desempeño del trabajo",answer: "Entrada"))
        area3Process7QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area3Process7QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area3Process7QuestionBank.list.append(Question(text: "Tecnología de la comunicación",answer: "Herramienta"))
        area3Process7QuestionBank.list.append(Question(text: "Métodos de comunicación",answer: "Herramienta"))
        area3Process7QuestionBank.list.append(Question(text: "Habilidades de comunicación",answer: "Herramienta"))
        area3Process7QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        area3Process7QuestionBank.list.append(Question(text: "Presentación de informes del proyecto",answer: "Herramienta"))
        area3Process7QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area3Process7QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area3Process7QuestionBank.list.append(Question(text: "Comunicaciones del proyecto",answer: "Salida"))
        area3Process7QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area3Process7QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        area3Process7QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))

        questionBanks.append(area3Process7QuestionBank)
        
        //11.6 Implementar la respuesta a los riesgos (8)
        
        area3Process8QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process8QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process8QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))
        
        area3Process8QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area3Process8QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area3Process8QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))

        area3Process8QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area3Process8QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area3Process8QuestionBank)
        
        //12.2 Efectuar las adquisiciones (9)
        
        area3Process9QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process9QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process9QuestionBank.list.append(Question(text: "Documentación de las adquisiciones",answer: "Entrada"))
        area3Process9QuestionBank.list.append(Question(text: "Propuestas de vendedores",answer: "Entrada"))
        area3Process9QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area3Process9QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area3Process9QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area3Process9QuestionBank.list.append(Question(text: "Publicidad",answer: "Herramienta"))
        area3Process9QuestionBank.list.append(Question(text: "Conferencia de oferentes",answer: "Herramienta"))
        area3Process9QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area3Process9QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        
        area3Process9QuestionBank.list.append(Question(text: "Vendedores seleccionados",answer: "Salida"))
        area3Process9QuestionBank.list.append(Question(text: "Acuerdos",answer: "Salida"))
        area3Process9QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area3Process9QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area3Process9QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        area3Process9QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))

        questionBanks.append(area3Process9QuestionBank)
        
        //13.3 Gestionar el involucramiento de los interesados (10)
        
        area3Process10QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area3Process10QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area3Process10QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area3Process10QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area3Process10QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area3Process10QuestionBank.list.append(Question(text: "Habilidades de comunicación",answer: "Herramienta"))
        area3Process10QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area3Process10QuestionBank.list.append(Question(text: "Reglas básicas",answer: "Herramienta"))
        area3Process10QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area3Process10QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area3Process10QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección de proyectos",answer: "Salida"))
        area3Process10QuestionBank.list.append(Question(text: "Actualización de los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area3Process10QuestionBank)
        
        //-MARK: AREA 4 START - monitoreo y control (12)
        
        // 4.5 Monitorear y controlar el trabajo del proyecto (1)
        
        area4Process1QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process1QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process1QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Entrada"))
        area4Process1QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area4Process1QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area4Process1QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process1QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area4Process1QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process1QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area4Process1QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))
        
        area4Process1QuestionBank.list.append(Question(text: "Informes de desempeño del trabajo",answer: "Salida"))
        area4Process1QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area4Process1QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process1QuestionBank.list.append(Question(text: "Actualizaciones a los  documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process1QuestionBank)

        // 4.6 Realizar el control Integrado de los cambios (2)
        
        area4Process2QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process2QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process2QuestionBank.list.append(Question(text: "Informes de desempeño del trabajo",answer: "Entrada"))
        area4Process2QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Entrada"))
        area4Process2QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area4Process2QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process2QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area4Process2QuestionBank.list.append(Question(text: "Herramientas de control de cambios",answer: "Herramienta"))
        area4Process2QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process2QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area4Process2QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area4Process2QuestionBank.list.append(Question(text: "Solicitudes de cambio aprobadas",answer: "Salida"))
        area4Process2QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process2QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process2QuestionBank)

        // 5.5 Validar el alcance (3)
        
        area4Process3QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process3QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process3QuestionBank.list.append(Question(text: "Entregables verificados",answer: "Entrada"))
        area4Process3QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))

        area4Process3QuestionBank.list.append(Question(text: "Inspección",answer: "Herramienta"))
        area4Process3QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))

        area4Process3QuestionBank.list.append(Question(text: "Entregables aceptados",answer: "Salida"))
        area4Process3QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process3QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area4Process3QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process3QuestionBank)
        
        // 5.6 Controlar el alcance (4)
        
        area4Process4QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process4QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process4QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process4QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process4QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        
        area4Process4QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process4QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area4Process4QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process4QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process4QuestionBank)
        
        // 6.6 Controlar el cronograma (5)
        
        area4Process5QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process5QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process5QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process5QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process5QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process5QuestionBank.list.append(Question(text: "Método de la ruta crítica",answer: "Herramienta"))
        area4Process5QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        area4Process5QuestionBank.list.append(Question(text: "Optimización de recursos",answer: "Herramienta"))
        area4Process5QuestionBank.list.append(Question(text: "Adelantos y retrasos",answer: "Herramienta"))
        area4Process5QuestionBank.list.append(Question(text: "Compresión del cronograma",answer: "Herramienta"))

        area4Process5QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process5QuestionBank.list.append(Question(text: "Pronósticos del cronograma",answer: "Salida"))
        area4Process5QuestionBank.list.append(Question(text: "Solicitudes de cambios",answer: "Salida"))
        area4Process5QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process5QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process5QuestionBank)

        // 7.4 Controlar los costos (6)
        
        area4Process6QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process6QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process6QuestionBank.list.append(Question(text: "Requisitos de financiamiento del proyecto",answer: "Entrada"))
        area4Process6QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process6QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process6QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area4Process6QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process6QuestionBank.list.append(Question(text: "Índice de desempeño del trabajo por completar (TCPI)",answer: "Herramienta"))
        area4Process6QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))

        area4Process6QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process6QuestionBank.list.append(Question(text: "Pronósticos de costos",answer: "Salida"))
        area4Process6QuestionBank.list.append(Question(text: "Solicitudes de cambios",answer: "Salida"))
        area4Process6QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process6QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process6QuestionBank)
        
        // 8.3 Controlar la calidad (7)
        
        area4Process7QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process7QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process7QuestionBank.list.append(Question(text: "Solicitudes de cambio aprobadas",answer: "Entrada"))
        area4Process7QuestionBank.list.append(Question(text: "Entregables",answer: "Entrada"))
        area4Process7QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process7QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area4Process7QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process7QuestionBank.list.append(Question(text: "Recopilación de datos",answer: "Herramienta"))
        area4Process7QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process7QuestionBank.list.append(Question(text: "Inspección",answer: "Herramienta"))
        area4Process7QuestionBank.list.append(Question(text: "Pruebas / Evaluación de productos",answer: "Herramienta"))
        area4Process7QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area4Process7QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area4Process7QuestionBank.list.append(Question(text: "Mediciones de control de calidad",answer: "Salida"))
        area4Process7QuestionBank.list.append(Question(text: "Entregables verificados",answer: "Salida"))
        area4Process7QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process7QuestionBank.list.append(Question(text: "Solicitudes de cambios",answer: "Salida"))
        area4Process7QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process7QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process7QuestionBank)
        
        // 9.6 Controlar recursos (8)
        
        area4Process8QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process8QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process8QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process8QuestionBank.list.append(Question(text: "Contratos",answer: "Entrada"))
        area4Process8QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area4Process8QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process8QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process8QuestionBank.list.append(Question(text: "Resolución de problemas",answer: "Herramienta"))
        area4Process8QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area4Process8QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))

        area4Process8QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process8QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area4Process8QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process8QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process8QuestionBank)

        // 10.2 Monitorear las comunicaciones (9)
        
        area4Process9QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process9QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process9QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process9QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area4Process9QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process9QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area4Process9QuestionBank.list.append(Question(text: "PMIS",answer: "Herramienta"))
        area4Process9QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process9QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area4Process9QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area4Process9QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process9QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area4Process9QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process9QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process9QuestionBank)
        
        // 11.7 Monitorear los riesgos (10)
        
        area4Process10QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process10QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process10QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process10QuestionBank.list.append(Question(text: "Informes de desempeño del trabajo",answer: "Entrada"))

        area4Process10QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process10QuestionBank.list.append(Question(text: "Auditorías",answer: "Herramienta"))
        area4Process10QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area4Process10QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process10QuestionBank.list.append(Question(text: "Solicitudes de cambios",answer: "Salida"))
        area4Process10QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process10QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        area4Process10QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))

        questionBanks.append(area4Process10QuestionBank)
        
        // 12.3 Controlar las adquisiciones (11)
        
        area4Process11QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process11QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process11QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area4Process11QuestionBank.list.append(Question(text: "Documentación de adquisiciones",answer: "Entrada"))
        area4Process11QuestionBank.list.append(Question(text: "Solicitudes de cambio aprobadas",answer: "Entrada"))
        area4Process11QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process11QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area4Process11QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process11QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Herramienta"))
        area4Process11QuestionBank.list.append(Question(text: "Administración de reclamaciones",answer: "Herramienta"))
        area4Process11QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process11QuestionBank.list.append(Question(text: "Inspección",answer: "Herramienta"))
        area4Process11QuestionBank.list.append(Question(text: "Auditorías",answer: "Herramienta"))

        area4Process11QuestionBank.list.append(Question(text: "Adquisiciones cerradas",answer: "Salida"))
        area4Process11QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process11QuestionBank.list.append(Question(text: "Actualización a la documentación de compras",answer: "Salida"))
        area4Process11QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area4Process11QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección del proyecto",answer: "Salida"))
        area4Process11QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Salida"))
        area4Process11QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Salida"))

        questionBanks.append(area4Process11QuestionBank)

        // 13.4 Monitorear el involucramiento de los interesados (12)
        
        area4Process12QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area4Process12QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area4Process12QuestionBank.list.append(Question(text: "Datos de desempeño del trabajo",answer: "Entrada"))
        area4Process12QuestionBank.list.append(Question(text: "Factores ambientales de la empresa",answer: "Entrada"))
        area4Process12QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area4Process12QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Herramienta"))
        area4Process12QuestionBank.list.append(Question(text: "Toma de decisiones",answer: "Herramienta"))
        area4Process12QuestionBank.list.append(Question(text: "Representación de datos",answer: "Herramienta"))
        area4Process12QuestionBank.list.append(Question(text: "Habilidades de comunicación",answer: "Herramienta"))
        area4Process12QuestionBank.list.append(Question(text: "Habilidades interpersonales y de equipo",answer: "Herramienta"))
        area4Process12QuestionBank.list.append(Question(text: "Reuniones",answer: "Herramienta"))

        area4Process12QuestionBank.list.append(Question(text: "Información de desempeño del trabajo",answer: "Salida"))
        area4Process12QuestionBank.list.append(Question(text: "Solicitudes de cambio",answer: "Salida"))
        area4Process12QuestionBank.list.append(Question(text: "Actualizaciones al plan para la dirección de proyectos",answer: "Salida"))
        area4Process12QuestionBank.list.append(Question(text: "Actualización de los documentos del proyecto",answer: "Salida"))

        questionBanks.append(area4Process12QuestionBank)

        //-MARK: AREA 5 START - cierre (1)
        
        // 4.7 Cerrar el proyecto o la fase (1)
        
        area5Process1QuestionBank.list.append(Question(text: "Acta de constitución del proyecto",answer: "Entrada"))
        area5Process1QuestionBank.list.append(Question(text: "Plan para la dirección del proyecto",answer: "Entrada"))
        area5Process1QuestionBank.list.append(Question(text: "Documentos del proyecto",answer: "Entrada"))
        area5Process1QuestionBank.list.append(Question(text: "Entregables aceptados",answer: "Entrada"))
        area5Process1QuestionBank.list.append(Question(text: "Acuerdos",answer: "Entrada"))
        area5Process1QuestionBank.list.append(Question(text: "Documentos de las adquisiciones",answer: "Entrada"))
        area5Process1QuestionBank.list.append(Question(text: "Activos de los procesos de la organización",answer: "Entrada"))

        area5Process1QuestionBank.list.append(Question(text: "Juicio de expertos",answer: "Salida"))
        area5Process1QuestionBank.list.append(Question(text: "Análisis de datos",answer: "Salida"))
        area5Process1QuestionBank.list.append(Question(text: "Reuniones",answer: "Salida"))

        area5Process1QuestionBank.list.append(Question(text: "Actualizaciones a los documentos del proyecto",answer: "Herramienta"))
        area5Process1QuestionBank.list.append(Question(text: "Transferencia del producto, servicio o resultado final",answer: "Herramienta"))
        area5Process1QuestionBank.list.append(Question(text: "Informe final",answer: "Herramienta"))
        area5Process1QuestionBank.list.append(Question(text: "Actualizaciones a los activos de los procesos de la organización",answer: "Herramienta"))

        questionBanks.append(area5Process1QuestionBank)
        
        
        /* WOOOOOOOOOOOOOO OOOOOOOOOOOOOOOOO OOOOOOOOOOOOOO OOOOOOOOO OOOOOOOOOOOO OOOOOOOOOO*/

        //getting an index out of bounds here.
        //couldve been because my questionBanks is nil e.g. has no elements in it.
        
        for index in 0...testNames.count-1{
         
            dictionary[testNames[index]] = questionBanks[index]
            
            //e.g. dictionary["key"] = "value" (any obj , etc)
            
        }

        
    }
    
}
