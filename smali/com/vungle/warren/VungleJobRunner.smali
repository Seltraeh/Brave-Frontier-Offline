.class Lcom/vungle/warren/VungleJobRunner;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Lcom/vungle/warren/tasks/JobRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/VungleJobRunner$PendingRunnable;,
        Lcom/vungle/warren/VungleJobRunner$PendingJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static handler:Landroid/os/Handler;


# instance fields
.field private creator:Lcom/vungle/warren/tasks/JobCreator;

.field private executor:Ljava/util/concurrent/Executor;

.field private final networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

.field private final networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

.field private nextCheck:J

.field private pendingJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/VungleJobRunner$PendingJob;",
            ">;"
        }
    .end annotation
.end field

.field private pendingRunnable:Ljava/lang/Runnable;

.field private final threadPriorityHelper:Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vungle/warren/VungleJobRunner;->handler:Landroid/os/Handler;

    .line 29
    const-class v0, Lcom/vungle/warren/VungleJobRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/VungleJobRunner;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/tasks/JobCreator;Ljava/util/concurrent/Executor;Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;Lcom/vungle/warren/utility/NetworkProvider;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 36
    iput-wide v0, p0, Lcom/vungle/warren/VungleJobRunner;->nextCheck:J

    .line 135
    new-instance v0, Lcom/vungle/warren/VungleJobRunner$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/VungleJobRunner$1;-><init>(Lcom/vungle/warren/VungleJobRunner;)V

    iput-object v0, p0, Lcom/vungle/warren/VungleJobRunner;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 68
    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner;->creator:Lcom/vungle/warren/tasks/JobCreator;

    .line 69
    iput-object p2, p0, Lcom/vungle/warren/VungleJobRunner;->executor:Ljava/util/concurrent/Executor;

    .line 70
    iput-object p3, p0, Lcom/vungle/warren/VungleJobRunner;->threadPriorityHelper:Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    .line 71
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    .line 72
    iput-object p4, p0, Lcom/vungle/warren/VungleJobRunner;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    .line 73
    new-instance p1, Lcom/vungle/warren/VungleJobRunner$PendingRunnable;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/vungle/warren/VungleJobRunner$PendingRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner;->pendingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/VungleJobRunner;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/vungle/warren/VungleJobRunner;->executePendingJobs()V

    return-void
.end method

.method private declared-synchronized executePendingJobs()V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 105
    iget-object v0, v1, Lcom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v6, 0x7fffffffffffffffL

    move-wide v8, v6

    const-wide/16 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vungle/warren/VungleJobRunner$PendingJob;

    .line 106
    invoke-static {v12}, Lcom/vungle/warren/VungleJobRunner$PendingJob;->access$100(Lcom/vungle/warren/VungleJobRunner$PendingJob;)J

    move-result-wide v13

    cmp-long v15, v2, v13

    if-ltz v15, :cond_2

    .line 108
    iget-object v13, v12, Lcom/vungle/warren/VungleJobRunner$PendingJob;->info:Lcom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v13}, Lcom/vungle/warren/tasks/JobInfo;->getRequiredNetworkType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    iget-object v13, v1, Lcom/vungle/warren/VungleJobRunner;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    .line 109
    invoke-virtual {v13}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_1

    const/4 v14, 0x0

    const-wide/16 v15, 0x1

    add-long/2addr v10, v15

    :cond_1
    if-eqz v14, :cond_0

    .line 115
    iget-object v13, v1, Lcom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v13, v1, Lcom/vungle/warren/VungleJobRunner;->executor:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/vungle/warren/tasks/runnable/JobRunnable;

    iget-object v12, v12, Lcom/vungle/warren/VungleJobRunner$PendingJob;->info:Lcom/vungle/warren/tasks/JobInfo;

    iget-object v15, v1, Lcom/vungle/warren/VungleJobRunner;->creator:Lcom/vungle/warren/tasks/JobCreator;

    iget-object v4, v1, Lcom/vungle/warren/VungleJobRunner;->threadPriorityHelper:Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    invoke-direct {v14, v12, v15, v1, v4}, Lcom/vungle/warren/tasks/runnable/JobRunnable;-><init>(Lcom/vungle/warren/tasks/JobInfo;Lcom/vungle/warren/tasks/JobCreator;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {v12}, Lcom/vungle/warren/VungleJobRunner$PendingJob;->access$100(Lcom/vungle/warren/VungleJobRunner$PendingJob;)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_0

    :cond_3
    cmp-long v0, v8, v6

    if-eqz v0, :cond_4

    .line 123
    iget-wide v2, v1, Lcom/vungle/warren/VungleJobRunner;->nextCheck:J

    cmp-long v0, v8, v2

    if-eqz v0, :cond_4

    .line 124
    sget-object v0, Lcom/vungle/warren/VungleJobRunner;->handler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/vungle/warren/VungleJobRunner;->pendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    sget-object v0, Lcom/vungle/warren/VungleJobRunner;->handler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/vungle/warren/VungleJobRunner;->pendingRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/vungle/warren/VungleJobRunner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 127
    :cond_4
    iput-wide v8, v1, Lcom/vungle/warren/VungleJobRunner;->nextCheck:J

    const-wide/16 v2, 0x0

    cmp-long v0, v10, v2

    if-lez v0, :cond_5

    .line 129
    iget-object v0, v1, Lcom/vungle/warren/VungleJobRunner;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v2, v1, Lcom/vungle/warren/VungleJobRunner;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/utility/NetworkProvider;->addListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    goto :goto_1

    .line 131
    :cond_5
    iget-object v0, v1, Lcom/vungle/warren/VungleJobRunner;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v2, v1, Lcom/vungle/warren/VungleJobRunner;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized execute(Lcom/vungle/warren/tasks/JobInfo;)V
    .locals 8

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/warren/tasks/JobInfo;->copy()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/vungle/warren/tasks/JobInfo;->getDelay()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 85
    invoke-virtual {p1, v3, v4}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    .line 87
    invoke-virtual {p1}, Lcom/vungle/warren/tasks/JobInfo;->getUpdateCurrent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/VungleJobRunner$PendingJob;

    .line 89
    iget-object v5, v4, Lcom/vungle/warren/VungleJobRunner$PendingJob;->info:Lcom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v5}, Lcom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    sget-object v5, Lcom/vungle/warren/VungleJobRunner;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacing pending job with new "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v5, p0, Lcom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    new-instance v3, Lcom/vungle/warren/VungleJobRunner$PendingJob;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-direct {v3, v4, v5, p1}, Lcom/vungle/warren/VungleJobRunner$PendingJob;-><init>(JLcom/vungle/warren/tasks/JobInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-direct {p0}, Lcom/vungle/warren/VungleJobRunner;->executePendingJobs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
