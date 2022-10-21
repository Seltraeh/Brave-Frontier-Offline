.class Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;
.super Ljava/lang/Object;
.source "ManagedClientConnectionImpl.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private volatile duration:J

.field private final manager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

.field private final operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

.field private volatile poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

.field private volatile reusable:Z


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 77
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->manager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 78
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    .line 79
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    const-wide p1, 0x7fffffffffffffffL

    .line 81
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->duration:J

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP pool entry may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection operator may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection manager may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .locals 1

    .line 107
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method private ensurePoolEntry()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;
    .locals 1

    .line 115
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method private getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .locals 1

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    return-object v0
.end method


# virtual methods
.method public abortConnection()V
    .locals 4

    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    .line 455
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    .line 458
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :try_start_1
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :catch_0
    :try_start_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->manager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 465
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 126
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->reset()V

    .line 127
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V

    :cond_0
    return-void
.end method

.method detach()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;
    .locals 2

    .line 89
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpClientConnection;->flush()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 242
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 243
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 244
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 207
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 212
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 1

    .line 95
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->manager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
    .locals 1

    .line 169
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;
    .locals 1

    .line 85
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 217
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 222
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1

    .line 267
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getEffectiveRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .line 232
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 235
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 164
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .line 413
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isMarkedReusable()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 141
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 180
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->isResponseAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isSecure()Z
    .locals 1

    .line 227
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 1

    .line 150
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isStale()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isLayered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 400
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    invoke-interface {v2, v1, v0, p1, p2}, Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;->updateSecureConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 403
    monitor-enter p0

    .line 404
    :try_start_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object p1

    .line 408
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layerProtocol(Z)V

    .line 409
    monitor-exit p0

    return-void

    .line 405
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 409
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 396
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Multiple protocol layering not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Protocol layering without a tunnel not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_4
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 400
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 380
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markReusable()V
    .locals 1

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method

.method public open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v7

    .line 294
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    if-eqz v7, :cond_0

    move-object v3, v7

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v2

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object v2, v0

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;->openConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 300
    monitor-enter p0

    .line 301
    :try_start_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz p1, :cond_2

    .line 304
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object p1

    if-nez v7, :cond_1

    .line 306
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connectTarget(Z)V

    goto :goto_1

    .line 308
    :cond_1
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, v7, p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connectProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V

    .line 310
    :goto_1
    monitor-exit p0

    return-void

    .line 302
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 310
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 288
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection already open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_4
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 291
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 279
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 186
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnection()V
    .locals 4

    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    .line 445
    monitor-exit p0

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->manager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 449
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 251
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 252
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 197
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 203
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 260
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 261
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 262
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 436
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->duration:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 438
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->duration:J

    :goto_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .line 159
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 160
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1

    .line 418
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 135
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->reset()V

    .line 136
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpConnection;->shutdown()V

    :cond_0
    return-void
.end method

.method public tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 364
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 366
    invoke-interface {v0, v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 368
    monitor-enter p0

    .line 369
    :try_start_1
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz p3, :cond_0

    .line 372
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object p3

    .line 373
    invoke-virtual {p3, p1, p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V

    .line 374
    monitor-exit p0

    return-void

    .line 370
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 374
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 361
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_2
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 364
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 352
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Next proxy amy not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 333
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 335
    invoke-interface {v1, v2, v0, p1, p2}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 337
    monitor-enter p0

    .line 338
    :try_start_1
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz p2, :cond_0

    .line 341
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object p2

    .line 342
    invoke-virtual {p2, p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelTarget(Z)V

    .line 343
    monitor-exit p0

    return-void

    .line 339
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 343
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 329
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is already tunnelled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_3
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 333
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 316
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unmarkReusable()V
    .locals 1

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method
