using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication7
{
    public class Equipo
    {

        public Equipo(int id, int posicion, String equipo, int puntos)
        {
            this.id = id;
            this.posicion = posicion;
            this.equipo = equipo;
            this.puntos = puntos;

        }
        public int id { get; set; }
        public int posicion { get; set; }
        public String equipo { get; set; }
        public int puntos { get; set; }

    }
}