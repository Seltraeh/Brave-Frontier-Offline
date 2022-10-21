.class public Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;
.super Ljava/lang/Object;
.source "BasicClientConnectionManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field private conn:Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

.field private volatile shutdown:Z
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    .line 103
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scheme registry may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertNotShutdown()V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->shutdown:Z

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection manager has been shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shutdownConnection(Lch/boye/httpclientandroidlib/HttpClientConnection;)V
    .locals 2

    .line 185
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpConnection;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "I/O exception shutting down connection"

    invoke-virtual {v0, v1, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 3

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->close()V

    .line 246
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->reset()V

    .line 248
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    if-eqz p3, :cond_2

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    .line 257
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    move-wide p1, v0

    .line 261
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 262
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getUpdated()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    .line 263
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->close()V

    .line 264
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object p1

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->reset()V

    .line 266
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 253
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Time unit must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
    .locals 1

    .line 124
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .locals 10

    if-eqz p1, :cond_5

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    .line 158
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 159
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get connection for route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 161
    :cond_0
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->conn:Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    if-nez p2, :cond_4

    .line 164
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object p2

    invoke-virtual {p2, p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 165
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->close()V

    const/4 p2, 0x0

    .line 166
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 168
    :cond_1
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-nez p2, :cond_2

    .line 169
    sget-object p2, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 170
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;->createConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v6

    .line 171
    new-instance p2, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-wide/16 v7, 0x0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Ljava/lang/String;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 173
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 174
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->isExpired(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->close()V

    .line 176
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    move-result-object p1

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->reset()V

    .line 178
    :cond_3
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-direct {p1, p0, p2, v0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->conn:Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    .line 179
    monitor-exit p0

    return-object p1

    .line 162
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 154
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
    .locals 1

    .line 120
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .line 194
    instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    if-eqz v0, :cond_b

    .line 198
    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    .line 199
    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 203
    :cond_0
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    move-result-object p1

    if-nez p1, :cond_1

    .line 204
    monitor-exit v0

    return-void

    .line 206
    :cond_1
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object p1

    if-eqz p1, :cond_3

    if-ne p1, p0, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection not obtained from this manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_3
    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 211
    :try_start_1
    iget-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->shutdown:Z

    if-eqz p1, :cond_4

    .line 212
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->shutdownConnection(Lch/boye/httpclientandroidlib/HttpClientConnection;)V

    .line 213
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 216
    :try_start_3
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 217
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->shutdownConnection(Lch/boye/httpclientandroidlib/HttpClientConnection;)V

    .line 219
    :cond_5
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz p4, :cond_6

    move-object v2, p4

    goto :goto_1

    :cond_6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_1
    invoke-virtual {v1, p2, p3, v2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    .line 220
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_7

    .line 223
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

    :cond_7
    const-string p2, "indefinitely"

    .line 227
    :goto_2
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection can be kept alive "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    :cond_8
    :try_start_4
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->detach()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 231
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->conn:Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    .line 232
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 233
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 236
    :cond_9
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_0
    move-exception p2

    .line 230
    :try_start_6
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;->detach()Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 231
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->conn:Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    .line 232
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->isClosed()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 233
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    :cond_a
    throw p2

    :catchall_1
    move-exception p1

    .line 236
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :catchall_2
    move-exception p1

    .line 237
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    .line 195
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection class mismatch, connection not obtained from this manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
    .locals 1

    .line 131
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    .line 270
    monitor-enter p0

    const/4 v0, 0x1

    .line 271
    :try_start_0
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 273
    :try_start_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :cond_0
    :try_start_2
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 278
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->conn:Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 277
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    .line 278
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->conn:Lch/boye/httpclientandroidlib/impl/conn/ManagedClientConnectionImpl;

    throw v1

    :catchall_1
    move-exception v0

    .line 280
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
