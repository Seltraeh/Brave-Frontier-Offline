.class public Lch/boye/httpclientandroidlib/concurrent/BasicFuture;
.super Ljava/lang/Object;
.source "BasicFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lch/boye/httpclientandroidlib/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lch/boye/httpclientandroidlib/concurrent/Cancellable;"
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

.field private volatile ex:Ljava/lang/Exception;

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->result:Ljava/lang/Object;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-boolean p1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 130
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 132
    :try_start_1
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z

    .line 133
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->cancelled:Z

    .line 134
    iget-object v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/concurrent/FutureCallback;->cancelled()V

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized completed(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 104
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 106
    :try_start_1
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z

    .line 107
    iput-object p1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->result:Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    invoke-interface {v1, p1}, Lch/boye/httpclientandroidlib/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    .line 111
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized failed(Ljava/lang/Exception;)Z
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 117
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 119
    :try_start_1
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z

    .line 120
    iput-object p1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    .line 121
    iget-object v1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->callback:Lch/boye/httpclientandroidlib/concurrent/FutureCallback;

    invoke-interface {v1, p1}, Lch/boye/httpclientandroidlib/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
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

    monitor-enter p0

    .line 72
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
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

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    :goto_0
    iget-boolean p3, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z

    if-eqz p3, :cond_1

    .line 84
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    cmp-long p3, p1, v0

    if-lez p3, :cond_4

    move-wide v4, p1

    .line 89
    :goto_1
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 90
    iget-boolean p3, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z

    if-eqz p3, :cond_2

    .line 91
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 93
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long v4, p1, v4

    cmp-long p3, v4, v0

    if-lez p3, :cond_3

    goto :goto_1

    .line 95
    :cond_3
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 86
    :cond_4
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public isCancelled()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/concurrent/BasicFuture;->completed:Z

    return v0
.end method
