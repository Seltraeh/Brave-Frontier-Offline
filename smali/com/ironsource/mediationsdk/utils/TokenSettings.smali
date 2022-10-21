.class public Lcom/ironsource/mediationsdk/utils/TokenSettings;
.super Ljava/lang/Object;
.source "TokenSettings.java"


# instance fields
.field private tokenOptInKeyParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->tokenOptInKeyParams:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addOptInKeyParam(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->tokenOptInKeyParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setGenericParams(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
