public class Mascota
{
    public string Nombre { get; set; }
    public string Especie { get; set; }
    public string Raza { get; set; }
    public int Edad { get; set; }
    public string Imagen { get; set; }
    public string Vacunas { get; set; }

    public Mascota(string nombre, string especie, string raza, int edad, string imagen, string vacunas)
    {
        Nombre = nombre;
        Especie = especie;
        Raza = raza;
        Edad = edad;
        Imagen = imagen;
        Vacunas = vacunas;
    }
}