.class public Lch/boye/httpclientandroidlib/message/BasicHttpRequest;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "BasicHttpRequest.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequest;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field private requestline:Lch/boye/httpclientandroidlib/RequestLine;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/RequestLine;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    if-eqz p1, :cond_0

    .line 100
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    .line 101
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->method:Ljava/lang/String;

    .line 102
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->uri:Ljava/lang/String;

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request line may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 73
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->method:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->uri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request URI may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Method name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V
    .locals 1

    .line 87
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V

    return-void
.end method


# virtual methods
.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
    .locals 4

    .line 125
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    .line 127
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicRequestLine;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->method:Ljava/lang/String;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->uri:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    .line 129
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
