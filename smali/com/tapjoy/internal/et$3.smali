.class public final Lcom/tapjoy/internal/et$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/et;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tapjoy/internal/et;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/et;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    iput-object p2, p0, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/et$3;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/tapjoy/internal/et$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "errorType"

    const-string v2, "complete"

    const-string v3, "adUserInteraction"

    const-string v4, "skipped"

    const-string v5, "thirdQuartile"

    const-string v6, "midpoint"

    const-string v7, "firstQuartile"

    const-string v8, "start"

    const-string v9, "bufferStart"

    const-string v10, "TJOMViewabilityAgent"

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 146
    :try_start_0
    iget-object v13, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    const-string v14, "loaded"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v14, "triggerEvent: event name \'"

    if-eqz v13, :cond_1

    .line 147
    :try_start_1
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->d(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/cm;

    move-result-object v0

    sget-object v2, Lcom/tapjoy/internal/db;->d:Lcom/tapjoy/internal/db;

    const-string v3, "Position is null"

    .line 2000
    invoke-static {v2, v3}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/tapjoy/internal/dc;

    invoke-direct {v3, v2}, Lcom/tapjoy/internal/dc;-><init>(Lcom/tapjoy/internal/db;)V

    const-string v2, "VastProperties is null"

    .line 3000
    invoke-static {v3, v2}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v2, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->c(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    invoke-virtual {v3}, Lcom/tapjoy/internal/dc;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 5000
    iget-boolean v3, v0, Lcom/tapjoy/internal/cy;->h:Z

    if-nez v3, :cond_0

    .line 6000
    iget-object v3, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 7000
    invoke-static {}, Lcom/tapjoy/internal/di;->a()Lcom/tapjoy/internal/di;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/dv;->c()Landroid/webkit/WebView;

    move-result-object v3

    const-string v5, "publishLoadedEvent"

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v2, v6, v11

    .line 8000
    invoke-virtual {v4, v3, v5, v6}, Lcom/tapjoy/internal/di;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4000
    iput-boolean v12, v0, Lcom/tapjoy/internal/cy;->h:Z

    goto/16 :goto_1

    .line 5000
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Loaded event can only be sent once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iget-object v13, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    const-string v15, "impression"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 149
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->d(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/cm;

    move-result-object v0

    .line 9000
    iget-object v2, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->a(Lcom/tapjoy/internal/cy;)V

    iget-object v2, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->c(Lcom/tapjoy/internal/cy;)V

    iget-object v2, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    invoke-virtual {v2}, Lcom/tapjoy/internal/cy;->d()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_2

    :try_start_2
    iget-object v2, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    invoke-virtual {v2}, Lcom/tapjoy/internal/cy;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :try_start_3
    iget-object v2, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    invoke-virtual {v2}, Lcom/tapjoy/internal/cy;->d()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v0, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cy;

    .line 11000
    iget-boolean v2, v0, Lcom/tapjoy/internal/cy;->g:Z

    if-nez v2, :cond_3

    .line 12000
    iget-object v2, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 13000
    invoke-static {}, Lcom/tapjoy/internal/di;->a()Lcom/tapjoy/internal/di;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tapjoy/internal/dv;->c()Landroid/webkit/WebView;

    move-result-object v2

    const-string v4, "publishImpressionEvent"

    new-array v5, v11, [Ljava/lang/Object;

    .line 14000
    invoke-virtual {v3, v2, v4, v5}, Lcom/tapjoy/internal/di;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10000
    iput-boolean v12, v0, Lcom/tapjoy/internal/cy;->g:Z

    goto/16 :goto_1

    .line 11000
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Impression event can only be sent once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_4
    iget-object v13, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 151
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 15000
    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 16000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 15000
    invoke-virtual {v0, v9}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :cond_5
    iget-object v9, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    const-string v13, "bufferEnd"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 153
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 17000
    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 18000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    const-string v2, "bufferFinish"

    .line 17000
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 154
    :cond_6
    iget-object v9, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v13, "deviceVolume"

    const-string v15, "mediaPlayerVolume"

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    if-eqz v9, :cond_9

    .line 155
    :try_start_4
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    .line 18521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 155
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v16, 0x0

    .line 156
    :cond_7
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v2}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v2

    .line 19521
    iget-object v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 156
    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v3, v2, v17

    if-lez v3, :cond_8

    .line 20000
    invoke-static/range {v16 .. v16}, Lcom/tapjoy/internal/da;->a(F)V

    iget-object v3, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v3}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "duration"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v3, v15, v2}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/dj;->a()Lcom/tapjoy/internal/dj;

    move-result-object v2

    .line 22000
    iget v2, v2, Lcom/tapjoy/internal/dj;->a:F

    .line 20000
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v3, v13, v2}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 23000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 20000
    invoke-virtual {v0, v8, v3}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 21000
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Media duration"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_9
    iget-object v8, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 158
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 24000
    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 25000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 24000
    invoke-virtual {v0, v7}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 159
    :cond_a
    iget-object v7, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 160
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 26000
    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 27000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 26000
    invoke-virtual {v0, v6}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 161
    :cond_b
    iget-object v6, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 162
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 28000
    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 29000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 28000
    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :cond_c
    iget-object v5, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    const-string v6, "paused"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 164
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 30000
    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 31000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    const-string v2, "pause"

    .line 30000
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_d
    iget-object v5, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    const-string v6, "playing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 166
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 32000
    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 33000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    const-string v2, "resume"

    .line 32000
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 167
    :cond_e
    iget-object v5, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 168
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 34000
    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 35000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 34000
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    :cond_f
    iget-object v4, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    const-string v5, "volumeChanged"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 170
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    .line 35521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 170
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v16, 0x0

    .line 171
    :cond_10
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 36000
    invoke-static/range {v16 .. v16}, Lcom/tapjoy/internal/da;->a(F)V

    iget-object v2, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v2}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v15, v3}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/dj;->a()Lcom/tapjoy/internal/dj;

    move-result-object v3

    .line 37000
    iget v3, v3, Lcom/tapjoy/internal/dj;->a:F

    .line 36000
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v13, v3}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 38000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    const-string v3, "volumeChange"

    .line 36000
    invoke-virtual {v0, v3, v2}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 172
    :cond_11
    iget-object v4, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 174
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    sget-object v2, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cz;

    const-string v4, "InteractionType is null"

    .line 39000
    invoke-static {v2, v4}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v4}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "interactionType"

    invoke-static {v4, v5, v2}, Lcom/tapjoy/internal/dp;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 40000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 39000
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 175
    :cond_12
    iget-object v3, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 176
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->e(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/da;

    move-result-object v0

    .line 41000
    iget-object v3, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    invoke-static {v3}, Lcom/tapjoy/internal/dr;->b(Lcom/tapjoy/internal/cy;)V

    iget-object v0, v0, Lcom/tapjoy/internal/da;->a:Lcom/tapjoy/internal/cy;

    .line 42000
    iget-object v0, v0, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 41000
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/dv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    :cond_13
    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    const-string v3, "sessionError"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v2, :cond_15

    .line 179
    :try_start_5
    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v3, "message"

    if-eqz v2, :cond_14

    .line 180
    :try_start_6
    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v2}, Lcom/tapjoy/internal/et;->c(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/cn;

    move-result-object v2

    sget-object v4, Lcom/tapjoy/internal/cs;->b:Lcom/tapjoy/internal/cs;

    iget-object v5, v1, Lcom/tapjoy/internal/et$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/cn;->a(Lcom/tapjoy/internal/cs;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_14
    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v2}, Lcom/tapjoy/internal/et;->c(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/cn;

    move-result-object v2

    sget-object v4, Lcom/tapjoy/internal/cs;->a:Lcom/tapjoy/internal/cs;

    iget-object v5, v1, Lcom/tapjoy/internal/et$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/cn;->a(Lcom/tapjoy/internal/cs;Ljava/lang/String;)V

    .line 184
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Session Error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tapjoy/internal/et$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    .line 186
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to getting session error information: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_15
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    const-string v2, "sessionFinish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 189
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->c(Lcom/tapjoy/internal/et;)Lcom/tapjoy/internal/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/cn;->b()V

    .line 190
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;Lcom/tapjoy/internal/cn;)Lcom/tapjoy/internal/cn;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 202
    :cond_16
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->c:Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v11

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 192
    :cond_17
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->c:Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v11

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "triggerEvent exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, v1, Lcom/tapjoy/internal/et$3;->d:Lcom/tapjoy/internal/et;

    invoke-static {v0}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v2, v1, Lcom/tapjoy/internal/et$3;->c:Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v11

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
