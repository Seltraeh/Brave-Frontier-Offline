.class Lcom/vungle/warren/InitCallbackWrapper;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/InitCallback;


# instance fields
.field private final callback:Lcom/vungle/warren/InitCallback;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/InitCallback;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    .line 14
    iput-object p1, p0, Lcom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/InitCallbackWrapper;)Lcom/vungle/warren/InitCallback;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    return-object p0
.end method


# virtual methods
.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/InitCallbackWrapper$3;-><init>(Lcom/vungle/warren/InitCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/vungle/warren/error/VungleException;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/InitCallbackWrapper$2;-><init>(Lcom/vungle/warren/InitCallbackWrapper;Lcom/vungle/warren/error/VungleException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/InitCallbackWrapper$1;-><init>(Lcom/vungle/warren/InitCallbackWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
