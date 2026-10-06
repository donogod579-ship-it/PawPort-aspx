public class Clinica
{
    public string Nombre { get; set; }
    public string Ciudad { get; set; }
    public string Imagen { get; set; }
    public string Especialidad { get; set; }
    public double Calificacion { get; set; }

    public Clinica(string nombre, string ciudad, string imagen, string especialidad, double calificacion)
    {
        Nombre = nombre;
        Ciudad = ciudad;
        Imagen = imagen;
        Especialidad = especialidad;
        Calificacion = calificacion;
    }
}