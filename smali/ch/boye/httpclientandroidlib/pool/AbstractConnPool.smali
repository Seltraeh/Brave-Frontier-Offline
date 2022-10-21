.class public abstract Lch/boye/httpclientandroidlib/pool/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/pool/ConnPool;
.implements Lch/boye/httpclientandroidlib/pool/ConnPoolControl;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "E:",
        "Lch/boye/httpclientandroidlib/pool/PoolEntry<",
        "TT;TC;>;>",
        "Ljava/lang/Object;",
        "Lch/boye/httpclientandroidlib/pool/ConnPool<",
        "TT;TE;>;",
        "Lch/boye/httpclientandroidlib/pool/ConnPoolControl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final available:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final connFactory:Lch/boye/httpclientandroidlib/pool/ConnFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/boye/httpclientandroidlib/pool/ConnFactory<",
            "TT;TC;>;"
        }
    .end annotation
.end field

.field private volatile defaultMaxPerRoute:I

.field private volatile isShutDown:Z

.field private final leased:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final maxPerRoute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile maxTotal:I

.field private final pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lch/boye/httpclientandroidlib/pool/PoolEntryFuture<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lch/boye/httpclientandroidlib/pool/RouteSpecificPool<",
            "TT;TC;TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/pool/ConnFactory;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/pool/ConnFactory<",
            "TT;TC;>;II)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    if-lez p3, :cond_0

    .line 91
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    .line 92
    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->connFactory:Lch/boye/httpclientandroidlib/pool/ConnFactory;

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    .line 94
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    .line 95
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    .line 96
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    .line 98
    iput p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->defaultMaxPerRoute:I

    .line 99
    iput p3, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->maxTotal:I

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max total value may not be negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max per route value may not be negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection factory may not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lch/boye/httpclientandroidlib/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;)Lch/boye/httpclientandroidlib/pool/PoolEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 62
    invoke-direct/range {p0 .. p6}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;)Lch/boye/httpclientandroidlib/pool/PoolEntry;

    move-result-object p0

    return-object p0
.end method

