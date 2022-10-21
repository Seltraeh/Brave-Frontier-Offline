.class public Lcom/vungle/warren/HeaderBiddingCallbackWrapper;
.super Ljava/lang/Object;
.source "HeaderBiddingCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/HeaderBiddingCallback;


# instance fields
.field private final callback:Lcom/vungle/warren/HeaderBiddingCallback;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/HeaderBiddingCallback;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->callback:Lcom/vungle/warren/HeaderBiddingCallback;

    .line 12
    iput-object p1, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;)Lcom/vungle/warren/HeaderBiddingCallback;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->callback:Lcom/vungle/warren/HeaderBiddingCallback;

    return-object p0
.end method


# virtual methods
.method public adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->callback:Lcom/vungle/warren/HeaderBiddingCallback;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;-><init>(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->callback:Lcom/vungle/warren/HeaderBiddingCallback;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;-><init>(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
