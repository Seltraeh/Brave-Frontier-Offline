.class abstract Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;
.super Ljava/lang/Object;
.source "PoolEntryFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/boye/httpclientandroidlib/concurrent/FutureCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile cancelled:Z

.field private volatile completed:Z

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Lock;Lch/boye/httpclientandroidlib/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Lock;",
            "Lch/boye/httpclientandroidlib/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    .line 54
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    .line 55
    iput-object p2, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    return-void
.end method


# virtual methods
.method public await(Ljava/util/Date;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Operation interrupted"

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 129
    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result p1

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V

    const/4 p1, 0x1

    .line 134
    :goto_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->cancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 135
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 139
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public cancel(Z)Z
    .locals 1

    .line 59
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 61
    :try_start_0
    iget-boolean p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 72
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 64
    :try_start_1
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->completed:Z

    .line 65
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->cancelled:Z

    .line 66
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/concurrent/FutureCallback;->cancelled()V

    .line 69
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 72
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 86
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 97
    :try_start_0
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->completed:Z

    if-eqz v1, :cond_0

    .line 98
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    .line 101
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->completed:Z

    .line 102
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    .line 105
    :cond_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 107
    :try_start_2
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->completed:Z

    const/4 p2, 0x0

    .line 108
    iput-object p2, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    .line 109
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    if-eqz p2, :cond_2

    .line 110
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    .line 112
    :cond_2
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :goto_1
    iget-object p2, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected abstract getPoolEntry(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public isCancelled()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->completed:Z

    return v0
.end method

.method public wakeup()V
    .locals 2

    .line 145
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
