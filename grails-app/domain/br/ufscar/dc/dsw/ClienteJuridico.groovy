package br.ufscar.dc.dsw

import org.springframework.aop.interceptor.AbstractTraceInterceptor

class ClienteJuridico extends Cliente{

    static constraints = {
        username blank: false, unique: true
        password blank: false
        nome blank: false, size: 1..30
        CNPJ (blank: false, unique: true, cnpj: true, size: 18..18)
        endereco nullable: false
        dtMoradia blank: false
        status blank: false, inList: [ATIVO, INATIVO]
    }

    String CNPJ

    String toString() {
        return CNPJ
    }
}
