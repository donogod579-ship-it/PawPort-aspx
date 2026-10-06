using System.Collections.Generic;

public static class Datos
{
    public static List<Clinica> Clinicas()
    {
        return new List<Clinica>
        {
            new Clinica("Clínica Lomas", "Ciudad de México", "~/recursos/img/clinica1.jpg", "Medicina general", 4.8),
            new Clinica("Clínica Retiro", "Madrid", "~/recursos/img/clinica2.jpg", "Cirugía", 4.7),
            new Clinica("Clínica Palermo", "Buenos Aires", "~/recursos/img/clinica3.jpg", "Dermatología", 4.9),
            new Clinica("Veterinaria Escalón", "San Salvador", "~/recursos/img/clinica4.jpg", "Cardiología", 4.6)
        };
    }

    public static List<Mascota> Mascotas()
    {
        return new List<Mascota>
        {
            new Mascota("Luna", "Perro", "Golden Retriever", 3, "~/recursos/img/luna.jpg", "Al día"),
            new Mascota("Max", "Perro", "Beagle", 5, "~/recursos/img/max.jpg", "Pendiente"),
            new Mascota("Kiwi", "Ave", "Cacatúa", 2, "~/recursos/img/kiwi.jpg", "Al día")
        };
    }

    public static List<Cita> Citas()
    {
        return new List<Cita>
        {
            new Cita(1, "09:00", "Luna", "Ana Gómez", "Vacunación anual", "Confirmada"),
            new Cita(2, "10:30", "Max", "Carlos Ruiz", "Revisión de piel", "Pendiente"),
            new Cita(3, "11:15", "Kiwi", "Sofía Pérez", "Control de plumaje", "En consulta"),
            new Cita(4, "14:00", "Rocky", "Luis Mena", "Cirugía menor", "Pendiente")
        };
    }

    public static string ClaseEstado(string estado)
    {
        if (estado == "Confirmada") return "ok";
        if (estado == "Pendiente") return "wait";
        if (estado == "En consulta") return "info";
        return "bad";
    }
}