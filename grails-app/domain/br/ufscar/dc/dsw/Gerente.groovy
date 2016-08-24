package br.ufscar.dc.dsw

class Gerente {

    static constraints = {
        username blank: false, unique: true
        password blank: false
        nome blank: false, size: 1..30
        rg blank: false, size: 1..12
        CPF (blank: false, unique: true, cpf: true, size: 14..14)
        agencia nullable: false
    }

    String nome
    String rg
    String CPF
    Agencia agencia

    String toString() {
        return "${nome} - ${CPF}"
    }
}
