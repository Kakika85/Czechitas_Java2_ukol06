package cz.czechitas.java2webapps.ukol6.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Length;

@Entity
public class Vizitka {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    @Length(max = 100)
    private String cele_jmeno;
    @NotBlank
    @Length(max = 100)
    private String firma;
    @NotBlank
    @Length(max = 100)
    private String ulice;
    @NotBlank
    @Length(max = 100)
    private String psc;
    @NotBlank
    @Length(max = 100)
    private String obec;
    @Email
    @Length(max = 100)
    private String email;
    @Length(min = 9, max = 20)
    @Pattern(regexp = "\\+?\\d+")
    private String telefon;
    @Length(max = 100)
    private String web;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCele_jmeno() {
        return cele_jmeno;
    }

    public void setCele_jmeno(String cele_jmeno) {
        this.cele_jmeno = cele_jmeno;
    }

    public String getFirma() {
        return firma;
    }

    public void setFirma(String firma) {
        this.firma = firma;
    }

    public String getUlice() {
        return ulice;
    }

    public void setUlice(String ulice) {
        this.ulice = ulice;
    }

    public String getPsc() {
        return psc;
    }

    public void setPsc(String psc) {
        this.psc = psc;
    }

    public String getMesto() {
        return obec;
    }

    public void setMesto(String mesto) {
        this.obec = mesto;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }

    public String getObec() {
        return obec;
    }

    public void setObec(String obec) {
        this.obec = obec;
    }

    public String getCelaAdresa() {
        return ulice + ", " + obec + psc;
    }
}