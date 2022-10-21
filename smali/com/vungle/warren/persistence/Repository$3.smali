.class Lcom/vungle/warren/persistence/Repository$3;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$loadCallback:Lcom/vungle/warren/persistence/Repository$LoadCallback;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$3;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$3;->val$clazz:Ljava/lang/Class;

    iput-object p4, p0, Lcom/vungle/warren/persistence/Repository$3;->val$loadCallback:Lcom/vungle/warren/persistence/Repository$LoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$3;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$3;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$3;->val$clazz:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->access$000(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$3;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v1}, Lcom/vungle/warren/persistence/Repository;->access$100(Lcom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/persistence/Repository$3$1;

    invoke-direct {v2, p0, v0}, Lcom/vungle/warren/persistence/Repository$3$1;-><init>(Lcom/vungle/warren/persistence/Repository$3;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
