using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication7
{
    public class Equipo
    {

        public Equipo(int id, int posicion, String equipo, String provincia)
        {
            this.id = id;
            this.posicion = posicion;
            this.equipo = equipo;
            this.provincia = provincia;

        }
        public int id { get; set; }
        public int posicion { get; set; }
        public String equipo { get; set; }
        public String provincia { get; set; }

    }
}