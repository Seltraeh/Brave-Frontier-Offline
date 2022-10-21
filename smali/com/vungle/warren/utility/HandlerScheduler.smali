.class public Lcom/vungle/warren/utility/HandlerScheduler;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Lcom/vungle/warren/utility/Scheduler;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->handler:Landroid/os/Handler;

    return-void
.end method

.method private calculateTime(J)J
    .locals 2

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;J)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-direct {p0, p2, p3}, Lcom/vungle/warren/utility/HandlerScheduler;->calculateTime(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-direct {p0, p3, p4}, Lcom/vungle/warren/utility/HandlerScheduler;->calculateTime(J)J

    move-result-wide p3

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
