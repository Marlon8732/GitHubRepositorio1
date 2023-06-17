namespace Departamentos
{
    //clase que define un departamento con su nombre y problacion
    public  class depto
    {
        public string Name{get;set;}
        public int population {get;set;}

        public depto (String n, int poblacion)
        {
            Name = n;
            population = poblacion;
        }
    }
}