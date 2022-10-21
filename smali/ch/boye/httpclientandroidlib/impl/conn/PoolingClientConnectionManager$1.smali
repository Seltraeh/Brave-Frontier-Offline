.class Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager$1;
.super Ljava/lang/Object;
.source "PoolingClientConnectionManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

.field final synthetic val$future:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager$1;->val$future:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 2

    .line 193
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager$1;->val$future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager$1;->val$future:Ljava/util/concurrent/Future;

    invoke-virtual {v0, v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/PoolingClientConnectionManager;->leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    move-result-object p1

    return-object p1
.end method
