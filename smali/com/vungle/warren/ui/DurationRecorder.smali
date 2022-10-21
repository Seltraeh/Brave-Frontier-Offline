.class public Lcom/vungle/warren/ui/DurationRecorder;
.super Ljava/lang/Object;
.source "DurationRecorder.java"


# instance fields
.field private paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

.field private final report:Lcom/vungle/warren/model/Report;

.field private final repository:Lcom/vungle/warren/persistence/Repository;

.field private startMillis:J


# direct methods
.method public constructor <init>(Lcom/vungle/warren/model/Report;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/DurationRecorder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    iput-object p1, p0, Lcom/vungle/warren/ui/DurationRecorder;->report:Lcom/vungle/warren/model/Report;

    .line 22
    iput-object p2, p0, Lcom/vungle/warren/ui/DurationRecorder;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 23
    iput-object p3, p0, Lcom/vungle/warren/ui/DurationRecorder;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    return-void
.end method

.method private save()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/vungle/warren/ui/DurationRecorder;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vungle/warren/ui/DurationRecorder;->startMillis:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/model/Report;->setAdDuration(J)V

    .line 46
    iget-object v0, p0, Lcom/vungle/warren/ui/DurationRecorder;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/DurationRecorder;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/DurationRecorder;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/vungle/warren/ui/DurationRecorder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vungle/warren/ui/DurationRecorder;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Report;->getAdDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vungle/warren/ui/DurationRecorder;->startMillis:J

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/vungle/warren/ui/DurationRecorder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/vungle/warren/ui/DurationRecorder;->save()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/vungle/warren/ui/DurationRecorder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/vungle/warren/ui/DurationRecorder;->save()V

    :cond_0
    return-void
.end method
