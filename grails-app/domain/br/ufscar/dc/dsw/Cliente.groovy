package br.ufscar.dc.dsw

abstract class Cliente extends Usuario {

    static hasMany = [contasCliente: ContaCliente]

    public static final String ATIVO = "Ativo"
    public static final String INATIVO = "Inativo"

    static constraints = {
        username blank: false, unique: true
        password blank: false
        nome blank: false, size: 1..30
        endereco nullable: false
        dtMoradia blank: false
        status blank: false, inList: [ATIVO, INATIVO]
    }

    static mapping = {
        tablePerHierarchy false
    }

    String nome
    String status
    Endereco endereco
    Date dtMoradia
}
