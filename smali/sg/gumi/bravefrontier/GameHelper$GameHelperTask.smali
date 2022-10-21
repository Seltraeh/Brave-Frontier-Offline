.class final Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;
.super Landroid/os/AsyncTask;
.source "GameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/GameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GameHelperTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final TASK_TYPE_SIGN_IN_FAILED:I = 0x2

.field static final TASK_TYPE_SIGN_IN_SUCCEEDED:I = 0x1

.field static final TASK_TYPE_SIGN_OUT_SUCCEEDED:I = 0x3


# instance fields
.field private mAttempts:I

.field mTaskType:I

.field final synthetic this$0:Lsg/gumi/bravefrontier/GameHelper;


# direct methods
.method private constructor <init>(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x3

    .line 1105
    iput p1, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->mAttempts:I

    return-void
.end method

.method synthetic constructor <init>(Lsg/gumi/bravefrontier/GameHelper;Lsg/gumi/bravefrontier/GameHelper$1;)V
    .locals 0

    .line 1098
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;-><init>(Lsg/gumi/bravefrontier/GameHelper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1108
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget p1, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->mAttempts:I

    if-lez p1, :cond_0

    const-wide/16 v1, 0x64

    .line 1110
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    :catchall_0
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    const/4 p1, 0x1

    .line 1120
    :try_start_0
    iget v0, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->mTaskType:I

    if-eq v0, p1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-static {v0}, Lsg/gumi/bravefrontier/GameHelper;->access$400(Lsg/gumi/bravefrontier/GameHelper;)V

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-static {v0}, Lsg/gumi/bravefrontier/GameHelper;->access$300(Lsg/gumi/bravefrontier/GameHelper;)V

    goto :goto_0

    .line 1122
    :cond_2
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-static {v0}, Lsg/gumi/bravefrontier/GameHelper;->access$200(Lsg/gumi/bravefrontier/GameHelper;)V

    :goto_0
    const/4 v0, 0x0

    .line 1133
    iput v0, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->mAttempts:I

    .line 1134
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-static {v0}, Lsg/gumi/bravefrontier/GameHelper;->access$500(Lsg/gumi/bravefrontier/GameHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1136
    :catchall_0
    iget v0, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->mAttempts:I

    sub-int/2addr v0, p1

    iput v0, p0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->mAttempts:I

    :goto_1
    return-void
.end method
