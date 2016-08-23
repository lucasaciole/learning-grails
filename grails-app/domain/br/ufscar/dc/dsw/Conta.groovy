package br.ufscar.dc.dsw

class Conta {
    static hasMany = [contasCliente: ContaCliente]
    static constraints = {
        agencia nullabole: false
        numero blank: false
        saldo nullable: false, min: 0.0d
        abetura nullable: false
    }

    static mapping = {
        tablePerHierarchy false
    }

    Agencia agencia
    String numero
    double saldo
    Date abertura
}
