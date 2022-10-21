.class Lsg/gumi/util/HttpConnectionMgr;
.super Ljava/lang/Object;
.source "AsyncFileLoad.java"


# instance fields
.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field defaultClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

.field mgr:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

.field status:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->defaultClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->connections:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->status:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->mgr:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    return-void
.end method

.method private createConnection()Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
    .locals 3

    .line 33
    iget-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->mgr:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    iget-object v1, p0, Lsg/gumi/util/HttpConnectionMgr;->defaultClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    iput-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->mgr:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    const/16 v1, 0xa

    .line 38
    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->setMaxTotal(I)V

    .line 41
    iget-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->mgr:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 44
    :cond_0
    iget-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->defaultClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    const/16 v1, 0x4e20

    .line 45
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    const/16 v1, 0x3a98

    .line 46
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 48
    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lsg/gumi/util/HttpConnectionMgr;->mgr:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 50
    new-instance v0, Lsg/gumi/util/HttpConnectionMgr$1;

    invoke-direct {v0, p0}, Lsg/gumi/util/HttpConnectionMgr$1;-><init>(Lsg/gumi/util/HttpConnectionMgr;)V

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->setKeepAliveStrategy(Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;)V

    .line 57
    new-instance v0, Lsg/gumi/util/HttpConnectionMgr$2;

    invoke-direct {v0, p0}, Lsg/gumi/util/HttpConnectionMgr$2;-><init>(Lsg/gumi/util/HttpConnectionMgr;)V

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->setReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized downloadFinished(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 103
    :goto_0
    :try_start_0
    iget-object v1, p0, Lsg/gumi/util/HttpConnectionMgr;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 105
    iget-object v1, p0, Lsg/gumi/util/HttpConnectionMgr;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 107
    iget-object p1, p0, Lsg/gumi/util/HttpConnectionMgr;->status:Ljava/util/ArrayList;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized downloadStarted(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 92
    :goto_0
    :try_start_0
    iget-object v1, p0, Lsg/gumi/util/HttpConnectionMgr;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lsg/gumi/util/HttpConnectionMgr;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 96
    iget-object p1, p0, Lsg/gumi/util/HttpConnectionMgr;->status:Ljava/util/ArrayList;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized getConnection()Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    :goto_0
    :try_start_0
    iget-object v2, p0, Lsg/gumi/util/HttpConnectionMgr;->status:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 73
    iget-object v2, p0, Lsg/gumi/util/HttpConnectionMgr;->status:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 75
    iget-object v0, p0, Lsg/gumi/util/HttpConnectionMgr;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 82
    invoke-direct {p0}, Lsg/gumi/util/HttpConnectionMgr;->createConnection()Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lsg/gumi/util/HttpConnectionMgr;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lsg/gumi/util/HttpConnectionMgr;->status:Ljava/util/ArrayList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
