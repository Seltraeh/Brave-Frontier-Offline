.class Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 63
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p3

    move-object v4, p2

    move v5, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object v4, p2

    const/4 v5, 0x0

    .line 65
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 84
    :cond_1
    instance-of v0, p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    check-cast p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    iget-object p1, p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 87
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFactory()Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;
    .locals 1

    .line 77
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p1

    return p1
.end method
