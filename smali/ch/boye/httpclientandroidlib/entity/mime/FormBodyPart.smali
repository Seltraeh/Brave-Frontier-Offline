.class public Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final body:Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;

.field private final header:Lch/boye/httpclientandroidlib/entity/mime/Header;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 54
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->body:Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;

    .line 56
    new-instance p1, Lch/boye/httpclientandroidlib/entity/mime/Header;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/entity/mime/Header;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->header:Lch/boye/httpclientandroidlib/entity/mime/Header;

    .line 58
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->generateContentDisp(Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;)V

    .line 59
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->generateContentType(Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;)V

    .line 60
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->generateTransferEncoding(Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->header:Lch/boye/httpclientandroidlib/entity/mime/Header;

    new-instance v1, Lch/boye/httpclientandroidlib/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lch/boye/httpclientandroidlib/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/mime/Header;->addField(Lch/boye/httpclientandroidlib/entity/mime/MinimalField;)V

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateContentDisp(Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;)V
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "; filename=\""

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateContentType(Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/entity/mime/content/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/entity/mime/content/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; charset="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/entity/mime/content/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateTransferEncoding(Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;)V
    .locals 1

    .line 106
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/entity/mime/content/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;
    .locals 1

    .line 68
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->body:Lch/boye/httpclientandroidlib/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lch/boye/httpclientandroidlib/entity/mime/Header;
    .locals 1

    .line 72
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->header:Lch/boye/httpclientandroidlib/entity/mime/Header;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
