.class Lsg/gumi/bravefrontier/BraveFrontierStoreAssets$1;
.super Ljava/lang/Object;
.source "BraveFrontierStoreAssets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;->AddCurrencyPack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets$1;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 48
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;->currencyPacks:Ljava/util/ArrayList;

    new-instance v8, Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets$1;->val$productId:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
