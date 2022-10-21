.class Lcom/vungle/warren/persistence/Repository$15;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$15;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$15;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$15;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v0}, Lcom/vungle/warren/persistence/Repository;->access$1000(Lcom/vungle/warren/persistence/Repository;)Lcom/vungle/warren/persistence/Designer;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$15;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/persistence/Designer;->getAssetDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$15;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
