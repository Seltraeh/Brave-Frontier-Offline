.class Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;
.super Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;
.source "AbstractConnPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lch/boye/httpclientandroidlib/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/pool/PoolEntryFuture<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/pool/AbstractConnPool;

.field final synthetic val$route:Ljava/lang/Object;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/pool/AbstractConnPool;Ljava/util/concurrent/locks/Lock;Lch/boye/httpclientandroidlib/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;->this$0:Lch/boye/httpclientandroidlib/pool/AbstractConnPool;

    iput-object p4, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iput-object p5, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;-><init>(Ljava/util/concurrent/locks/Lock;Lch/boye/httpclientandroidlib/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/pool/PoolEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;->this$0:Lch/boye/httpclientandroidlib/pool/AbstractConnPool;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;->access$000(Lch/boye/httpclientandroidlib/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;)Lch/boye/httpclientandroidlib/pool/PoolEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPoolEntry(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool$2;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/pool/PoolEntry;

    move-result-object p1

    return-object p1
.end method
