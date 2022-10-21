.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field protected final dnsResolver:Lch/boye/httpclientandroidlib/conn/DnsResolver;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    .line 110
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/conn/SystemDefaultDnsResolver;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lch/boye/httpclientandroidlib/conn/DnsResolver;

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scheme registry amy not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;Lch/boye/httpclientandroidlib/conn/DnsResolver;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 132
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    .line 133
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lch/boye/httpclientandroidlib/conn/DnsResolver;

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DNS resolver may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scheme registry may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .locals 1

    .line 137
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    if-eqz v2, :cond_b

    if-eqz v3, :cond_a

    if-eqz v5, :cond_9

    .line 155
    invoke-interface/range {p1 .. p1}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 159
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getSchemeSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    move-result-object v6

    .line 162
    invoke-virtual/range {p2 .. p2}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    .line 163
    invoke-virtual/range {p2 .. p2}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v8

    invoke-virtual {v0, v8}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->resolvePort(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 164
    :goto_0
    array-length v0, v7

    if-ge v10, v0, :cond_7

    .line 165
    aget-object v0, v7, v10

    .line 166
    array-length v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    .line 168
    :goto_1
    invoke-interface {v6, v5}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v11

    .line 169
    invoke-interface {v2, v11, v3}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;)V

    .line 171
    new-instance v13, Lch/boye/httpclientandroidlib/conn/HttpInetSocketAddress;

    invoke-direct {v13, v3, v0, v8}, Lch/boye/httpclientandroidlib/conn/HttpInetSocketAddress;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;I)V

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    .line 174
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v4, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 176
    :cond_1
    iget-object v14, v1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v14}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 177
    iget-object v14, v1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connecting to "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 180
    :cond_2
    :try_start_0
    invoke-interface {v6, v11, v13, v0, v5}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    if-eq v11, v0, :cond_3

    .line 183
    invoke-interface {v2, v0, v3}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v9, p4

    move-object v11, v0

    goto :goto_2

    :cond_3
    move-object/from16 v9, p4

    .line 185
    :goto_2
    :try_start_1
    invoke-virtual {v1, v11, v9, v5}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 186
    invoke-interface {v6, v11}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {v2, v0, v5}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->openCompleted(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v9, p4

    :goto_3
    if-nez v12, :cond_4

    goto :goto_5

    .line 194
    :cond_4
    throw v0

    :catch_3
    move-exception v0

    move-object/from16 v9, p4

    :goto_4
    if-nez v12, :cond_6

    .line 197
    :goto_5
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connect to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " timed out. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "Connection will be retried using another IP address"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 190
    :cond_6
    new-instance v2, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;

    invoke-direct {v2, v3, v0}, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/ConnectException;)V

    throw v2

    :cond_7
    return-void

    .line 156
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Connection must not be open"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameters may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target host may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method protected prepareSocket(Ljava/net/Socket;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 255
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 257
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getLinger(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result p2

    if-ltz p2, :cond_1

    if-lez p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 259
    :goto_0
    invoke-virtual {p1, p3, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_1
    return-void
.end method

.method protected resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lch/boye/httpclientandroidlib/conn/DnsResolver;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method public updateSecureConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p4, :cond_2

    .line 218
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getSchemeSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    move-result-object v1

    instance-of v1, v1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactory;

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getSchemeSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactory;

    .line 232
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->resolvePort(I)I

    move-result v0

    invoke-interface {v1, v2, v3, v0, p4}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    invoke-virtual {p0, v0, p3, p4}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 238
    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p3

    invoke-interface {p1, v0, p2, p3, p4}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void

    :catch_0
    move-exception p1

    .line 235
    new-instance p3, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;

    invoke-direct {p3, p2, p1}, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/ConnectException;)V

    throw p3

    .line 224
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Target scheme ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") must have layered socket factory."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection must be open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target host may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
