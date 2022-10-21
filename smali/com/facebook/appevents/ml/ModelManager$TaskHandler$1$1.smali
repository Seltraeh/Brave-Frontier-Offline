.class Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Lcom/facebook/appevents/internal/FileDownloadTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;->onComplete(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;

.field final synthetic val$model:Lcom/facebook/appevents/ml/Model;

.field final synthetic val$slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Lcom/facebook/appevents/ml/Model;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;->this$0:Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;

    iput-object p2, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;->val$slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    iput-object p3, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;->val$model:Lcom/facebook/appevents/ml/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/File;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;->val$slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    iget-object v1, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;->val$model:Lcom/facebook/appevents/ml/Model;

    iput-object v1, v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->model:Lcom/facebook/appevents/ml/Model;

    .line 439
    iput-object p1, v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->ruleFile:Ljava/io/File;

    .line 440
    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->access$500(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;->val$slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    invoke-static {p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->access$500(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
