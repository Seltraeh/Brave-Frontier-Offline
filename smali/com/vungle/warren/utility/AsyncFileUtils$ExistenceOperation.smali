.class public Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/AsyncFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExistenceOperation"
.end annotation


# instance fields
.field private final task:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->task:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->task:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    invoke-static {v0}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->access$000(Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V

    .line 84
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->task:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method
