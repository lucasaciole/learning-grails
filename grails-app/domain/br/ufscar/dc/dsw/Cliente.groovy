package br.ufscar.dc.dsw

import javax.xml.ws.EndpointReference

abstract class Cliente {

    static hasMany = [contasCliente: ContaCliente]

    public static final String ATIVO = "Ativo"
    public static final String INATIVO = "Inativo"

    static constraints = {
        nome blank: false, size: 1..30
        endereco nullable: false
        dtMoradia blnak: false
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
