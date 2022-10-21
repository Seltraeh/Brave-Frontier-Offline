.class public final Lcom/tapjoy/internal/hr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final b:Ljava/util/concurrent/CountDownLatch;

.field public static final c:Ljava/util/concurrent/CountDownLatch;

.field private static final d:Ljava/lang/Runnable;

.field private static e:Ljava/lang/String;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/internal/hr;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/tapjoy/internal/hr;->b:Ljava/util/concurrent/CountDownLatch;

    .line 19
    new-instance v1, Lcom/tapjoy/internal/hr$1;

    invoke-direct {v1}, Lcom/tapjoy/internal/hr$1;-><init>()V

    sput-object v1, Lcom/tapjoy/internal/hr;->d:Ljava/lang/Runnable;

    .line 40
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/tapjoy/internal/hr;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 35
    sget-object v0, Lcom/tapjoy/internal/hr;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/tapjoy/internal/hr;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 0

    .line 43
    sput-object p0, Lcom/tapjoy/internal/hr;->e:Ljava/lang/String;

    .line 44
    sput-boolean p1, Lcom/tapjoy/internal/hr;->f:Z

    .line 45
    sget-object p0, Lcom/tapjoy/internal/hr;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/tapjoy/internal/hr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/tapjoy/internal/hr;->f:Z

    return v0
.end method
