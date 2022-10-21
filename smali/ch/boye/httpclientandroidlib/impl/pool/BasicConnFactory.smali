.class public Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;
.super Ljava/lang/Object;
.source "BasicConnFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/pool/ConnFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lch/boye/httpclientandroidlib/pool/ConnFactory<",
        "Lch/boye/httpclientandroidlib/HttpHost;",
        "Lch/boye/httpclientandroidlib/HttpClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final params:Lch/boye/httpclientandroidlib/params/HttpParams;

.field private final sslfactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 72
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 73
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP params may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public create(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/HttpClientConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "https"

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v0

    .line 100
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 103
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result p1

    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 104
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-virtual {p0, v1, p1}, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;->create(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/HttpClientConnection;

    move-result-object p1

    return-object p1

    .line 97
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " scheme is not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected create(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/HttpClientConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpClientConnection;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpClientConnection;-><init>()V

    .line 82
    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/DefaultHttpClientConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    check-cast p1, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;->create(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/HttpClientConnection;

    move-result-object p1

    return-object p1
.end method
