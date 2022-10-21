.class Lcom/ironsource/mediationsdk/ProgRvSmash$1;
.super Ljava/util/TimerTask;
.source "ProgRvSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ProgRvSmash;->startLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "Rewarded Video - load instance time out"

    .line 577
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/ProgRvSmash;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 578
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    const/16 v4, 0x401

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x1fe

    const/4 v3, 0x0

    goto :goto_2

    .line 579
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v2, v3, :cond_2

    const/16 v2, 0x401

    goto :goto_1

    :cond_2
    const/16 v0, 0x408

    const-string v2, "Rewarded Video - init instance time out"

    move-object v0, v2

    const/16 v2, 0x408

    .line 587
    :goto_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    sget-object v7, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-static {v3, v7}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$200(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    const/4 v3, 0x1

    .line 590
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v7, 0x2

    if-eqz v3, :cond_3

    .line 595
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v4, 0x4b0

    new-array v8, v7, [[Ljava/lang/Object;

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "errorCode"

    aput-object v10, v9, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v9, v8, v6

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "duration"

    aput-object v10, v9, v6

    iget-object v10, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v10}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v9, v8, v5

    invoke-virtual {v3, v4, v8}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 596
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v4, 0x4bc

    new-array v1, v1, [[Ljava/lang/Object;

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "errorCode"

    aput-object v9, v8, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v5

    aput-object v8, v1, v6

    new-array v2, v7, [Ljava/lang/Object;

    const-string v8, "reason"

    aput-object v8, v2, v6

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v7

    invoke-virtual {v3, v4, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 597
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$600(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$500(Lcom/ironsource/mediationsdk/ProgRvSmash;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    goto :goto_3

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v2, 0x4b8

    new-array v1, v1, [[Ljava/lang/Object;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v6

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "duration"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v5

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "ext1"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v7

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    .line 590
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
