.class public abstract Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected volatile poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
    .locals 1

    .line 66
    iget-object v0, p2, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 67
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    return-void
.end method


# virtual methods
.method protected final assertAttached()V
    .locals 1

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method protected assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized detach()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 110
    :try_start_0
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    .line 111
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
    .locals 1

    .line 78
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    return-object v0
.end method

.method public getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 117
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 174
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 146
    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 125
    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 180
    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->shutdown()V

    :cond_1
    return-void
.end method

.method public tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 139
    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 132
    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method
