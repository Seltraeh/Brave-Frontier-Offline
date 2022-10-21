.class Lcom/vungle/warren/persistence/CacheManager$2;
.super Landroid/os/FileObserver;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/CacheManager;->observeDirectory(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/CacheManager;

.field final synthetic val$dirName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$2;->this$0:Lcom/vungle/warren/persistence/CacheManager;

    iput-object p4, p0, Lcom/vungle/warren/persistence/CacheManager$2;->val$dirName:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$2;->val$dirName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 138
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$2;->this$0:Lcom/vungle/warren/persistence/CacheManager;

    invoke-static {p1}, Lcom/vungle/warren/persistence/CacheManager;->access$000(Lcom/vungle/warren/persistence/CacheManager;)V

    :cond_0
    return-void
.end method
