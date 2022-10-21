.class public abstract Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DownloadPriorityRunnable"
.end annotation


# static fields
.field private static final seq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

.field private final order:I

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Priority;
        .end annotation
    .end param

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->order:I

    .line 1190
    iput p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->priority:I

    const/4 p1, 0x0

    .line 1191
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 1

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->order:I

    .line 1184
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v0, 0x0

    .line 1185
    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->priority:I

    .line 1186
    invoke-virtual {p1, p0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setRunnable(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1200
    instance-of v0, p1, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;

    if-eqz v0, :cond_1

    .line 1201
    check-cast p1, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;

    .line 1202
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->getPriority()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->getPriority()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->order:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->order:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method getPriority()Ljava/lang/Integer;
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getPriority()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->priority:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
