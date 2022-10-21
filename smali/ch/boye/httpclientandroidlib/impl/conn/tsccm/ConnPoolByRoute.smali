.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
.super Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;
.source "ConnPoolByRoute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

.field private final connTTL:J

.field private final connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;

.field protected final freeConnections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final leasedConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected volatile maxTotalConnections:I

.field protected volatile numConnections:I

.field protected final operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

.field private final poolLock:Ljava/util/concurrent/locks/Lock;

.field protected final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile shutdown:Z

.field protected final waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;I)V
    .locals 7

    .line 112
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;-><init>()V

    .line 71
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    .line 132
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->leasedConnections:Ljava/util/Set;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    .line 133
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    .line 134
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    .line 135
    iput p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    .line 136
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createFreeConnQueue()Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    .line 137
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createWaitingThreadQueue()Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    .line 138
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createRouteToPoolMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    .line 139
    iput-wide p4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connTTL:J

    .line 140
    iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connections per route may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection operator may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1

    .line 153
    invoke-static {p2}, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->getMaxConnectionsPerRoute(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    move-result-object v0

    invoke-static {p2}, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->getMaxTotalConnections(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;I)V

    return-void
.end method

.method static synthetic access$000(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 69
    iget-object p0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 2

    .line 217
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "I/O error closing connection"

    invoke-virtual {v0, v1, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 9

    .line 749
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Closing expired connections"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 752
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 754
    :try_start_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 755
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    .line 757
    invoke-virtual {v3, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->isExpired(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 758
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Closing connection expired @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getExpiry()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 761
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 762
    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    if-eqz p3, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 724
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

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

    .line 728
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 729
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 731
    :try_start_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 732
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 733
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    .line 734
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getUpdated()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-gtz p3, :cond_2

    .line 735
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 736
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing connection last used @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getUpdated()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 738
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 739
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 743
    :cond_4
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 719
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Time unit must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected createEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
    .locals 8

    .line 548
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new connection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 553
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v4

    iget-wide v5, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connTTL:J

    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V

    .line 555
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 557
    :try_start_0
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->createdEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V

    .line 558
    iget p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 559
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected createFreeConnQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected createRouteToPoolMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected createWaitingThreadQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public deleteClosedConnections()V
    .locals 3

    .line 694
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 696
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 697
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    .line 699
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 701
    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 4

    .line 581
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 588
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 591
    :try_start_0
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V

    const/4 v1, 0x1

    .line 593
    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 594
    invoke-virtual {v2, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)Z

    .line 595
    iget p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    sub-int/2addr p1, v1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 596
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 597
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected deleteLeastUsedEntry()V
    .locals 2

    .line 611
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 614
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "No free connection to delete"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_1
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 6

    .line 431
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    const-string v2, "]["

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Releasing connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 437
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 439
    :try_start_0
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z

    if-eqz v1, :cond_1

    .line 442
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 447
    :cond_1
    :try_start_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 449
    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v3

    if-eqz p2, :cond_4

    .line 451
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result p2

    if-ltz p2, :cond_4

    .line 452
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 v4, 0x0

    cmp-long p2, p3, v4

    if-lez p2, :cond_2

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, "indefinitely"

    .line 459
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pooling connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]; keep alive "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 462
    :cond_3
    invoke-virtual {v3, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V

    .line 463
    invoke-virtual {p1, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    .line 464
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 466
    :cond_4
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V

    .line 467
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 468
    iget p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    sub-int/2addr p1, v1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 471
    :goto_1
    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getConnectionsInPool()I
    .locals 2

    .line 269
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 271
    :try_start_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getConnectionsInPool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
    .locals 1

    .line 257
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 260
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getEntryCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected getEntryBlocking(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 331
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    add-long/2addr v2, p3

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 336
    :goto_0
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 p3, 0x1

    .line 339
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    move-result-object p4

    move-object p5, v0

    :cond_1
    :goto_1
    if-nez v0, :cond_c

    .line 344
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z

    if-nez v0, :cond_b

    .line 348
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, " out of "

    if-eqz v0, :cond_2

    .line 349
    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] total kept alive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", total issued: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", total allocated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 360
    :cond_2
    invoke-virtual {p0, p4, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getFreeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 365
    :cond_3
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 367
    :goto_2
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "]"

    const-string v6, "]["

    if-eqz v4, :cond_5

    .line 368
    :try_start_2
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Available capacity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getMaxEntries()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 373
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    if-ge v2, v4, :cond_6

    .line 375
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    invoke-virtual {p0, p4, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    if-eqz v3, :cond_7

    .line 377
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 379
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteLeastUsedEntry()V

    .line 382
    invoke-virtual {p0, p1, p3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    move-result-object p4

    .line 383
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    invoke-virtual {p0, p4, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    goto/16 :goto_1

    .line 387
    :cond_7
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 388
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to wait for connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_8
    if-nez p5, :cond_9

    .line 393
    iget-object p5, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p5

    invoke-virtual {p0, p5, p4}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->newWaitingThread(Ljava/util/concurrent/locks/Condition;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    move-result-object p5

    .line 395
    invoke-virtual {p6, p5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;->setWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 400
    :cond_9
    :try_start_3
    invoke-virtual {p4, p5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->queueThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V

    .line 401
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v2, p5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p5, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->await(Ljava/util/Date;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 409
    :try_start_4
    invoke-virtual {p4, p5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V

    .line 410
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v3, p5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_a

    goto/16 :goto_1

    .line 416
    :cond_a
    new-instance p1, Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;

    const-string p2, "Timeout waiting for connection from pool"

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 409
    invoke-virtual {p4, p5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V

    .line 410
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {p2, p5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    throw p1

    .line 345
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection pool shut down"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 423
    :cond_c
    :goto_3
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected getFreeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
    .locals 8

    .line 489
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 494
    :try_start_0
    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->allocEntry(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "]"

    const-string v4, "]["

    if-eqz v2, :cond_3

    .line 497
    :try_start_1
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 498
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting free connection ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 502
    :cond_0
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v5, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->isExpired(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 506
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing expired free connection ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 509
    :cond_1
    invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V

    .line 513
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 514
    iget v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    sub-int/2addr v3, v1

    iput v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 522
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No free connections ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 529
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_5
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2
.end method

.method protected getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 144
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public getMaxTotalConnections()I
    .locals 1

    .line 832
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    return v0
.end method

.method protected getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
    .locals 1

    .line 239
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->newRouteSpecificPool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 246
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected handleLostEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 3

    .line 630
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 633
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    .line 634
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 635
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_0
    iget p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    sub-int/2addr p1, v0

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 640
    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected newRouteSpecificPool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
    .locals 2

    .line 198
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    invoke-direct {v0, p1, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;-><init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;)V

    return-object v0
.end method

.method protected newWaitingThread(Ljava/util/concurrent/locks/Condition;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
    .locals 1

    .line 213
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;-><init>(Ljava/util/concurrent/locks/Condition;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V

    return-object v0
.end method

.method protected notifyWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 3

    .line 664
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_1

    .line 667
    :try_start_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying thread waiting on pool ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 672
    :cond_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->nextThread()Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    move-result-object p1

    goto :goto_0

    .line 673
    :cond_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 674
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 675
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "Notifying thread waiting on any pool"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 677
    :cond_2
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    goto :goto_0

    .line 678
    :cond_3
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 679
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "Notifying no-one, there are no waiting threads"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 683
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_5
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public requestPoolEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;
    .locals 2

    .line 282
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    .line 284
    new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v1
.end method

.method public setMaxTotalConnections(I)V
    .locals 1

    .line 819
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 821
    :try_start_0
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public shutdown()V
    .locals 5

    .line 772
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 774
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 777
    :try_start_1
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z

    .line 780
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 781
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    .line 783
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 784
    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V

    goto :goto_0

    .line 788
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 789
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 793
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 797
    :cond_2
    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V

    goto :goto_1

    .line 801
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 802
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 803
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    .line 804
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 805
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->wakeup()V

    goto :goto_2

    .line 808
    :cond_4
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
