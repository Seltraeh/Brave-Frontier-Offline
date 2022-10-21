.class Lcom/vungle/warren/ServiceLocator$3;
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

    .line 132
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$3;->this$0:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/tasks/JobRunner;
    .locals 5

    .line 135
    new-instance v0, Lcom/vungle/warren/VungleJobRunner;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$3;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/tasks/JobCreator;

    .line 136
    invoke-static {v1, v2}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/tasks/JobCreator;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$3;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/utility/Executors;

    .line 137
    invoke-static {v2, v3}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getJobExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;

    invoke-direct {v3}, Lcom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;-><init>()V

    iget-object v4, p0, Lcom/vungle/warren/ServiceLocator$3;->this$0:Lcom/vungle/warren/ServiceLocator;

    .line 139
    invoke-static {v4}, Lcom/vungle/warren/ServiceLocator;->access$300(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vungle/warren/VungleJobRunner;-><init>(Lcom/vungle/warren/tasks/JobCreator;Ljava/util/concurrent/Executor;Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;Lcom/vungle/warren/utility/NetworkProvider;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$3;->create()Lcom/vungle/warren/tasks/JobRunner;

    move-result-object v0

    return-object v0
.end method
