.class public final Lcom/tapjoy/internal/ec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/eb$a;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/tapjoy/internal/eb;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tapjoy/internal/eb;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ec;->c:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ec;->d:Lcom/tapjoy/internal/eb;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ec;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/tapjoy/internal/ec;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ec;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/ec;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eb;

    iput-object v0, p0, Lcom/tapjoy/internal/ec;->d:Lcom/tapjoy/internal/eb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/ec;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eb;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ec;->d:Lcom/tapjoy/internal/eb;

    invoke-direct {p0}, Lcom/tapjoy/internal/ec;->b()V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/eb;)V
    .locals 1

    .line 1000
    iput-object p0, p1, Lcom/tapjoy/internal/eb;->d:Lcom/tapjoy/internal/eb$a;

    iget-object v0, p0, Lcom/tapjoy/internal/ec;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tapjoy/internal/ec;->d:Lcom/tapjoy/internal/eb;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/internal/ec;->b()V

    :cond_0
    return-void
.end method
