.class public Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;
.super Ljava/lang/Object;
.source "AIMDBackoffManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/BackoffManager;


# instance fields
.field private backoffFactor:D

.field private cap:I

.field private final clock:Lch/boye/httpclientandroidlib/impl/client/Clock;

.field private final connPerRoute:Lch/boye/httpclientandroidlib/pool/ConnPoolControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/boye/httpclientandroidlib/pool/ConnPoolControl<",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            ">;"
        }
    .end annotation
.end field

.field private coolDown:J

.field private final lastRouteBackoffs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final lastRouteProbes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/pool/ConnPoolControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/pool/ConnPoolControl<",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            ">;)V"
        }
    .end annotation

    .line 73
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/SystemClock;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/SystemClock;-><init>()V

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;-><init>(Lch/boye/httpclientandroidlib/pool/ConnPoolControl;Lch/boye/httpclientandroidlib/impl/client/Clock;)V

    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/pool/ConnPoolControl;Lch/boye/httpclientandroidlib/impl/client/Clock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/pool/ConnPoolControl<",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            ">;",
            "Lch/boye/httpclientandroidlib/impl/client/Clock;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 61
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->coolDown:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 62
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->backoffFactor:D

    const/4 v0, 0x2

    .line 63
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->cap:I

    .line 77
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->clock:Lch/boye/httpclientandroidlib/impl/client/Clock;

    .line 78
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->connPerRoute:Lch/boye/httpclientandroidlib/pool/ConnPoolControl;

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    return-void
.end method

.method private getBackedOffPoolSize(I)I
    .locals 4

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    .line 96
    :cond_0
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->backoffFactor:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private getLastUpdate(Ljava/util/Map;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 114
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public backOff(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 9

    .line 84
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->connPerRoute:Lch/boye/httpclientandroidlib/pool/ConnPoolControl;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->connPerRoute:Lch/boye/httpclientandroidlib/pool/ConnPoolControl;

    invoke-interface {v1, p1}, Lch/boye/httpclientandroidlib/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v1

    .line 86
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->clock:Lch/boye/httpclientandroidlib/impl/client/Clock;

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/impl/client/Clock;->getCurrentTime()J

    move-result-wide v3

    .line 88
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    iget-wide v7, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    monitor-exit v0

    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->connPerRoute:Lch/boye/httpclientandroidlib/pool/ConnPoolControl;

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->getBackedOffPoolSize(I)I

    move-result v1

    invoke-interface {v2, p1, v1}, Lch/boye/httpclientandroidlib/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    .line 90
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public probe(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 10

    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->connPerRoute:Lch/boye/httpclientandroidlib/pool/ConnPoolControl;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->connPerRoute:Lch/boye/httpclientandroidlib/pool/ConnPoolControl;

    invoke-interface {v1, p1}, Lch/boye/httpclientandroidlib/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v1

    .line 102
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->cap:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->cap:I

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 103
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v3, p1}, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v3

    .line 105
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->clock:Lch/boye/httpclientandroidlib/impl/client/Clock;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/impl/client/Clock;->getCurrentTime()J

    move-result-wide v4

    .line 106
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-wide v8, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    iget-wide v6, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->connPerRoute:Lch/boye/httpclientandroidlib/pool/ConnPoolControl;

    invoke-interface {v2, p1, v1}, Lch/boye/httpclientandroidlib/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    .line 109
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v0

    return-void

    .line 107
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBackoffFactor(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gez v2, :cond_0

    .line 132
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->backoffFactor:D

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "backoffFactor must be 0.0 < f < 1.0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCooldownMillis(J)V
    .locals 5

    .line 143
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->coolDown:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 146
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->coolDown:J

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cooldownMillis must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPerHostConnectionCap(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 158
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/AIMDBackoffManager;->cap:I

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "perHostConnectionCap must be >= 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
