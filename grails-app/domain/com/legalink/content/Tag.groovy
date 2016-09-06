package com.legalink.content

class Tag {

    String name

    static hasMany = [contents:Content]
    static belongsTo = Content

    static constraints = {
    }
}
