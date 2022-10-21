.class Lcom/vungle/warren/ServiceLocator$14;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .locals 1

    .line 236
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$14;->this$0:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method create()Ljava/lang/Object;
    .locals 7

    .line 239
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$14;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/CacheManager;

    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vungle/warren/persistence/CacheManager;

    .line 240
    new-instance v0, Lcom/vungle/warren/downloader/CleverCache;

    new-instance v3, Lcom/vungle/warren/downloader/LRUCachePolicy;

    const-string v1, "clever_cache"

    invoke-direct {v3, v2, v1}, Lcom/vungle/warren/downloader/LRUCachePolicy;-><init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;)V

    new-instance v4, Lcom/vungle/warren/DownloaderSizeProvider;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$14;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/RuntimeValues;

    .line 244
    invoke-static {v1, v5}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/RuntimeValues;

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v4, v2, v1, v5}, Lcom/vungle/warren/DownloaderSizeProvider;-><init>(Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/RuntimeValues;F)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5a

    .line 246
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/downloader/CleverCache;-><init>(Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/downloader/CachePolicy;Lcom/vungle/warren/SizeProvider;J)V

    return-object v0
.end method
