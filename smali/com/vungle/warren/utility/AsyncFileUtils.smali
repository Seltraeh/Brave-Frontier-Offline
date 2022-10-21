.class public Lcom/vungle/warren/utility/AsyncFileUtils;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;,
        Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;,
        Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;
    .locals 1

    .line 23
    new-instance v0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;-><init>(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)V

    .line 24
    new-instance p0, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    invoke-direct {p0, v0}, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;-><init>(Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 25
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method
