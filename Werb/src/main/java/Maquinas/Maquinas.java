/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Maquinas;

public class Maquinas {
    private String nombre_maquina;
    private String componente;
    private String mantenimiento;
    private String usuario;

    public Maquinas() {
    }

    public Maquinas(String nombre_maquina, String componente, String mantenimiento, String usuario) {
        this.nombre_maquina = nombre_maquina;
        this.componente = componente;
        this.mantenimiento = mantenimiento;
        this.usuario = usuario;
    }

    public String getNombre_maquina() {
        return nombre_maquina;
    }

    public void setNombre_maquina(String nombre_maquina) {
        this.nombre_maquina = nombre_maquina;
    }

    public String getComponente() {
        return componente;
    }

    public void setComponente(String componente) {
        this.componente = componente;
    }

    public String getMantenimiento() {
        return mantenimiento;
    }

    public void setMantenimiento(String mantenimiento) {
        this.mantenimiento = mantenimiento;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    
}
