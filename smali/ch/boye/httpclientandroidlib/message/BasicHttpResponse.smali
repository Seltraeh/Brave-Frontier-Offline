.class public Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponse;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private entity:Lch/boye/httpclientandroidlib/HttpEntity;

.field private locale:Ljava/util/Locale;

.field private reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

.field private statusline:Lch/boye/httpclientandroidlib/StatusLine;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
    .locals 1

    .line 101
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    if-eqz p1, :cond_1

    .line 72
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    .line 73
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    return-void

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status line may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 1

    .line 117
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 122
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1

    .line 107
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected getReason(I)Ljava/lang/String;
    .locals 2

    .line 192
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
    .locals 1

    .line 112
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    return-object v0
.end method

.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 176
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 177
    iget-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    .line 178
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    return-void

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Locale may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Line break in reason phrase."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    :goto_0
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 3

    .line 149
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    .line 150
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/ProtocolVersion;I)V
    .locals 2

    .line 136
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
    .locals 1

    .line 143
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Status line may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
