.class Lcom/vungle/warren/persistence/Repository$5$1;
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

.field final synthetic val$e:Lcom/vungle/warren/persistence/DatabaseHelper$DBException;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository$5;Lcom/vungle/warren/persistence/DatabaseHelper$DBException;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$5$1;->this$1:Lcom/vungle/warren/persistence/Repository$5;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$5$1;->val$e:Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$5$1;->this$1:Lcom/vungle/warren/persistence/Repository$5;

    iget-object v0, v0, Lcom/vungle/warren/persistence/Repository$5;->val$callback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$5$1;->val$e:Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-interface {v0, v1}, Lcom/vungle/warren/persistence/Repository$SaveCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method
