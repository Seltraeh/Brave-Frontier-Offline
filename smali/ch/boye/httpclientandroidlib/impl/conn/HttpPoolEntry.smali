.class Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;
.super Lch/boye/httpclientandroidlib/pool/PoolEntry;
.source "HttpPoolEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/pool/PoolEntry<",
        "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
        "Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Ljava/lang/String;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p7

    .line 53
    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 54
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 55
    new-instance p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-direct {p1, p3}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;-><init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 89
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method getEffectiveRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1

    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-object v0
.end method

.method getTracker()Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
    .locals 1

    .line 68
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    .line 82
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isExpired(J)Z
    .locals 4

    .line 60
    invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->isExpired(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " expired @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getExpiry()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    return p1
.end method
