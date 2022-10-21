.class public final Lch/boye/httpclientandroidlib/entity/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final APPLICATION_ATOM_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final APPLICATION_FORM_URLENCODED:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final APPLICATION_JSON:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final APPLICATION_OCTET_STREAM:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final APPLICATION_SVG_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final APPLICATION_XHTML_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final APPLICATION_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final DEFAULT_BINARY:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final DEFAULT_TEXT:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final MULTIPART_FORM_DATA:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final TEXT_HTML:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final TEXT_PLAIN:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final TEXT_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

.field public static final WILDCARD:Lch/boye/httpclientandroidlib/entity/ContentType;

.field private static final serialVersionUID:J = -0x6bcff2af98b1a2b8L


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v1, "application/atom+xml"

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->APPLICATION_ATOM_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 61
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->APPLICATION_FORM_URLENCODED:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 63
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "application/json"

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->APPLICATION_JSON:Lch/boye/httpclientandroidlib/entity/ContentType;

    const-string v0, "application/octet-stream"

    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->APPLICATION_OCTET_STREAM:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 67
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "application/svg+xml"

    invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->APPLICATION_SVG_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 69
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "application/xhtml+xml"

    invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->APPLICATION_XHTML_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 71
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "application/xml"

    invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->APPLICATION_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 73
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "multipart/form-data"

    invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->MULTIPART_FORM_DATA:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 75
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "text/html"

    invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->TEXT_HTML:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 77
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "text/plain"

    invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->TEXT_PLAIN:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 79
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "text/xml"

    invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->TEXT_XML:Lch/boye/httpclientandroidlib/entity/ContentType;

    const-string v0, "*/*"

    .line 81
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->WILDCARD:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 85
    sget-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->TEXT_PLAIN:Lch/boye/httpclientandroidlib/entity/ContentType;

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->DEFAULT_TEXT:Lch/boye/httpclientandroidlib/entity/ContentType;

    .line 86
    sget-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->APPLICATION_OCTET_STREAM:Lch/boye/httpclientandroidlib/entity/ContentType;

    sput-object v0, Lch/boye/httpclientandroidlib/entity/ContentType;->DEFAULT_BINARY:Lch/boye/httpclientandroidlib/entity/ContentType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/ContentType;->mimeType:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lch/boye/httpclientandroidlib/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private static create(Lch/boye/httpclientandroidlib/HeaderElement;)Lch/boye/httpclientandroidlib/entity/ContentType;
    .locals 2

    .line 185
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    .line 187
    invoke-interface {p0, v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 191
    :goto_0
    invoke-static {v0, p0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lch/boye/httpclientandroidlib/entity/ContentType;
    .locals 2

    .line 166
    new-instance v0, Lch/boye/httpclientandroidlib/entity/ContentType;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lch/boye/httpclientandroidlib/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/entity/ContentType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lch/boye/httpclientandroidlib/entity/ContentType;
    .locals 1

    if-eqz p0, :cond_2

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p0}, Lch/boye/httpclientandroidlib/entity/ContentType;->valid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lch/boye/httpclientandroidlib/entity/ContentType;

    invoke-direct {v0, p0, p1}, Lch/boye/httpclientandroidlib/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 153
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MIME type may not contain reserved characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MIME type may not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MIME type may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/entity/ContentType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 230
    :cond_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 232
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object p0

    .line 233
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 234
    aget-object p0, p0, v0

    invoke-static {p0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Lch/boye/httpclientandroidlib/HeaderElement;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getOrDefault(Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/entity/ContentType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 251
    invoke-static {p0}, Lch/boye/httpclientandroidlib/entity/ContentType;->get(Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    sget-object p0, Lch/boye/httpclientandroidlib/entity/ContentType;->DEFAULT_TEXT:Lch/boye/httpclientandroidlib/entity/ContentType;

    :goto_0
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lch/boye/httpclientandroidlib/entity/ContentType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseElements(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    .line 208
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p0, 0x0

    .line 209
    aget-object p0, v0, p0

    invoke-static {p0}, Lch/boye/httpclientandroidlib/entity/ContentType;->create(Lch/boye/httpclientandroidlib/HeaderElement;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object p0

    return-object p0

    .line 211
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Content type may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static valid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 108
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/ContentType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/ContentType;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    const-string v1, "; charset="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
