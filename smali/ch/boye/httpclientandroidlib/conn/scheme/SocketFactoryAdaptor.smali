.class Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SocketFactoryAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;
        }
    .end annotation

    if-nez p4, :cond_1

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    if-gez p5, :cond_2

    const/4 p5, 0x0

    .line 69
    :cond_2
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p4, v0

    .line 71
    :goto_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 72
    new-instance p5, Ljava/net/InetSocketAddress;

    invoke-direct {p5, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 73
    iget-object p2, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {p2, p1, p5, p4, p6}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 55
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
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

    .line 88
    :cond_1
    instance-of v0, p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    check-cast p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;

    iget-object p1, p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 91
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;
    .locals 1

    .line 81
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

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

    .line 77
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p1

    return p1
.end method
