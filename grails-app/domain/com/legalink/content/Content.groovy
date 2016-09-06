package com.legalink.content

class Content {

    String type
    String title
    String summary
    String text
    String textFormat
    Date timelineDate
    Date created = new Date()

    static hasMany = [tags:Tag]

    static constraints = {
        type inList: ["journal", "SMS", "audio", "video", "image"]
        textFormat inList: ["text", "file"]
    }
}
