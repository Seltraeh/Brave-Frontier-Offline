.class public Lcom/tapjoy/TJPlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/tapjoy/TJPlacementListener;

.field private b:Lcom/tapjoy/TJCorePlacement;

.field private c:Lcom/tapjoy/TJPlacementListener;

.field private d:Lcom/tapjoy/TJPlacementVideoListener;

.field private e:Ljava/lang/String;

.field public pushId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    .line 30
    invoke-static {p2, v0, v0, v1, v1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 32
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, v0, p3}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    return-void
.end method

.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    return-void
.end method

.method private a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->e:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz p2, :cond_0

    .line 48
    const-class p1, Lcom/tapjoy/TJPlacementListener;

    invoke-static {p2, p1}, Lcom/tapjoy/internal/fq;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacementListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 50
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tapjoy/FiveRocksIntegration;->addPlacementCallback(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    return-void
.end method

.method private a(Lcom/tapjoy/TJError;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0, p0, v1, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    return-void
.end method

.method public static dismissContent()V
    .locals 2

    const-string v0, "TJC_OPTION_DISMISS_CONTENT_ALL"

    .line 235
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 240
    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    return-void
.end method


# virtual methods
.method public getGUID()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/tapjoy/TJPlacementListener;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getPlacementData()Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getPlacementData()Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementVideoListener;

    return-object v0
.end method

.method public isContentAvailable()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fz;

    const/4 v1, 0x1

    .line 2057
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fz;->a(I)V

    .line 107
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v0

    return v0
.end method

.method public isContentReady()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentReady()Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fz;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    .line 1062
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fz;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 1064
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fz;->a(I)V

    :goto_0
    return v0
.end method

.method public isLimited()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isLimited()Z

    move-result v0

    return v0
.end method

.method public requestContent()V
    .locals 8

    .line 121
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestContent() called for placement "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJPlacement"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TJPlacement.requestContent"

    .line 123
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v3

    const-string v4, "placement"

    .line 124
    invoke-virtual {v3, v4, v0}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 3662
    iget-object v4, v4, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "placement_type"

    .line 125
    invoke-virtual {v3, v5, v4}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    .line 127
    invoke-static {}, Lcom/tapjoy/internal/gi;->a()Lcom/tapjoy/internal/gi;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {}, Lcom/tapjoy/internal/gi;->a()Lcom/tapjoy/internal/gi;

    move-result-object v3

    .line 4177
    iget-object v3, v3, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    .line 128
    invoke-static {v3}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[INFO] Your application calls requestContent without having previously called setUserConsent. You can review Tapjoy supported consent API here - https://dev.tapjoy.com/sdk-integration/#sdk11122_gdpr_release."

    .line 129
    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4261
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->isLimited()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4262
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v2

    goto :goto_0

    .line 4264
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isLimitedConnected()Z

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 135
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    const-string v1, "not connected"

    .line 136
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gj$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/tapjoy/internal/gj$a;->c()V

    .line 138
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "SDK not connected -- connect must be called first with a successful callback"

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    return-void

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v2}, Lcom/tapjoy/TJCorePlacement;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    .line 144
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    const-string v1, "no context"

    .line 145
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gj$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/tapjoy/internal/gj$a;->c()V

    .line 147
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "Context is null -- TJPlacement requires a valid Context."

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    return-void

    .line 152
    :cond_3
    invoke-static {v0}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    const-string v1, "invalid name"

    .line 154
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gj$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/tapjoy/internal/gj$a;->c()V

    .line 156
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "Invalid placement name -- TJPlacement requires a valid placement name."

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    return-void

    .line 161
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    const-string v2, "REQUEST"

    .line 5171
    invoke-virtual {v0, v2, p0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 5173
    iget-wide v4, v0, Lcom/tapjoy/TJCorePlacement;->e:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_6

    .line 5175
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content has not expired yet for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5829
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    .line 5175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5177
    iget-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "cache"

    const-string v5, "from"

    const-string v6, "content_type"

    if-eqz v2, :cond_5

    .line 5178
    :try_start_1
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v2

    .line 5179
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    move-result-object v2

    .line 5180
    invoke-virtual {v2, v5, v4}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    move-result-object v2

    .line 5181
    invoke-virtual {v2}, Lcom/tapjoy/internal/gj$a;->c()V

    .line 5182
    iput-boolean v3, v0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 5183
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    .line 5184
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->c()V

    goto/16 :goto_2

    .line 5186
    :cond_5
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v2

    const-string v3, "none"

    .line 5187
    invoke-virtual {v2, v6, v3}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    move-result-object v2

    .line 5188
    invoke-virtual {v2, v5, v4}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    move-result-object v2

    .line 5189
    invoke-virtual {v2}, Lcom/tapjoy/internal/gj$a;->c()V

    .line 5190
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    goto/16 :goto_2

    .line 5194
    :cond_6
    iget-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->l:Z

    if-eqz v2, :cond_7

    .line 5195
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v2

    const-string v4, "was_available"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5196
    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    .line 5198
    :cond_7
    iget-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->m:Z

    if-eqz v2, :cond_8

    .line 5199
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v2

    const-string v4, "was_ready"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5200
    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    .line 6225
    :cond_8
    iget-object v2, v0, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_c

    .line 5204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "mediation_agent"

    .line 5205
    iget-object v6, v0, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "mediation_id"

    .line 5206
    iget-object v6, v0, Lcom/tapjoy/TJCorePlacement;->q:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6229
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v3, 0x1

    :cond_9
    if-eqz v3, :cond_b

    .line 5210
    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "auction_"

    .line 5212
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5214
    :cond_a
    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getAuctionMediationURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 5216
    :cond_b
    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getMediationURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 5219
    :cond_c
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :goto_2
    invoke-static {v1}, Lcom/tapjoy/internal/gj;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/tapjoy/internal/gj;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    .line 164
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public setAdapterVersion(Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 12666
    iput-object p1, v0, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    return-void
.end method

.method public setAuctionData(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 192
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 11674
    iput-object p1, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    .line 11676
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->e()Ljava/lang/String;

    move-result-object p1

    .line 11678
    invoke-static {p1}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "v1/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/bid_content?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11682
    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPlacementData;->setAuctionMediationURL(Ljava/lang/String;)V

    return-void

    .line 11684
    :cond_1
    sget-object p1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v0, "Placement auction data can not be set for a null app ID"

    invoke-static {p1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "TJPlacement"

    const-string v0, "auctionData can not be null or empty"

    .line 193
    invoke-static {p1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMediationId(Ljava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 2670
    iput-object p1, v0, Lcom/tapjoy/TJCorePlacement;->q:Ljava/lang/String;

    return-void
.end method

.method public setMediationName(Ljava/lang/String;)V
    .locals 5

    .line 203
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setMediationName="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJPlacement"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p1}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->isLimited()Z

    move-result v3

    const-string v4, ""

    invoke-static {v1, p1, v4, v2, v3}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/tapjoy/TJCorePlacement;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 12645
    iput-object p1, v1, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    .line 12646
    iput-object p1, v1, Lcom/tapjoy/TJCorePlacement;->n:Ljava/lang/String;

    .line 12647
    iget-object v2, v1, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2, p1}, Lcom/tapjoy/TJPlacementData;->setPlacementType(Ljava/lang/String;)V

    .line 12649
    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement;->e()Ljava/lang/String;

    move-result-object p1

    .line 12651
    invoke-static {p1}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "v1/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/mediation_content?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12655
    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1, p1}, Lcom/tapjoy/TJPlacementData;->setMediationURL(Ljava/lang/String;)V

    goto :goto_1

    .line 12657
    :cond_1
    sget-object p1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Placement mediation name can not be set for a null app ID"

    invoke-static {p1, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_2

    .line 219
    iget-object p1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {p1, v0}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public setVideoListener(Lcom/tapjoy/TJPlacementVideoListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementVideoListener;

    return-void
.end method

.method public showContent()V
    .locals 6

    .line 171
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showContent() called for placement "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJPlacement"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    const-string v2, "TJPlacement.showContent"

    .line 6633
    invoke-static {v2}, Lcom/tapjoy/internal/gj;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v3

    .line 6829
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "placement"

    .line 6634
    invoke-virtual {v3, v5, v4}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    move-result-object v3

    .line 7662
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "placement_type"

    .line 6635
    invoke-virtual {v3, v5, v4}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    move-result-object v3

    .line 6636
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content_type"

    invoke-virtual {v3, v5, v4}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    .line 6638
    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fz;

    const/16 v3, 0x8

    .line 8069
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/fz;->a(I)V

    .line 8071
    iget-object v0, v0, Lcom/tapjoy/internal/fz;->a:Lcom/tapjoy/internal/ft;

    if-eqz v0, :cond_0

    .line 8073
    invoke-virtual {v0}, Lcom/tapjoy/internal/ft;->a()Lcom/tapjoy/internal/gj$a;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "No placement content available. Can not show content for non-200 placement."

    invoke-direct {v0, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 178
    invoke-static {v2}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    const-string v1, "no content"

    .line 179
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gj$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/tapjoy/internal/gj$a;->c()V

    return-void

    .line 185
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 8474
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8475
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Only one view can be presented at a time."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8476
    invoke-static {v2}, Lcom/tapjoy/internal/gj;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    const-string v1, "another content showing"

    .line 8477
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gj$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v0

    .line 8478
    invoke-virtual {v0}, Lcom/tapjoy/internal/gj$a;->c()V

    goto/16 :goto_2

    .line 8481
    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 8482
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v4, "Will close N2E content."

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8483
    invoke-static {v3}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    :cond_3
    const-string v1, "SHOW"

    .line 8486
    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 8488
    invoke-static {v2}, Lcom/tapjoy/internal/gj;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    move-result-object v1

    .line 8489
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v4}, Lcom/tapjoy/TJAdUnit;->isPrerendered()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "prerendered"

    .line 8490
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    .line 8492
    :cond_4
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentReady()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "content_ready"

    .line 8493
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lcom/tapjoy/internal/gj$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gj$a;

    .line 8495
    :cond_5
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fz;

    .line 9085
    iput-object v1, v4, Lcom/tapjoy/internal/fz;->d:Lcom/tapjoy/internal/gj$a;

    .line 8500
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8502
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hk;

    if-eqz v4, :cond_9

    .line 8504
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hk;

    .line 10042
    iput-object v1, v4, Lcom/tapjoy/internal/hk;->f:Ljava/lang/String;

    .line 10771
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hk;

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    .line 10774
    :cond_6
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hk;

    instance-of v4, v4, Lcom/tapjoy/internal/gz;

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    goto :goto_0

    .line 10776
    :cond_7
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hk;

    instance-of v4, v4, Lcom/tapjoy/internal/hi;

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    .line 8505
    :goto_0
    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    .line 8507
    new-instance v4, Lcom/tapjoy/TJCorePlacement$4;

    invoke-direct {v4, v0, v1}, Lcom/tapjoy/TJCorePlacement$4;-><init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V

    .line 8528
    iget-object v1, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hk;

    iput-object v4, v1, Lcom/tapjoy/internal/hk;->e:Lcom/tapjoy/internal/gw;

    .line 8530
    new-instance v1, Lcom/tapjoy/TJCorePlacement$5;

    invoke-direct {v1, v0}, Lcom/tapjoy/TJCorePlacement$5;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    invoke-static {v1}, Lcom/tapjoy/internal/hd;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8537
    :cond_9
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4, v1}, Lcom/tapjoy/TJPlacementData;->setContentViewId(Ljava/lang/String;)V

    .line 8540
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    const-class v5, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "placement_data"

    .line 8541
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 8542
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8543
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    const-wide/16 v4, 0x0

    .line 8547
    iput-wide v4, v0, Lcom/tapjoy/TJCorePlacement;->e:J

    .line 8550
    iput-boolean v3, v0, Lcom/tapjoy/TJCorePlacement;->l:Z

    .line 8551
    iput-boolean v3, v0, Lcom/tapjoy/TJCorePlacement;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_2
    invoke-static {v2}, Lcom/tapjoy/internal/gj;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/tapjoy/internal/gj;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gj$a;

    .line 188
    throw v0
.end method
