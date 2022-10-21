.class public Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;
.super Ljava/lang/Object;
.source "PoolingClientConnectionManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
.implements Lch/boye/httpclientandroidlib/pool/ConnPoolControl;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;",
        "Lch/boye/httpclientandroidlib/pool/ConnPoolControl<",
        "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
        ">;"
    }
.end annotation


# instance fields
.field private final dnsResolver:Lch/boye/httpclientandroidlib/conn/DnsResolver;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

.field private final pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

.field private final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
    .locals 3

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    .line 99
    new-instance v5, Lch/boye/httpclientandroidlib/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {v5}, Lch/boye/httpclientandroidlib/impl/conn/SystemDefaultDnsResolver;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/conn/DnsResolver;)V
    .locals 7

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    .line 112
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    .line 113
    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->dnsResolver:Lch/boye/httpclientandroidlib/conn/DnsResolver;

    .line 114
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    .line 115
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const/4 v2, 0x2

    const/16 v3, 0x14

    move-object v0, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;IIJLjava/util/concurrent/TimeUnit;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DNS resolver may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scheme registry may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;Lch/boye/httpclientandroidlib/conn/DnsResolver;)V
    .locals 6

    .line 89
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/conn/DnsResolver;)V

    return-void
.end method

.method private format(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[route: "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "[state: "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;)Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[route: "

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "[state: "

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatStats(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Ljava/lang/String;
    .locals 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getTotalStats()Lch/boye/httpclientandroidlib/pool/PoolStats;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v2, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getStats(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolStats;

    move-result-object p1

    const-string v2, "[total kept alive: "

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/PoolStats;->getAvailable()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "route allocated: "

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolStats;->getLeased()I

    move-result v3

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolStats;->getAvailable()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolStats;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "total allocated: "

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/PoolStats;->getLeased()I

    move-result p1

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/PoolStats;->getAvailable()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/PoolStats;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 2

    .line 304
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Closing expired connections"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->closeExpired()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connections idle longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->closeIdle(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
    .locals 2

    .line 140
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->dnsResolver:Lch/boye/httpclientandroidlib/conn/DnsResolver;

    invoke-direct {v0, p1, v1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;Lch/boye/httpclientandroidlib/conn/DnsResolver;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    .line 317
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getMaxPerRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
    .locals 1

    .line 325
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    .line 70
    check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->getMaxPerRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    .line 309
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getMaxTotal()I

    move-result v0

    return v0
.end method

.method public getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
    .locals 1

    .line 144
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public getStats(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Lch/boye/httpclientandroidlib/pool/PoolStats;
    .locals 1

    .line 337
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getStats(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolStats;
    .locals 0

    .line 70
    check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->getStats(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Lch/boye/httpclientandroidlib/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lch/boye/httpclientandroidlib/pool/PoolStats;
    .locals 1

    .line 333
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getTotalStats()Lch/boye/httpclientandroidlib/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 212
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz p2, :cond_2

    .line 213
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 216
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connection leased: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->format(Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-direct {p0, p4}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->formatStats(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 222
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    invoke-direct {p1, p0, p3, p2}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;)V

    return-object p1

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Pool entry with no connection"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :catch_0
    new-instance p1, Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;

    const-string p2, "Timeout waiting for connection from pool"

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, p2

    .line 228
    :goto_0
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p3, "Unexpected exception leasing connection from pool"

    invoke-virtual {p2, p3, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 230
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .line 239
    instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    if-eqz v0, :cond_7

    .line 244
    check-cast p1, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    .line 245
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    if-ne v0, p0, :cond_6

    .line 249
    monitor-enter p1

    .line 250
    :try_start_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->detach()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 252
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 255
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 257
    :try_start_2
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 259
    :try_start_3
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "I/O exception shutting down released connection"

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 265
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p4, :cond_2

    move-object v1, p4

    goto :goto_1

    .line 266
    :cond_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_1
    invoke-virtual {v0, p2, p3, v1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    .line 267
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_3

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    const-string p2, "indefinitely"

    .line 274
    :goto_2
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->format(Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can be kept alive "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    :cond_4
    :try_start_4
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result p3

    invoke-virtual {p2, v0, p3}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->release(Lch/boye/httpclientandroidlib/pool/PoolEntry;Z)V

    .line 280
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 281
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connection released: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->format(Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-direct {p0, p4}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->formatStats(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 283
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 278
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result p4

    invoke-virtual {p3, v0, p4}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->release(Lch/boye/httpclientandroidlib/pool/PoolEntry;Z)V

    throw p2

    :catchall_1
    move-exception p2

    .line 283
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    .line 246
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection not obtained from this manager."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
    .locals 3

    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->format(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->formatStats(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 190
    new-instance p2, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager$1;

    invoke-direct {p2, p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;Ljava/util/concurrent/Future;)V

    return-object p2

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP route may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    .line 321
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setMaxPerRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    .line 70
    check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->setMaxPerRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    .line 313
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->setMaxTotal(I)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 287
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection manager is shutting down"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 289
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O exception shutting down connection manager"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 293
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection manager shut down"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void
.end method
