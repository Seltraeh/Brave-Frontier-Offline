.class public Lch/boye/httpclientandroidlib/message/BufferedHeader;
.super Ljava/lang/Object;
.source "BufferedHeader.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/FormattedHeader;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x266b2a09650b7be8L


# instance fields
.field private final buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private final name:Ljava/lang/String;

.field private final valuePos:I


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const/16 v0, 0x3a

    .line 82
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "Invalid header: "

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 93
    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 94
    iput v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->valuePos:I

    return-void

    .line 89
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Char array buffer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 1

    .line 118
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    return-object v0
.end method

.method public getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    .line 107
    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 108
    iget v1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->valuePos:I

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    .line 109
    sget-object v1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 103
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iget v1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->valuePos:I

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValuePos()I
    .locals 1

    .line 114
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->valuePos:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
