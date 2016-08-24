package br.ufscar.dc.dsw

class Conta {
    static hasMany = [contasCliente: ContaCliente]

    static constraints = {
        agencia nullable: false
        numero blank: false
        saldo nullable: false, min: 0.0d
        abertura nullable: false
    }

    static mapping = {
        tablePerHierarchy false
    }

    Agencia agencia
    String numero
    double saldo
    Date abertura
}
