.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected final alwaysShutDown:Z

.field protected final connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

.field protected volatile connectionExpiresTime:J
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected volatile isShutDown:Z

.field protected volatile lastReleaseTime:J
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected volatile managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

.field protected volatile uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-eqz p1, :cond_0

    .line 124
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    .line 125
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    .line 126
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p1, p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    const-wide/16 v0, -0x1

    .line 128
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 130
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scheme registry must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
    .locals 0

    .line 112
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method protected final assertStillUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 176
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeExpiredConnections()V
    .locals 5

    .line 317
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const-wide/16 v0, 0x0

    .line 319
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 324
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V

    if-eqz p3, :cond_1

    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 335
    iget-wide p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    .line 337
    :try_start_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 340
    :try_start_2
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p3, "Problem closing idle connection."

    invoke-virtual {p2, p3, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 344
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 328
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Time unit must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
    .locals 1

    .line 167
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

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .locals 3

    if-eqz p1, :cond_7

    .line 211
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 213
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 214
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get connection for route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 217
    :cond_0
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez p2, :cond_6

    .line 226
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    .line 228
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object p2, p2, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 229
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object p2, p2, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-eqz p2, :cond_2

    .line 230
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object p2

    invoke-virtual {p2, p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    move v1, p2

    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    const/4 p2, 0x1

    :goto_2
    if-eqz v1, :cond_4

    .line 244
    :try_start_1
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 246
    :try_start_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Problem shutting down connection."

    invoke-virtual {v1, v2, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move v0, p2

    :goto_3
    if-eqz v0, :cond_5

    .line 251
    new-instance p2, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p2, p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    .line 253
    :cond_5
    new-instance p2, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p2, p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 255
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    monitor-exit p0

    return-object p1

    .line 219
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 256
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 209
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
    .locals 1

    .line 150
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 262
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 264
    instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v0, :cond_b

    .line 270
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 274
    :cond_0
    check-cast p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 275
    monitor-enter p1

    .line 276
    :try_start_0
    iget-object v0, p1, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    if-nez v0, :cond_1

    .line 277
    monitor-exit p1

    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_3

    if-ne v0, p0, :cond_2

    goto :goto_0

    .line 280
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Connection not obtained from this manager."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :cond_3
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 285
    :try_start_1
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isMarkedReusable()Z

    move-result v5

    if-nez v5, :cond_6

    .line 288
    :cond_4
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v6, "Released connection open but not reusable."

    invoke-virtual {v5, v6}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 296
    :cond_5
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 304
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 305
    :try_start_3
    iput-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v4, p2, v2

    if-lez v4, :cond_7

    .line 308
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_1

    .line 310
    :cond_7
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 311
    :goto_1
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_1
    move-exception v5

    goto :goto_4

    :catch_0
    move-exception v5

    .line 299
    :try_start_5
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 300
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v7, "Exception shutting down released connection."

    invoke-virtual {v6, v7, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 303
    :cond_8
    :try_start_6
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 304
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 305
    :try_start_7
    iput-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v4, p2, v2

    if-lez v4, :cond_9

    .line 308
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_2

    .line 310
    :cond_9
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 311
    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 313
    :goto_3
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return-void

    :catchall_2
    move-exception p2

    .line 311
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p2

    .line 303
    :goto_4
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 304
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 305
    :try_start_b
    iput-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v4, p2, v2

    if-lez v4, :cond_a

    .line 308
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_5

    .line 310
    :cond_a
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 311
    :goto_5
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_3
    move-exception p2

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p2

    :catchall_4
    move-exception p2

    .line 313
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw p2

    .line 265
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
    .locals 1

    .line 184
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected revokeConnection()V
    .locals 3

    .line 364
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 369
    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 374
    :try_start_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Problem while shutting down connection."

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 376
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 4

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 349
    monitor-enter p0

    const/4 v0, 0x0

    .line 351
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    :cond_0
    :try_start_1
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    .line 358
    :goto_0
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 355
    :try_start_2
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Problem while shutting down manager."

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    :try_start_3
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    goto :goto_0

    .line 360
    :goto_1
    monitor-exit p0

    return-void

    .line 357
    :goto_2
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    .line 358
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    throw v1

    .line 360
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
