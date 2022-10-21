.class public abstract Lcom/tapjoy/internal/kf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ki;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/kf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/ki<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/kf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/kf$a<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tapjoy/internal/kh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/tapjoy/internal/kf$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/kf$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/kf;->a:Lcom/tapjoy/internal/kf$a;

    .line 71
    new-instance v0, Lcom/tapjoy/internal/kh;

    invoke-direct {v0}, Lcom/tapjoy/internal/kh;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/kf;->b:Lcom/tapjoy/internal/kh;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->a:Lcom/tapjoy/internal/kf$a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 2321
    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/kf$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->b:Lcom/tapjoy/internal/kh;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kh;->a()V

    :cond_0
    return p1
.end method

.method protected final a(Ljava/lang/Throwable;)Z
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->a:Lcom/tapjoy/internal/kf$a;

    invoke-static {p1}, Lcom/tapjoy/internal/jt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 2328
    invoke-virtual {v0, v2, v1, v3}, Lcom/tapjoy/internal/kf$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/tapjoy/internal/kf;->b:Lcom/tapjoy/internal/kh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/kh;->a()V

    .line 193
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-nez v1, :cond_1

    return v0

    .line 194
    :cond_1
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public cancel(Z)Z
    .locals 2

    .line 126
    iget-object p1, p0, Lcom/tapjoy/internal/kf;->a:Lcom/tapjoy/internal/kf$a;

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1335
    invoke-virtual {p1, v0, v0, v1}, Lcom/tapjoy/internal/kf$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/tapjoy/internal/kf;->b:Lcom/tapjoy/internal/kh;

    invoke-virtual {p1}, Lcom/tapjoy/internal/kh;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->a:Lcom/tapjoy/internal/kf$a;

    const/4 v1, -0x1

    .line 1275
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireSharedInterruptibly(I)V

    .line 1276
    invoke-virtual {v0}, Lcom/tapjoy/internal/kf$a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->a:Lcom/tapjoy/internal/kf$a;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, -0x1

    .line 1258
    invoke-virtual {v0, p3, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireSharedNanos(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1262
    invoke-virtual {v0}, Lcom/tapjoy/internal/kf$a;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1259
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Timeout waiting for task."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->a:Lcom/tapjoy/internal/kf$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kf$a;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->a:Lcom/tapjoy/internal/kf$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kf$a;->b()Z

    move-result v0

    return v0
.end method