.method private getMax(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 337
    :cond_0
    iget p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->defaultMaxPerRoute:I

    return p1
.end method

.method private getPool(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lch/boye/httpclientandroidlib/pool/RouteSpecificPool<",
            "TT;TC;TE;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$1;

    invoke-direct {v0, p0, p1, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$1;-><init>(Lch/boye/httpclientandroidlib/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;)Lch/boye/httpclientandroidlib/pool/PoolEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lch/boye/httpclientandroidlib/pool/PoolEntryFuture<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 210
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

    .line 214
    :goto_0
    iget-object p3, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 216
    :try_start_0
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;

    move-result-object p3

    :cond_1
    :goto_1
    if-nez v0, :cond_b

    .line 219
    iget-boolean p4, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->isShutDown:Z

    if-nez p4, :cond_a

    .line 223
    :goto_2
    invoke-virtual {p3, p2}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->getFree(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolEntry;

    move-result-object v0

    const/4 p4, 0x0

    if-nez v0, :cond_2

    goto :goto_3

    .line 227
    :cond_2
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->isClosed()Z

    move-result p5

    if-nez p5, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->isExpired(J)Z

    move-result p5

    if-eqz p5, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 236
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 237
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 242
    :cond_4
    :try_start_1
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result p5

    .line 244
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, p5

    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_6

    .line 247
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->getLastUsed()Lch/boye/httpclientandroidlib/pool/PoolEntry;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_5

    .line 251
    :cond_5
    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->close()V

    .line 252
    iget-object v5, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p3, v4}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->remove(Lch/boye/httpclientandroidlib/pool/PoolEntry;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 257
    :cond_6
    :goto_5
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v2

    if-ge v2, p5, :cond_8

    .line 258
    iget-object p5, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result p5

    .line 259
    iget v2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->maxTotal:I

    sub-int/2addr v2, p5

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    if-lez p4, :cond_8

    .line 261
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    add-int/lit8 p4, p4, -0x1

    if-le p2, p4, :cond_7

    .line 263
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 264
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch/boye/httpclientandroidlib/pool/PoolEntry;

    .line 265
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->close()V

    .line 266
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p4}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;

    move-result-object p4

    .line 267
    invoke-virtual {p4, p2}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->remove(Lch/boye/httpclientandroidlib/pool/PoolEntry;)Z

    .line 270
    :cond_7
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->connFactory:Lch/boye/httpclientandroidlib/pool/ConnFactory;

    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/pool/ConnFactory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 271
    invoke-virtual {p3, p1}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->add(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolEntry;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 279
    :cond_8
    :try_start_2
    invoke-virtual {p3, p6}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->queue(Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;)V

    .line 280
    iget-object p4, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {p4, p6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p6, v1}, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->await(Ljava/util/Date;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    :try_start_3
    invoke-virtual {p3, p6}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->unqueue(Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;)V

    .line 288
    iget-object p5, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {p5, p6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    if-nez p4, :cond_1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, p4, v2

    if-lez v4, :cond_b

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 287
    invoke-virtual {p3, p6}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->unqueue(Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;)V

    .line 288
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {p2, p6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    throw p1

    .line 228
    :cond_9
    :goto_6
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->close()V

    .line 229
    iget-object p5, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p5, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p3, v0, p4}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->free(Lch/boye/httpclientandroidlib/pool/PoolEntry;Z)V

    goto/16 :goto_2

    .line 220
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection pool shut down"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_b
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Timeout waiting for connection"

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 298
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private notifyPending(Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/pool/RouteSpecificPool<",
            "TT;TC;TE;>;)V"
        }
    .end annotation

    .line 303
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->nextPending()Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;

    :goto_0
    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->wakeup()V

    :cond_1
    return-void
.end method


# virtual methods
.method public closeExpired()V
    .locals 5

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 479
    iget-object v2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 481
    :try_start_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 482
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/pool/PoolEntry;

    .line 484
    invoke-virtual {v3, v0, v1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->isExpired(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->close()V

    .line 486
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;

    move-result-object v4

    .line 487
    invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->remove(Lch/boye/httpclientandroidlib/pool/PoolEntry;)Z

    .line 488
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 489
    invoke-direct {p0, v4}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->notifyPending(Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public closeIdle(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    if-eqz p3, :cond_3

    .line 451
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    move-wide p1, v0

    .line 455
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 456
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 458
    :try_start_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 459
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 460
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch/boye/httpclientandroidlib/pool/PoolEntry;

    .line 461
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getUpdated()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-gtz p3, :cond_1

    .line 462
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->close()V

    .line 463
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;

    move-result-object p3

    .line 464
    invoke-virtual {p3, p2}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->remove(Lch/boye/httpclientandroidlib/pool/PoolEntry;)Z

    .line 465
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 466
    invoke-direct {p0, p3}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->notifyPending(Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 470
    :cond_2
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 449
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Time unit must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected abstract createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TC;)TE;"
        }
    .end annotation
.end method

.method public getDefaultMaxPerRoute()I
    .locals 2

    .line 375
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 377
    :try_start_0
    iget v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->defaultMaxPerRoute:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getMaxPerRoute(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 404
    :try_start_0
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 400
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Route may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxTotal()I
    .locals 2

    .line 354
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    :try_start_0
    iget v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->maxTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getStats(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolStats;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lch/boye/httpclientandroidlib/pool/PoolStats;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 429
    :try_start_0
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;

    move-result-object v0

    .line 430
    new-instance v1, Lch/boye/httpclientandroidlib/pool/PoolStats;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->getLeasedCount()I

    move-result v2

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->getPendingCount()I

    move-result v3

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->getAvailableCount()I

    move-result v0

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, v2, v3, v0, p1}, Lch/boye/httpclientandroidlib/pool/PoolStats;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 425
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Route may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTotalStats()Lch/boye/httpclientandroidlib/pool/PoolStats;
    .locals 5

    .line 411
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 413
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/pool/PoolStats;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->maxTotal:I

    invoke-direct {v0, v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/pool/PoolStats;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->isShutDown:Z

    return v0
.end method

.method public lease(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lch/boye/httpclientandroidlib/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public lease(Ljava/lang/Object;Ljava/lang/Object;Lch/boye/httpclientandroidlib/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lch/boye/httpclientandroidlib/concurrent/FutureCallback<",
            "TE;>;)",
            "Ljava/util/concurrent/Future<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 166
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->isShutDown:Z

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;-><init>(Lch/boye/httpclientandroidlib/pool/AbstractConnPool;Ljava/util/concurrent/locks/Lock;Lch/boye/httpclientandroidlib/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection pool shut down"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release(Lch/boye/httpclientandroidlib/pool/PoolEntry;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 317
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->free(Lch/boye/httpclientandroidlib/pool/PoolEntry;Z)V

    if-eqz p2, :cond_0

    .line 320
    iget-boolean p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->isShutDown:Z

    if-nez p2, :cond_0

    .line 321
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->close()V

    .line 325
    :goto_0
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->notifyPending(Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public bridge synthetic release(Ljava/lang/Object;Z)V
    .locals 0

    .line 61
    check-cast p1, Lch/boye/httpclientandroidlib/pool/PoolEntry;

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->release(Lch/boye/httpclientandroidlib/pool/PoolEntry;Z)V

    return-void
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 366
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 368
    :try_start_0
    iput p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->defaultMaxPerRoute:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 364
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max value may not be negative or zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    .line 390
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 392
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 388
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max value may not be negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxTotal(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 345
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 347
    :try_start_0
    iput p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->maxTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max value may not be negative or zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->isShutDown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->isShutDown:Z

    .line 119
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/pool/PoolEntry;

    .line 122
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->close()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/pool/PoolEntry;

    .line 125
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->close()V

    goto :goto_1

    .line 127
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;

    .line 128
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/pool/RouteSpecificPool;->shutdown()V

    goto :goto_2

    .line 130
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 132
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[leased: "

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][available: "

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][pending: "

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
