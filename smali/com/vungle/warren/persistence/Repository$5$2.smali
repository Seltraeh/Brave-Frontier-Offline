.class Lcom/vungle/warren/persistence/Repository$5$2;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/persistence/Repository$5;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository$5;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$5$2;->this$1:Lcom/vungle/warren/persistence/Repository$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$5$2;->this$1:Lcom/vungle/warren/persistence/Repository$5;

    iget-object v0, v0, Lcom/vungle/warren/persistence/Repository$5;->val$callback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Repository$SaveCallback;->onSaved()V

    return-void
.end method
