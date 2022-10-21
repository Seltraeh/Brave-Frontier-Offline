.class public Lch/boye/httpclientandroidlib/impl/client/SystemDefaultHttpClient;
.super Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
.source "SystemDefaultHttpClient.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createClientConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 3

    .line 118
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createSystemDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    const-string v1, "http.keepAlive"

    const-string v2, "true"

    .line 120
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http.maxConnections"

    const-string v2, "5"

    .line 122
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->setDefaultMaxPerRoute(I)V

    mul-int/lit8 v1, v1, 0x2

    .line 125
    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->setMaxTotal(I)V

    :cond_0
    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .locals 2

    const-string v0, "http.keepAlive"

    const-string v1, "true"

    .line 138
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/NoConnectionReuseStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/NoConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .locals 3

    .line 132
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    return-object v0
.end method
