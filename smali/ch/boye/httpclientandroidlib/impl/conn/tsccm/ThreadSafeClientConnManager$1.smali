.class Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

.field final synthetic val$poolRequest:Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;

.field final synthetic val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 1

    .line 228
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;->abortRequest()V

    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    move-result-object p1

    .line 243
    new-instance p2, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;

    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p2, p3, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;-><init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    return-object p2

    .line 235
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
