.class public Lcom/vungle/warren/utility/RefreshHandler;
.super Landroid/os/Handler;
.source "RefreshHandler.java"


# static fields
.field private static final DISABLE_REFRESH_VALUE:I

.field private static final ID:I


# instance fields
.field private handlerStartTime:J

.field private handlerTimeElapsed:J

.field private final refreshDuration:J

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 26
    iput-wide p2, p0, Lcom/vungle/warren/utility/RefreshHandler;->refreshDuration:J

    .line 27
    iput-object p1, p0, Lcom/vungle/warren/utility/RefreshHandler;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    iget-object v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->handlerTimeElapsed:J

    .line 57
    iput-wide v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->handlerStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-wide v1, p0, Lcom/vungle/warren/utility/RefreshHandler;->handlerTimeElapsed:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vungle/warren/utility/RefreshHandler;->handlerStartTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/vungle/warren/utility/RefreshHandler;->handlerTimeElapsed:J

    .line 34
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    iget-object v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 5

    monitor-enter p0

    .line 40
    :try_start_0
    iget-wide v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->refreshDuration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 42
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 45
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-wide v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->refreshDuration:J

    iget-wide v2, p0, Lcom/vungle/warren/utility/RefreshHandler;->handlerTimeElapsed:J

    sub-long/2addr v0, v2

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vungle/warren/utility/RefreshHandler;->handlerStartTime:J

    .line 48
    iget-object v2, p0, Lcom/vungle/warren/utility/RefreshHandler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
