package magazinit;

import java.util.Scanner;
import java.lang.*;
import java.util.*;

public class Componenta {
    int cod_produs, pret, marca, garantie, stoc = 0, an_fabricatie; 
    String producator = new String("");
    String tara_provenienta = new String("");
    
    public Componenta() {
        this.cod_produs = 0;
        this.pret = 0;
        this.marca = 0;
        this.an_fabricatie = 0;
        this.garantie = 0;
        this.producator = "";
        this.tara_provenienta = ""; 
        this.stoc = 0;
    }
    

    public Componenta(int cod_produs, int pret, int marca, int an_fabricatie, int garantie, String producator, String tara_provenienta, int stoc) {
        this.cod_produs = cod_produs;
        this.pret = pret;
        this.marca = marca;
        this.an_fabricatie = an_fabricatie;
        this.garantie = garantie;
        this.producator = producator;
        this.tara_provenienta = tara_provenienta; 
        this.stoc = stoc;
    }
    
    
    
}
