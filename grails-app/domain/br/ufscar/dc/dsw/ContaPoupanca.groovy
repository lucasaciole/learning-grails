package br.ufscar.dc.dsw

class ContaPoupanca {

    static constraints = {
        agencia nullable: false
        numero blank: false
        saldo nullable: false, min: 0.0d
        juros min: 0.0d
        correcao min: 0.0d
        dia blank: false, range: 1..28
        abertura nullable: false
    }

    byte dia
    double correcao
    double juros

    String toString() {
        return "(Poupanca) ${numero}"
    }
}
