.class public Lcom/soomla/store/data/StoreInfo;
.super Ljava/lang/Object;
.source "StoreInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA StoreInfo"

.field private static mVirtualCurrencyPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/soomla/store/domain/data/VirtualCurrencyPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrencyPacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/soomla/store/domain/data/VirtualCurrencyPack;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mVirtualCurrencyPacks:Ljava/util/List;

    return-object v0
.end method

.method public static getPackByGoogleProductId(Ljava/lang/String;)Lcom/soomla/store/domain/data/VirtualCurrencyPack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mVirtualCurrencyPacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    .line 63
    invoke-virtual {v1}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static getPackByItemId(Ljava/lang/String;)Lcom/soomla/store/domain/data/VirtualCurrencyPack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mVirtualCurrencyPacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    .line 86
    :try_start_0
    invoke-virtual {v1}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    throw p0

    .line 95
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static setStoreAssets(Lcom/soomla/store/IStoreAssets;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SOOMLA StoreInfo"

    const-string v0, "The given store assets can\'t be null !"

    .line 46
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_0
    invoke-interface {p0}, Lcom/soomla/store/IStoreAssets;->getVirtualCurrencyPacks()[Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/soomla/store/data/StoreInfo;->mVirtualCurrencyPacks:Ljava/util/List;

    return-void
.end method
