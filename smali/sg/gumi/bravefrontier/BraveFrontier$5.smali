.class Lsg/gumi/bravefrontier/BraveFrontier$5;
.super Ljava/lang/Object;
.source "BraveFrontier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontier;->initializeStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 465
    :try_start_0
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object v0

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;

    invoke-direct {v1}, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;-><init>()V

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->access$400()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/soomla/store/StoreController;->initialize(Lcom/soomla/store/IStoreAssets;Landroid/app/Activity;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
