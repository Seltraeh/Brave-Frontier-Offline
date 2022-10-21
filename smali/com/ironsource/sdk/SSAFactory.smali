.class public Lcom/ironsource/sdk/SSAFactory;
.super Ljava/lang/Object;
.source "SSAFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static getPublisherInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/SSAPublisher;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object p0

    return-object p0
.end method
