.class Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;
.super Ljava/util/HashMap;
.source "ViewVisibilityParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)V
    .locals 3

    .line 18
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 19
    iget-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-static {p1}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->access$000(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "isVisible"

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-static {p1}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->access$100(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isWindowVisible"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "isShown"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "isViewVisible"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
