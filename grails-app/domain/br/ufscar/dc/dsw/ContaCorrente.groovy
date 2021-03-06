package br.ufscar.dc.dsw

class ContaCorrente extends Conta {

    static constraints = {
        agencia nullable: false
        numero blank: false
        saldo nullable: false, min: 0.0d
        abertura nullable: false
        limite nullable: false, min: 0.0d
    }

    double limite

    String toString() {
        return "Conta Corrente ${numero}"
    }
}
