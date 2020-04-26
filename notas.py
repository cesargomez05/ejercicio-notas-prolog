from pyswip import Prolog

class PrologScores:
    def __init__(self, pl_file_name):
        """
        Método constructor de la clase.
        :param pl_file_name: Nombre del archivo Prolog (.pl)
        """
        self.prolog = Prolog()
        self.prolog.consult(pl_file_name)

    def _exception_execution(f):
        def decorate(*args, **kwargs):
            try:
                f(*args)
            except Exception as e:
                print("Error en la ejecución de la consulta")
                print(e)
        return decorate

    @_exception_execution
    def list_students(self):
        """
        Función que lista los estudiantes existentes en la base de conocimiento
        """
        result = list(self.prolog.query('estudiante(Student)'))
        if (len(result) == 0):
            print("No hay estudiantes registrados")
        else:
            for student in result:
                print(student)

    @_exception_execution
    def list_courses(self):
        """
        Función que lista los cursos existentes en la base de conocimiento
        """
        result = list(self.prolog.query('curso(Course)'))
        if (len(result) == 0):
            print("No hay cursos registrados")
        else:
            for course in result:
                print(course)

    def list_courses_students(self, **kwargs):
        """
        Función que lista los cursos existentes con sus respectivos estudiantes
        :param kwargs: Argumentos de consulta
        :return:
        """

        result = list(self.prolog.query("es_estudiante("+kwargs.get('student', 'Student')+", "+kwargs.get('course', 'Course')+")"))

        if len(result) == 0:
            print("No hay registros asociados al curso y/o estudiante seleccionado")
        else:
            for record in result:
                print(record)

    def list_students_scores(self, **kwargs):
        queryText = "calificacion({S}, {C}, N, P)".format(S=kwargs.get('student', 'Student'), C=kwargs.get('course', 'Course'))
        message = "No hay calificaciones asociadas al curso y/o estudiante seleccionado"

        result = list(self.prolog.query(queryText))
        if len(result) == 0:
            print(message)
        else:
            for record in result:
                print(record)

    def consult_student(self, **kwargs):
        queryText = "aprueba_curso({S}, {C}, M)".format(S=kwargs.get('student', 'Student'), C=kwargs.get('course', 'Course'))
        message = "No hay resultados asociados al curso y/o estudiante seleccionado"

        result = list(self.prolog.query(queryText))
        if len(result) == 0:
            print(message)
        else:
            for record in result:
                print(record)

if __name__ == '__main__':
    myProgram = PrologScores('notas.pl')

    #myProgram.list_courses_students()
    #myProgram.list_courses_students(student='ruben')
    #myProgram.list_courses_students(course='informatica')
    #myProgram.list_courses_students(student='Ruben', course='matematicas')

    #myProgram.list_students_scores()
    #myProgram.list_students_scores(student='ruben')
    #myProgram.list_students_scores(course='informatica')
    #myProgram.list_students_scores(student='Ruben', course='matematicas')

    #myProgram.consult_student()
    #myProgram.consult_student(student='ruben')
    #myProgram.consult_student(course='informatica')
    myProgram.consult_student(student='carlos', course='informatica')
    myProgram.consult_student(student='cesar', course='programacion')
    myProgram.consult_student(student='cesar', course='informatica')