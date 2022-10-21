.class public Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;
.super Ljava/lang/Object;
.source "BraveFrontierStoreAssets.java"

# interfaces
.implements Lcom/soomla/store/IStoreAssets;


# static fields
.field static currencyPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/soomla/store/domain/data/VirtualCurrencyPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;->currencyPacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddCurrencyPack(Ljava/lang/String;)V
    .locals 2

    .line 45
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets$1;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getVirtualCurrencyPacks()[Lcom/soomla/store/domain/data/VirtualCurrencyPack;
    .locals 3

    .line 17
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;->currencyPacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    const/4 v1, 0x0

    .line 18
    :goto_0
    sget-object v2, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;->currencyPacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 20
    sget-object v2, Lsg/gumi/bravefrontier/BraveFrontierStoreAssets;->currencyPacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
