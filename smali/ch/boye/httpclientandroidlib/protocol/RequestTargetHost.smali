.class public Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 66
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    .line 67
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONNECT"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Host"

    .line 72
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "http.target_host"

    .line 73
    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v2, :cond_3

    const-string v3, "http.connection"

    .line 76
    invoke-interface {p2, v3}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch/boye/httpclientandroidlib/HttpConnection;

    .line 78
    instance-of v3, p2, Lch/boye/httpclientandroidlib/HttpInetConnection;

    if-eqz v3, :cond_1

    .line 81
    check-cast p2, Lch/boye/httpclientandroidlib/HttpInetConnection;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 82
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getRemotePort()I

    move-result p2

    if-eqz v3, :cond_1

    .line 84
    new-instance v2, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_1
    if-nez v2, :cond_3

    .line 88
    sget-object p1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 91
    :cond_2
    new-instance p1, Lch/boye/httpclientandroidlib/ProtocolException;

    const-string p2, "Target host missing"

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_3
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 63
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
