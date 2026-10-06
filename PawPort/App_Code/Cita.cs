public class Cita
{
    public int Id { get; set; }
    public string Hora { get; set; }
    public string Mascota { get; set; }
    public string Propietario { get; set; }
    public string Motivo { get; set; }
    public string Estado { get; set; }

    public Cita(int id, string hora, string mascota, string propietario, string motivo, string estado)
    {
        Id = id;
        Hora = hora;
        Mascota = mascota;
        Propietario = propietario;
        Motivo = motivo;
        Estado = estado;
    }
}