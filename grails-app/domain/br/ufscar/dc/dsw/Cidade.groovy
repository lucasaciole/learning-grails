package br.ufscar.dc.dsw

class Cidade {

    static constraints = {
        nome blank: false, size: 1..40
        estado nullable: false
    }

    String nome
    Estado estado


    String toString() {
        return "${nome} - ${estado.sigla}"
    }
}
